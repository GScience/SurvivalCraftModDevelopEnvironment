.class public auto ansi beforefieldinit Game.SubsystemThrowableBlockBehavior
       extends Game.SubsystemBlockBehavior
{
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
    // 代码大小       601 (0x259)
    .maxstack  8
    .locals init (class Game.Block V_0,
             class Game.ComponentFirstPersonModel V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Matrix V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             class Game.Block V_8,
             float32 V_9)
    IL_0000:  ldarg.s    state
    IL_0002:  brtrue     IL_00e9

    IL_0007:  ldarg.3
    IL_0008:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_000d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0012:  ldc.r4     3.2
    IL_0017:  callvirt   instance void Game.ComponentCreatureModel::set_AimHandAngleOrder(float32)
    IL_001c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0021:  ldarg.3
    IL_0022:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_0027:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_002c:  ldelem.ref
    IL_002d:  stloc.0
    IL_002e:  ldarg.3
    IL_002f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFirstPersonModel>()
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  brfalse.s  IL_0091

    IL_003d:  ldarg.3
    IL_003e:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_0043:  dup
    IL_0044:  brtrue.s   IL_0049

    IL_0046:  pop
    IL_0047:  br.s       IL_0055

    IL_0049:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_004e:  ldarg.1
    IL_004f:  ldarg.2
    IL_0050:  callvirt   instance void Game.ComponentGui::ShowAimingSights(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
    IL_0055:  ldloc.1
    IL_0056:  ldc.r4     0.0
    IL_005b:  ldc.r4     0.34999999
    IL_0060:  ldc.r4     0.17
    IL_0065:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006a:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_006f:  ldloc.0
    IL_0070:  isinst     Game.SpearBlock
    IL_0075:  brfalse.s  IL_0091

    IL_0077:  ldloc.1
    IL_0078:  ldc.r4     -1.5
    IL_007d:  ldc.r4     0.0
    IL_0082:  ldc.r4     0.0
    IL_0087:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008c:  callvirt   instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_0091:  ldloc.0
    IL_0092:  isinst     Game.SpearBlock
    IL_0097:  brfalse    IL_0257

    IL_009c:  ldarg.3
    IL_009d:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00a2:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00a7:  ldc.r4     0.0
    IL_00ac:  ldc.r4     -0.25
    IL_00b1:  ldc.r4     0.0
    IL_00b6:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00bb:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_00c0:  ldarg.3
    IL_00c1:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00c6:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00cb:  ldc.r4     3.1415901
    IL_00d0:  ldc.r4     0.0
    IL_00d5:  ldc.r4     0.0
    IL_00da:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00df:  callvirt   instance void Game.ComponentCreatureModel::set_InHandItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_00e4:  br         IL_0257

    IL_00e9:  ldarg.s    state
    IL_00eb:  ldc.i4.2
    IL_00ec:  bne.un     IL_0257

    IL_00f1:  ldarg.3
    IL_00f2:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_00f7:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_00fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0101:  ldarg.3
    IL_0102:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0107:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_010c:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_0111:  stloc.s    V_4
    IL_0113:  ldloca.s   V_4
    IL_0115:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_011a:  ldc.r4     0.40000001
    IL_011f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0124:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0129:  stloc.2
    IL_012a:  ldloc.2
    IL_012b:  ldarg.2
    IL_012c:  ldc.r4     10.
    IL_0131:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0136:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_013b:  ldloc.2
    IL_013c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0141:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0146:  stloc.3
    IL_0147:  ldarg.3
    IL_0148:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_014d:  brfalse    IL_0257

    IL_0152:  ldarg.3
    IL_0153:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0158:  callvirt   instance int32 Game.IInventory::get_ActiveSlotIndex()
    IL_015d:  stloc.s    V_5
    IL_015f:  ldarg.3
    IL_0160:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0165:  ldloc.s    V_5
    IL_0167:  callvirt   instance int32 Game.IInventory::GetSlotValue(int32)
    IL_016c:  stloc.s    V_6
    IL_016e:  ldarg.3
    IL_016f:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0174:  ldloc.s    V_5
    IL_0176:  callvirt   instance int32 Game.IInventory::GetSlotCount(int32)
    IL_017b:  ldloc.s    V_6
    IL_017d:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0182:  stloc.s    V_7
    IL_0184:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0189:  ldloc.s    V_7
    IL_018b:  ldelem.ref
    IL_018c:  stloc.s    V_8
    IL_018e:  ldc.i4.0
    IL_018f:  ble        IL_0257

    IL_0194:  ldloc.s    V_8
    IL_0196:  ldfld      float32 Game.Block::ProjectileSpeed
    IL_019b:  stloc.s    V_9
    IL_019d:  ldarg.3
    IL_019e:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01a3:  brfalse.s  IL_01cc

    IL_01a5:  ldloc.s    V_9
    IL_01a7:  ldc.r4     0.5
    IL_01ac:  ldarg.3
    IL_01ad:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01b2:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
    IL_01b7:  callvirt   instance float32 Game.ComponentLevel::get_StrengthFactor()
    IL_01bc:  ldc.r4     1.
    IL_01c1:  sub
    IL_01c2:  mul
    IL_01c3:  ldc.r4     1.
    IL_01c8:  add
    IL_01c9:  mul
    IL_01ca:  stloc.s    V_9
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.SubsystemProjectiles Game.SubsystemThrowableBlockBehavior::m_subsystemProjectiles
    IL_01d2:  ldloc.s    V_6
    IL_01d4:  ldloc.2
    IL_01d5:  ldloc.3
    IL_01d6:  ldloc.s    V_9
    IL_01d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01dd:  ldarg.0
    IL_01de:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_01e3:  ldc.r4     5.
    IL_01e8:  ldc.r4     10.
    IL_01ed:  ldc.i4.0
    IL_01ee:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_01f3:  ldarg.3
    IL_01f4:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_01f9:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_01fe:  brfalse.s  IL_0257

    IL_0200:  ldarg.3
    IL_0201:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_0206:  ldloc.s    V_5
    IL_0208:  ldc.i4.1
    IL_0209:  callvirt   instance int32 Game.IInventory::RemoveSlotItems(int32,
                                                                         int32)
    IL_020e:  pop
    IL_020f:  ldarg.0
    IL_0210:  ldfld      class Game.SubsystemAudio Game.SubsystemThrowableBlockBehavior::m_subsystemAudio
    IL_0215:  ldstr      "Audio/Throw"
    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_0220:  ldc.r4     0.2
    IL_0225:  ldc.r4     0.30000001
    IL_022a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_022f:  ldarg.0
    IL_0230:  ldfld      class Game.Random Game.SubsystemThrowableBlockBehavior::m_random
    IL_0235:  ldc.r4     -0.2
    IL_023a:  ldc.r4     0.2
    IL_023f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0244:  ldarg.1
    IL_0245:  ldc.r4     2.
    IL_024a:  ldc.i4.1
    IL_024b:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0250:  ldarg.3
    IL_0251:  ldc.i4.0
    IL_0252:  callvirt   instance void Game.ComponentMiner::Poke(bool)
    IL_0257:  ldc.i4.0
    IL_0258:  ret
  } // end of method SubsystemThrowableBlockBehavior::OnAim

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_000d:  stfld      class Game.SubsystemAudio Game.SubsystemThrowableBlockBehavior::m_subsystemAudio
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_001f:  stfld      class Game.SubsystemProjectiles Game.SubsystemThrowableBlockBehavior::m_subsystemProjectiles
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_002b:  ret
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