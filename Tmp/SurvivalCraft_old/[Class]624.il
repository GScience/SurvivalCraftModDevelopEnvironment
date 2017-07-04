.class public auto ansi beforefieldinit Game.SubsystemMatchBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class Game.SubsystemExplosivesBlockBehavior m_subsystemExplosivesBlockBehavior
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   108
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemMatchBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       448 (0x1c0)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_1,
             valuetype Game.CellFace V_2,
             class Game.ComponentOnFire V_3)
    IL_0000:  ldarg.3
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> Game.ComponentMiner::PickBody(valuetype [Engine]Engine.Vector3,
                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0008:  stloc.0
    IL_0009:  ldarg.3
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.ComponentMiner::PickTerrainForDigging(valuetype [Engine]Engine.Vector3,
                                                                                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0011:  stloc.1
    IL_0012:  ldloca.s   V_1
    IL_0014:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0019:  brfalse    IL_010b

    IL_001e:  ldloca.s   V_0
    IL_0020:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0025:  brfalse.s  IL_0044

    IL_0027:  ldloca.s   V_1
    IL_0029:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_002e:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0033:  ldloca.s   V_0
    IL_0035:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_003a:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_003f:  bge.un     IL_010b

    IL_0044:  ldloca.s   V_1
    IL_0046:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_004b:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0050:  stloc.2
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.SubsystemExplosivesBlockBehavior Game.SubsystemMatchBlockBehavior::m_subsystemExplosivesBlockBehavior
    IL_0057:  ldloc.2
    IL_0058:  ldfld      int32 Game.CellFace::X
    IL_005d:  ldloc.2
    IL_005e:  ldfld      int32 Game.CellFace::Y
    IL_0063:  ldloc.2
    IL_0064:  ldfld      int32 Game.CellFace::Z
    IL_0069:  callvirt   instance bool Game.SubsystemExplosivesBlockBehavior::IgniteFuse(int32,
                                                                                         int32,
                                                                                         int32)
    IL_006e:  brfalse.s  IL_00aa

    IL_0070:  ldarg.0
    IL_0071:  ldfld      class Game.SubsystemAudio Game.SubsystemMatchBlockBehavior::m_subsystemAudio
    IL_0076:  ldstr      "Audio/Match"
    IL_007b:  ldc.r4     1.
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_0086:  ldc.r4     -0.1
    IL_008b:  ldc.r4     0.1
    IL_0090:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0095:  ldarg.1
    IL_0096:  ldc.r4     1.
    IL_009b:  ldc.i4.1
    IL_009c:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_00a1:  ldarg.3
    IL_00a2:  ldc.i4.1
    IL_00a3:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_00a8:  ldc.i4.1
    IL_00a9:  ret

    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemMatchBlockBehavior::m_subsystemFireBlockBehavior
    IL_00b0:  ldloc.2
    IL_00b1:  ldfld      int32 Game.CellFace::X
    IL_00b6:  ldloc.2
    IL_00b7:  ldfld      int32 Game.CellFace::Y
    IL_00bc:  ldloc.2
    IL_00bd:  ldfld      int32 Game.CellFace::Z
    IL_00c2:  ldc.r4     1.
    IL_00c7:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_00cc:  brfalse    IL_01be

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SubsystemAudio Game.SubsystemMatchBlockBehavior::m_subsystemAudio
    IL_00d7:  ldstr      "Audio/Match"
    IL_00dc:  ldc.r4     1.
    IL_00e1:  ldarg.0
    IL_00e2:  ldfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_00e7:  ldc.r4     -0.1
    IL_00ec:  ldc.r4     0.1
    IL_00f1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00f6:  ldarg.1
    IL_00f7:  ldc.r4     1.
    IL_00fc:  ldc.i4.1
    IL_00fd:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0102:  ldarg.3
    IL_0103:  ldc.i4.1
    IL_0104:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_0109:  ldc.i4.1
    IL_010a:  ret

    IL_010b:  ldloca.s   V_0
    IL_010d:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_HasValue()
    IL_0112:  brfalse    IL_01be

    IL_0117:  ldloca.s   V_0
    IL_0119:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::get_Value()
    IL_011e:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_0123:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0128:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
    IL_012d:  stloc.3
    IL_012e:  ldloc.3
    IL_012f:  brfalse    IL_01be

    IL_0134:  ldarg.0
    IL_0135:  ldfld      class Game.SubsystemGameInfo Game.SubsystemMatchBlockBehavior::m_subsystemGameInfo
    IL_013a:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_013f:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0144:  ldc.i4.2
    IL_0145:  blt.s      IL_0163

    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_014d:  ldc.r4     0.0
    IL_0152:  ldc.r4     1.
    IL_0157:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_015c:  ldc.r4     0.33000001
    IL_0161:  bge.un.s   IL_0184

    IL_0163:  ldloc.3
    IL_0164:  ldarg.3
    IL_0165:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_016a:  ldarg.0
    IL_016b:  ldfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_0170:  ldc.r4     6.
    IL_0175:  ldc.r4     8.
    IL_017a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_017f:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                       float32)
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.SubsystemAudio Game.SubsystemMatchBlockBehavior::m_subsystemAudio
    IL_018a:  ldstr      "Audio/Match"
    IL_018f:  ldc.r4     1.
    IL_0194:  ldarg.0
    IL_0195:  ldfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_019a:  ldc.r4     -0.1
    IL_019f:  ldc.r4     0.1
    IL_01a4:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01a9:  ldarg.1
    IL_01aa:  ldc.r4     1.
    IL_01af:  ldc.i4.1
    IL_01b0:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_01b5:  ldarg.3
    IL_01b6:  ldc.i4.1
    IL_01b7:  callvirt   instance void Game.ComponentMiner::RemoveActiveTool(int32)
    IL_01bc:  ldc.i4.1
    IL_01bd:  ret

    IL_01be:  ldc.i4.0
    IL_01bf:  ret
  } // end of method SubsystemMatchBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemMatchBlockBehavior::m_subsystemAudio
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0026:  stfld      class Game.SubsystemGameInfo Game.SubsystemMatchBlockBehavior::m_subsystemGameInfo
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_0038:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemMatchBlockBehavior::m_subsystemFireBlockBehavior
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosivesBlockBehavior>(bool)
    IL_004a:  stfld      class Game.SubsystemExplosivesBlockBehavior Game.SubsystemMatchBlockBehavior::m_subsystemExplosivesBlockBehavior
    IL_004f:  ret
  } // end of method SubsystemMatchBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemMatchBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemMatchBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemMatchBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemMatchBlockBehavior::HandledBlocks
} // end of class Game.SubsystemMatchBlockBehavior