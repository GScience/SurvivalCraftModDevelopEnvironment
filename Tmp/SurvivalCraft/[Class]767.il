.class public auto ansi beforefieldinit Game.SubsystemPickables
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemPickables/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__32_0'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__32_1'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__32_2'
    .field public static class [System.Runtime]System.Func`2<object,bool> '<>9__33_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemPickables/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<Update>b__32_0'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__32_0'

    .method assembly hidebysig instance bool 
            '<Update>b__32_1'(int32 value2,
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__32_1'

    .method assembly hidebysig instance bool 
            '<Update>b__32_2'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__32_2'

    .method assembly hidebysig instance bool 
            '<Load>b__33_0'(object v) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__33_0'

  } // end of class '<>c'

  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class Game.SubsystemFluidBlockBehavior m_subsystemFluidBlockBehavior
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> m_tmpPlayers
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> m_pickables
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> m_pickablesToRemove
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class Game.Random m_random
  .field private class Game.DrawBlockEnvironmentData m_drawBlockEnvironmentData
  .field private class [System.Runtime]System.Action`1<class Game.Pickable> PickableAdded
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.Pickable> PickableRemoved
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance void 
          add_PickableAdded(class [System.Runtime]System.Action`1<class Game.Pickable> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Pickable> V_0,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_1,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Pickable>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Pickable>>(!!0&,
                                                                                                                                                         !!0,
                                                                                                                                                         !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPickables::add_PickableAdded

  .method public hidebysig specialname instance void 
          remove_PickableAdded(class [System.Runtime]System.Action`1<class Game.Pickable> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Pickable> V_0,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_1,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Pickable>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Pickable>>(!!0&,
                                                                                                                                                         !!0,
                                                                                                                                                         !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPickables::remove_PickableAdded

  .method public hidebysig specialname instance void 
          add_PickableRemoved(class [System.Runtime]System.Action`1<class Game.Pickable> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Pickable> V_0,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_1,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Pickable>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Pickable>>(!!0&,
                                                                                                                                                         !!0,
                                                                                                                                                         !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPickables::add_PickableRemoved

  .method public hidebysig specialname instance void 
          remove_PickableRemoved(class [System.Runtime]System.Action`1<class Game.Pickable> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.Pickable> V_0,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_1,
             class [System.Runtime]System.Action`1<class Game.Pickable> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.Pickable>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.Pickable>>(!!0&,
                                                                                                                                                         !!0,
                                                                                                                                                         !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemPickables::remove_PickableRemoved

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> 
          get_Pickables() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemPickables::get_Pickables

  .method public hidebysig instance class Game.Pickable 
          AddPickable(int32 'value',
                      int32 count,
                      valuetype [Engine]Engine.Vector3 position,
                      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> velocity,
                      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> stuckMatrix) cil managed
  {
    // 代码大小       253 (0xfd)
    .maxstack  6
    .locals init (class Game.Pickable V_0,
             valuetype [Engine]Engine.Vector2 V_1)
    IL_0000:  newobj     instance void Game.Pickable::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 Game.WorldItem::Value
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      int32 Game.Pickable::Count
    IL_0014:  ldloc.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
    IL_001b:  ldloc.0
    IL_001c:  ldarg.s    stuckMatrix
    IL_001e:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
    IL_0023:  ldloc.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPickables::m_subsystemGameInfo
    IL_002a:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_002f:  stfld      float64 Game.WorldItem::CreationTime
    IL_0034:  ldarga.s   velocity
    IL_0036:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_003b:  brfalse.s  IL_004f

    IL_003d:  ldloc.0
    IL_003e:  ldarga.s   velocity
    IL_0040:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0045:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_004a:  br         IL_00db

    IL_004f:  ldarg.1
    IL_0050:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0055:  ldc.i4     0xf8
    IL_005a:  bne.un.s   IL_0091

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_0062:  ldc.r4     1.5
    IL_0067:  ldc.r4     2.
    IL_006c:  ldc.i4.1
    IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.Random::UniformVector2(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0072:  stloc.1
    IL_0073:  ldloc.0
    IL_0074:  ldloc.1
    IL_0075:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_007a:  ldc.r4     3.
    IL_007f:  ldloc.1
    IL_0080:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0085:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008a:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_008f:  br.s       IL_00db

    IL_0091:  ldloc.0
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_0098:  ldc.r4     -0.5
    IL_009d:  ldc.r4     0.5
    IL_00a2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_00ad:  ldc.r4     1.
    IL_00b2:  ldc.r4     3.
    IL_00b7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bc:  ldarg.0
    IL_00bd:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_00c2:  ldc.r4     -0.5
    IL_00c7:  ldc.r4     0.5
    IL_00cc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00d1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d6:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_00e1:  ldloc.0
    IL_00e2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Add(!0)
    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_00ed:  brfalse.s  IL_00fb

    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_00f5:  ldloc.0
    IL_00f6:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Pickable>::Invoke(!0)
    IL_00fb:  ldloc.0
    IL_00fc:  ret
  } // end of method SubsystemPickables::AddPickable

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemPickables::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemPickables::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       747 (0x2eb)
    .maxstack  7
    .locals init (float64 V_0,
             valuetype [Engine]Engine.Matrix V_1,
             float32 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable> V_3,
             class Game.Pickable V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             float32 V_6,
             int32 V_7,
             class Game.Block V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             class Game.TerrainChunk V_13,
             float32 V_14,
             int32 V_15,
             valuetype [Engine]Engine.Matrix V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPickables::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
    IL_0018:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_001d:  ldloc.0
    IL_001e:  ldc.r8     6.2831854820251465
    IL_0027:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_002c:  conv.r4
    IL_002d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0032:  stloc.1
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class Game.SubsystemSky Game.SubsystemPickables::m_subsystemSky
    IL_0039:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_003e:  ldc.r4     30.
    IL_0043:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0048:  stloc.2
    IL_0049:  ldarg.0
    IL_004a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_004f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_0054:  stloc.3
    .try
    {
      IL_0055:  br         IL_02b7

      IL_005a:  ldloca.s   V_3
      IL_005c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0061:  stloc.s    V_4
      IL_0063:  ldloc.s    V_4
      IL_0065:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_006a:  stloc.s    V_5
      IL_006c:  ldarg.1
      IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
      IL_0072:  ldloc.s    V_5
      IL_0074:  ldarg.1
      IL_0075:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_007a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_007f:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_0084:  stloc.s    V_6
      IL_0086:  ldloc.s    V_6
      IL_0088:  ldc.r4     -0.5
      IL_008d:  ble.un     IL_02b7

      IL_0092:  ldloc.s    V_6
      IL_0094:  ldloc.2
      IL_0095:  bge.un     IL_02b7

      IL_009a:  ldloc.s    V_4
      IL_009c:  ldfld      int32 Game.WorldItem::Value
      IL_00a1:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00a6:  stloc.s    V_7
      IL_00a8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00ad:  ldloc.s    V_7
      IL_00af:  ldelem.ref
      IL_00b0:  stloc.s    V_8
      IL_00b2:  ldloc.0
      IL_00b3:  ldloc.s    V_4
      IL_00b5:  ldfld      float64 Game.WorldItem::CreationTime
      IL_00ba:  sub
      IL_00bb:  conv.r4
      IL_00bc:  stloc.s    V_9
      IL_00be:  ldloc.s    V_4
      IL_00c0:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_00c5:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_00ca:  brtrue.s   IL_00ea

      IL_00cc:  ldloca.s   V_5
      IL_00ce:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_00d3:  dup
      IL_00d4:  ldind.r4
      IL_00d5:  ldc.r4     0.25
      IL_00da:  ldc.r4     3.
      IL_00df:  ldloc.s    V_9
      IL_00e1:  mul
      IL_00e2:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_00e7:  mul
      IL_00e8:  add
      IL_00e9:  stind.r4
      IL_00ea:  ldloc.s    V_5
      IL_00ec:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_00f1:  call       int32 Game.Terrain::ToCell(float32)
      IL_00f6:  stloc.s    V_10
      IL_00f8:  ldloc.s    V_5
      IL_00fa:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00ff:  call       int32 Game.Terrain::ToCell(float32)
      IL_0104:  stloc.s    V_11
      IL_0106:  ldloc.s    V_5
      IL_0108:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_010d:  call       int32 Game.Terrain::ToCell(float32)
      IL_0112:  stloc.s    V_12
      IL_0114:  ldarg.0
      IL_0115:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_011a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_011f:  ldloc.s    V_10
      IL_0121:  ldloc.s    V_12
      IL_0123:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_0128:  stloc.s    V_13
      IL_012a:  ldloc.s    V_13
      IL_012c:  brfalse    IL_01e3

      IL_0131:  ldloc.s    V_13
      IL_0133:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0138:  ldc.i4.7
      IL_0139:  blt        IL_01e3

      IL_013e:  ldloc.s    V_11
      IL_0140:  ldc.i4.0
      IL_0141:  blt        IL_01e3

      IL_0146:  ldloc.s    V_11
      IL_0148:  ldc.i4.s   127
      IL_014a:  bge        IL_01e3

      IL_014f:  ldarg.0
      IL_0150:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0155:  ldarg.0
      IL_0156:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_015b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0160:  ldloc.s    V_10
      IL_0162:  ldloc.s    V_12
      IL_0164:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                    int32)
      IL_0169:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_016e:  ldarg.0
      IL_016f:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0174:  ldarg.0
      IL_0175:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_017a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_017f:  ldloc.s    V_10
      IL_0181:  ldloc.s    V_12
      IL_0183:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                       int32)
      IL_0188:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_018d:  ldloc.s    V_5
      IL_018f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0194:  ldloc.s    V_11
      IL_0196:  conv.r4
      IL_0197:  sub
      IL_0198:  stloc.s    V_14
      IL_019a:  ldc.r4     1.
      IL_019f:  ldloc.s    V_14
      IL_01a1:  sub
      IL_01a2:  ldarg.0
      IL_01a3:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_01a8:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_01ad:  ldloc.s    V_10
      IL_01af:  ldloc.s    V_11
      IL_01b1:  ldloc.s    V_12
      IL_01b3:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                         int32,
                                                                         int32)
      IL_01b8:  conv.r4
      IL_01b9:  mul
      IL_01ba:  ldloc.s    V_14
      IL_01bc:  ldarg.0
      IL_01bd:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_01c2:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_01c7:  ldloc.s    V_10
      IL_01c9:  ldloc.s    V_11
      IL_01cb:  ldc.i4.1
      IL_01cc:  add
      IL_01cd:  ldloc.s    V_12
      IL_01cf:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                         int32,
                                                                         int32)
      IL_01d4:  conv.r4
      IL_01d5:  mul
      IL_01d6:  add
      IL_01d7:  conv.i4
      IL_01d8:  stloc.s    V_15
      IL_01da:  ldloc.s    V_4
      IL_01dc:  ldloc.s    V_15
      IL_01de:  stfld      int32 Game.WorldItem::Light
      IL_01e3:  ldarg.0
      IL_01e4:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_01e9:  ldloc.s    V_4
      IL_01eb:  ldfld      int32 Game.WorldItem::Light
      IL_01f0:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_01f5:  ldarg.0
      IL_01f6:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_01fb:  ldarg.1
      IL_01fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewDirection()
      IL_0201:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0206:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
      IL_020b:  ldarg.0
      IL_020c:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0211:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_0216:  ldloc.s    V_5
      IL_0218:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_021d:  ldloc.s    V_4
      IL_021f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0224:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_0229:  brfalse.s  IL_0261

      IL_022b:  ldloc.s    V_4
      IL_022d:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0232:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_0237:  stloc.s    V_16
      IL_0239:  ldloc.s    V_8
      IL_023b:  ldarg.0
      IL_023c:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
      IL_0241:  ldloc.s    V_4
      IL_0243:  ldfld      int32 Game.WorldItem::Value
      IL_0248:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_024d:  ldc.r4     0.30000001
      IL_0252:  ldloca.s   V_16
      IL_0254:  ldarg.0
      IL_0255:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_025a:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               valuetype [Engine]Engine.Color,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_025f:  br.s       IL_02b7

      IL_0261:  ldloca.s   V_1
      IL_0263:  ldloc.s    V_5
      IL_0265:  ldc.r4     0.0
      IL_026a:  ldc.r4     3.9999999e-002
      IL_026f:  ldc.r4     3.
      IL_0274:  ldloc.s    V_9
      IL_0276:  mul
      IL_0277:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_027c:  mul
      IL_027d:  ldc.r4     0.0
      IL_0282:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0287:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_028c:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_0291:  ldloc.s    V_8
      IL_0293:  ldarg.0
      IL_0294:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
      IL_0299:  ldloc.s    V_4
      IL_029b:  ldfld      int32 Game.WorldItem::Value
      IL_02a0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_02a5:  ldc.r4     0.30000001
      IL_02aa:  ldloca.s   V_1
      IL_02ac:  ldarg.0
      IL_02ad:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_02b2:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               valuetype [Engine]Engine.Color,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_02b7:  ldloca.s   V_3
      IL_02b9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_02be:  brtrue     IL_005a

      IL_02c3:  leave.s    IL_02d3

    }  // end .try
    finally
    {
      IL_02c5:  ldloca.s   V_3
      IL_02c7:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_02cd:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02d2:  endfinally
    }  // end handler
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
    IL_02d9:  ldarg.1
    IL_02da:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_02df:  ldc.i4.1
    IL_02e0:  ldc.i4     0x7fffffff
    IL_02e5:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool,
                                                                                                                                                                                                                                        int32)
    IL_02ea:  ret
  } // end of method SubsystemPickables::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemPickables::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       3285 (0xcd5)
    .maxstack  7
    .locals init (float64 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> V_4,
             class Game.ComponentPlayer V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable> V_6,
             class Game.Pickable V_7,
             class Game.Block V_8,
             int32 V_9,
             float32 V_10,
             float64 V_11,
             class Game.TerrainChunk V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer> V_15,
             class Game.ComponentPlayer V_16,
             class Game.ComponentBody V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             valuetype [Engine]Engine.Vector3 V_19,
             float32 V_20,
             bool V_21,
             class Game.IInventory V_22,
             valuetype [Engine]Engine.Vector3 V_23,
             float32 V_24,
             class Game.FluidBlock V_25,
             valuetype [System.Runtime]System.Nullable`1<float32> V_26,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_27,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_28,
             int32 V_29,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_30,
             class Game.SubsystemBlockBehavior[] V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             int32 V_37,
             int32 V_38,
             valuetype [System.Runtime]System.Nullable`1<int32> V_39,
             int32 V_40,
             int32 V_41,
             int32 V_42,
             int32 V_43,
             valuetype [Engine]Engine.Plane V_44,
             bool V_45,
             valuetype Game.TerrainRaycastResult V_46,
             float32 V_47,
             float32 V_48,
             float32 V_49,
             valuetype [Engine]Engine.Vector3 V_50,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_51,
             valuetype [Engine]Engine.Matrix V_52,
             float32 V_53,
             float32 V_54,
             class Game.Pickable V_55)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPickables::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  stloc.0
    IL_000c:  ldc.r4     0.5
    IL_0011:  ldarg.1
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0017:  stloc.1
    IL_0018:  ldc.r4     1.e-003
    IL_001d:  ldarg.1
    IL_001e:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0023:  stloc.2
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPickables::m_tmpPlayers
    IL_002a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::Clear()
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemPlayers Game.SubsystemPickables::m_subsystemPlayers
    IL_0035:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer> Game.SubsystemPlayers::get_ComponentPlayers()
    IL_003a:  stloc.s    V_4
    IL_003c:  ldloca.s   V_4
    IL_003e:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.ComponentPlayer>::GetEnumerator()
    IL_0043:  stloc.3
    .try
    {
      IL_0044:  br.s       IL_006f

      IL_0046:  ldloca.s   V_3
      IL_0048:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::get_Current()
      IL_004d:  stloc.s    V_5
      IL_004f:  ldloc.s    V_5
      IL_0051:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
      IL_0056:  callvirt   instance float32 Game.ComponentHealth::get_Health()
      IL_005b:  ldc.r4     0.0
      IL_0060:  ble.un.s   IL_006f

      IL_0062:  ldarg.0
      IL_0063:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPickables::m_tmpPlayers
      IL_0068:  ldloc.s    V_5
      IL_006a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::Add(!0)
      IL_006f:  ldloca.s   V_3
      IL_0071:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
      IL_0076:  brtrue.s   IL_0046

      IL_0078:  leave.s    IL_0088

    }  // end .try
    finally
    {
      IL_007a:  ldloca.s   V_3
      IL_007c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.ComponentPlayer>
      IL_0082:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0087:  endfinally
    }  // end handler
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_008e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_0093:  stloc.s    V_6
    .try
    {
      IL_0095:  br         IL_0c59

      IL_009a:  ldloca.s   V_6
      IL_009c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_00a1:  stloc.s    V_7
      IL_00a3:  ldloc.s    V_7
      IL_00a5:  ldfld      bool Game.WorldItem::ToRemove
      IL_00aa:  brfalse.s  IL_00be

      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
      IL_00b2:  ldloc.s    V_7
      IL_00b4:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Add(!0)
      IL_00b9:  br         IL_0c59

      IL_00be:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00c3:  ldloc.s    V_7
      IL_00c5:  ldfld      int32 Game.WorldItem::Value
      IL_00ca:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00cf:  ldelem.ref
      IL_00d0:  stloc.s    V_8
      IL_00d2:  ldarg.0
      IL_00d3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
      IL_00d8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::get_Count()
      IL_00dd:  ldarg.0
      IL_00de:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
      IL_00e3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::get_Count()
      IL_00e8:  sub
      IL_00e9:  stloc.s    V_9
      IL_00eb:  ldc.r4     240.
      IL_00f0:  ldc.r4     90.
      IL_00f5:  ldloc.s    V_9
      IL_00f7:  conv.r4
      IL_00f8:  ldc.r4     40.
      IL_00fd:  div
      IL_00fe:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0103:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_0108:  stloc.s    V_10
      IL_010a:  ldloc.0
      IL_010b:  ldloc.s    V_7
      IL_010d:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0112:  sub
      IL_0113:  stloc.s    V_11
      IL_0115:  ldloc.s    V_11
      IL_0117:  ldloc.s    V_10
      IL_0119:  conv.r8
      IL_011a:  ble.un.s   IL_0129

      IL_011c:  ldloc.s    V_7
      IL_011e:  ldc.i4.1
      IL_011f:  stfld      bool Game.WorldItem::ToRemove
      IL_0124:  br         IL_0c59

      IL_0129:  ldarg.0
      IL_012a:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_012f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0134:  ldloc.s    V_7
      IL_0136:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_013b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0140:  call       int32 Game.Terrain::ToCell(float32)
      IL_0145:  ldloc.s    V_7
      IL_0147:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_014c:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0151:  call       int32 Game.Terrain::ToCell(float32)
      IL_0156:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_015b:  stloc.s    V_12
      IL_015d:  ldloc.s    V_12
      IL_015f:  brfalse    IL_0c59

      IL_0164:  ldloc.s    V_12
      IL_0166:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_016b:  ldc.i4.4
      IL_016c:  ble        IL_0c59

      IL_0171:  ldloc.s    V_7
      IL_0173:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0178:  stloc.s    V_13
      IL_017a:  ldloc.s    V_13
      IL_017c:  ldloc.s    V_7
      IL_017e:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0183:  ldarg.1
      IL_0184:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0189:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_018e:  stloc.s    V_14
      IL_0190:  ldloc.s    V_7
      IL_0192:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0197:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_019c:  brtrue     IL_0331

      IL_01a1:  ldloc.s    V_11
      IL_01a3:  ldc.r8     0.5
      IL_01ac:  ble.un     IL_0331

      IL_01b1:  ldarg.0
      IL_01b2:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPickables::m_tmpPlayers
      IL_01b7:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::GetEnumerator()
      IL_01bc:  stloc.s    V_15
      .try
      {
        IL_01be:  br         IL_0315

        IL_01c3:  ldloca.s   V_15
        IL_01c5:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>::get_Current()
        IL_01ca:  stloc.s    V_16
        IL_01cc:  ldloc.s    V_16
        IL_01ce:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
        IL_01d3:  stloc.s    V_17
        IL_01d5:  ldloc.s    V_17
        IL_01d7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
        IL_01dc:  ldc.r4     0.0
        IL_01e1:  ldc.r4     0.75
        IL_01e6:  ldc.r4     0.0
        IL_01eb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                         float32,
                                                                         float32)
        IL_01f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3)
        IL_01f5:  stloc.s    V_18
        IL_01f7:  ldloc.s    V_18
        IL_01f9:  ldloc.s    V_7
        IL_01fb:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
        IL_0200:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                     valuetype [Engine]Engine.Vector3)
        IL_0205:  stloc.s    V_19
        IL_0207:  ldloca.s   V_19
        IL_0209:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
        IL_020e:  stloc.s    V_20
        IL_0210:  ldloc.s    V_20
        IL_0212:  ldc.r4     3.0625
        IL_0217:  bge.un     IL_0315

        IL_021c:  ldloc.s    V_7
        IL_021e:  ldfld      int32 Game.WorldItem::Value
        IL_0223:  call       int32 Game.Terrain::ExtractContents(int32)
        IL_0228:  ldc.i4     0xf8
        IL_022d:  ceq
        IL_022f:  stloc.s    V_21
        IL_0231:  ldloc.s    V_16
        IL_0233:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
        IL_0238:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
        IL_023d:  stloc.s    V_22
        IL_023f:  ldloc.s    V_21
        IL_0241:  brtrue.s   IL_0257

        IL_0243:  ldloc.s    V_22
        IL_0245:  ldloc.s    V_7
        IL_0247:  ldfld      int32 Game.WorldItem::Value
        IL_024c:  call       int32 Game.ComponentInventoryBase::FindAcquireSlotForItem(class Game.IInventory,
                                                                                       int32)
        IL_0251:  ldc.i4.0
        IL_0252:  blt        IL_0315

        IL_0257:  ldloc.s    V_20
        IL_0259:  ldc.r4     1.
        IL_025e:  bge.un.s   IL_02db

        IL_0260:  ldloc.s    V_21
        IL_0262:  brfalse.s  IL_0285

        IL_0264:  ldloc.s    V_16
        IL_0266:  callvirt   instance class Game.ComponentLevel Game.ComponentPlayer::get_ComponentLevel()
        IL_026b:  ldloc.s    V_7
        IL_026d:  ldfld      int32 Game.Pickable::Count
        IL_0272:  ldc.i4.1
        IL_0273:  callvirt   instance void Game.ComponentLevel::AddExperience(int32,
                                                                              bool)
        IL_0278:  ldloc.s    V_7
        IL_027a:  ldc.i4.1
        IL_027b:  stfld      bool Game.WorldItem::ToRemove
        IL_0280:  br         IL_0315

        IL_0285:  ldloc.s    V_7
        IL_0287:  ldloc.s    V_22
        IL_0289:  ldloc.s    V_7
        IL_028b:  ldfld      int32 Game.WorldItem::Value
        IL_0290:  ldloc.s    V_7
        IL_0292:  ldfld      int32 Game.Pickable::Count
        IL_0297:  call       int32 Game.ComponentInventoryBase::AcquireItems(class Game.IInventory,
                                                                             int32,
                                                                             int32)
        IL_029c:  stfld      int32 Game.Pickable::Count
        IL_02a1:  ldloc.s    V_7
        IL_02a3:  ldfld      int32 Game.Pickable::Count
        IL_02a8:  brtrue.s   IL_0315

        IL_02aa:  ldloc.s    V_7
        IL_02ac:  ldc.i4.1
        IL_02ad:  stfld      bool Game.WorldItem::ToRemove
        IL_02b2:  ldarg.0
        IL_02b3:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
        IL_02b8:  ldstr      "Audio/PickableCollected"
        IL_02bd:  ldc.r4     0.69999999
        IL_02c2:  ldc.r4     -0.40000001
        IL_02c7:  ldloc.s    V_7
        IL_02c9:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
        IL_02ce:  ldc.r4     2.
        IL_02d3:  ldc.i4.0
        IL_02d4:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                          float32,
                                                                          float32,
                                                                          valuetype [Engine]Engine.Vector3,
                                                                          float32,
                                                                          bool)
        IL_02d9:  br.s       IL_0315

        IL_02db:  ldloc.s    V_7
        IL_02dd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
        IL_02e2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
        IL_02e7:  brtrue.s   IL_0315

        IL_02e9:  ldloc.s    V_7
        IL_02eb:  ldloc.s    V_18
        IL_02ed:  ldc.r4     0.1
        IL_02f2:  ldloc.s    V_20
        IL_02f4:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
        IL_02f9:  mul
        IL_02fa:  ldloc.s    V_17
        IL_02fc:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
        IL_0301:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                  valuetype [Engine]Engine.Vector3)
        IL_0306:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                  valuetype [Engine]Engine.Vector3)
        IL_030b:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
        IL_0310:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
        IL_0315:  ldloca.s   V_15
        IL_0317:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>::MoveNext()
        IL_031c:  brtrue     IL_01c3

        IL_0321:  leave.s    IL_0331

      }  // end .try
      finally
      {
        IL_0323:  ldloca.s   V_15
        IL_0325:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentPlayer>
        IL_032b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0330:  endfinally
      }  // end handler
      IL_0331:  ldloc.s    V_7
      IL_0333:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0338:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_033d:  brfalse.s  IL_03a1

      IL_033f:  ldloc.s    V_7
      IL_0341:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0346:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_034b:  ldloc.s    V_7
      IL_034d:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0352:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0357:  stloc.s    V_23
      IL_0359:  ldloca.s   V_23
      IL_035b:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
      IL_0360:  stloc.s    V_24
      IL_0362:  ldloc.s    V_24
      IL_0364:  ldc.r4     0.25
      IL_0369:  blt.un.s   IL_038f

      IL_036b:  ldloc.s    V_7
      IL_036d:  ldc.r4     6.
      IL_0372:  ldloc.s    V_23
      IL_0374:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0379:  ldloc.s    V_24
      IL_037b:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_0380:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0385:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_038a:  br         IL_0c50

      IL_038f:  ldloc.s    V_7
      IL_0391:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0396:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_039c:  br         IL_0c50

      IL_03a1:  ldarg.0
      IL_03a2:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemPickables::m_subsystemFluidBlockBehavior
      IL_03a7:  ldloc.s    V_7
      IL_03a9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_03ae:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03b3:  call       int32 Game.Terrain::ToCell(float32)
      IL_03b8:  ldloc.s    V_7
      IL_03ba:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_03bf:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_03c4:  ldc.r4     0.1
      IL_03c9:  add
      IL_03ca:  call       int32 Game.Terrain::ToCell(float32)
      IL_03cf:  ldloc.s    V_7
      IL_03d1:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_03d6:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_03db:  call       int32 Game.Terrain::ToCell(float32)
      IL_03e0:  ldloca.s   V_25
      IL_03e2:  ldloca.s   V_26
      IL_03e4:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::CalculateFlowSpeed(int32,
                                                                                                                                                                       int32,
                                                                                                                                                                       int32,
                                                                                                                                                                       class Game.FluidBlock&,
                                                                                                                                                                       valuetype [System.Runtime]System.Nullable`1<float32>&)
      IL_03e9:  stloc.s    V_27
      IL_03eb:  ldloc.s    V_7
      IL_03ed:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_03f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_03f7:  brtrue     IL_07e9

      IL_03fc:  ldarg.0
      IL_03fd:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0402:  ldloc.s    V_13
      IL_0404:  ldloc.s    V_14
      IL_0406:  ldc.i4.0
      IL_0407:  ldc.i4.1
      IL_0408:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_0'
      IL_040d:  dup
      IL_040e:  brtrue.s   IL_0427

      IL_0410:  pop
      IL_0411:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_0416:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__32_0'(int32,
                                                                                          float32)
      IL_041c:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_0421:  dup
      IL_0422:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_0'
      IL_0427:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_042c:  stloc.s    V_28
      IL_042e:  ldloca.s   V_28
      IL_0430:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0435:  brfalse    IL_0896

      IL_043a:  ldarg.0
      IL_043b:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0440:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0445:  ldloca.s   V_28
      IL_0447:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_044c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0451:  ldfld      int32 Game.CellFace::X
      IL_0456:  ldloca.s   V_28
      IL_0458:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_045d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0462:  ldfld      int32 Game.CellFace::Y
      IL_0467:  ldloca.s   V_28
      IL_0469:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_046e:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0473:  ldfld      int32 Game.CellFace::Z
      IL_0478:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_047d:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0482:  stloc.s    V_29
      IL_0484:  ldarg.0
      IL_0485:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemPickables::m_subsystemBlockBehaviors
      IL_048a:  ldloc.s    V_29
      IL_048c:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_0491:  stloc.s    V_31
      IL_0493:  ldc.i4.0
      IL_0494:  stloc.s    V_32
      IL_0496:  br.s       IL_04b6

      IL_0498:  ldloc.s    V_31
      IL_049a:  ldloc.s    V_32
      IL_049c:  ldelem.ref
      IL_049d:  ldloca.s   V_28
      IL_049f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_04a4:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_04a9:  ldloc.s    V_7
      IL_04ab:  callvirt   instance void Game.SubsystemBlockBehavior::OnHitByProjectile(valuetype Game.CellFace,
                                                                                        class Game.WorldItem)
      IL_04b0:  ldloc.s    V_32
      IL_04b2:  ldc.i4.1
      IL_04b3:  add
      IL_04b4:  stloc.s    V_32
      IL_04b6:  ldloc.s    V_32
      IL_04b8:  ldloc.s    V_31
      IL_04ba:  ldlen
      IL_04bb:  conv.i4
      IL_04bc:  blt.s      IL_0498

      IL_04be:  ldarg.0
      IL_04bf:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_04c4:  ldloc.s    V_13
      IL_04c6:  ldloc.s    V_13
      IL_04c8:  ldc.i4.0
      IL_04c9:  ldc.i4.1
      IL_04ca:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_1'
      IL_04cf:  dup
      IL_04d0:  brtrue.s   IL_04e9

      IL_04d2:  pop
      IL_04d3:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_04d8:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__32_1'(int32,
                                                                                          float32)
      IL_04de:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_04e3:  dup
      IL_04e4:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_1'
      IL_04e9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_04ee:  stloc.s    V_30
      IL_04f0:  ldloca.s   V_30
      IL_04f2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_04f7:  brfalse    IL_062b

      IL_04fc:  ldloc.s    V_13
      IL_04fe:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0503:  call       int32 Game.Terrain::ToCell(float32)
      IL_0508:  stloc.s    V_33
      IL_050a:  ldloc.s    V_13
      IL_050c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0511:  call       int32 Game.Terrain::ToCell(float32)
      IL_0516:  stloc.s    V_34
      IL_0518:  ldloc.s    V_13
      IL_051a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_051f:  call       int32 Game.Terrain::ToCell(float32)
      IL_0524:  stloc.s    V_35
      IL_0526:  ldc.i4.0
      IL_0527:  stloc.s    V_36
      IL_0529:  ldc.i4.0
      IL_052a:  stloc.s    V_37
      IL_052c:  ldc.i4.0
      IL_052d:  stloc.s    V_38
      IL_052f:  ldloca.s   V_39
      IL_0531:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_0537:  ldc.i4.s   -3
      IL_0539:  stloc.s    V_40
      IL_053b:  br         IL_05df

      IL_0540:  ldc.i4.s   -3
      IL_0542:  stloc.s    V_41
      IL_0544:  br         IL_05d1

      IL_0549:  ldc.i4.s   -3
      IL_054b:  stloc.s    V_42
      IL_054d:  br.s       IL_05c6

      IL_054f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0554:  ldarg.0
      IL_0555:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_055a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_055f:  ldloc.s    V_40
      IL_0561:  ldloc.s    V_33
      IL_0563:  add
      IL_0564:  ldloc.s    V_41
      IL_0566:  ldloc.s    V_34
      IL_0568:  add
      IL_0569:  ldloc.s    V_42
      IL_056b:  ldloc.s    V_35
      IL_056d:  add
      IL_056e:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_0573:  ldelem.ref
      IL_0574:  ldfld      bool Game.Block::IsCollidable
      IL_0579:  brtrue.s   IL_05c0

      IL_057b:  ldloc.s    V_40
      IL_057d:  ldloc.s    V_40
      IL_057f:  mul
      IL_0580:  ldloc.s    V_41
      IL_0582:  ldloc.s    V_41
      IL_0584:  mul
      IL_0585:  add
      IL_0586:  ldloc.s    V_42
      IL_0588:  ldloc.s    V_42
      IL_058a:  mul
      IL_058b:  add
      IL_058c:  stloc.s    V_43
      IL_058e:  ldloca.s   V_39
      IL_0590:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0595:  brfalse.s  IL_05a2

      IL_0597:  ldloc.s    V_43
      IL_0599:  ldloca.s   V_39
      IL_059b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_05a0:  bge.s      IL_05c0

      IL_05a2:  ldloc.s    V_40
      IL_05a4:  ldloc.s    V_33
      IL_05a6:  add
      IL_05a7:  stloc.s    V_36
      IL_05a9:  ldloc.s    V_41
      IL_05ab:  ldloc.s    V_34
      IL_05ad:  add
      IL_05ae:  stloc.s    V_37
      IL_05b0:  ldloc.s    V_42
      IL_05b2:  ldloc.s    V_35
      IL_05b4:  add
      IL_05b5:  stloc.s    V_38
      IL_05b7:  ldloca.s   V_39
      IL_05b9:  ldloc.s    V_43
      IL_05bb:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_05c0:  ldloc.s    V_42
      IL_05c2:  ldc.i4.1
      IL_05c3:  add
      IL_05c4:  stloc.s    V_42
      IL_05c6:  ldloc.s    V_42
      IL_05c8:  ldc.i4.3
      IL_05c9:  ble.s      IL_054f

      IL_05cb:  ldloc.s    V_41
      IL_05cd:  ldc.i4.1
      IL_05ce:  add
      IL_05cf:  stloc.s    V_41
      IL_05d1:  ldloc.s    V_41
      IL_05d3:  ldc.i4.3
      IL_05d4:  ble        IL_0549

      IL_05d9:  ldloc.s    V_40
      IL_05db:  ldc.i4.1
      IL_05dc:  add
      IL_05dd:  stloc.s    V_40
      IL_05df:  ldloc.s    V_40
      IL_05e1:  ldc.i4.3
      IL_05e2:  ble        IL_0540

      IL_05e7:  ldloca.s   V_39
      IL_05e9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_05ee:  brfalse.s  IL_061e

      IL_05f0:  ldloc.s    V_7
      IL_05f2:  ldloc.s    V_36
      IL_05f4:  conv.r4
      IL_05f5:  ldloc.s    V_37
      IL_05f7:  conv.r4
      IL_05f8:  ldloc.s    V_38
      IL_05fa:  conv.r4
      IL_05fb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0600:  ldc.r4     0.5
      IL_0605:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_060a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_060f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_0614:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0619:  br         IL_0896

      IL_061e:  ldloc.s    V_7
      IL_0620:  ldc.i4.1
      IL_0621:  stfld      bool Game.WorldItem::ToRemove
      IL_0626:  br         IL_0896

      IL_062b:  ldloca.s   V_28
      IL_062d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0632:  stloc.s    V_46
      IL_0634:  ldloca.s   V_46
      IL_0636:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_063b:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
      IL_0640:  stloc.s    V_44
      IL_0642:  ldloca.s   V_27
      IL_0644:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0649:  brfalse.s  IL_065e

      IL_064b:  ldloca.s   V_27
      IL_064d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0652:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0657:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                      valuetype [Engine]Engine.Vector2)
      IL_065c:  br.s       IL_065f

      IL_065e:  ldc.i4.0
      IL_065f:  stloc.s    V_45
      IL_0661:  ldloc.s    V_44
      IL_0663:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0668:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_066d:  ldc.r4     0.0
      IL_0672:  beq.s      IL_06d3

      IL_0674:  ldloc.s    V_45
      IL_0676:  brtrue.s   IL_06ae

      IL_0678:  ldloc.s    V_7
      IL_067a:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_067f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0684:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0689:  ldloc.s    V_7
      IL_068b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0690:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0695:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_069a:  add
      IL_069b:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_06a0:  ldc.r4     10.
      IL_06a5:  bgt.s      IL_06ae

      IL_06a7:  ldc.r4     0.25
      IL_06ac:  br.s       IL_06b3

      IL_06ae:  ldc.r4     0.94999999
      IL_06b3:  stloc.s    V_47
      IL_06b5:  ldloc.s    V_7
      IL_06b7:  dup
      IL_06b8:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06bd:  ldloc.s    V_47
      IL_06bf:  neg
      IL_06c0:  ldloc.s    V_47
      IL_06c2:  ldloc.s    V_47
      IL_06c4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_06c9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_06ce:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06d3:  ldloc.s    V_44
      IL_06d5:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06da:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_06df:  ldc.r4     0.0
      IL_06e4:  beq        IL_076e

      IL_06e9:  ldloc.s    V_45
      IL_06eb:  brtrue.s   IL_0723

      IL_06ed:  ldloc.s    V_7
      IL_06ef:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06f4:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_06f9:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_06fe:  ldloc.s    V_7
      IL_0700:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0705:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_070a:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_070f:  add
      IL_0710:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_0715:  ldc.r4     10.
      IL_071a:  bgt.s      IL_0723

      IL_071c:  ldc.r4     0.25
      IL_0721:  br.s       IL_0728

      IL_0723:  ldc.r4     0.94999999
      IL_0728:  stloc.s    V_48
      IL_072a:  ldloc.s    V_7
      IL_072c:  dup
      IL_072d:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0732:  ldloc.s    V_48
      IL_0734:  ldloc.s    V_48
      IL_0736:  neg
      IL_0737:  ldloc.s    V_48
      IL_0739:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_073e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0743:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0748:  ldloc.s    V_45
      IL_074a:  brfalse.s  IL_076e

      IL_074c:  ldloc.s    V_7
      IL_074e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0753:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0758:  dup
      IL_0759:  ldind.r4
      IL_075a:  ldc.r4     0.1
      IL_075f:  ldloc.s    V_44
      IL_0761:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0766:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_076b:  mul
      IL_076c:  add
      IL_076d:  stind.r4
      IL_076e:  ldloc.s    V_44
      IL_0770:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0775:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_077a:  ldc.r4     0.0
      IL_077f:  beq.s      IL_07e0

      IL_0781:  ldloc.s    V_45
      IL_0783:  brtrue.s   IL_07bb

      IL_0785:  ldloc.s    V_7
      IL_0787:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_078c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0791:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0796:  ldloc.s    V_7
      IL_0798:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_079d:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_07a2:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_07a7:  add
      IL_07a8:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_07ad:  ldc.r4     10.
      IL_07b2:  bgt.s      IL_07bb

      IL_07b4:  ldc.r4     0.25
      IL_07b9:  br.s       IL_07c0

      IL_07bb:  ldc.r4     0.94999999
      IL_07c0:  stloc.s    V_49
      IL_07c2:  ldloc.s    V_7
      IL_07c4:  dup
      IL_07c5:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_07ca:  ldloc.s    V_49
      IL_07cc:  ldloc.s    V_49
      IL_07ce:  ldloc.s    V_49
      IL_07d0:  neg
      IL_07d1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_07d6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_07db:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_07e0:  ldloc.s    V_13
      IL_07e2:  stloc.s    V_14
      IL_07e4:  br         IL_0896

      IL_07e9:  ldloc.s    V_7
      IL_07eb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_07f0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_07f5:  stloc.s    V_52
      IL_07f7:  ldloca.s   V_52
      IL_07f9:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
      IL_07fe:  ldloc.s    V_7
      IL_0800:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0805:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_080a:  stloc.s    V_52
      IL_080c:  ldloca.s   V_52
      IL_080e:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
      IL_0813:  ldloc.s    V_8
      IL_0815:  ldfld      float32 Game.Block::ProjectileTipOffset
      IL_081a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_081f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0824:  stloc.s    V_50
      IL_0826:  ldarg.0
      IL_0827:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_082c:  ldloc.s    V_50
      IL_082e:  ldloc.s    V_50
      IL_0830:  ldc.i4.0
      IL_0831:  ldc.i4.1
      IL_0832:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_2'
      IL_0837:  dup
      IL_0838:  brtrue.s   IL_0851

      IL_083a:  pop
      IL_083b:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_0840:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__32_2'(int32,
                                                                                          float32)
      IL_0846:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_084b:  dup
      IL_084c:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__32_2'
      IL_0851:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_0856:  stloc.s    V_51
      IL_0858:  ldloca.s   V_51
      IL_085a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_085f:  brtrue.s   IL_0896

      IL_0861:  ldloc.s    V_7
      IL_0863:  ldloc.s    V_7
      IL_0865:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_086a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_086f:  stloc.s    V_52
      IL_0871:  ldloca.s   V_52
      IL_0873:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
      IL_0878:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_087d:  ldloc.s    V_7
      IL_087f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0884:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0889:  ldloc.s    V_7
      IL_088b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0890:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_0896:  ldloc.s    V_25
      IL_0898:  isinst     Game.WaterBlock
      IL_089d:  brfalse.s  IL_090a

      IL_089f:  ldloc.s    V_7
      IL_08a1:  ldfld      bool Game.Pickable::SplashGenerated
      IL_08a6:  brtrue.s   IL_090a

      IL_08a8:  ldarg.0
      IL_08a9:  ldfld      class Game.SubsystemParticles Game.SubsystemPickables::m_subsystemParticles
      IL_08ae:  ldarg.0
      IL_08af:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_08b4:  ldloc.s    V_7
      IL_08b6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08bb:  ldc.i4.0
      IL_08bc:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_08c1:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_08c6:  ldarg.0
      IL_08c7:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_08cc:  ldstr      "Audio/Splashes"
      IL_08d1:  ldc.r4     1.
      IL_08d6:  ldarg.0
      IL_08d7:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_08dc:  ldc.r4     -0.2
      IL_08e1:  ldc.r4     0.2
      IL_08e6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_08eb:  ldloc.s    V_7
      IL_08ed:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08f2:  ldc.r4     6.
      IL_08f7:  ldc.i4.1
      IL_08f8:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_08fd:  ldloc.s    V_7
      IL_08ff:  ldc.i4.1
      IL_0900:  stfld      bool Game.Pickable::SplashGenerated
      IL_0905:  br         IL_09db

      IL_090a:  ldloc.s    V_25
      IL_090c:  isinst     Game.MagmaBlock
      IL_0911:  brfalse    IL_09cf

      IL_0916:  ldloc.s    V_7
      IL_0918:  ldfld      bool Game.Pickable::SplashGenerated
      IL_091d:  brtrue     IL_09cf

      IL_0922:  ldarg.0
      IL_0923:  ldfld      class Game.SubsystemParticles Game.SubsystemPickables::m_subsystemParticles
      IL_0928:  ldarg.0
      IL_0929:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_092e:  ldloc.s    V_7
      IL_0930:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0935:  ldc.i4.0
      IL_0936:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_093b:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0940:  ldarg.0
      IL_0941:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_0946:  ldstr      "Audio/Sizzles"
      IL_094b:  ldc.r4     1.
      IL_0950:  ldarg.0
      IL_0951:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_0956:  ldc.r4     -0.2
      IL_095b:  ldc.r4     0.2
      IL_0960:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0965:  ldloc.s    V_7
      IL_0967:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_096c:  ldc.r4     3.
      IL_0971:  ldc.i4.1
      IL_0972:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0977:  ldloc.s    V_7
      IL_0979:  ldc.i4.1
      IL_097a:  stfld      bool Game.WorldItem::ToRemove
      IL_097f:  ldloc.s    V_7
      IL_0981:  ldc.i4.1
      IL_0982:  stfld      bool Game.Pickable::SplashGenerated
      IL_0987:  ldarg.0
      IL_0988:  ldfld      class Game.SubsystemExplosions Game.SubsystemPickables::m_subsystemExplosions
      IL_098d:  ldloc.s    V_7
      IL_098f:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0994:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0999:  call       int32 Game.Terrain::ToCell(float32)
      IL_099e:  ldloc.s    V_7
      IL_09a0:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09a5:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_09aa:  call       int32 Game.Terrain::ToCell(float32)
      IL_09af:  ldloc.s    V_7
      IL_09b1:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09b6:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_09bb:  call       int32 Game.Terrain::ToCell(float32)
      IL_09c0:  ldloc.s    V_7
      IL_09c2:  ldfld      int32 Game.WorldItem::Value
      IL_09c7:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_09cc:  pop
      IL_09cd:  br.s       IL_09db

      IL_09cf:  ldloc.s    V_25
      IL_09d1:  brtrue.s   IL_09db

      IL_09d3:  ldloc.s    V_7
      IL_09d5:  ldc.i4.0
      IL_09d6:  stfld      bool Game.Pickable::SplashGenerated
      IL_09db:  ldarg.0
      IL_09dc:  ldfld      class Game.SubsystemTime Game.SubsystemPickables::m_subsystemTime
      IL_09e1:  ldc.r8     1.
      IL_09ea:  ldloc.s    V_7
      IL_09ec:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_09f1:  ldc.i4.s   100
      IL_09f3:  rem
      IL_09f4:  conv.r8
      IL_09f5:  ldc.r8     100.
      IL_09fe:  div
      IL_09ff:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                   float64)
      IL_0a04:  brfalse    IL_0b24

      IL_0a09:  ldarg.0
      IL_0a0a:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0a0f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0a14:  ldloc.s    V_7
      IL_0a16:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a1b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a20:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a25:  ldloc.s    V_7
      IL_0a27:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a2c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a31:  ldc.r4     0.1
      IL_0a36:  add
      IL_0a37:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a3c:  ldloc.s    V_7
      IL_0a3e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a43:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0a48:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a4d:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_0a52:  ldc.i4.s   104
      IL_0a54:  beq.s      IL_0a9f

      IL_0a56:  ldarg.0
      IL_0a57:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemPickables::m_subsystemFireBlockBehavior
      IL_0a5c:  ldloc.s    V_7
      IL_0a5e:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a63:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a68:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a6d:  ldloc.s    V_7
      IL_0a6f:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a74:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a79:  ldc.r4     0.1
      IL_0a7e:  add
      IL_0a7f:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a84:  ldloc.s    V_7
      IL_0a86:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a8b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0a90:  call       int32 Game.Terrain::ToCell(float32)
      IL_0a95:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0a9a:  brfalse    IL_0b24

      IL_0a9f:  ldarg.0
      IL_0aa0:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_0aa5:  ldstr      "Audio/Sizzles"
      IL_0aaa:  ldc.r4     1.
      IL_0aaf:  ldarg.0
      IL_0ab0:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_0ab5:  ldc.r4     -0.2
      IL_0aba:  ldc.r4     0.2
      IL_0abf:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0ac4:  ldloc.s    V_7
      IL_0ac6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0acb:  ldc.r4     3.
      IL_0ad0:  ldc.i4.1
      IL_0ad1:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0ad6:  ldloc.s    V_7
      IL_0ad8:  ldc.i4.1
      IL_0ad9:  stfld      bool Game.WorldItem::ToRemove
      IL_0ade:  ldarg.0
      IL_0adf:  ldfld      class Game.SubsystemExplosions Game.SubsystemPickables::m_subsystemExplosions
      IL_0ae4:  ldloc.s    V_7
      IL_0ae6:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0aeb:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0af0:  call       int32 Game.Terrain::ToCell(float32)
      IL_0af5:  ldloc.s    V_7
      IL_0af7:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0afc:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0b01:  call       int32 Game.Terrain::ToCell(float32)
      IL_0b06:  ldloc.s    V_7
      IL_0b08:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b0d:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0b12:  call       int32 Game.Terrain::ToCell(float32)
      IL_0b17:  ldloc.s    V_7
      IL_0b19:  ldfld      int32 Game.WorldItem::Value
      IL_0b1e:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0b23:  pop
      IL_0b24:  ldloc.s    V_7
      IL_0b26:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0b2b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_0b30:  brtrue     IL_0c50

      IL_0b35:  ldloca.s   V_27
      IL_0b37:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0b3c:  brfalse    IL_0c26

      IL_0b41:  ldloca.s   V_26
      IL_0b43:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0b48:  brfalse    IL_0c26

      IL_0b4d:  ldloca.s   V_26
      IL_0b4f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0b54:  ldloc.s    V_7
      IL_0b56:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0b5b:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0b60:  sub
      IL_0b61:  stloc.s    V_53
      IL_0b63:  ldc.r4     3.
      IL_0b68:  ldloc.s    V_53
      IL_0b6a:  mul
      IL_0b6b:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0b70:  stloc.s    V_54
      IL_0b72:  ldloc.s    V_7
      IL_0b74:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b79:  ldflda     float32 [Engine]Engine.Vector3::X
      IL_0b7e:  dup
      IL_0b7f:  ldind.r4
      IL_0b80:  ldc.r4     4.
      IL_0b85:  ldarg.1
      IL_0b86:  mul
      IL_0b87:  ldloca.s   V_27
      IL_0b89:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0b8e:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0b93:  ldloc.s    V_7
      IL_0b95:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b9a:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0b9f:  sub
      IL_0ba0:  mul
      IL_0ba1:  add
      IL_0ba2:  stind.r4
      IL_0ba3:  ldloc.s    V_7
      IL_0ba5:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0baa:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0baf:  dup
      IL_0bb0:  ldind.r4
      IL_0bb1:  ldc.r4     10.
      IL_0bb6:  ldarg.1
      IL_0bb7:  mul
      IL_0bb8:  sub
      IL_0bb9:  stind.r4
      IL_0bba:  ldloc.s    V_7
      IL_0bbc:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0bc1:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0bc6:  dup
      IL_0bc7:  ldind.r4
      IL_0bc8:  ldc.r4     10.
      IL_0bcd:  ldc.r4     1.
      IL_0bd2:  ldloc.s    V_8
      IL_0bd4:  ldfld      float32 Game.Block::Density
      IL_0bd9:  div
      IL_0bda:  ldloc.s    V_54
      IL_0bdc:  mul
      IL_0bdd:  mul
      IL_0bde:  ldarg.1
      IL_0bdf:  mul
      IL_0be0:  add
      IL_0be1:  stind.r4
      IL_0be2:  ldloc.s    V_7
      IL_0be4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0be9:  ldflda     float32 [Engine]Engine.Vector3::Z
      IL_0bee:  dup
      IL_0bef:  ldind.r4
      IL_0bf0:  ldc.r4     4.
      IL_0bf5:  ldarg.1
      IL_0bf6:  mul
      IL_0bf7:  ldloca.s   V_27
      IL_0bf9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0bfe:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0c03:  ldloc.s    V_7
      IL_0c05:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0c0a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0c0f:  sub
      IL_0c10:  mul
      IL_0c11:  add
      IL_0c12:  stind.r4
      IL_0c13:  ldloc.s    V_7
      IL_0c15:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0c1a:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0c1f:  dup
      IL_0c20:  ldind.r4
      IL_0c21:  ldloc.2
      IL_0c22:  mul
      IL_0c23:  stind.r4
      IL_0c24:  br.s       IL_0c50

      IL_0c26:  ldloc.s    V_7
      IL_0c28:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0c2d:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0c32:  dup
      IL_0c33:  ldind.r4
      IL_0c34:  ldc.r4     10.
      IL_0c39:  ldarg.1
      IL_0c3a:  mul
      IL_0c3b:  sub
      IL_0c3c:  stind.r4
      IL_0c3d:  ldloc.s    V_7
      IL_0c3f:  dup
      IL_0c40:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0c45:  ldloc.1
      IL_0c46:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0c4b:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0c50:  ldloc.s    V_7
      IL_0c52:  ldloc.s    V_14
      IL_0c54:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0c59:  ldloca.s   V_6
      IL_0c5b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0c60:  brtrue     IL_009a

      IL_0c65:  leave.s    IL_0c75

    }  // end .try
    finally
    {
      IL_0c67:  ldloca.s   V_6
      IL_0c69:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_0c6f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0c74:  endfinally
    }  // end handler
    IL_0c75:  ldarg.0
    IL_0c76:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0c7b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_0c80:  stloc.s    V_6
    .try
    {
      IL_0c82:  br.s       IL_0cb0

      IL_0c84:  ldloca.s   V_6
      IL_0c86:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0c8b:  stloc.s    V_55
      IL_0c8d:  ldarg.0
      IL_0c8e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
      IL_0c93:  ldloc.s    V_55
      IL_0c95:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Remove(!0)
      IL_0c9a:  pop
      IL_0c9b:  ldarg.0
      IL_0c9c:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
      IL_0ca1:  brfalse.s  IL_0cb0

      IL_0ca3:  ldarg.0
      IL_0ca4:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
      IL_0ca9:  ldloc.s    V_55
      IL_0cab:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Pickable>::Invoke(!0)
      IL_0cb0:  ldloca.s   V_6
      IL_0cb2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0cb7:  brtrue.s   IL_0c84

      IL_0cb9:  leave.s    IL_0cc9

    }  // end .try
    finally
    {
      IL_0cbb:  ldloca.s   V_6
      IL_0cbd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_0cc3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0cc8:  endfinally
    }  // end handler
    IL_0cc9:  ldarg.0
    IL_0cca:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0ccf:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Clear()
    IL_0cd4:  ret
  } // end of method SubsystemPickables::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       444 (0x1bc)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             class Game.Pickable V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_000d:  stfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_001f:  stfld      class Game.SubsystemPlayers Game.SubsystemPickables::m_subsystemPlayers
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0043:  stfld      class Game.SubsystemSky Game.SubsystemPickables::m_subsystemSky
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0055:  stfld      class Game.SubsystemTime Game.SubsystemPickables::m_subsystemTime
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0067:  stfld      class Game.SubsystemGameInfo Game.SubsystemPickables::m_subsystemGameInfo
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0079:  stfld      class Game.SubsystemParticles Game.SubsystemPickables::m_subsystemParticles
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_008b:  stfld      class Game.SubsystemExplosions Game.SubsystemPickables::m_subsystemExplosions
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_009d:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemPickables::m_subsystemBlockBehaviors
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_00af:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemPickables::m_subsystemFireBlockBehavior
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFluidBlockBehavior>(bool)
    IL_00c1:  stfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemPickables::m_subsystemFluidBlockBehavior
    IL_00c6:  ldarg.1
    IL_00c7:  ldstr      "Pickables"
    IL_00cc:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_00d1:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_00d6:  ldsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemPickables/'<>c'::'<>9__33_0'
    IL_00db:  dup
    IL_00dc:  brtrue.s   IL_00f5

    IL_00de:  pop
    IL_00df:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
    IL_00e4:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Load>b__33_0'(object)
    IL_00ea:  newobj     instance void class [System.Runtime]System.Func`2<object,bool>::.ctor(object,
                                                                                               native int)
    IL_00ef:  dup
    IL_00f0:  stsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemPickables/'<>c'::'<>9__33_0'
    IL_00f5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<object>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00fa:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_00ff:  stloc.0
    .try
    {
      IL_0100:  br         IL_01a4

      IL_0105:  ldloc.0
      IL_0106:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_010b:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0110:  stloc.1
      IL_0111:  newobj     instance void Game.Pickable::.ctor()
      IL_0116:  stloc.2
      IL_0117:  ldloc.2
      IL_0118:  ldloc.1
      IL_0119:  ldstr      "Value"
      IL_011e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
      IL_0123:  stfld      int32 Game.WorldItem::Value
      IL_0128:  ldloc.2
      IL_0129:  ldloc.1
      IL_012a:  ldstr      "Count"
      IL_012f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
      IL_0134:  stfld      int32 Game.Pickable::Count
      IL_0139:  ldloc.2
      IL_013a:  ldloc.1
      IL_013b:  ldstr      "Position"
      IL_0140:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0145:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_014a:  ldloc.2
      IL_014b:  ldloc.1
      IL_014c:  ldstr      "Velocity"
      IL_0151:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0156:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_015b:  ldloc.2
      IL_015c:  ldloc.1
      IL_015d:  ldstr      "CreationTime"
      IL_0162:  ldc.r8     0.0
      IL_016b:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string,
                                                                                                            !!0)
      IL_0170:  stfld      float64 Game.WorldItem::CreationTime
      IL_0175:  ldloc.1
      IL_0176:  ldstr      "StuckMatrix"
      IL_017b:  callvirt   instance bool [EntitySystem]TemplatesDatabase.ValuesDictionary::ContainsKey(string)
      IL_0180:  brfalse.s  IL_0198

      IL_0182:  ldloc.2
      IL_0183:  ldloc.1
      IL_0184:  ldstr      "StuckMatrix"
      IL_0189:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Matrix>(string)
      IL_018e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
      IL_0193:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0198:  ldarg.0
      IL_0199:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
      IL_019e:  ldloc.2
      IL_019f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Add(!0)
      IL_01a4:  ldloc.0
      IL_01a5:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01aa:  brtrue     IL_0105

      IL_01af:  leave.s    IL_01bb

    }  // end .try
    finally
    {
      IL_01b1:  ldloc.0
      IL_01b2:  brfalse.s  IL_01ba

      IL_01b4:  ldloc.0
      IL_01b5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01ba:  endfinally
    }  // end handler
    IL_01bb:  ret
  } // end of method SubsystemPickables::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       226 (0xe2)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable> V_2,
             class Game.Pickable V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Pickables"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  br         IL_00c5

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_002c:  stloc.3
      IL_002d:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_0032:  stloc.s    V_4
      IL_0034:  ldloc.0
      IL_0035:  ldloca.s   V_1
      IL_0037:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_003c:  ldloc.s    V_4
      IL_003e:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_0043:  ldloc.s    V_4
      IL_0045:  ldstr      "Value"
      IL_004a:  ldloc.3
      IL_004b:  ldfld      int32 Game.WorldItem::Value
      IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                           !!0)
      IL_0055:  ldloc.s    V_4
      IL_0057:  ldstr      "Count"
      IL_005c:  ldloc.3
      IL_005d:  ldfld      int32 Game.Pickable::Count
      IL_0062:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                           !!0)
      IL_0067:  ldloc.s    V_4
      IL_0069:  ldstr      "Position"
      IL_006e:  ldloc.3
      IL_006f:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0074:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0079:  ldloc.s    V_4
      IL_007b:  ldstr      "Velocity"
      IL_0080:  ldloc.3
      IL_0081:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0086:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_008b:  ldloc.s    V_4
      IL_008d:  ldstr      "CreationTime"
      IL_0092:  ldloc.3
      IL_0093:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0098:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                             !!0)
      IL_009d:  ldloc.3
      IL_009e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_00a3:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_00a8:  brfalse.s  IL_00c1

      IL_00aa:  ldloc.s    V_4
      IL_00ac:  ldstr      "StuckMatrix"
      IL_00b1:  ldloc.3
      IL_00b2:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_00b7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_00bc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Matrix>(string,
                                                                                                                                     !!0)
      IL_00c1:  ldloc.1
      IL_00c2:  ldc.i4.1
      IL_00c3:  add
      IL_00c4:  stloc.1
      IL_00c5:  ldloca.s   V_2
      IL_00c7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_00cc:  brtrue     IL_0025

      IL_00d1:  leave.s    IL_00e1

    }  // end .try
    finally
    {
      IL_00d3:  ldloca.s   V_2
      IL_00d5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_00db:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00e0:  endfinally
    }  // end handler
    IL_00e1:  ret
  } // end of method SubsystemPickables::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentPlayer> Game.SubsystemPickables::m_tmpPlayers
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0027:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void Game.Random::.ctor()
    IL_0032:  stfld      class Game.Random Game.SubsystemPickables::m_random
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_003d:  stfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
    IL_0042:  ldarg.0
    IL_0043:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0048:  ret
  } // end of method SubsystemPickables::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemPickables::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemPickables::.cctor

  .event class [System.Runtime]System.Action`1<class Game.Pickable> PickableAdded
  {
    .addon instance void Game.SubsystemPickables::add_PickableAdded(class [System.Runtime]System.Action`1<class Game.Pickable>)
    .removeon instance void Game.SubsystemPickables::remove_PickableAdded(class [System.Runtime]System.Action`1<class Game.Pickable>)
  } // end of event SubsystemPickables::PickableAdded
  .event class [System.Runtime]System.Action`1<class Game.Pickable> PickableRemoved
  {
    .addon instance void Game.SubsystemPickables::add_PickableRemoved(class [System.Runtime]System.Action`1<class Game.Pickable>)
    .removeon instance void Game.SubsystemPickables::remove_PickableRemoved(class [System.Runtime]System.Action`1<class Game.Pickable>)
  } // end of event SubsystemPickables::PickableRemoved
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>
          Pickables()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> Game.SubsystemPickables::get_Pickables()
  } // end of property SubsystemPickables::Pickables
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemPickables::get_DrawOrders()
  } // end of property SubsystemPickables::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemPickables::get_UpdateOrder()
  } // end of property SubsystemPickables::UpdateOrder
} // end of class Game.SubsystemPickables