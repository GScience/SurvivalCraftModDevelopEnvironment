.class public auto ansi beforefieldinit Game.ComponentSimpleModel
       extends Game.ComponentModel
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentSpawn m_componentSpawn
  .method public hidebysig virtual instance void 
          Animate() cil managed
  {
    // 代码大小       245 (0xf5)
    .maxstack  5
    .locals init (valuetype [System.Runtime]System.Nullable`1<float64> V_0,
             valuetype [System.Runtime]System.Nullable`1<float32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0006:  brfalse    IL_00c8

    IL_000b:  ldarg.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0012:  callvirt   instance float32 Game.ComponentSpawn::get_SpawnDuration()
    IL_0017:  ldc.r4     0.0
    IL_001c:  bgt.s      IL_0025

    IL_001e:  ldc.r4     1.
    IL_0023:  br.s       IL_004f

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.SubsystemGameInfo Game.ComponentSimpleModel::m_subsystemGameInfo
    IL_002b:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0036:  callvirt   instance float64 Game.ComponentSpawn::get_SpawnTime()
    IL_003b:  sub
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0042:  callvirt   instance float32 Game.ComponentSpawn::get_SpawnDuration()
    IL_0047:  conv.r8
    IL_0048:  div
    IL_0049:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_004e:  conv.r4
    IL_004f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_0054:  call       instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_005f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_0064:  stloc.0
    IL_0065:  ldloca.s   V_0
    IL_0067:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_006c:  brfalse.s  IL_00c8

    IL_006e:  ldarg.0
    IL_006f:  ldarg.0
    IL_0070:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_0075:  stloc.1
    IL_0076:  ldloca.s   V_1
    IL_0078:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_007d:  ldc.r8     1.
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemGameInfo Game.ComponentSimpleModel::m_subsystemGameInfo
    IL_008c:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0091:  ldarg.0
    IL_0092:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0097:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentSpawn::get_DespawnTime()
    IL_009c:  stloc.0
    IL_009d:  ldloca.s   V_0
    IL_009f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_00a4:  sub
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_00ab:  callvirt   instance float32 Game.ComponentSpawn::get_DespawnDuration()
    IL_00b0:  conv.r8
    IL_00b1:  div
    IL_00b2:  sub
    IL_00b3:  call       float64 [Engine]Engine.MathUtils::Saturate(float64)
    IL_00b8:  conv.r4
    IL_00b9:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00be:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_00c3:  call       instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_00c8:  ldarg.0
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_00cf:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_00d4:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_00d9:  ldarg.0
    IL_00da:  ldfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_00df:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00e4:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_00e9:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_00ee:  ldarg.0
    IL_00ef:  call       instance void Game.ComponentModel::Animate()
    IL_00f4:  ret
  } // end of method ComponentSimpleModel::Animate

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentSimpleModel::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSpawn>()
    IL_001e:  stfld      class Game.ComponentSpawn Game.ComponentSimpleModel::m_componentSpawn
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  ldarg.2
    IL_0026:  call       instance void Game.ComponentModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                 class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_002b:  ret
  } // end of method ComponentSimpleModel::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentModel::.ctor()
    IL_0006:  ret
  } // end of method ComponentSimpleModel::.ctor

} // end of class Game.ComponentSimpleModel