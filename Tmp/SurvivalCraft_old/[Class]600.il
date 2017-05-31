.class public auto ansi beforefieldinit Game.SubsystemThrowableBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemThrowableBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnAim(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner,
                valuetype Game.AimState state) cil managed
  {
    // 代码大小       539 (0x21b)
    .maxstack  8
    .locals init (class Game.Block V_0,
             class Game.ComponentFirstPersonModel V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Block V_8)
    IL_0000:  ldarg.s    state
    IL_0002:  brtrue     IL_00de

    IL_0007:  ldarg.3
    IL_0008:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_000d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0012:  ldc.r4     3.2
    IL_0017:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_001c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0027:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_002c:  ldelem.ref
    IL_002d:  stloc.0
    IL_002e:  ldarg.3
    IL_002f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  brfalse.s  IL_0086

    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.SubsystemGui Game.SubsystemThrowableBlockBehavior::m_subsystemGui
    IL_0043:  ldarg.1
    IL_0044:  ldarg.2
    IL_0045:  callvirt   instance void Game.SubsystemGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_004a:  ldloc.1
    IL_004b:  ldc.r4     0.0
    IL_0050:  ldc.r4     0.34999999
    IL_0055:  ldc.r4     0.17
    IL_005a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_0064:  ldloc.0
    IL_0065:  isinst     Game.SpearBlock
    IL_006a:  brfalse.s  IL_0086

    IL_006c:  ldloc.1
    IL_006d:  ldc.r4     -1.5
    IL_0072:  ldc.r4     0.0
    IL_0077:  ldc.r4     0.0
    IL_007c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0081:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0086:  ldloc.0
    IL_0087:  isinst     Game.SpearBlock
    IL_008c:  brfalse    IL_0219

    IL_0091:  ldarg.3
    IL_0092:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0097:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_009c:  ldc.r4     0.0
    IL_00a1:  ldc.r4     -0.25
    IL_00a6:  ldc.r4     0.0
    IL_00ab:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b0:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_00b5:  ldarg.3
    IL_00b6:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00bb:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00c0:  ldc.r4     3.1415901
    IL_00c5:  ldc.r4     0.0
    IL_00ca:  ldc.r4     0.0
    IL_00cf:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d4:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_00d9:  br         IL_0219

    IL_00de:  ldarg.s    state
    IL_00e0:  ldc.i4.2
    IL_00e1:  bne.un     IL_0219

    IL_00e6:  ldarg.3
    IL_00e7:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00ec:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00f1:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_00f6:  ldarg.3
    IL_00f7:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00fc:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0101:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0106:  stloc.s    V_4
    IL_0108:  ldloca.s   V_4
    IL_010a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_010f:  ldc.r4     0.40000001
    IL_0114:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0119:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011e:  stloc.2
    IL_011f:  ldloc.2
    IL_0120:  ldarg.2
    IL_0121:  ldc.r4     10.
    IL_0126:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0130:  ldloc.2
    IL_0131:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0136:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_013b:  stloc.3
    IL_013c:  ldarg.3
    IL_013d:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0142:  brfalse    IL_0219

    IL_0147:  ldarg.3
    IL_0148:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_014d:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_0152:  stloc.s    V_5
    IL_0154:  ldarg.3
    IL_0155:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_015a:  ldloc.s    V_5
    IL_015c:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_0161:  stloc.s    V_6
    IL_0163:  ldarg.3
    IL_0164:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0169:  ldloc.s    V_5
    IL_016b:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_0170:  ldloc.s    V_6
    IL_0172:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0177:  stloc.s    V_7
    IL_0179:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_017e:  ldloc.s    V_7
    IL_0180:  ldelem.ref
    IL_0181:  stloc.s    V_8
    IL_0183:  ldc.i4.0
    IL_0184:  ble        IL_0219

    IL_0189:  ldarg.0
    IL_018a:  ldfld      class Game.SubsystemProjectiles Game.SubsystemThrowableBlockBehavior::m_subsystemProjectiles
    IL_018f:  ldloc.s    V_6
    IL_0191:  ldloc.2
    IL_0192:  ldloc.3
    IL_0193:  ldloc.s    V_8
    IL_0195:  ldfld      float32 Game.Block::ProjectileSpeed
    IL_019a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_019f:  ldarg.0
    IL_01a0:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_01a5:  ldc.r4     5.
    IL_01aa:  ldc.r4     10.
    IL_01af:  ldc.i4.0
    IL_01b0:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_01b5:  ldarg.3
    IL_01b6:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01bb:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_01c0:  brfalse.s  IL_0219

    IL_01c2:  ldarg.3
    IL_01c3:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_01c8:  ldloc.s    V_5
    IL_01ca:  ldc.i4.1
    IL_01cb:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_01d0:  pop
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      class Game.SubsystemAudio Game.SubsystemThrowableBlockBehavior::m_subsystemAudio
    IL_01d7:  ldstr      "Audio/Throw"
    IL_01dc:  ldarg.0
    IL_01dd:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_01e2:  ldc.r4     0.2
    IL_01e7:  ldc.r4     0.30000001
    IL_01ec:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f1:  ldarg.0
    IL_01f2:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_01f7:  ldc.r4     -0.2
    IL_01fc:  ldc.r4     0.2
    IL_0201:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0206:  ldarg.1
    IL_0207:  ldc.r4     2.
    IL_020c:  ldc.i4.1
    IL_020d:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0212:  ldarg.3
    IL_0213:  ldc.i4.0
    IL_0214:  callvirt   instance void Game.ComponentMiner::Poke(bool)
    IL_0219:  ldc.i4.0
    IL_021a:  ret
  } // end of method SubsystemThrowableBlockBehavior::OnAim

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_000d:  stfld      class Game.SubsystemGui Game.SubsystemThrowableBlockBehavior::m_subsystemGui
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.SubsystemThrowableBlockBehavior::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0031:  stfld      class Game.SubsystemProjectiles Game.SubsystemThrowableBlockBehavior::m_subsystemProjectiles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_003d:  ret
  } // end of method SubsystemThrowableBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemThrowableBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemThrowableBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemThrowableBlockBehavior::HandledBlocks
} // end of class Game.SubsystemThrowableBlockBehavior