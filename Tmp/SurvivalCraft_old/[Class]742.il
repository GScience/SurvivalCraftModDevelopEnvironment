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
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__31_0'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__31_1'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__31_2'
    .field public static class [System.Runtime]System.Func`2<object,bool> '<>9__32_0'
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
            '<Update>b__31_0'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__31_0'

    .method assembly hidebysig instance bool 
            '<Update>b__31_1'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__31_1'

    .method assembly hidebysig instance bool 
            '<Update>b__31_2'(int32 'value',
                              float32 distance) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsCollidable
      IL_0011:  ret
    } // end of method '<>c'::'<Update>b__31_2'

    .method assembly hidebysig instance bool 
            '<Load>b__32_0'(object v) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__32_0'

  } // end of class '<>c'

  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class Game.SubsystemFluidBlockBehavior m_subsystemFluidBlockBehavior
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
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemPickables::get_Pickables

  .method public hidebysig instance class Game.Pickable 
          AddPickable(int32 'value',
                      int32 count,
                      valuetype [Engine]Engine.Vector3 position,
                      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> velocity,
                      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> stuckMatrix) cil managed
  {
    // 代码大小       178 (0xb2)
    .maxstack  6
    .locals init (class Game.Pickable V_0)
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
    IL_001c:  ldarga.s   velocity
    IL_001e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0023:  brtrue.s   IL_006b

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_002b:  ldc.r4     -0.5
    IL_0030:  ldc.r4     0.5
    IL_0035:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_0040:  ldc.r4     1.
    IL_0045:  ldc.r4     3.
    IL_004a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004f:  ldarg.0
    IL_0050:  ldfld      class Game.Random Game.SubsystemPickables::m_random
    IL_0055:  ldc.r4     -0.5
    IL_005a:  ldc.r4     0.5
    IL_005f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0064:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0069:  br.s       IL_0072

    IL_006b:  ldarga.s   velocity
    IL_006d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0072:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_0077:  ldloc.0
    IL_0078:  ldarg.s    stuckMatrix
    IL_007a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
    IL_007f:  ldloc.0
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.SubsystemGameInfo Game.SubsystemPickables::m_subsystemGameInfo
    IL_0086:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_008b:  stfld      float64 Game.WorldItem::CreationTime
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_0096:  ldloc.0
    IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Add(!0)
    IL_009c:  ldarg.0
    IL_009d:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_00a2:  brfalse.s  IL_00b0

    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableAdded
    IL_00aa:  ldloc.0
    IL_00ab:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Pickable>::Invoke(!0)
    IL_00b0:  ldloc.0
    IL_00b1:  ret
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
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       715 (0x2cb)
    .maxstack  6
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
      IL_0055:  br         IL_029c

      IL_005a:  ldloca.s   V_3
      IL_005c:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0061:  stloc.s    V_4
      IL_0063:  ldloc.s    V_4
      IL_0065:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_006a:  stloc.s    V_5
      IL_006c:  ldarg.1
      IL_006d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
      IL_0072:  ldloc.s    V_5
      IL_0074:  ldarg.1
      IL_0075:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_007a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_007f:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_0084:  stloc.s    V_6
      IL_0086:  ldloc.s    V_6
      IL_0088:  ldc.r4     -0.5
      IL_008d:  ble.un     IL_029c

      IL_0092:  ldloc.s    V_6
      IL_0094:  ldloc.2
      IL_0095:  bge.un     IL_029c

      IL_009a:  ldloc.s    V_4
      IL_009c:  ldfld      int32 Game.WorldItem::Value
      IL_00a1:  call       int32 Game.TerrainData::ExtractContents(int32)
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
      IL_00f1:  conv.i4
      IL_00f2:  stloc.s    V_10
      IL_00f4:  ldloc.s    V_5
      IL_00f6:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00fb:  conv.i4
      IL_00fc:  stloc.s    V_11
      IL_00fe:  ldloc.s    V_5
      IL_0100:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0105:  conv.i4
      IL_0106:  stloc.s    V_12
      IL_0108:  ldarg.0
      IL_0109:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_010e:  ldloc.s    V_10
      IL_0110:  ldloc.s    V_12
      IL_0112:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_0117:  stloc.s    V_13
      IL_0119:  ldloc.s    V_13
      IL_011b:  brfalse    IL_01d2

      IL_0120:  ldloc.s    V_13
      IL_0122:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0127:  ldc.i4.7
      IL_0128:  blt        IL_01d2

      IL_012d:  ldloc.s    V_11
      IL_012f:  ldc.i4.0
      IL_0130:  blt        IL_01d2

      IL_0135:  ldloc.s    V_11
      IL_0137:  ldc.i4.s   127
      IL_0139:  bge        IL_01d2

      IL_013e:  ldarg.0
      IL_013f:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0144:  ldarg.0
      IL_0145:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_014a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_014f:  ldloc.s    V_10
      IL_0151:  ldloc.s    V_12
      IL_0153:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                            int32)
      IL_0158:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_015d:  ldarg.0
      IL_015e:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0163:  ldarg.0
      IL_0164:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0169:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_016e:  ldloc.s    V_10
      IL_0170:  ldloc.s    V_12
      IL_0172:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                               int32)
      IL_0177:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_017c:  ldloc.s    V_5
      IL_017e:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0183:  ldloc.s    V_11
      IL_0185:  conv.r4
      IL_0186:  sub
      IL_0187:  stloc.s    V_14
      IL_0189:  ldc.r4     1.
      IL_018e:  ldloc.s    V_14
      IL_0190:  sub
      IL_0191:  ldarg.0
      IL_0192:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0197:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_019c:  ldloc.s    V_10
      IL_019e:  ldloc.s    V_11
      IL_01a0:  ldloc.s    V_12
      IL_01a2:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                             int32,
                                                                             int32)
      IL_01a7:  conv.r4
      IL_01a8:  mul
      IL_01a9:  ldloc.s    V_14
      IL_01ab:  ldarg.0
      IL_01ac:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_01b1:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_01b6:  ldloc.s    V_10
      IL_01b8:  ldloc.s    V_11
      IL_01ba:  ldc.i4.1
      IL_01bb:  add
      IL_01bc:  ldloc.s    V_12
      IL_01be:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                             int32,
                                                                             int32)
      IL_01c3:  conv.r4
      IL_01c4:  mul
      IL_01c5:  add
      IL_01c6:  conv.i4
      IL_01c7:  stloc.s    V_15
      IL_01c9:  ldloc.s    V_4
      IL_01cb:  ldloc.s    V_15
      IL_01cd:  stfld      int32 Game.WorldItem::Light
      IL_01d2:  ldarg.0
      IL_01d3:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_01d8:  ldloc.s    V_4
      IL_01da:  ldfld      int32 Game.WorldItem::Light
      IL_01df:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_01e4:  ldarg.0
      IL_01e5:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_01ea:  ldarg.1
      IL_01eb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
      IL_01f0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_01f5:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DrawBlockEnvironmentData::BillboardDirection
      IL_01fa:  ldarg.0
      IL_01fb:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0200:  ldflda     valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_0205:  ldloc.s    V_5
      IL_0207:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_020c:  ldloc.s    V_4
      IL_020e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0213:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_0218:  brfalse.s  IL_024b

      IL_021a:  ldloc.s    V_4
      IL_021c:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0221:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_0226:  stloc.s    V_16
      IL_0228:  ldloc.s    V_8
      IL_022a:  ldarg.0
      IL_022b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
      IL_0230:  ldloc.s    V_4
      IL_0232:  ldfld      int32 Game.WorldItem::Value
      IL_0237:  ldc.r4     0.30000001
      IL_023c:  ldloca.s   V_16
      IL_023e:  ldarg.0
      IL_023f:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0244:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_0249:  br.s       IL_029c

      IL_024b:  ldloca.s   V_1
      IL_024d:  ldloc.s    V_5
      IL_024f:  ldc.r4     0.0
      IL_0254:  ldc.r4     3.9999999e-002
      IL_0259:  ldc.r4     3.
      IL_025e:  ldloc.s    V_9
      IL_0260:  mul
      IL_0261:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_0266:  mul
      IL_0267:  ldc.r4     0.0
      IL_026c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0271:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0276:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_027b:  ldloc.s    V_8
      IL_027d:  ldarg.0
      IL_027e:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
      IL_0283:  ldloc.s    V_4
      IL_0285:  ldfld      int32 Game.WorldItem::Value
      IL_028a:  ldc.r4     0.30000001
      IL_028f:  ldloca.s   V_1
      IL_0291:  ldarg.0
      IL_0292:  ldfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
      IL_0297:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_029c:  ldloca.s   V_3
      IL_029e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_02a3:  brtrue     IL_005a

      IL_02a8:  leave.s    IL_02b8

    }  // end .try
    finally
    {
      IL_02aa:  ldloca.s   V_3
      IL_02ac:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_02b2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02b7:  endfinally
    }  // end handler
    IL_02b8:  ldarg.0
    IL_02b9:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
    IL_02be:  ldarg.1
    IL_02bf:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_02c4:  ldc.i4.1
    IL_02c5:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                        bool)
    IL_02ca:  ret
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
    // 代码大小       3180 (0xc6c)
    .maxstack  7
    .locals init (float64 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_3,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_4,
             class Game.IInventory V_5,
             class Game.ComponentBody V_6,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable> V_7,
             class Game.Pickable V_8,
             class Game.Block V_9,
             int32 V_10,
             float32 V_11,
             float64 V_12,
             class Game.TerrainChunk V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Vector3 V_15,
             valuetype [Engine]Engine.Vector3 V_16,
             float32 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             float32 V_19,
             class Game.FluidBlock V_20,
             valuetype [System.Runtime]System.Nullable`1<float32> V_21,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_22,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_23,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_24,
             int32 V_25,
             int32 V_26,
             int32 V_27,
             int32 V_28,
             int32 V_29,
             int32 V_30,
             valuetype [System.Runtime]System.Nullable`1<int32> V_31,
             int32 V_32,
             int32 V_33,
             int32 V_34,
             int32 V_35,
             int32 V_36,
             valuetype [Engine]Engine.Plane V_37,
             bool V_38,
             class Game.SubsystemBlockBehavior[] V_39,
             int32 V_40,
             valuetype Game.TerrainRaycastResult V_41,
             float32 V_42,
             float32 V_43,
             float32 V_44,
             valuetype [Engine]Engine.Vector3 V_45,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_46,
             valuetype [Engine]Engine.Matrix V_47,
             float32 V_48,
             float32 V_49,
             class Game.Pickable V_50)
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
    IL_0024:  ldloca.s   V_3
    IL_0026:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_002c:  ldloca.s   V_4
    IL_002e:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0034:  ldnull
    IL_0035:  stloc.s    V_5
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.SubsystemPlayer Game.SubsystemPickables::m_subsystemPlayer
    IL_003d:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0042:  brfalse.s  IL_00be

    IL_0044:  ldarg.0
    IL_0045:  ldfld      class Game.SubsystemPlayer Game.SubsystemPickables::m_subsystemPlayer
    IL_004a:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_004f:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0054:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0059:  ldc.r4     0.0
    IL_005e:  ble.un.s   IL_00be

    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.SubsystemPlayer Game.SubsystemPickables::m_subsystemPlayer
    IL_0066:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_006b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0070:  stloc.s    V_6
    IL_0072:  ldloca.s   V_3
    IL_0074:  ldloc.s    V_6
    IL_0076:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_007b:  ldc.r4     0.0
    IL_0080:  ldc.r4     0.75
    IL_0085:  ldc.r4     0.0
    IL_008a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_008f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0094:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0099:  ldloca.s   V_4
    IL_009b:  ldloc.s    V_6
    IL_009d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_00a2:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.SubsystemPlayer Game.SubsystemPickables::m_subsystemPlayer
    IL_00ad:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_00b2:  callvirt   instance class Game.ComponentMiner Game.ComponentPlayer::get_ComponentMiner()
    IL_00b7:  callvirt   instance class Game.IInventory Game.ComponentMiner::get_Inventory()
    IL_00bc:  stloc.s    V_5
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_00c4:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_00c9:  stloc.s    V_7
    .try
    {
      IL_00cb:  br         IL_0bf0

      IL_00d0:  ldloca.s   V_7
      IL_00d2:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_00d7:  stloc.s    V_8
      IL_00d9:  ldloc.s    V_8
      IL_00db:  ldfld      bool Game.WorldItem::ToRemove
      IL_00e0:  brfalse.s  IL_00f4

      IL_00e2:  ldarg.0
      IL_00e3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
      IL_00e8:  ldloc.s    V_8
      IL_00ea:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Add(!0)
      IL_00ef:  br         IL_0bf0

      IL_00f4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00f9:  ldloc.s    V_8
      IL_00fb:  ldfld      int32 Game.WorldItem::Value
      IL_0100:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0105:  ldelem.ref
      IL_0106:  stloc.s    V_9
      IL_0108:  ldarg.0
      IL_0109:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
      IL_010e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::get_Count()
      IL_0113:  ldarg.0
      IL_0114:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
      IL_0119:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::get_Count()
      IL_011e:  sub
      IL_011f:  stloc.s    V_10
      IL_0121:  ldc.r4     240.
      IL_0126:  ldc.r4     90.
      IL_012b:  ldloc.s    V_10
      IL_012d:  conv.r4
      IL_012e:  ldc.r4     30.
      IL_0133:  div
      IL_0134:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0139:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_013e:  stloc.s    V_11
      IL_0140:  ldloc.0
      IL_0141:  ldloc.s    V_8
      IL_0143:  ldfld      float64 Game.WorldItem::CreationTime
      IL_0148:  sub
      IL_0149:  stloc.s    V_12
      IL_014b:  ldloc.s    V_12
      IL_014d:  ldloc.s    V_11
      IL_014f:  conv.r8
      IL_0150:  ble.un.s   IL_015f

      IL_0152:  ldloc.s    V_8
      IL_0154:  ldc.i4.1
      IL_0155:  stfld      bool Game.WorldItem::ToRemove
      IL_015a:  br         IL_0bf0

      IL_015f:  ldarg.0
      IL_0160:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0165:  ldloc.s    V_8
      IL_0167:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_016c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0171:  conv.i4
      IL_0172:  ldloc.s    V_8
      IL_0174:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0179:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_017e:  conv.i4
      IL_017f:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_0184:  stloc.s    V_13
      IL_0186:  ldloc.s    V_13
      IL_0188:  brfalse    IL_0bf0

      IL_018d:  ldloc.s    V_13
      IL_018f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0194:  ldc.i4.4
      IL_0195:  ble        IL_0bf0

      IL_019a:  ldloc.s    V_8
      IL_019c:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01a1:  stloc.s    V_14
      IL_01a3:  ldloc.s    V_14
      IL_01a5:  ldloc.s    V_8
      IL_01a7:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_01ac:  ldarg.1
      IL_01ad:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_01b2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01b7:  stloc.s    V_15
      IL_01b9:  ldloc.s    V_8
      IL_01bb:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_01c0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_01c5:  brtrue     IL_02cf

      IL_01ca:  ldloc.s    V_12
      IL_01cc:  ldc.r8     0.5
      IL_01d5:  ble.un     IL_02cf

      IL_01da:  ldloca.s   V_3
      IL_01dc:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_01e1:  brfalse    IL_02cf

      IL_01e6:  ldloc.s    V_5
      IL_01e8:  brfalse    IL_02cf

      IL_01ed:  ldloca.s   V_3
      IL_01ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_01f4:  ldloc.s    V_8
      IL_01f6:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_01fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0200:  stloc.s    V_16
      IL_0202:  ldloca.s   V_16
      IL_0204:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
      IL_0209:  stloc.s    V_17
      IL_020b:  ldloc.s    V_17
      IL_020d:  ldc.r4     3.0625
      IL_0212:  bge.un     IL_02cf

      IL_0217:  ldloc.s    V_5
      IL_0219:  ldloc.s    V_8
      IL_021b:  ldfld      int32 Game.WorldItem::Value
      IL_0220:  call       int32 Game.ComponentInventoryBase::FindAcquireSlotForItem(class Game.IInventory,
                                                                                     int32)
      IL_0225:  ldc.i4.0
      IL_0226:  blt        IL_02cf

      IL_022b:  ldloc.s    V_17
      IL_022d:  ldc.r4     1.
      IL_0232:  bge.un.s   IL_0290

      IL_0234:  ldloc.s    V_8
      IL_0236:  ldloc.s    V_5
      IL_0238:  ldloc.s    V_8
      IL_023a:  ldfld      int32 Game.WorldItem::Value
      IL_023f:  ldloc.s    V_8
      IL_0241:  ldfld      int32 Game.Pickable::Count
      IL_0246:  call       int32 Game.ComponentInventoryBase::AcquireItems(class Game.IInventory,
                                                                           int32,
                                                                           int32)
      IL_024b:  stfld      int32 Game.Pickable::Count
      IL_0250:  ldloc.s    V_8
      IL_0252:  ldfld      int32 Game.Pickable::Count
      IL_0257:  brtrue     IL_0bf0

      IL_025c:  ldloc.s    V_8
      IL_025e:  ldc.i4.1
      IL_025f:  stfld      bool Game.WorldItem::ToRemove
      IL_0264:  ldarg.0
      IL_0265:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_026a:  ldstr      "Audio/PickableCollected"
      IL_026f:  ldc.r4     0.69999999
      IL_0274:  ldc.r4     -0.40000001
      IL_0279:  ldloc.s    V_8
      IL_027b:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0280:  ldc.r4     2.
      IL_0285:  ldc.i4.1
      IL_0286:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                        float32,
                                                                        float32,
                                                                        valuetype [Engine]Engine.Vector3,
                                                                        float32,
                                                                        bool)
      IL_028b:  br         IL_0bf0

      IL_0290:  ldloc.s    V_8
      IL_0292:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0297:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_029c:  brtrue.s   IL_02cf

      IL_029e:  ldloc.s    V_8
      IL_02a0:  ldloca.s   V_3
      IL_02a2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_02a7:  ldc.r4     0.1
      IL_02ac:  ldloc.s    V_17
      IL_02ae:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_02b3:  mul
      IL_02b4:  ldloca.s   V_4
      IL_02b6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_02bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_02c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_02c5:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_02ca:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_02cf:  ldloc.s    V_8
      IL_02d1:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_02d6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
      IL_02db:  brfalse.s  IL_033f

      IL_02dd:  ldloc.s    V_8
      IL_02df:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_02e4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
      IL_02e9:  ldloc.s    V_8
      IL_02eb:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_02f0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_02f5:  stloc.s    V_18
      IL_02f7:  ldloca.s   V_18
      IL_02f9:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
      IL_02fe:  stloc.s    V_19
      IL_0300:  ldloc.s    V_19
      IL_0302:  ldc.r4     0.10890001
      IL_0307:  blt.un.s   IL_032d

      IL_0309:  ldloc.s    V_8
      IL_030b:  ldc.r4     6.
      IL_0310:  ldloc.s    V_18
      IL_0312:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0317:  ldloc.s    V_19
      IL_0319:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_031e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0323:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0328:  br         IL_0be7

      IL_032d:  ldloc.s    V_8
      IL_032f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_0334:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_033a:  br         IL_0be7

      IL_033f:  ldarg.0
      IL_0340:  ldfld      class Game.SubsystemFluidBlockBehavior Game.SubsystemPickables::m_subsystemFluidBlockBehavior
      IL_0345:  ldloc.s    V_8
      IL_0347:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_034c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0351:  conv.i4
      IL_0352:  ldloc.s    V_8
      IL_0354:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0359:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_035e:  ldc.r4     0.1
      IL_0363:  add
      IL_0364:  conv.i4
      IL_0365:  ldloc.s    V_8
      IL_0367:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_036c:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0371:  conv.i4
      IL_0372:  ldloca.s   V_20
      IL_0374:  ldloca.s   V_21
      IL_0376:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.SubsystemFluidBlockBehavior::CalculateFlowSpeed(int32,
                                                                                                                                                                       int32,
                                                                                                                                                                       int32,
                                                                                                                                                                       class Game.FluidBlock&,
                                                                                                                                                                       valuetype [System.Runtime]System.Nullable`1<float32>&)
      IL_037b:  stloc.s    V_22
      IL_037d:  ldloc.s    V_8
      IL_037f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0384:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_0389:  brtrue     IL_07b3

      IL_038e:  ldarg.0
      IL_038f:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0394:  ldloc.s    V_14
      IL_0396:  ldloc.s    V_15
      IL_0398:  ldc.i4.0
      IL_0399:  ldc.i4.1
      IL_039a:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_0'
      IL_039f:  dup
      IL_03a0:  brtrue.s   IL_03b9

      IL_03a2:  pop
      IL_03a3:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_03a8:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__31_0'(int32,
                                                                                          float32)
      IL_03ae:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_03b3:  dup
      IL_03b4:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_0'
      IL_03b9:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_03be:  stloc.s    V_23
      IL_03c0:  ldloca.s   V_23
      IL_03c2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_03c7:  brfalse    IL_0860

      IL_03cc:  ldarg.0
      IL_03cd:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_03d2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_03d7:  ldloca.s   V_23
      IL_03d9:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_03de:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_03e3:  ldfld      int32 Game.CellFace::X
      IL_03e8:  ldloca.s   V_23
      IL_03ea:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_03ef:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_03f4:  ldfld      int32 Game.CellFace::Y
      IL_03f9:  ldloca.s   V_23
      IL_03fb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0400:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0405:  ldfld      int32 Game.CellFace::Z
      IL_040a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_040f:  pop
      IL_0410:  ldarg.0
      IL_0411:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0416:  ldloc.s    V_14
      IL_0418:  ldloc.s    V_14
      IL_041a:  ldc.i4.0
      IL_041b:  ldc.i4.1
      IL_041c:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_1'
      IL_0421:  dup
      IL_0422:  brtrue.s   IL_043b

      IL_0424:  pop
      IL_0425:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_042a:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__31_1'(int32,
                                                                                          float32)
      IL_0430:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_0435:  dup
      IL_0436:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_1'
      IL_043b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_0440:  stloc.s    V_24
      IL_0442:  ldloca.s   V_24
      IL_0444:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0449:  brfalse    IL_0571

      IL_044e:  ldloc.s    V_14
      IL_0450:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0455:  conv.i4
      IL_0456:  stloc.s    V_25
      IL_0458:  ldloc.s    V_14
      IL_045a:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_045f:  conv.i4
      IL_0460:  stloc.s    V_26
      IL_0462:  ldloc.s    V_14
      IL_0464:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0469:  conv.i4
      IL_046a:  stloc.s    V_27
      IL_046c:  ldc.i4.0
      IL_046d:  stloc.s    V_28
      IL_046f:  ldc.i4.0
      IL_0470:  stloc.s    V_29
      IL_0472:  ldc.i4.0
      IL_0473:  stloc.s    V_30
      IL_0475:  ldloca.s   V_31
      IL_0477:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_047d:  ldc.i4.s   -3
      IL_047f:  stloc.s    V_32
      IL_0481:  br         IL_0525

      IL_0486:  ldc.i4.s   -3
      IL_0488:  stloc.s    V_33
      IL_048a:  br         IL_0517

      IL_048f:  ldc.i4.s   -3
      IL_0491:  stloc.s    V_34
      IL_0493:  br.s       IL_050c

      IL_0495:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_049a:  ldarg.0
      IL_049b:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_04a0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_04a5:  ldloc.s    V_32
      IL_04a7:  ldloc.s    V_25
      IL_04a9:  add
      IL_04aa:  ldloc.s    V_33
      IL_04ac:  ldloc.s    V_26
      IL_04ae:  add
      IL_04af:  ldloc.s    V_34
      IL_04b1:  ldloc.s    V_27
      IL_04b3:  add
      IL_04b4:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_04b9:  ldelem.ref
      IL_04ba:  ldfld      bool Game.Block::IsCollidable
      IL_04bf:  brtrue.s   IL_0506

      IL_04c1:  ldloc.s    V_32
      IL_04c3:  ldloc.s    V_32
      IL_04c5:  mul
      IL_04c6:  ldloc.s    V_33
      IL_04c8:  ldloc.s    V_33
      IL_04ca:  mul
      IL_04cb:  add
      IL_04cc:  ldloc.s    V_34
      IL_04ce:  ldloc.s    V_34
      IL_04d0:  mul
      IL_04d1:  add
      IL_04d2:  stloc.s    V_35
      IL_04d4:  ldloca.s   V_31
      IL_04d6:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_04db:  brfalse.s  IL_04e8

      IL_04dd:  ldloc.s    V_35
      IL_04df:  ldloca.s   V_31
      IL_04e1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
      IL_04e6:  bge.s      IL_0506

      IL_04e8:  ldloc.s    V_32
      IL_04ea:  ldloc.s    V_25
      IL_04ec:  add
      IL_04ed:  stloc.s    V_28
      IL_04ef:  ldloc.s    V_33
      IL_04f1:  ldloc.s    V_26
      IL_04f3:  add
      IL_04f4:  stloc.s    V_29
      IL_04f6:  ldloc.s    V_34
      IL_04f8:  ldloc.s    V_27
      IL_04fa:  add
      IL_04fb:  stloc.s    V_30
      IL_04fd:  ldloca.s   V_31
      IL_04ff:  ldloc.s    V_35
      IL_0501:  call       instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
      IL_0506:  ldloc.s    V_34
      IL_0508:  ldc.i4.1
      IL_0509:  add
      IL_050a:  stloc.s    V_34
      IL_050c:  ldloc.s    V_34
      IL_050e:  ldc.i4.3
      IL_050f:  ble.s      IL_0495

      IL_0511:  ldloc.s    V_33
      IL_0513:  ldc.i4.1
      IL_0514:  add
      IL_0515:  stloc.s    V_33
      IL_0517:  ldloc.s    V_33
      IL_0519:  ldc.i4.3
      IL_051a:  ble        IL_048f

      IL_051f:  ldloc.s    V_32
      IL_0521:  ldc.i4.1
      IL_0522:  add
      IL_0523:  stloc.s    V_32
      IL_0525:  ldloc.s    V_32
      IL_0527:  ldc.i4.3
      IL_0528:  ble        IL_0486

      IL_052d:  ldloca.s   V_31
      IL_052f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
      IL_0534:  brfalse.s  IL_0564

      IL_0536:  ldloc.s    V_8
      IL_0538:  ldloc.s    V_28
      IL_053a:  conv.r4
      IL_053b:  ldloc.s    V_29
      IL_053d:  conv.r4
      IL_053e:  ldloc.s    V_30
      IL_0540:  conv.r4
      IL_0541:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0546:  ldc.r4     0.5
      IL_054b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0550:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0555:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
      IL_055a:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.Pickable::FlyToPosition
      IL_055f:  br         IL_0860

      IL_0564:  ldloc.s    V_8
      IL_0566:  ldc.i4.1
      IL_0567:  stfld      bool Game.WorldItem::ToRemove
      IL_056c:  br         IL_0860

      IL_0571:  ldarg.0
      IL_0572:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_0577:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_057c:  ldloca.s   V_23
      IL_057e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0583:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0588:  ldfld      int32 Game.CellFace::X
      IL_058d:  ldloca.s   V_23
      IL_058f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_0594:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0599:  ldfld      int32 Game.CellFace::Y
      IL_059e:  ldloca.s   V_23
      IL_05a0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_05a5:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_05aa:  ldfld      int32 Game.CellFace::Z
      IL_05af:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_05b4:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_05b9:  stloc.s    V_36
      IL_05bb:  ldarg.0
      IL_05bc:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemPickables::m_subsystemBlockBehaviors
      IL_05c1:  ldloc.s    V_36
      IL_05c3:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_05c8:  stloc.s    V_39
      IL_05ca:  ldc.i4.0
      IL_05cb:  stloc.s    V_40
      IL_05cd:  br.s       IL_05ed

      IL_05cf:  ldloc.s    V_39
      IL_05d1:  ldloc.s    V_40
      IL_05d3:  ldelem.ref
      IL_05d4:  ldloca.s   V_23
      IL_05d6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_05db:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_05e0:  ldloc.s    V_8
      IL_05e2:  callvirt   instance void Game.SubsystemBlockBehavior::OnHitByProjectile(valuetype Game.CellFace,
                                                                                        class Game.WorldItem)
      IL_05e7:  ldloc.s    V_40
      IL_05e9:  ldc.i4.1
      IL_05ea:  add
      IL_05eb:  stloc.s    V_40
      IL_05ed:  ldloc.s    V_40
      IL_05ef:  ldloc.s    V_39
      IL_05f1:  ldlen
      IL_05f2:  conv.i4
      IL_05f3:  blt.s      IL_05cf

      IL_05f5:  ldloca.s   V_23
      IL_05f7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
      IL_05fc:  stloc.s    V_41
      IL_05fe:  ldloca.s   V_41
      IL_0600:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
      IL_0605:  call       instance valuetype [Engine]Engine.Plane Game.CellFace::CalculatePlane()
      IL_060a:  stloc.s    V_37
      IL_060c:  ldloca.s   V_22
      IL_060e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0613:  brfalse.s  IL_0628

      IL_0615:  ldloca.s   V_22
      IL_0617:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_061c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0621:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                      valuetype [Engine]Engine.Vector2)
      IL_0626:  br.s       IL_0629

      IL_0628:  ldc.i4.0
      IL_0629:  stloc.s    V_38
      IL_062b:  ldloc.s    V_37
      IL_062d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0632:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0637:  ldc.r4     0.0
      IL_063c:  beq.s      IL_069d

      IL_063e:  ldloc.s    V_38
      IL_0640:  brtrue.s   IL_0678

      IL_0642:  ldloc.s    V_8
      IL_0644:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0649:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_064e:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0653:  ldloc.s    V_8
      IL_0655:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_065a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_065f:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0664:  add
      IL_0665:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_066a:  ldc.r4     10.
      IL_066f:  bgt.s      IL_0678

      IL_0671:  ldc.r4     0.25
      IL_0676:  br.s       IL_067d

      IL_0678:  ldc.r4     0.94999999
      IL_067d:  stloc.s    V_42
      IL_067f:  ldloc.s    V_8
      IL_0681:  dup
      IL_0682:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0687:  ldloc.s    V_42
      IL_0689:  neg
      IL_068a:  ldloc.s    V_42
      IL_068c:  ldloc.s    V_42
      IL_068e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0693:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0698:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_069d:  ldloc.s    V_37
      IL_069f:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_06a4:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_06a9:  ldc.r4     0.0
      IL_06ae:  beq        IL_0738

      IL_06b3:  ldloc.s    V_38
      IL_06b5:  brtrue.s   IL_06ed

      IL_06b7:  ldloc.s    V_8
      IL_06b9:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06be:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_06c3:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_06c8:  ldloc.s    V_8
      IL_06ca:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06cf:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_06d4:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_06d9:  add
      IL_06da:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_06df:  ldc.r4     10.
      IL_06e4:  bgt.s      IL_06ed

      IL_06e6:  ldc.r4     0.25
      IL_06eb:  br.s       IL_06f2

      IL_06ed:  ldc.r4     0.94999999
      IL_06f2:  stloc.s    V_43
      IL_06f4:  ldloc.s    V_8
      IL_06f6:  dup
      IL_06f7:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_06fc:  ldloc.s    V_43
      IL_06fe:  ldloc.s    V_43
      IL_0700:  neg
      IL_0701:  ldloc.s    V_43
      IL_0703:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0708:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_070d:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0712:  ldloc.s    V_38
      IL_0714:  brfalse.s  IL_0738

      IL_0716:  ldloc.s    V_8
      IL_0718:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_071d:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0722:  dup
      IL_0723:  ldind.r4
      IL_0724:  ldc.r4     0.1
      IL_0729:  ldloc.s    V_37
      IL_072b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_0730:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0735:  mul
      IL_0736:  add
      IL_0737:  stind.r4
      IL_0738:  ldloc.s    V_37
      IL_073a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Plane::Normal
      IL_073f:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0744:  ldc.r4     0.0
      IL_0749:  beq.s      IL_07aa

      IL_074b:  ldloc.s    V_38
      IL_074d:  brtrue.s   IL_0785

      IL_074f:  ldloc.s    V_8
      IL_0751:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0756:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_075b:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0760:  ldloc.s    V_8
      IL_0762:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0767:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_076c:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0771:  add
      IL_0772:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_0777:  ldc.r4     10.
      IL_077c:  bgt.s      IL_0785

      IL_077e:  ldc.r4     0.25
      IL_0783:  br.s       IL_078a

      IL_0785:  ldc.r4     0.94999999
      IL_078a:  stloc.s    V_44
      IL_078c:  ldloc.s    V_8
      IL_078e:  dup
      IL_078f:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0794:  ldloc.s    V_44
      IL_0796:  ldloc.s    V_44
      IL_0798:  ldloc.s    V_44
      IL_079a:  neg
      IL_079b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_07a0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_07a5:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_07aa:  ldloc.s    V_14
      IL_07ac:  stloc.s    V_15
      IL_07ae:  br         IL_0860

      IL_07b3:  ldloc.s    V_8
      IL_07b5:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_07ba:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_07bf:  stloc.s    V_47
      IL_07c1:  ldloca.s   V_47
      IL_07c3:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
      IL_07c8:  ldloc.s    V_8
      IL_07ca:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_07cf:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_07d4:  stloc.s    V_47
      IL_07d6:  ldloca.s   V_47
      IL_07d8:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
      IL_07dd:  ldloc.s    V_9
      IL_07df:  ldfld      float32 Game.Block::ProjectileTipOffset
      IL_07e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_07e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_07ee:  stloc.s    V_45
      IL_07f0:  ldarg.0
      IL_07f1:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_07f6:  ldloc.s    V_45
      IL_07f8:  ldloc.s    V_45
      IL_07fa:  ldc.i4.0
      IL_07fb:  ldc.i4.1
      IL_07fc:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_2'
      IL_0801:  dup
      IL_0802:  brtrue.s   IL_081b

      IL_0804:  pop
      IL_0805:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
      IL_080a:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Update>b__31_2'(int32,
                                                                                          float32)
      IL_0810:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                        native int)
      IL_0815:  dup
      IL_0816:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.SubsystemPickables/'<>c'::'<>9__31_2'
      IL_081b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                    valuetype [Engine]Engine.Vector3,
                                                                                                                                                    bool,
                                                                                                                                                    bool,
                                                                                                                                                    class [System.Runtime]System.Func`3<int32,float32,bool>)
      IL_0820:  stloc.s    V_46
      IL_0822:  ldloca.s   V_46
      IL_0824:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
      IL_0829:  brtrue.s   IL_0860

      IL_082b:  ldloc.s    V_8
      IL_082d:  ldloc.s    V_8
      IL_082f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0834:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
      IL_0839:  stloc.s    V_47
      IL_083b:  ldloca.s   V_47
      IL_083d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
      IL_0842:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0847:  ldloc.s    V_8
      IL_0849:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_084e:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0853:  ldloc.s    V_8
      IL_0855:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_085a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_0860:  ldloc.s    V_20
      IL_0862:  isinst     Game.WaterBlock
      IL_0867:  brfalse.s  IL_08d4

      IL_0869:  ldloc.s    V_8
      IL_086b:  ldfld      bool Game.Pickable::SplashGenerated
      IL_0870:  brtrue.s   IL_08d4

      IL_0872:  ldarg.0
      IL_0873:  ldfld      class Game.SubsystemParticles Game.SubsystemPickables::m_subsystemParticles
      IL_0878:  ldarg.0
      IL_0879:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_087e:  ldloc.s    V_8
      IL_0880:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0885:  ldc.i4.0
      IL_0886:  newobj     instance void Game.WaterSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_088b:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0890:  ldarg.0
      IL_0891:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_0896:  ldstr      "Audio/Splashes"
      IL_089b:  ldc.r4     1.
      IL_08a0:  ldarg.0
      IL_08a1:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_08a6:  ldc.r4     -0.2
      IL_08ab:  ldc.r4     0.2
      IL_08b0:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_08b5:  ldloc.s    V_8
      IL_08b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08bc:  ldc.r4     6.
      IL_08c1:  ldc.i4.1
      IL_08c2:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_08c7:  ldloc.s    V_8
      IL_08c9:  ldc.i4.1
      IL_08ca:  stfld      bool Game.Pickable::SplashGenerated
      IL_08cf:  br         IL_0999

      IL_08d4:  ldloc.s    V_20
      IL_08d6:  isinst     Game.MagmaBlock
      IL_08db:  brfalse    IL_098d

      IL_08e0:  ldloc.s    V_8
      IL_08e2:  ldfld      bool Game.Pickable::SplashGenerated
      IL_08e7:  brtrue     IL_098d

      IL_08ec:  ldarg.0
      IL_08ed:  ldfld      class Game.SubsystemParticles Game.SubsystemPickables::m_subsystemParticles
      IL_08f2:  ldarg.0
      IL_08f3:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_08f8:  ldloc.s    V_8
      IL_08fa:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_08ff:  ldc.i4.0
      IL_0900:  newobj     instance void Game.MagmaSplashParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               bool)
      IL_0905:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_090a:  ldarg.0
      IL_090b:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_0910:  ldstr      "Audio/Sizzles"
      IL_0915:  ldc.r4     1.
      IL_091a:  ldarg.0
      IL_091b:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_0920:  ldc.r4     -0.2
      IL_0925:  ldc.r4     0.2
      IL_092a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_092f:  ldloc.s    V_8
      IL_0931:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0936:  ldc.r4     3.
      IL_093b:  ldc.i4.1
      IL_093c:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0941:  ldloc.s    V_8
      IL_0943:  ldc.i4.1
      IL_0944:  stfld      bool Game.WorldItem::ToRemove
      IL_0949:  ldloc.s    V_8
      IL_094b:  ldc.i4.1
      IL_094c:  stfld      bool Game.Pickable::SplashGenerated
      IL_0951:  ldarg.0
      IL_0952:  ldfld      class Game.SubsystemExplosions Game.SubsystemPickables::m_subsystemExplosions
      IL_0957:  ldloc.s    V_8
      IL_0959:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_095e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0963:  conv.i4
      IL_0964:  ldloc.s    V_8
      IL_0966:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_096b:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0970:  conv.i4
      IL_0971:  ldloc.s    V_8
      IL_0973:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0978:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_097d:  conv.i4
      IL_097e:  ldloc.s    V_8
      IL_0980:  ldfld      int32 Game.WorldItem::Value
      IL_0985:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_098a:  pop
      IL_098b:  br.s       IL_0999

      IL_098d:  ldloc.s    V_20
      IL_098f:  brtrue.s   IL_0999

      IL_0991:  ldloc.s    V_8
      IL_0993:  ldc.i4.0
      IL_0994:  stfld      bool Game.Pickable::SplashGenerated
      IL_0999:  ldarg.0
      IL_099a:  ldfld      class Game.SubsystemTime Game.SubsystemPickables::m_subsystemTime
      IL_099f:  ldc.r8     1.
      IL_09a8:  ldloc.s    V_8
      IL_09aa:  callvirt   instance int32 [System.Runtime]System.Object::GetHashCode()
      IL_09af:  ldc.i4.s   100
      IL_09b1:  rem
      IL_09b2:  conv.r8
      IL_09b3:  ldc.r8     100.
      IL_09bc:  div
      IL_09bd:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                   float64)
      IL_09c2:  brfalse    IL_0abb

      IL_09c7:  ldarg.0
      IL_09c8:  ldfld      class Game.SubsystemTerrain Game.SubsystemPickables::m_subsystemTerrain
      IL_09cd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_09d2:  ldloc.s    V_8
      IL_09d4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09d9:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_09de:  conv.i4
      IL_09df:  ldloc.s    V_8
      IL_09e1:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09e6:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_09eb:  ldc.r4     0.1
      IL_09f0:  add
      IL_09f1:  conv.i4
      IL_09f2:  ldloc.s    V_8
      IL_09f4:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_09f9:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_09fe:  conv.i4
      IL_09ff:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_0a04:  ldc.i4.s   104
      IL_0a06:  beq.s      IL_0a42

      IL_0a08:  ldarg.0
      IL_0a09:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemPickables::m_subsystemFireBlockBehavior
      IL_0a0e:  ldloc.s    V_8
      IL_0a10:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a15:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a1a:  conv.i4
      IL_0a1b:  ldloc.s    V_8
      IL_0a1d:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a22:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0a27:  ldc.r4     0.1
      IL_0a2c:  add
      IL_0a2d:  conv.i4
      IL_0a2e:  ldloc.s    V_8
      IL_0a30:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a35:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0a3a:  conv.i4
      IL_0a3b:  callvirt   instance bool Game.SubsystemFireBlockBehavior::IsCellOnFire(int32,
                                                                                       int32,
                                                                                       int32)
      IL_0a40:  brfalse.s  IL_0abb

      IL_0a42:  ldarg.0
      IL_0a43:  ldfld      class Game.SubsystemAudio Game.SubsystemPickables::m_subsystemAudio
      IL_0a48:  ldstr      "Audio/Sizzles"
      IL_0a4d:  ldc.r4     1.
      IL_0a52:  ldarg.0
      IL_0a53:  ldfld      class Game.Random Game.SubsystemPickables::m_random
      IL_0a58:  ldc.r4     -0.2
      IL_0a5d:  ldc.r4     0.2
      IL_0a62:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0a67:  ldloc.s    V_8
      IL_0a69:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a6e:  ldc.r4     3.
      IL_0a73:  ldc.i4.1
      IL_0a74:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_0a79:  ldloc.s    V_8
      IL_0a7b:  ldc.i4.1
      IL_0a7c:  stfld      bool Game.WorldItem::ToRemove
      IL_0a81:  ldarg.0
      IL_0a82:  ldfld      class Game.SubsystemExplosions Game.SubsystemPickables::m_subsystemExplosions
      IL_0a87:  ldloc.s    V_8
      IL_0a89:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a8e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0a93:  conv.i4
      IL_0a94:  ldloc.s    V_8
      IL_0a96:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0a9b:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0aa0:  conv.i4
      IL_0aa1:  ldloc.s    V_8
      IL_0aa3:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0aa8:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0aad:  conv.i4
      IL_0aae:  ldloc.s    V_8
      IL_0ab0:  ldfld      int32 Game.WorldItem::Value
      IL_0ab5:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_0aba:  pop
      IL_0abb:  ldloc.s    V_8
      IL_0abd:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.Pickable::StuckMatrix
      IL_0ac2:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
      IL_0ac7:  brtrue     IL_0be7

      IL_0acc:  ldloca.s   V_22
      IL_0ace:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
      IL_0ad3:  brfalse    IL_0bbd

      IL_0ad8:  ldloca.s   V_21
      IL_0ada:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0adf:  brfalse    IL_0bbd

      IL_0ae4:  ldloca.s   V_21
      IL_0ae6:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0aeb:  ldloc.s    V_8
      IL_0aed:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0af2:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0af7:  sub
      IL_0af8:  stloc.s    V_48
      IL_0afa:  ldc.r4     3.
      IL_0aff:  ldloc.s    V_48
      IL_0b01:  mul
      IL_0b02:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0b07:  stloc.s    V_49
      IL_0b09:  ldloc.s    V_8
      IL_0b0b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b10:  ldflda     float32 [Engine]Engine.Vector3::X
      IL_0b15:  dup
      IL_0b16:  ldind.r4
      IL_0b17:  ldc.r4     4.
      IL_0b1c:  ldarg.1
      IL_0b1d:  mul
      IL_0b1e:  ldloca.s   V_22
      IL_0b20:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0b25:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0b2a:  ldloc.s    V_8
      IL_0b2c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b31:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0b36:  sub
      IL_0b37:  mul
      IL_0b38:  add
      IL_0b39:  stind.r4
      IL_0b3a:  ldloc.s    V_8
      IL_0b3c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b41:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0b46:  dup
      IL_0b47:  ldind.r4
      IL_0b48:  ldc.r4     10.
      IL_0b4d:  ldarg.1
      IL_0b4e:  mul
      IL_0b4f:  sub
      IL_0b50:  stind.r4
      IL_0b51:  ldloc.s    V_8
      IL_0b53:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b58:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0b5d:  dup
      IL_0b5e:  ldind.r4
      IL_0b5f:  ldc.r4     10.
      IL_0b64:  ldc.r4     1.
      IL_0b69:  ldloc.s    V_9
      IL_0b6b:  ldfld      float32 Game.Block::Density
      IL_0b70:  div
      IL_0b71:  ldloc.s    V_49
      IL_0b73:  mul
      IL_0b74:  mul
      IL_0b75:  ldarg.1
      IL_0b76:  mul
      IL_0b77:  add
      IL_0b78:  stind.r4
      IL_0b79:  ldloc.s    V_8
      IL_0b7b:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0b80:  ldflda     float32 [Engine]Engine.Vector3::Z
      IL_0b85:  dup
      IL_0b86:  ldind.r4
      IL_0b87:  ldc.r4     4.
      IL_0b8c:  ldarg.1
      IL_0b8d:  mul
      IL_0b8e:  ldloca.s   V_22
      IL_0b90:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
      IL_0b95:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0b9a:  ldloc.s    V_8
      IL_0b9c:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0ba1:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0ba6:  sub
      IL_0ba7:  mul
      IL_0ba8:  add
      IL_0ba9:  stind.r4
      IL_0baa:  ldloc.s    V_8
      IL_0bac:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0bb1:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0bb6:  dup
      IL_0bb7:  ldind.r4
      IL_0bb8:  ldloc.2
      IL_0bb9:  mul
      IL_0bba:  stind.r4
      IL_0bbb:  br.s       IL_0be7

      IL_0bbd:  ldloc.s    V_8
      IL_0bbf:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0bc4:  ldflda     float32 [Engine]Engine.Vector3::Y
      IL_0bc9:  dup
      IL_0bca:  ldind.r4
      IL_0bcb:  ldc.r4     10.
      IL_0bd0:  ldarg.1
      IL_0bd1:  mul
      IL_0bd2:  sub
      IL_0bd3:  stind.r4
      IL_0bd4:  ldloc.s    V_8
      IL_0bd6:  dup
      IL_0bd7:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0bdc:  ldloc.1
      IL_0bdd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0be2:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0be7:  ldloc.s    V_8
      IL_0be9:  ldloc.s    V_15
      IL_0beb:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0bf0:  ldloca.s   V_7
      IL_0bf2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0bf7:  brtrue     IL_00d0

      IL_0bfc:  leave.s    IL_0c0c

    }  // end .try
    finally
    {
      IL_0bfe:  ldloca.s   V_7
      IL_0c00:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_0c06:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0c0b:  endfinally
    }  // end handler
    IL_0c0c:  ldarg.0
    IL_0c0d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0c12:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::GetEnumerator()
    IL_0c17:  stloc.s    V_7
    .try
    {
      IL_0c19:  br.s       IL_0c47

      IL_0c1b:  ldloca.s   V_7
      IL_0c1d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0c22:  stloc.s    V_50
      IL_0c24:  ldarg.0
      IL_0c25:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
      IL_0c2a:  ldloc.s    V_50
      IL_0c2c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Remove(!0)
      IL_0c31:  pop
      IL_0c32:  ldarg.0
      IL_0c33:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
      IL_0c38:  brfalse.s  IL_0c47

      IL_0c3a:  ldarg.0
      IL_0c3b:  ldfld      class [System.Runtime]System.Action`1<class Game.Pickable> Game.SubsystemPickables::PickableRemoved
      IL_0c40:  ldloc.s    V_50
      IL_0c42:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.Pickable>::Invoke(!0)
      IL_0c47:  ldloca.s   V_7
      IL_0c49:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_0c4e:  brtrue.s   IL_0c1b

      IL_0c50:  leave.s    IL_0c60

    }  // end .try
    finally
    {
      IL_0c52:  ldloca.s   V_7
      IL_0c54:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.Pickable>
      IL_0c5a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0c5f:  endfinally
    }  // end handler
    IL_0c60:  ldarg.0
    IL_0c61:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0c66:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::Clear()
    IL_0c6b:  ret
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_001f:  stfld      class Game.SubsystemPlayer Game.SubsystemPickables::m_subsystemPlayer
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
    IL_00d6:  ldsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemPickables/'<>c'::'<>9__32_0'
    IL_00db:  dup
    IL_00dc:  brtrue.s   IL_00f5

    IL_00de:  pop
    IL_00df:  ldsfld     class Game.SubsystemPickables/'<>c' Game.SubsystemPickables/'<>c'::'<>9'
    IL_00e4:  ldftn      instance bool Game.SubsystemPickables/'<>c'::'<Load>b__32_0'(object)
    IL_00ea:  newobj     instance void class [System.Runtime]System.Func`2<object,bool>::.ctor(object,
                                                                                               native int)
    IL_00ef:  dup
    IL_00f0:  stsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemPickables/'<>c'::'<>9__32_0'
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
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickables
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.Pickable> Game.SubsystemPickables::m_pickablesToRemove
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_001c:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.SubsystemPickables::m_primitivesRenderer
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void Game.Random::.ctor()
    IL_0027:  stfld      class Game.Random Game.SubsystemPickables::m_random
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0032:  stfld      class Game.DrawBlockEnvironmentData Game.SubsystemPickables::m_drawBlockEnvironmentData
    IL_0037:  ldarg.0
    IL_0038:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_003d:  ret
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