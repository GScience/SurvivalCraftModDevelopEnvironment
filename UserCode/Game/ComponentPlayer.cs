using Engine;
using GameEntitySystem;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TemplatesDatabase;

namespace Game
{
    public class ComponentPlayer : ComponentCreature, IUpdateable
    {
        // Fields
        private Vector3? m_aimDirection;
        private bool m_isAimBlocked;
        private bool m_isDigBlocked;
        private double m_lastActionTime;
        private bool m_speedOrderBlocked;
        private SubsystemAudio m_subsystemAudio;
        private SubsystemGameInfo m_subsystemGameInfo;
        private SubsystemPickables m_subsystemPickables;
        private SubsystemTerrain m_subsystemTerrain;
        private SubsystemTime m_subsystemTime;

        // Methods
        protected override void Load(ValuesDictionary valuesDictionary, IdToEntityMap idToEntityMap)
        {
            base.Load(valuesDictionary, idToEntityMap);
            this.m_subsystemGameInfo = base.Project.FindSubsystem<SubsystemGameInfo>(true);
            this.m_subsystemTime = base.Project.FindSubsystem<SubsystemTime>(true);
            this.m_subsystemAudio = base.Project.FindSubsystem<SubsystemAudio>(true);
            this.m_subsystemPickables = base.Project.FindSubsystem<SubsystemPickables>(true);
            this.m_subsystemTerrain = base.Project.FindSubsystem<SubsystemTerrain>(true);
            this.ComponentGui = base.Entity.FindComponent<ComponentGui>(true);
            this.ComponentInput = base.Entity.FindComponent<ComponentInput>(true);
            this.ComponentScreenOverlays = base.Entity.FindComponent<ComponentScreenOverlays>(true);
            this.ComponentMiner = base.Entity.FindComponent<ComponentMiner>(true);
            this.ComponentRider = base.Entity.FindComponent<ComponentRider>(true);
            this.ComponentSleep = base.Entity.FindComponent<ComponentSleep>(true);
            this.ComponentVitalStats = base.Entity.FindComponent<ComponentVitalStats>(true);
            this.ComponentSickness = base.Entity.FindComponent<ComponentSickness>(true);
            this.ComponentFlu = base.Entity.FindComponent<ComponentFlu>(true);
            this.ComponentLevel = base.Entity.FindComponent<ComponentLevel>(true);
            this.ComponentClothing = base.Entity.FindComponent<ComponentClothing>(true);
            this.ComponentOuterClothingModel = base.Entity.FindComponent<ComponentOuterClothingModel>(true);
            int playerIndex = valuesDictionary.GetValue<int>("PlayerIndex");
            this.PlayerData = Enumerable.First<PlayerData>(base.Project.FindSubsystem<SubsystemPlayers>(true).PlayersData, delegate (PlayerData d) {
                return d.PlayerIndex == playerIndex;
            });
        }

        protected override void Save(ValuesDictionary valuesDictionary, EntityToIdMap entityToIdMap)
        {
            base.Save(valuesDictionary, entityToIdMap);
            valuesDictionary.SetValue<int>("PlayerIndex", this.PlayerData.PlayerIndex);
        }

