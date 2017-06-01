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
    public class SubsystemEggBlockBehavior : SubsystemBlockBehavior
    {
        // Fields
        private EggBlock m_eggBlock = ((EggBlock)BlocksManager.Blocks[0x76]);
        private Random m_random = new Random();
        private SubsystemCreatureSpawn m_subsystemCreatureSpawn;
        private SubsystemEntityFactory m_subsystemEntityFactory;
        private SubsystemGameInfo m_subsystemGameInfo;
        private SubsystemGui m_subsystemGui;

        // Methods
        protected override void Load(ValuesDictionary valuesDictionary)
        {
            base.Load(valuesDictionary);
            this.m_subsystemGameInfo = base.Project.FindSubsystem<SubsystemGameInfo>(true);
            this.m_subsystemEntityFactory = base.Project.FindSubsystem<SubsystemEntityFactory>(true);
            this.m_subsystemCreatureSpawn = base.Project.FindSubsystem<SubsystemCreatureSpawn>(true);
            this.m_subsystemGui = base.Project.FindSubsystem<SubsystemGui>(true);
        }

        public override bool OnHitAsProjectile(CellFace? cellFace, ComponentBody componentBody, WorldItem worldItem)
        {
            int data = TerrainData.ExtractData(worldItem.Value);
            bool isLaid = EggBlock.GetIsLaid(data);
            if (!EggBlock.GetIsCooked(data) && ((this.m_subsystemGameInfo.WorldInfo.GameMode == GameMode.Creative) || (this.m_random.UniformFloat(0f, 1f) <= (isLaid ? 0.2f : 1f))))
            {
                EggBlock.EggType eggType = this.m_eggBlock.GetEggType(data);
                Entity entity = this.m_subsystemEntityFactory.CreateEntity(eggType.TemplateName, true);
                entity.FindComponent<ComponentBody>(true).Position = worldItem.Position;
                entity.FindComponent<ComponentBody>(true).Rotation = Quaternion.CreateFromAxisAngle(Vector3.UnitY, this.m_random.UniformFloat(0f, 6.283185f));
                entity.FindComponent<ComponentSpawn>(true).SpawnDuration = 0.25f;
                base.Project.AddEntity(entity);
            }
            return true;
        }

        // Properties
        public override int[] HandledBlocks
        {
            get
            {
                return new int[0];
            }
        }
    }
}
