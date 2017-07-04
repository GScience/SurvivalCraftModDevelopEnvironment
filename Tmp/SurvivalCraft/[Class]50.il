.class public auto ansi beforefieldinit Game.ComponentDispenser
       extends Game.ComponentInventoryBase
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.ComponentBlockEntity m_componentBlockEntity
  .field private class Game.Random m_random
  .method public hidebysig instance void 
          Dispense() cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             valuetype Game.DispenserBlock/Mode V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentBlockEntity Game.ComponentDispenser::m_componentBlockEntity
    IL_0006:  callvirt   instance valuetype [Engine]Engine.Point3 Game.ComponentBlockEntity::get_Coordinates()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.SubsystemTerrain Game.ComponentDispenser::m_subsystemTerrain
    IL_0012:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0017:  ldloc.0
    IL_0018:  ldfld      int32 [Engine]Engine.Point3::X
    IL_001d:  ldloc.0
    IL_001e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0023:  ldloc.0
    IL_0024:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0029:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_002e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0033:  dup
    IL_0034:  call       int32 Game.DispenserBlock::GetDirection(int32)
    IL_0039:  stloc.1
    IL_003a:  call       valuetype Game.DispenserBlock/Mode Game.DispenserBlock::GetMode(int32)
    IL_003f:  stloc.2
    IL_0040:  ldc.i4.0
    IL_0041:  stloc.3
    IL_0042:  br.s       IL_008a

    IL_0044:  ldarg.0
    IL_0045:  ldloc.3
    IL_0046:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotValue(int32)
    IL_004b:  stloc.s    V_4
    IL_004d:  ldarg.0
    IL_004e:  ldloc.3
    IL_004f:  callvirt   instance int32 Game.ComponentInventoryBase::GetSlotCount(int32)
    IL_0054:  stloc.s    V_5
    IL_0056:  ldloc.s    V_4
    IL_0058:  brfalse.s  IL_0086

    IL_005a:  ldloc.s    V_5
    IL_005c:  ldc.i4.0
    IL_005d:  ble.s      IL_0086

    IL_005f:  ldarg.0
    IL_0060:  ldloc.3
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance int32 Game.ComponentInventoryBase::RemoveSlotItems(int32,
                                                                                     int32)
    IL_0067:  stloc.s    V_6
    IL_0069:  ldc.i4.0
    IL_006a:  stloc.s    V_7
    IL_006c:  br.s       IL_007f

    IL_006e:  ldarg.0
    IL_006f:  ldloc.0
    IL_0070:  ldloc.1
    IL_0071:  ldloc.s    V_4
    IL_0073:  ldloc.2
    IL_0074:  call       instance void Game.ComponentDispenser::DispenseItem(valuetype [Engine]Engine.Point3,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.DispenserBlock/Mode)
    IL_0079:  ldloc.s    V_7
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  stloc.s    V_7
    IL_007f:  ldloc.s    V_7
    IL_0081:  ldloc.s    V_6
    IL_0083:  blt.s      IL_006e

    IL_0085:  ret

    IL_0086:  ldloc.3
    IL_0087:  ldc.i4.1
    IL_0088:  add
    IL_0089:  stloc.3
    IL_008a:  ldloc.3
    IL_008b:  ldarg.0
    IL_008c:  callvirt   instance int32 Game.ComponentInventoryBase::get_SlotsCount()
    IL_0091:  blt.s      IL_0044

    IL_0093:  ret
  } // end of method ComponentDispenser::Dispense

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       99 (0x63)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentInventoryBase::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                         class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0015:  stfld      class Game.SubsystemTerrain Game.ComponentDispenser::m_subsystemTerrain
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0027:  stfld      class Game.SubsystemAudio Game.ComponentDispenser::m_subsystemAudio
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0039:  stfld      class Game.SubsystemPickables Game.ComponentDispenser::m_subsystemPickables
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_004b:  stfld      class Game.SubsystemProjectiles Game.ComponentDispenser::m_subsystemProjectiles
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0057:  ldc.i4.1
    IL_0058:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBlockEntity>(bool)
    IL_005d:  stfld      class Game.ComponentBlockEntity Game.ComponentDispenser::m_componentBlockEntity
    IL_0062:  ret
  } // end of method ComponentDispenser::Load

  .method private hidebysig instance void 
          DispenseItem(valuetype [Engine]Engine.Point3 point,
                       int32 face,
                       int32 'value',
                       valuetype Game.DispenserBlock/Mode mode) cil managed
  {
    // 代码大小       358 (0x166)
    .maxstack  9
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_3,
             float32 V_4)
    IL_0000:  ldarg.2
    IL_0001:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 [Engine]Engine.Point3::X
    IL_000d:  conv.r4
    IL_000e:  ldc.r4     0.5
    IL_0013:  add
    IL_0014:  ldarg.1
    IL_0015:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_001a:  conv.r4
    IL_001b:  ldc.r4     0.5
    IL_0020:  add
    IL_0021:  ldarg.1
    IL_0022:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0027:  conv.r4
    IL_0028:  ldc.r4     0.5
    IL_002d:  add
    IL_002e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0033:  ldc.r4     0.60000002
    IL_0038:  ldloc.0
    IL_0039:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_003e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0043:  stloc.1
    IL_0044:  ldarg.s    mode
    IL_0046:  brtrue.s   IL_00c0

    IL_0048:  ldc.r4     1.8
    IL_004d:  stloc.2
    IL_004e:  ldarg.0
    IL_004f:  ldfld      class Game.SubsystemPickables Game.ComponentDispenser::m_subsystemPickables
    IL_0054:  ldarg.3
    IL_0055:  ldc.i4.1
    IL_0056:  ldloc.1
    IL_0057:  ldloc.2
    IL_0058:  ldloc.0
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.Random Game.ComponentDispenser::m_random
    IL_005f:  ldc.r4     0.2
    IL_0064:  ldc.i4.0
    IL_0065:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_006a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0074:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0079:  ldloca.s   V_3
    IL_007b:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0081:  ldloc.3
    IL_0082:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_0087:  pop
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class Game.SubsystemAudio Game.ComponentDispenser::m_subsystemAudio
    IL_008e:  ldstr      "Audio/DispenserDispense"
    IL_0093:  ldc.r4     1.
    IL_0098:  ldc.r4     0.0
    IL_009d:  ldloc.1
    IL_009e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a3:  ldloc.1
    IL_00a4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a9:  ldloc.1
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00af:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b4:  ldc.r4     3.
    IL_00b9:  ldc.i4.1
    IL_00ba:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00bf:  ret

    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class Game.Random Game.ComponentDispenser::m_random
    IL_00c6:  ldc.r4     39.
    IL_00cb:  ldc.r4     41.
    IL_00d0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d5:  stloc.s    V_4
    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.SubsystemProjectiles Game.ComponentDispenser::m_subsystemProjectiles
    IL_00dd:  ldarg.3
    IL_00de:  ldloc.1
    IL_00df:  ldloc.s    V_4
    IL_00e1:  ldloc.0
    IL_00e2:  ldarg.0
    IL_00e3:  ldfld      class Game.Random Game.ComponentDispenser::m_random
    IL_00e8:  ldc.r4     2.5e-002
    IL_00ed:  ldc.i4.0
    IL_00ee:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                        bool)
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f8:  ldc.r4     0.0
    IL_00fd:  ldc.r4     5.0000001e-002
    IL_0102:  ldc.r4     0.0
    IL_0107:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0116:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_011b:  ldnull
    IL_011c:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::FireProjectile(int32,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                  class Game.ComponentCreature)
    IL_0121:  brfalse.s  IL_015b

    IL_0123:  ldarg.0
    IL_0124:  ldfld      class Game.SubsystemAudio Game.ComponentDispenser::m_subsystemAudio
    IL_0129:  ldstr      "Audio/DispenserShoot"
    IL_012e:  ldc.r4     1.
    IL_0133:  ldc.r4     0.0
    IL_0138:  ldloc.1
    IL_0139:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_013e:  ldloc.1
    IL_013f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0144:  ldloc.1
    IL_0145:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_014a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_014f:  ldc.r4     4.
    IL_0154:  ldc.i4.1
    IL_0155:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_015a:  ret

    IL_015b:  ldarg.0
    IL_015c:  ldarg.1
    IL_015d:  ldarg.2
    IL_015e:  ldarg.3
    IL_015f:  ldc.i4.0
    IL_0160:  call       instance void Game.ComponentDispenser::DispenseItem(valuetype [Engine]Engine.Point3,
                                                                             int32,
                                                                             int32,
                                                                             valuetype Game.DispenserBlock/Mode)
    IL_0165:  ret
  } // end of method ComponentDispenser::DispenseItem

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.ComponentDispenser::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.ComponentInventoryBase::.ctor()
    IL_0011:  ret
  } // end of method ComponentDispenser::.ctor

} // end of class Game.ComponentDispenser