        public void Update(float dt)
        {
            PlayerInput playerInput = (PlayerInput)(this.ComponentInput.PlayerInput as object);

            if (playerInput.isNetPlayer)
                playerInput.Jump = true;

            if (this.ComponentInput.IsControlledByTouch && this.m_aimDirection.HasValue)
            {
                playerInput.Look = Vector2.Zero;
            }
            if (this.ComponentMiner.Inventory != null)
            {
                this.ComponentMiner.Inventory.ActiveSlotIndex = MathUtils.Clamp(this.ComponentMiner.Inventory.ActiveSlotIndex + playerInput.ScrollInventory, 0, 5);
                if (playerInput.SelectInventorySlot.HasValue)
                {
                    this.ComponentMiner.Inventory.ActiveSlotIndex = MathUtils.Clamp(playerInput.SelectInventorySlot.Value, 0, 5);
                }
            }
            ComponentSteedBehavior behavior = null;
            ComponentBoat boat = null;
            ComponentMount mount = this.ComponentRider.Mount;
            if (mount != null)
            {
                behavior = mount.Entity.FindComponent<ComponentSteedBehavior>();
                boat = mount.Entity.FindComponent<ComponentBoat>();
            }
            if (behavior != null)
            {
                if ((playerInput.Move.Z > 0.5f) && !this.m_speedOrderBlocked)
                {
                    if (this.PlayerData.PlayerClass == PlayerClass.Male)
                    {
                        this.m_subsystemAudio.PlayRandomSound("Audio/Creatures/MaleYellFast", 0.75f, 0f, base.ComponentBody.Position, 2f, false);
                    }
                    else
                    {
                        this.m_subsystemAudio.PlayRandomSound("Audio/Creatures/FemaleYellFast", 0.75f, 0f, base.ComponentBody.Position, 2f, false);
                    }
                    behavior.SpeedOrder = 1;
                    this.m_speedOrderBlocked = true;
                }
                else if ((playerInput.Move.Z < -0.5f) && !this.m_speedOrderBlocked)
                {
                    if (this.PlayerData.PlayerClass == PlayerClass.Male)
                    {
                        this.m_subsystemAudio.PlayRandomSound("Audio/Creatures/MaleYellSlow", 0.75f, 0f, base.ComponentBody.Position, 2f, false);
                    }
                    else
                    {
                        this.m_subsystemAudio.PlayRandomSound("Audio/Creatures/FemaleYellSlow", 0.75f, 0f, base.ComponentBody.Position, 2f, false);
                    }
                    behavior.SpeedOrder = -1;
                    this.m_speedOrderBlocked = true;
                }
                else if (MathUtils.Abs(playerInput.Move.Z) <= 0.25f)
                {
                    this.m_speedOrderBlocked = false;
                }
                behavior.TurnOrder = playerInput.Move.X;
                behavior.JumpOrder = playerInput.Jump ? ((float)1) : ((float)0);
                base.ComponentLocomotion.LookOrder = new Vector2(playerInput.Look.X, 0f);
            }
            else if (boat != null)
            {
                boat.TurnOrder = playerInput.Move.X;
                boat.MoveOrder = playerInput.Move.Z;
                base.ComponentLocomotion.LookOrder = new Vector2(playerInput.Look.X, 0f);
                base.ComponentCreatureModel.RowLeftOrder = (playerInput.Move.X < -0.2f) || (playerInput.Move.Z > 0.2f);
                base.ComponentCreatureModel.RowRightOrder = (playerInput.Move.X > 0.2f) || (playerInput.Move.Z > 0.2f);
            }
            else
            {
                base.ComponentLocomotion.WalkOrder = new Vector2?(base.ComponentBody.IsSneaking ? (0.66f * new Vector2(playerInput.SneakMove.X, playerInput.SneakMove.Z)) : new Vector2(playerInput.Move.X, playerInput.Move.Z));
                base.ComponentLocomotion.FlyOrder = new Vector3(0f, playerInput.Move.Y, 0f);
                base.ComponentLocomotion.TurnOrder = playerInput.Look * new Vector2(1f, 0f);
                base.ComponentLocomotion.JumpOrder = MathUtils.Max(playerInput.Jump ? ((float)1) : ((float)0), base.ComponentLocomotion.JumpOrder);
            }
            ComponentLocomotion componentLocomotion = base.ComponentLocomotion;
            componentLocomotion.LookOrder += playerInput.Look * (SettingsManager.FlipVerticalAxis ? new Vector2(0f, -1f) : new Vector2(0f, 1f));
            int index = Terrain.ExtractContents(this.ComponentMiner.ActiveBlockValue);
            Block block = BlocksManager.Blocks[index];
            bool flag = false;
            if ((playerInput.Interact.HasValue && !flag) && ((this.m_subsystemTime.GameTime - this.m_lastActionTime) > 0.33000001311302185))
            {
                Vector3 start = this.View.ActiveCamera.ViewPosition;
                Vector3 direction = Vector3.Normalize(this.View.ActiveCamera.ScreenToWorld(new Vector3(playerInput.Interact.Value, 1f), Matrix.Identity) - start);
                if (!this.ComponentMiner.Use(start, direction))
                {
                    BodyRaycastResult? nullable = this.ComponentMiner.PickBody(start, direction);
                    TerrainRaycastResult? nullable2 = this.ComponentMiner.PickTerrainForInteraction(start, direction);
                    if (nullable2.HasValue && (!nullable.HasValue || (nullable2.Value.Distance < nullable.Value.Distance)))
                    {
                        if (!this.ComponentMiner.Interact(nullable2.Value))
                        {
                            if (this.ComponentMiner.Place(nullable2.Value))
                            {
                                this.m_subsystemTerrain.TerrainUpdater.RequestSynchronousUpdate();
                                flag = true;
                                this.m_isAimBlocked = true;
                            }
                        }
                        else
                        {
                            this.m_subsystemTerrain.TerrainUpdater.RequestSynchronousUpdate();
                            flag = true;
                            this.m_isAimBlocked = true;
                        }
                    }
                }
                else
                {
                    this.m_subsystemTerrain.TerrainUpdater.RequestSynchronousUpdate();
                    flag = true;
                    this.m_isAimBlocked = true;
                }
            }
            float num2 = (this.m_subsystemGameInfo.WorldSettings.GameMode == GameMode.Creative) ? 0.1f : 1.4f;
            Vector3 viewPosition = this.View.ActiveCamera.ViewPosition;
            if ((playerInput.Aim.HasValue && block.IsAimable) && ((this.m_subsystemTime.GameTime - this.m_lastActionTime) > num2))
            {
                if (!this.m_isAimBlocked)
                {
                    Vector2 xy = playerInput.Aim.Value;
                    Vector3 vector5 = this.View.ActiveCamera.ScreenToWorld(new Vector3(xy, 1f), Matrix.Identity);
                    Point2 size = Window.Size;
                    if (((playerInput.Aim.Value.X >= (size.X * 0.1f)) && (playerInput.Aim.Value.X < (size.X * 0.9f))) && ((playerInput.Aim.Value.Y >= (size.Y * 0.1f)) && (playerInput.Aim.Value.Y < (size.Y * 0.9f))))
                    {
                        this.m_aimDirection = new Vector3?(Vector3.Normalize(vector5 - viewPosition));
                        if (this.ComponentMiner.Aim(viewPosition, this.m_aimDirection.Value, AimState.InProgress))
                        {
                            this.ComponentMiner.Aim(viewPosition, this.m_aimDirection.Value, AimState.Cancelled);
                            this.m_aimDirection = null;
                            this.m_isAimBlocked = true;
                        }
                    }
                    else if (this.m_aimDirection.HasValue)
                    {
                        this.ComponentMiner.Aim(viewPosition, this.m_aimDirection.Value, AimState.Cancelled);
                        this.m_aimDirection = null;
                        this.m_isAimBlocked = true;
                    }
                }
            }
            else
            {
                this.m_isAimBlocked = false;
                if (this.m_aimDirection.HasValue)
                {
                    this.ComponentMiner.Aim(viewPosition, this.m_aimDirection.Value, AimState.Completed);
                    this.m_aimDirection = null;
                    this.m_lastActionTime = this.m_subsystemTime.GameTime;
                }
            }
            flag |= this.m_aimDirection.HasValue;
            if ((playerInput.Hit.HasValue && !flag) && ((this.m_subsystemTime.GameTime - this.m_lastActionTime) > 0.33000001311302185))
            {
                Vector3 position = this.View.ActiveCamera.ViewPosition;
                Vector3 vector7 = Vector3.Normalize(this.View.ActiveCamera.ScreenToWorld(new Vector3(playerInput.Hit.Value, 1f), Matrix.Identity) - position);
                TerrainRaycastResult? nullable3 = this.ComponentMiner.PickTerrainForInteraction(position, vector7);
                BodyRaycastResult? nullable4 = this.ComponentMiner.PickBody(position, vector7);
                if ((nullable4.HasValue && (!nullable3.HasValue || (nullable3.Value.Distance > nullable4.Value.Distance))) && (Vector3.Distance(position + (vector7 * nullable4.Value.Distance), base.ComponentCreatureModel.EyePosition) <= 2f))
                {
                    this.ComponentMiner.Hit(nullable4.Value.ComponentBody, vector7);
                    flag = true;
                    this.m_isDigBlocked = true;
                }
            }
            if ((playerInput.Dig.HasValue && !flag) && (!this.m_isDigBlocked && ((this.m_subsystemTime.GameTime - this.m_lastActionTime) > 0.33000001311302185)))
            {
                Vector3 vector8 = this.View.ActiveCamera.ViewPosition;
                Vector3 vector9 = this.View.ActiveCamera.ScreenToWorld(new Vector3(playerInput.Dig.Value, 1f), Matrix.Identity);
                TerrainRaycastResult? nullable5 = this.ComponentMiner.PickTerrainForDigging(vector8, vector9 - vector8);
                if (nullable5.HasValue && this.ComponentMiner.Dig(nullable5.Value))
                {
                    this.m_lastActionTime = this.m_subsystemTime.GameTime;
                    this.m_subsystemTerrain.TerrainUpdater.RequestSynchronousUpdate();
                }
            }
            if (!playerInput.Dig.HasValue)
            {
                this.m_isDigBlocked = false;
            }
            if (playerInput.Drop && (this.ComponentMiner.Inventory != null))
            {
                IInventory inventory1 = this.ComponentMiner.Inventory;
                int slotValue = inventory1.GetSlotValue(inventory1.ActiveSlotIndex);
                int slotCount = inventory1.GetSlotCount(inventory1.ActiveSlotIndex);
                int count = inventory1.RemoveSlotItems(inventory1.ActiveSlotIndex, slotCount);
                if ((slotValue != 0) && (count != 0))
                {
                    Vector3 vector10 = (base.ComponentBody.Position + new Vector3(0f, base.ComponentBody.BoxSize.Y * 0.66f, 0f)) + (0.25f * base.ComponentBody.Matrix.Forward);
                    Vector3 vector11 = 8f * Matrix.CreateFromQuaternion(base.ComponentCreatureModel.EyeRotation).Forward;
                    this.m_subsystemPickables.AddPickable(slotValue, count, vector10, new Vector3?(vector11), null);
                }
            }
            if (playerInput.PickBlockType.HasValue && !flag)
            {
                ComponentCreativeInventory inventory = this.ComponentMiner.Inventory as ComponentCreativeInventory;
                if (inventory != null)
                {
                    Vector3 vector12 = this.View.ActiveCamera.ViewPosition;
                    Vector3 vector13 = this.View.ActiveCamera.ScreenToWorld(new Vector3(playerInput.PickBlockType.Value, 1f), Matrix.Identity);
                    TerrainRaycastResult? nullable7 = this.ComponentMiner.PickTerrainForDigging(vector12, vector13 - vector12);
                    if (nullable7.HasValue)
                    {
                        int num6 = Terrain.ReplaceLight(nullable7.Value.Value, 0);
                        int num7 = Terrain.ExtractContents(num6);
                        Block block2 = BlocksManager.Blocks[num7];
                        int num8 = 0;
                        IEnumerable<int> creativeValues = block2.GetCreativeValues();
                        if (Enumerable.Contains<int>(block2.GetCreativeValues(), num6))
                        {
                            num8 = num6;
                        }
                        if ((num8 == 0) && !block2.IsNonDuplicable)
                        {
                            bool flag2;
                            List<BlockDropValue> dropValues = new List<BlockDropValue>();
                            block2.GetDropValues(this.m_subsystemTerrain, num6, 0, 0x7fffffff, dropValues, out flag2);
                            if ((dropValues.Count > 0) && (dropValues[0].Count > 0))
                            {
                                num8 = dropValues[0].Value;
                            }
                        }
                        if (num8 == 0)
                        {
                            num8 = Enumerable.FirstOrDefault<int>(creativeValues);
                        }
                        if (num8 != 0)
                        {
                            int slotIndex = -1;
                            for (int i = 0; i < 6; i++)
                            {
                                if ((inventory.GetSlotCount(i) > 0) && (inventory.GetSlotValue(i) == num8))
                                {
                                    slotIndex = i;
                                    break;
                                }
                            }
                            if (slotIndex < 0)
                            {
                                for (int j = 0; j < 6; j++)
                                {
                                    if ((inventory.GetSlotCount(j) == 0) || (inventory.GetSlotValue(j) == 0))
                                    {
                                        slotIndex = j;
                                        break;
                                    }
                                }
                            }
                            if (slotIndex < 0)
                            {
                                slotIndex = inventory.ActiveSlotIndex;
                            }
                            inventory.RemoveSlotItems(slotIndex, 0x7fffffff);
                            inventory.AddSlotItems(slotIndex, num8, 1);
                            inventory.ActiveSlotIndex = slotIndex;
                            this.ComponentGui.DisplaySmallMessage(block2.GetDisplayName(this.m_subsystemTerrain, num6), false, false);
                            this.m_subsystemAudio.PlaySound("Audio/UI/ButtonClick", 1f, 0f, 0f, 0f);
                        }
                    }
                }
            }
            this.HighlightRaycastResult = this.ComponentMiner.PickTerrainForDigging(this.View.ActiveCamera.ViewPosition, this.View.ActiveCamera.ViewDirection);
        }

        // Properties
        public ComponentClothing ComponentClothing { get; private set; }

        public ComponentFlu ComponentFlu { get; private set; }

        public ComponentGui ComponentGui { get; private set; }

        public ComponentInput ComponentInput { get; private set; }

        public ComponentLevel ComponentLevel { get; private set; }

        public ComponentMiner ComponentMiner { get; private set; }

        public ComponentOuterClothingModel ComponentOuterClothingModel { get; private set; }

        public ComponentRider ComponentRider { get; private set; }

        public ComponentScreenOverlays ComponentScreenOverlays { get; private set; }

        public ComponentSickness ComponentSickness { get; private set; }

        public ComponentSleep ComponentSleep { get; private set; }

        public ComponentVitalStats ComponentVitalStats { get; private set; }

        public TerrainRaycastResult? HighlightRaycastResult { get; private set; }

        public PlayerData PlayerData { get; private set; }

        public int UpdateOrder
        {
            get
            {
                return 0;
            }
        }

        public View View
        {
            get
            {
                return this.PlayerData.View;
            }
        }
    }
}
