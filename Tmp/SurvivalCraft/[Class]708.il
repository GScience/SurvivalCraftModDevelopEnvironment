.class public auto ansi beforefieldinit Game.SubsystemMovingBlocks
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable,
                  Game.IDrawable
{
  .class auto ansi nested private beforefieldinit MovingBlockSet
         extends [System.Runtime]System.Object
         implements Game.IMovingBlockSet
  {
    .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass32_0'
           extends [System.Runtime]System.Object
    {
      .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .field public valuetype [Engine]Engine.Point3 offset
      .method public hidebysig specialname rtspecialname 
              instance void  .ctor() cil managed
      {
        // 代码大小       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
        IL_0006:  ret
      } // end of method '<>c__DisplayClass32_0'::.ctor

      .method assembly hidebysig instance bool 
              '<Game.IMovingBlockSet.SetBlock>b__0'(valuetype Game.MovingBlock b) cil managed
      {
        // 代码大小       18 (0x12)
        .maxstack  8
        IL_0000:  ldarg.1
        IL_0001:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0006:  ldarg.0
        IL_0007:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0'::offset
        IL_000c:  call       bool [Engine]Engine.Point3::op_Equality(valuetype [Engine]Engine.Point3,
                                                                     valuetype [Engine]Engine.Point3)
        IL_0011:  ret
      } // end of method '<>c__DisplayClass32_0'::'<Game.IMovingBlockSet.SetBlock>b__0'

    } // end of class '<>c__DisplayClass32_0'

    .field public string Id
    .field public object Tag
    .field public bool Stop
    .field public int32 RemainCounter
    .field public valuetype [Engine]Engine.Vector3 Position
    .field public valuetype [Engine]Engine.Vector3 StartPosition
    .field public valuetype [Engine]Engine.Vector3 TargetPosition
    .field public float32 Speed
    .field public float32 Acceleration
    .field public float32 Drag
    .field public valuetype [Engine]Engine.Vector2 Smoothness
    .field public class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Blocks
    .field public valuetype [Engine]Engine.Box Box
    .field public valuetype [Engine]Engine.Vector3 CurrentVelocity
    .field public class Game.TerrainGeometrySubsets Tgs
    .field public class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Vertices
    .field public class [Engine]Engine.DynamicArray`1<uint16> Indices
    .field public valuetype [Engine]Engine.Vector3 GeometryOffset
    .field public valuetype [Engine]Engine.Point3 GeometryGenerationPosition
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       233 (0xe9)
      .maxstack  5
      .locals init (class Game.TerrainGeometrySubset V_0)
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::.ctor()
      IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks/MovingBlockSet::Vertices
      IL_000b:  ldarg.0
      IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
      IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
      IL_0016:  ldarg.0
      IL_0017:  ldc.i4     0x7fffffff
      IL_001c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32)
      IL_0021:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryGenerationPosition
      IL_0026:  ldarg.0
      IL_0027:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_002c:  ldarg.0
      IL_002d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks/MovingBlockSet::Vertices
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
      IL_0038:  newobj     instance void Game.TerrainGeometrySubset::.ctor(class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>,
                                                                           class [Engine]Engine.DynamicArray`1<uint16>)
      IL_003d:  stloc.0
      IL_003e:  ldarg.0
      IL_003f:  newobj     instance void Game.TerrainGeometrySubsets::.ctor()
      IL_0044:  stfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_0049:  ldarg.0
      IL_004a:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_004f:  ldloc.0
      IL_0050:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
      IL_0055:  ldarg.0
      IL_0056:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_005b:  ldloc.0
      IL_005c:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
      IL_0061:  ldarg.0
      IL_0062:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_0067:  ldloc.0
      IL_0068:  stfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetTransparent
      IL_006d:  ldarg.0
      IL_006e:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_0073:  ldc.i4.6
      IL_0074:  newarr     Game.TerrainGeometrySubset
      IL_0079:  dup
      IL_007a:  ldc.i4.0
      IL_007b:  ldloc.0
      IL_007c:  stelem.ref
      IL_007d:  dup
      IL_007e:  ldc.i4.1
      IL_007f:  ldloc.0
      IL_0080:  stelem.ref
      IL_0081:  dup
      IL_0082:  ldc.i4.2
      IL_0083:  ldloc.0
      IL_0084:  stelem.ref
      IL_0085:  dup
      IL_0086:  ldc.i4.3
      IL_0087:  ldloc.0
      IL_0088:  stelem.ref
      IL_0089:  dup
      IL_008a:  ldc.i4.4
      IL_008b:  ldloc.0
      IL_008c:  stelem.ref
      IL_008d:  dup
      IL_008e:  ldc.i4.5
      IL_008f:  ldloc.0
      IL_0090:  stelem.ref
      IL_0091:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
      IL_0096:  ldarg.0
      IL_0097:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_009c:  ldc.i4.6
      IL_009d:  newarr     Game.TerrainGeometrySubset
      IL_00a2:  dup
      IL_00a3:  ldc.i4.0
      IL_00a4:  ldloc.0
      IL_00a5:  stelem.ref
      IL_00a6:  dup
      IL_00a7:  ldc.i4.1
      IL_00a8:  ldloc.0
      IL_00a9:  stelem.ref
      IL_00aa:  dup
      IL_00ab:  ldc.i4.2
      IL_00ac:  ldloc.0
      IL_00ad:  stelem.ref
      IL_00ae:  dup
      IL_00af:  ldc.i4.3
      IL_00b0:  ldloc.0
      IL_00b1:  stelem.ref
      IL_00b2:  dup
      IL_00b3:  ldc.i4.4
      IL_00b4:  ldloc.0
      IL_00b5:  stelem.ref
      IL_00b6:  dup
      IL_00b7:  ldc.i4.5
      IL_00b8:  ldloc.0
      IL_00b9:  stelem.ref
      IL_00ba:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::AlphaTestSubsetsByFace
      IL_00bf:  ldarg.0
      IL_00c0:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
      IL_00c5:  ldc.i4.6
      IL_00c6:  newarr     Game.TerrainGeometrySubset
      IL_00cb:  dup
      IL_00cc:  ldc.i4.0
      IL_00cd:  ldloc.0
      IL_00ce:  stelem.ref
      IL_00cf:  dup
      IL_00d0:  ldc.i4.1
      IL_00d1:  ldloc.0
      IL_00d2:  stelem.ref
      IL_00d3:  dup
      IL_00d4:  ldc.i4.2
      IL_00d5:  ldloc.0
      IL_00d6:  stelem.ref
      IL_00d7:  dup
      IL_00d8:  ldc.i4.3
      IL_00d9:  ldloc.0
      IL_00da:  stelem.ref
      IL_00db:  dup
      IL_00dc:  ldc.i4.4
      IL_00dd:  ldloc.0
      IL_00de:  stelem.ref
      IL_00df:  dup
      IL_00e0:  ldc.i4.5
      IL_00e1:  ldloc.0
      IL_00e2:  stelem.ref
      IL_00e3:  stfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::TransparentSubsetsByFace
      IL_00e8:  ret
    } // end of method MovingBlockSet::.ctor

    .method public hidebysig instance void 
            UpdateBox() cil managed
    {
      // 代码大小       299 (0x12b)
      .maxstack  8
      .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_0,
               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3> V_1,
               valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock> V_2,
               valuetype Game.MovingBlock V_3)
      IL_0000:  ldloca.s   V_0
      IL_0002:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
      IL_0008:  ldloca.s   V_1
      IL_000a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>
      IL_0010:  ldarg.0
      IL_0011:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
      IL_0016:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::GetEnumerator()
      IL_001b:  stloc.2
      .try
      {
        IL_001c:  br.s       IL_0078

        IL_001e:  ldloca.s   V_2
        IL_0020:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
        IL_0025:  stloc.3
        IL_0026:  ldloca.s   V_0
        IL_0028:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
        IL_002d:  brtrue.s   IL_0037

        IL_002f:  ldloc.3
        IL_0030:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0035:  br.s       IL_0049

        IL_0037:  ldloca.s   V_0
        IL_0039:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
        IL_003e:  ldloc.3
        IL_003f:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0044:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Min(valuetype [Engine]Engine.Point3,
                                                                                        valuetype [Engine]Engine.Point3)
        IL_0049:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
        IL_004e:  stloc.0
        IL_004f:  ldloca.s   V_1
        IL_0051:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
        IL_0056:  brtrue.s   IL_0060

        IL_0058:  ldloc.3
        IL_0059:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_005e:  br.s       IL_0072

        IL_0060:  ldloca.s   V_1
        IL_0062:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
        IL_0067:  ldloc.3
        IL_0068:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_006d:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Max(valuetype [Engine]Engine.Point3,
                                                                                        valuetype [Engine]Engine.Point3)
        IL_0072:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::.ctor(!0)
        IL_0077:  stloc.1
        IL_0078:  ldloca.s   V_2
        IL_007a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
        IL_007f:  brtrue.s   IL_001e

        IL_0081:  leave.s    IL_0091

      }  // end .try
      finally
      {
        IL_0083:  ldloca.s   V_2
        IL_0085:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>
        IL_008b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0090:  endfinally
      }  // end handler
      IL_0091:  ldloca.s   V_0
      IL_0093:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_HasValue()
      IL_0098:  brfalse    IL_011e

      IL_009d:  ldarg.0
      IL_009e:  ldloca.s   V_0
      IL_00a0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00a5:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00aa:  ldloca.s   V_0
      IL_00ac:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b6:  ldloca.s   V_0
      IL_00b8:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00bd:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00c2:  ldloca.s   V_1
      IL_00c4:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00c9:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ce:  ldloca.s   V_0
      IL_00d0:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00d5:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00da:  sub
      IL_00db:  ldc.i4.1
      IL_00dc:  add
      IL_00dd:  ldloca.s   V_1
      IL_00df:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00e4:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00e9:  ldloca.s   V_0
      IL_00eb:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00f0:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00f5:  sub
      IL_00f6:  ldc.i4.1
      IL_00f7:  add
      IL_00f8:  ldloca.s   V_1
      IL_00fa:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_00ff:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0104:  ldloca.s   V_0
      IL_0106:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Point3>::get_Value()
      IL_010b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0110:  sub
      IL_0111:  ldc.i4.1
      IL_0112:  add
      IL_0113:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                   int32,
                                                                   int32,
                                                                   int32,
                                                                   int32,
                                                                   int32)
      IL_0118:  stfld      valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_011d:  ret

      IL_011e:  ldarg.0
      IL_011f:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_0124:  initobj    [Engine]Engine.Box
      IL_012a:  ret
    } // end of method MovingBlockSet::UpdateBox

    .method private hidebysig newslot specialname virtual final 
            instance valuetype [Engine]Engine.Vector3 
            Game.IMovingBlockSet.get_Position() cil managed
    {
      .override Game.IMovingBlockSet::get_Position
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0006:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.get_Position

    .method private hidebysig newslot specialname virtual final 
            instance string  Game.IMovingBlockSet.get_Id() cil managed
    {
      .override Game.IMovingBlockSet::get_Id
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      string Game.SubsystemMovingBlocks/MovingBlockSet::Id
      IL_0006:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.get_Id

    .method private hidebysig newslot specialname virtual final 
            instance object  Game.IMovingBlockSet.get_Tag() cil managed
    {
      .override Game.IMovingBlockSet::get_Tag
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      object Game.SubsystemMovingBlocks/MovingBlockSet::Tag
      IL_0006:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.get_Tag

    .method private hidebysig newslot specialname virtual final 
            instance valuetype [Engine]Engine.Vector3 
            Game.IMovingBlockSet.get_CurrentVelocity() cil managed
    {
      .override Game.IMovingBlockSet::get_CurrentVelocity
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
      IL_0006:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.get_CurrentVelocity

    .method public hidebysig newslot virtual final 
            instance valuetype [Engine]Engine.BoundingBox 
            BoundingBox(bool extendToFillCells) cil managed
    {
      // 代码大小       277 (0x115)
      .maxstack  5
      .locals init (valuetype [Engine]Engine.Vector3 V_0,
               valuetype [Engine]Engine.Vector3 V_1)
      IL_0000:  ldloca.s   V_0
      IL_0002:  ldarg.0
      IL_0003:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0008:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_000d:  ldarg.0
      IL_000e:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_0013:  ldfld      int32 [Engine]Engine.Box::Left
      IL_0018:  conv.r4
      IL_0019:  add
      IL_001a:  ldarg.0
      IL_001b:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0020:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0025:  ldarg.0
      IL_0026:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_002b:  ldfld      int32 [Engine]Engine.Box::Top
      IL_0030:  conv.r4
      IL_0031:  add
      IL_0032:  ldarg.0
      IL_0033:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0038:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_003d:  ldarg.0
      IL_003e:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_0043:  ldfld      int32 [Engine]Engine.Box::Near
      IL_0048:  conv.r4
      IL_0049:  add
      IL_004a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_004f:  ldloca.s   V_1
      IL_0051:  ldarg.0
      IL_0052:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0057:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_005c:  ldarg.0
      IL_005d:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_0062:  call       instance int32 [Engine]Engine.Box::get_Right()
      IL_0067:  conv.r4
      IL_0068:  add
      IL_0069:  ldarg.0
      IL_006a:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_006f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0074:  ldarg.0
      IL_0075:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_007a:  call       instance int32 [Engine]Engine.Box::get_Bottom()
      IL_007f:  conv.r4
      IL_0080:  add
      IL_0081:  ldarg.0
      IL_0082:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0087:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_008c:  ldarg.0
      IL_008d:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
      IL_0092:  call       instance int32 [Engine]Engine.Box::get_Far()
      IL_0097:  conv.r4
      IL_0098:  add
      IL_0099:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_009e:  ldarg.1
      IL_009f:  brfalse.s  IL_010d

      IL_00a1:  ldloca.s   V_0
      IL_00a3:  ldloc.0
      IL_00a4:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_00a9:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_00ae:  stfld      float32 [Engine]Engine.Vector3::X
      IL_00b3:  ldloca.s   V_0
      IL_00b5:  ldloc.0
      IL_00b6:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00bb:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_00c0:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_00c5:  ldloca.s   V_0
      IL_00c7:  ldloc.0
      IL_00c8:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00cd:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_00d2:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_00d7:  ldloca.s   V_1
      IL_00d9:  ldloc.1
      IL_00da:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_00df:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_00e4:  stfld      float32 [Engine]Engine.Vector3::X
      IL_00e9:  ldloca.s   V_1
      IL_00eb:  ldloc.1
      IL_00ec:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00f1:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_00f6:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_00fb:  ldloca.s   V_1
      IL_00fd:  ldloc.1
      IL_00fe:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0103:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_0108:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_010d:  ldloc.0
      IL_010e:  ldloc.1
      IL_010f:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0114:  ret
    } // end of method MovingBlockSet::BoundingBox

    .method private hidebysig newslot specialname virtual final 
            instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> 
            Game.IMovingBlockSet.get_Blocks() cil managed
    {
      .override Game.IMovingBlockSet::get_Blocks
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
      IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
      IL_000b:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.get_Blocks

    .method private hidebysig newslot virtual final 
            instance void  Game.IMovingBlockSet.SetBlock(valuetype [Engine]Engine.Point3 offset,
                                                         int32 'value') cil managed
    {
      .override Game.IMovingBlockSet::SetBlock
      // 代码大小       104 (0x68)
      .maxstack  3
      .locals init (class Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0' V_0,
               valuetype Game.MovingBlock V_1)
      IL_0000:  newobj     instance void Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0'::offset
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
      IL_0013:  ldloc.0
      IL_0014:  ldftn      instance bool Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0'::'<Game.IMovingBlockSet.SetBlock>b__0'(valuetype Game.MovingBlock)
      IL_001a:  newobj     instance void class [System.Runtime]System.Predicate`1<valuetype Game.MovingBlock>::.ctor(object,
                                                                                                                     native int)
      IL_001f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::RemoveAll(class [System.Runtime]System.Predicate`1<!0>)
      IL_0024:  pop
      IL_0025:  ldarg.2
      IL_0026:  brfalse.s  IL_0051

      IL_0028:  ldarg.0
      IL_0029:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
      IL_002e:  ldloca.s   V_1
      IL_0030:  initobj    Game.MovingBlock
      IL_0036:  ldloca.s   V_1
      IL_0038:  ldloc.0
      IL_0039:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet/'<>c__DisplayClass32_0'::offset
      IL_003e:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_0043:  ldloca.s   V_1
      IL_0045:  ldarg.2
      IL_0046:  stfld      int32 Game.MovingBlock::Value
      IL_004b:  ldloc.1
      IL_004c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::Add(!0)
      IL_0051:  ldarg.0
      IL_0052:  call       instance void Game.SubsystemMovingBlocks/MovingBlockSet::UpdateBox()
      IL_0057:  ldarg.0
      IL_0058:  ldc.i4     0x7fffffff
      IL_005d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32)
      IL_0062:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryGenerationPosition
      IL_0067:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.SetBlock

    .method private hidebysig newslot virtual final 
            instance void  Game.IMovingBlockSet.Stop() cil managed
    {
      .override Game.IMovingBlockSet::Stop
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.1
      IL_0002:  stfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
      IL_0007:  ret
    } // end of method MovingBlockSet::Game.IMovingBlockSet.Stop

    .property instance valuetype [Engine]Engine.Vector3
            Game.IMovingBlockSet.Position()
    {
      .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Game.IMovingBlockSet.get_Position()
    } // end of property MovingBlockSet::Game.IMovingBlockSet.Position
    .property instance string Game.IMovingBlockSet.Id()
    {
      .get instance string Game.SubsystemMovingBlocks/MovingBlockSet::Game.IMovingBlockSet.get_Id()
    } // end of property MovingBlockSet::Game.IMovingBlockSet.Id
    .property instance object Game.IMovingBlockSet.Tag()
    {
      .get instance object Game.SubsystemMovingBlocks/MovingBlockSet::Game.IMovingBlockSet.get_Tag()
    } // end of property MovingBlockSet::Game.IMovingBlockSet.Tag
    .property instance valuetype [Engine]Engine.Vector3
            Game.IMovingBlockSet.CurrentVelocity()
    {
      .get instance valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Game.IMovingBlockSet.get_CurrentVelocity()
    } // end of property MovingBlockSet::Game.IMovingBlockSet.CurrentVelocity
    .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>
            Game.IMovingBlockSet.Blocks()
    {
      .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Game.IMovingBlockSet.get_Blocks()
    } // end of property MovingBlockSet::Game.IMovingBlockSet.Blocks
  } // end of class MovingBlockSet

  .class auto ansi sealed nested private beforefieldinit '<get_MovingBlockSets>d__21'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.IMovingBlockSet '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field public class Game.SubsystemMovingBlocks '<>4__this'
    .field private valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> '<>7__wrap1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<get_MovingBlockSets>d__21'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.1
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<get_MovingBlockSets>d__21'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       139 (0x8b)
      .maxstack  2
      .locals init (bool V_0,
               int32 V_1,
               class Game.SubsystemMovingBlocks/MovingBlockSet V_2)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  brfalse.s  IL_0012

        IL_000a:  ldloc.1
        IL_000b:  ldc.i4.1
        IL_000c:  beq.s      IL_0057

        IL_000e:  ldc.i4.0
        IL_000f:  stloc.0
        IL_0010:  leave.s    IL_0089

        IL_0012:  ldarg.0
        IL_0013:  ldc.i4.m1
        IL_0014:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
        IL_0019:  ldarg.0
        IL_001a:  ldarg.0
        IL_001b:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>4__this'
        IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
        IL_0025:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
        IL_002a:  stfld      valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>7__wrap1'
        IL_002f:  ldarg.0
        IL_0030:  ldc.i4.s   -3
        IL_0032:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
        IL_0037:  br.s       IL_005f

        IL_0039:  ldarg.0
        IL_003a:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>7__wrap1'
        IL_003f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
        IL_0044:  stloc.2
        IL_0045:  ldarg.0
        IL_0046:  ldloc.2
        IL_0047:  stfld      class Game.IMovingBlockSet Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>2__current'
        IL_004c:  ldarg.0
        IL_004d:  ldc.i4.1
        IL_004e:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
        IL_0053:  ldc.i4.1
        IL_0054:  stloc.0
        IL_0055:  leave.s    IL_0089

        IL_0057:  ldarg.0
        IL_0058:  ldc.i4.s   -3
        IL_005a:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
        IL_005f:  ldarg.0
        IL_0060:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>7__wrap1'
        IL_0065:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
        IL_006a:  brtrue.s   IL_0039

        IL_006c:  ldarg.0
        IL_006d:  call       instance void Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>m__Finally1'()
        IL_0072:  ldarg.0
        IL_0073:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>7__wrap1'
        IL_0078:  initobj    valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
        IL_007e:  ldc.i4.0
        IL_007f:  stloc.0
        IL_0080:  leave.s    IL_0089

      }  // end .try
      fault
      {
        IL_0082:  ldarg.0
        IL_0083:  call       instance void Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::System.IDisposable.Dispose()
        IL_0088:  endfinally
      }  // end handler
      IL_0089:  ldloc.0
      IL_008a:  ret
    } // end of method '<get_MovingBlockSets>d__21'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<get_MovingBlockSets>d__21'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.IMovingBlockSet 
            'System.Collections.Generic.IEnumerator<Game.IMovingBlockSet>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.IMovingBlockSet Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_MovingBlockSets>d__21'::'System.Collections.Generic.IEnumerator<Game.IMovingBlockSet>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<get_MovingBlockSets>d__21'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.IMovingBlockSet Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>2__current'
      IL_0006:  ret
    } // end of method '<get_MovingBlockSets>d__21'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet> 
            'System.Collections.Generic.IEnumerable<Game.IMovingBlockSet>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>4__this'
      IL_0030:  stfld      class Game.SubsystemMovingBlocks Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<get_MovingBlockSets>d__21'::'System.Collections.Generic.IEnumerable<Game.IMovingBlockSet>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'System.Collections.Generic.IEnumerable<Game.IMovingBlockSet>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<get_MovingBlockSets>d__21'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.IMovingBlockSet
            'System.Collections.Generic.IEnumerator<Game.IMovingBlockSet>.Current'()
    {
      .get instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'System.Collections.Generic.IEnumerator<Game.IMovingBlockSet>.get_Current'()
    } // end of property '<get_MovingBlockSets>d__21'::'System.Collections.Generic.IEnumerator<Game.IMovingBlockSet>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::System.Collections.IEnumerator.get_Current()
    } // end of property '<get_MovingBlockSets>d__21'::System.Collections.IEnumerator.Current
  } // end of class '<get_MovingBlockSets>d__21'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemAnimatedTextures m_subsystemAnimatedTextures
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> m_movingBlockSets
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> m_stopped
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> m_removing
  .field private class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> m_vertices
  .field private class [Engine]Engine.DynamicArray`1<uint16> m_indices
  .field private class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> m_result
  .field private class [Engine]Engine.Graphics.Shader m_shader
  .field private class Game.BlockGeometryGenerator m_blockGeometryGenerator
  .field public static bool DebugDrawMovingBlocks
  .field private class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> CollidedWithTerrain
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Stopped
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance void 
          add_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_0,
             class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_1,
             class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> Game.SubsystemMovingBlocks::CollidedWithTerrain
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> Game.SubsystemMovingBlocks::CollidedWithTerrain
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>>(!!0&,
                                                                                                                                                                                                !!0,
                                                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemMovingBlocks::add_CollidedWithTerrain

  .method public hidebysig specialname instance void 
          remove_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_0,
             class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_1,
             class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> Game.SubsystemMovingBlocks::CollidedWithTerrain
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> Game.SubsystemMovingBlocks::CollidedWithTerrain
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>>(!!0&,
                                                                                                                                                                                                !!0,
                                                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemMovingBlocks::remove_CollidedWithTerrain

  .method public hidebysig specialname instance void 
          add_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_0,
             class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_1,
             class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::Stopped
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::Stopped
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>>(!!0&,
                                                                                                                                                                !!0,
                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemMovingBlocks::add_Stopped

  .method public hidebysig specialname instance void 
          remove_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_0,
             class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_1,
             class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::Stopped
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::Stopped
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>>(!!0&,
                                                                                                                                                                !!0,
                                                                                                                                                                !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method SubsystemMovingBlocks::remove_Stopped

  .method public hidebysig specialname instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet> 
          get_MovingBlockSets() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 35 47 61 6D 65 2E 53 75 62 73 79 73 74 65   // ..5Game.Subsyste
                                                                                                                                                      6D 4D 6F 76 69 6E 67 42 6C 6F 63 6B 73 2B 3C 67   // mMovingBlocks+<g
                                                                                                                                                      65 74 5F 4D 6F 76 69 6E 67 42 6C 6F 63 6B 53 65   // et_MovingBlockSe
                                                                                                                                                      74 73 3E 64 5F 5F 32 31 00 00 )                   // ts>d__21..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.SubsystemMovingBlocks Game.SubsystemMovingBlocks/'<get_MovingBlockSets>d__21'::'<>4__this'
    IL_000e:  ret
  } // end of method SubsystemMovingBlocks::get_MovingBlockSets

  .method public hidebysig instance class Game.IMovingBlockSet 
          AddMovingBlockSet(valuetype [Engine]Engine.Vector3 position,
                            valuetype [Engine]Engine.Vector3 targetPosition,
                            float32 speed,
                            float32 acceleration,
                            float32 drag,
                            valuetype [Engine]Engine.Vector2 smoothness,
                            class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.MovingBlock> blocks,
                            string id,
                            object tag,
                            bool testCollision) cil managed
  {
    // 代码大小       135 (0x87)
    .maxstack  3
    .locals init (class Game.SubsystemMovingBlocks/MovingBlockSet V_0)
    IL_0000:  newobj     instance void Game.SubsystemMovingBlocks/MovingBlockSet::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.1
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_000c:  dup
    IL_000d:  ldarg.1
    IL_000e:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::StartPosition
    IL_0013:  dup
    IL_0014:  ldarg.2
    IL_0015:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
    IL_001a:  dup
    IL_001b:  ldarg.3
    IL_001c:  stfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
    IL_0021:  dup
    IL_0022:  ldarg.s    acceleration
    IL_0024:  stfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Acceleration
    IL_0029:  dup
    IL_002a:  ldarg.s    drag
    IL_002c:  stfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Drag
    IL_0031:  dup
    IL_0032:  ldarg.s    smoothness
    IL_0034:  stfld      valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
    IL_0039:  dup
    IL_003a:  ldarg.s    id
    IL_003c:  stfld      string Game.SubsystemMovingBlocks/MovingBlockSet::Id
    IL_0041:  dup
    IL_0042:  ldarg.s    tag
    IL_0044:  stfld      object Game.SubsystemMovingBlocks/MovingBlockSet::Tag
    IL_0049:  dup
    IL_004a:  ldarg.s    blocks
    IL_004c:  call       class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<valuetype Game.MovingBlock>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0051:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
    IL_0056:  stloc.0
    IL_0057:  ldloc.0
    IL_0058:  callvirt   instance void Game.SubsystemMovingBlocks/MovingBlockSet::UpdateBox()
    IL_005d:  ldarg.s    testCollision
    IL_005f:  brfalse.s  IL_0072

    IL_0061:  ldarg.0
    IL_0062:  ldloc.0
    IL_0063:  call       instance void Game.SubsystemMovingBlocks::MovingBlocksCollision(class Game.SubsystemMovingBlocks/MovingBlockSet)
    IL_0068:  ldloc.0
    IL_0069:  ldfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
    IL_006e:  brfalse.s  IL_0072

    IL_0070:  ldnull
    IL_0071:  ret

    IL_0072:  ldarg.0
    IL_0073:  ldloc.0
    IL_0074:  call       instance void Game.SubsystemMovingBlocks::GenerateGeometry(class Game.SubsystemMovingBlocks/MovingBlockSet)
    IL_0079:  ldarg.0
    IL_007a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_007f:  ldloc.0
    IL_0080:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::Add(!0)
    IL_0085:  ldloc.0
    IL_0086:  ret
  } // end of method SubsystemMovingBlocks::AddMovingBlockSet

  .method public hidebysig instance void 
          RemoveMovingBlockSet(class Game.IMovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  2
    .locals init (class Game.SubsystemMovingBlocks/MovingBlockSet V_0)
    IL_0000:  ldarg.1
    IL_0001:  castclass  Game.SubsystemMovingBlocks/MovingBlockSet
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::Remove(!0)
    IL_0013:  brfalse.s  IL_0028

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_removing
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::Add(!0)
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.4
    IL_0023:  stfld      int32 Game.SubsystemMovingBlocks/MovingBlockSet::RemainCounter
    IL_0028:  ret
  } // end of method SubsystemMovingBlocks::RemoveMovingBlockSet

  .method public hidebysig instance void 
          FindMovingBlocks(valuetype [Engine]Engine.BoundingBox boundingBox,
                           bool extendToFillCells,
                           class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> result) cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  3
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> V_0,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_002c

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldarg.1
      IL_0017:  ldloc.1
      IL_0018:  ldarg.2
      IL_0019:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.SubsystemMovingBlocks/MovingBlockSet::BoundingBox(bool)
      IL_001e:  call       bool Game.SubsystemMovingBlocks::ExclusiveBoxIntersection(valuetype [Engine]Engine.BoundingBox,
                                                                                     valuetype [Engine]Engine.BoundingBox)
      IL_0023:  brfalse.s  IL_002c

      IL_0025:  ldarg.3
      IL_0026:  ldloc.1
      IL_0027:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::Add(!0)
      IL_002c:  ldloca.s   V_0
      IL_002e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_0033:  brtrue.s   IL_000e

      IL_0035:  leave.s    IL_0045

    }  // end .try
    finally
    {
      IL_0037:  ldloca.s   V_0
      IL_0039:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_003f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0044:  endfinally
    }  // end handler
    IL_0045:  ret
  } // end of method SubsystemMovingBlocks::FindMovingBlocks

  .method public hidebysig instance class Game.IMovingBlockSet 
          FindMovingBlocks(string id,
                           object tag) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> V_0,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_1,
             class Game.IMovingBlockSet V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_0036

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldloc.1
      IL_0017:  ldfld      string Game.SubsystemMovingBlocks/MovingBlockSet::Id
      IL_001c:  ldarg.1
      IL_001d:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0022:  brfalse.s  IL_0036

      IL_0024:  ldloc.1
      IL_0025:  ldfld      object Game.SubsystemMovingBlocks/MovingBlockSet::Tag
      IL_002a:  ldarg.2
      IL_002b:  call       bool [System.Runtime]System.Object::Equals(object,
                                                                      object)
      IL_0030:  brfalse.s  IL_0036

      IL_0032:  ldloc.1
      IL_0033:  stloc.2
      IL_0034:  leave.s    IL_0051

      IL_0036:  ldloca.s   V_0
      IL_0038:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_003d:  brtrue.s   IL_000e

      IL_003f:  leave.s    IL_004f

    }  // end .try
    finally
    {
      IL_0041:  ldloca.s   V_0
      IL_0043:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_0049:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004e:  endfinally
    }  // end handler
    IL_004f:  ldnull
    IL_0050:  ret

    IL_0051:  ldloc.2
    IL_0052:  ret
  } // end of method SubsystemMovingBlocks::FindMovingBlocks

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> 
          Raycast(valuetype [Engine]Engine.Vector3 start,
                  valuetype [Engine]Engine.Vector3 end,
                  bool extendToFillCells) cil managed
  {
    // 代码大小       225 (0xe1)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Ray V_0,
             valuetype [Engine]Engine.BoundingBox V_1,
             float32 V_2,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_3,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet> V_4,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_5,
             valuetype [Engine]Engine.BoundingBox V_6,
             valuetype [System.Runtime]System.Nullable`1<float32> V_7,
             valuetype Game.MovingBlocksRaycastResult V_8,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult> V_9)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.1
    IL_0005:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_000a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_000f:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_0014:  ldloca.s   V_1
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Min(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_001d:  ldarg.1
    IL_001e:  ldarg.2
    IL_001f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_0024:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_002f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::Clear()
    IL_0034:  ldarg.0
    IL_0035:  ldloc.1
    IL_0036:  ldarg.3
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_003d:  call       instance void Game.SubsystemMovingBlocks::FindMovingBlocks(valuetype [Engine]Engine.BoundingBox,
                                                                                    bool,
                                                                                    class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>)
    IL_0042:  ldc.r4     3.4028235e+038
    IL_0047:  stloc.2
    IL_0048:  ldnull
    IL_0049:  stloc.3
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_0050:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::GetEnumerator()
    IL_0055:  stloc.s    V_4
    .try
    {
      IL_0057:  br.s       IL_009a

      IL_0059:  ldloca.s   V_4
      IL_005b:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>::get_Current()
      IL_0060:  castclass  Game.SubsystemMovingBlocks/MovingBlockSet
      IL_0065:  stloc.s    V_5
      IL_0067:  ldloc.s    V_5
      IL_0069:  ldarg.3
      IL_006a:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.SubsystemMovingBlocks/MovingBlockSet::BoundingBox(bool)
      IL_006f:  stloc.s    V_6
      IL_0071:  ldloca.s   V_0
      IL_0073:  ldloc.s    V_6
      IL_0075:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
      IL_007a:  stloc.s    V_7
      IL_007c:  ldloca.s   V_7
      IL_007e:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_0083:  brfalse.s  IL_009a

      IL_0085:  ldloca.s   V_7
      IL_0087:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_008c:  ldloc.2
      IL_008d:  bge.un.s   IL_009a

      IL_008f:  ldloca.s   V_7
      IL_0091:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0096:  stloc.2
      IL_0097:  ldloc.s    V_5
      IL_0099:  stloc.3
      IL_009a:  ldloca.s   V_4
      IL_009c:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>::MoveNext()
      IL_00a1:  brtrue.s   IL_0059

      IL_00a3:  leave.s    IL_00b3

    }  // end .try
    finally
    {
      IL_00a5:  ldloca.s   V_4
      IL_00a7:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.IMovingBlockSet>
      IL_00ad:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b2:  endfinally
    }  // end handler
    IL_00b3:  ldloc.3
    IL_00b4:  brfalse.s  IL_00d6

    IL_00b6:  ldloca.s   V_8
    IL_00b8:  initobj    Game.MovingBlocksRaycastResult
    IL_00be:  ldloca.s   V_8
    IL_00c0:  ldloc.2
    IL_00c1:  stfld      float32 Game.MovingBlocksRaycastResult::Distance
    IL_00c6:  ldloca.s   V_8
    IL_00c8:  ldloc.3
    IL_00c9:  stfld      class Game.IMovingBlockSet Game.MovingBlocksRaycastResult::MovingBlockSet
    IL_00ce:  ldloc.s    V_8
    IL_00d0:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>::.ctor(!0)
    IL_00d5:  ret

    IL_00d6:  ldloca.s   V_9
    IL_00d8:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.MovingBlocksRaycastResult>
    IL_00de:  ldloc.s    V_9
    IL_00e0:  ret
  } // end of method SubsystemMovingBlocks::Raycast

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemMovingBlocks::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1034 (0x40a)
    .maxstack  4
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> V_0,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_1,
             class Game.TerrainChunk V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             bool V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             float32 V_9,
             float32 V_10,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_11,
             class Game.TerrainData V_12)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br         IL_034c

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
      IL_0018:  stloc.1
      IL_0019:  ldarg.0
      IL_001a:  ldfld      class Game.SubsystemTerrain Game.SubsystemMovingBlocks::m_subsystemTerrain
      IL_001f:  ldloc.1
      IL_0020:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0025:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_002a:  conv.i4
      IL_002b:  ldloc.1
      IL_002c:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0031:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0036:  conv.i4
      IL_0037:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_003c:  stloc.2
      IL_003d:  ldloc.2
      IL_003e:  brfalse    IL_034c

      IL_0043:  ldloc.2
      IL_0044:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_0049:  ldc.i4.4
      IL_004a:  ble        IL_034c

      IL_004f:  ldloc.1
      IL_0050:  dup
      IL_0051:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_0056:  ldloc.1
      IL_0057:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Acceleration
      IL_005c:  ldarg.0
      IL_005d:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_0062:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_0067:  mul
      IL_0068:  add
      IL_0069:  stfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_006e:  ldloc.1
      IL_006f:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Drag
      IL_0074:  ldc.r4     0.0
      IL_0079:  beq.s      IL_00a4

      IL_007b:  ldloc.1
      IL_007c:  dup
      IL_007d:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_0082:  ldc.r4     1.
      IL_0087:  ldloc.1
      IL_0088:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Drag
      IL_008d:  sub
      IL_008e:  ldarg.0
      IL_008f:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_0094:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_0099:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_009e:  mul
      IL_009f:  stfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_00a4:  ldloc.1
      IL_00a5:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::StartPosition
      IL_00aa:  ldloc.1
      IL_00ab:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_00b0:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_00b5:  stloc.3
      IL_00b6:  ldloc.1
      IL_00b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
      IL_00bc:  ldloc.1
      IL_00bd:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_00c2:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_00c7:  stloc.s    V_4
      IL_00c9:  ldloc.1
      IL_00ca:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_00cf:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00d4:  ldc.r4     0.0
      IL_00d9:  bgt.s      IL_00e2

      IL_00db:  ldc.r4     1.
      IL_00e0:  br.s       IL_00ff

      IL_00e2:  ldloc.3
      IL_00e3:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_00e8:  ldc.r4     5.0000001e-002
      IL_00ed:  add
      IL_00ee:  ldloc.1
      IL_00ef:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_00f4:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_00f9:  div
      IL_00fa:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_00ff:  ldloc.1
      IL_0100:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_0105:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_010a:  ldc.r4     0.0
      IL_010f:  bgt.s      IL_0118

      IL_0111:  ldc.r4     1.
      IL_0116:  br.s       IL_0131

      IL_0118:  ldloc.s    V_4
      IL_011a:  ldc.r4     5.0000001e-002
      IL_011f:  add
      IL_0120:  ldloc.1
      IL_0121:  ldflda     valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_0126:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_012b:  div
      IL_012c:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_0131:  stloc.s    V_5
      IL_0133:  ldloc.s    V_5
      IL_0135:  mul
      IL_0136:  stloc.s    V_6
      IL_0138:  ldc.i4.0
      IL_0139:  stloc.s    V_7
      IL_013b:  ldloc.s    V_4
      IL_013d:  ldc.r4     0.0
      IL_0142:  bgt.s      IL_014b

      IL_0144:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0149:  br.s       IL_0163

      IL_014b:  ldloc.1
      IL_014c:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
      IL_0151:  ldloc.1
      IL_0152:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0157:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_015c:  ldloc.s    V_4
      IL_015e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0163:  stloc.s    V_8
      IL_0165:  ldarg.0
      IL_0166:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_016b:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_0170:  ldc.r4     0.0
      IL_0175:  bgt.s      IL_017e

      IL_0177:  ldc.r4     0.0
      IL_017c:  br.s       IL_018f

      IL_017e:  ldc.r4     0.94999999
      IL_0183:  ldarg.0
      IL_0184:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_0189:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_018e:  div
      IL_018f:  stloc.s    V_9
      IL_0191:  ldloc.1
      IL_0192:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_0197:  ldloc.s    V_6
      IL_0199:  mul
      IL_019a:  ldloc.s    V_9
      IL_019c:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_01a1:  stloc.s    V_10
      IL_01a3:  ldloc.s    V_10
      IL_01a5:  ldarg.0
      IL_01a6:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_01ab:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_01b0:  mul
      IL_01b1:  ldloc.s    V_4
      IL_01b3:  blt.un.s   IL_01d1

      IL_01b5:  ldloc.1
      IL_01b6:  ldloc.1
      IL_01b7:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
      IL_01bc:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_01c1:  ldloc.1
      IL_01c2:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_01c7:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
      IL_01cc:  ldc.i4.1
      IL_01cd:  stloc.s    V_7
      IL_01cf:  br.s       IL_0219

      IL_01d1:  ldloc.1
      IL_01d2:  ldloc.s    V_10
      IL_01d4:  ldloc.s    V_4
      IL_01d6:  div
      IL_01d7:  ldloc.1
      IL_01d8:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
      IL_01dd:  ldloc.1
      IL_01de:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_01e3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_01e8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01ed:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
      IL_01f2:  ldloc.1
      IL_01f3:  dup
      IL_01f4:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_01f9:  ldloc.1
      IL_01fa:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
      IL_01ff:  ldarg.0
      IL_0200:  ldfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
      IL_0205:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
      IL_020a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_020f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0214:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0219:  ldloc.1
      IL_021a:  ldc.i4.0
      IL_021b:  stfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
      IL_0220:  ldarg.0
      IL_0221:  ldloc.1
      IL_0222:  call       instance void Game.SubsystemMovingBlocks::MovingBlocksCollision(class Game.SubsystemMovingBlocks/MovingBlockSet)
      IL_0227:  ldarg.0
      IL_0228:  ldloc.1
      IL_0229:  call       instance void Game.SubsystemMovingBlocks::TerrainCollision(class Game.SubsystemMovingBlocks/MovingBlockSet)
      IL_022e:  ldloc.1
      IL_022f:  ldfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
      IL_0234:  brfalse    IL_0335

      IL_0239:  ldloc.s    V_8
      IL_023b:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0240:  ldc.r4     0.0
      IL_0245:  bge.un.s   IL_0264

      IL_0247:  ldloc.1
      IL_0248:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_024d:  ldloc.1
      IL_024e:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0253:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0258:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_025d:  stfld      float32 [Engine]Engine.Vector3::X
      IL_0262:  br.s       IL_028d

      IL_0264:  ldloc.s    V_8
      IL_0266:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_026b:  ldc.r4     0.0
      IL_0270:  ble.un.s   IL_028d

      IL_0272:  ldloc.1
      IL_0273:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0278:  ldloc.1
      IL_0279:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_027e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0283:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0288:  stfld      float32 [Engine]Engine.Vector3::X
      IL_028d:  ldloc.s    V_8
      IL_028f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0294:  ldc.r4     0.0
      IL_0299:  bge.un.s   IL_02b8

      IL_029b:  ldloc.1
      IL_029c:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02a1:  ldloc.1
      IL_02a2:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02a7:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_02ac:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_02b1:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_02b6:  br.s       IL_02e1

      IL_02b8:  ldloc.s    V_8
      IL_02ba:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_02bf:  ldc.r4     0.0
      IL_02c4:  ble.un.s   IL_02e1

      IL_02c6:  ldloc.1
      IL_02c7:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02cc:  ldloc.1
      IL_02cd:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02d2:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_02d7:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_02dc:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_02e1:  ldloc.s    V_8
      IL_02e3:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_02e8:  ldc.r4     0.0
      IL_02ed:  bge.un.s   IL_030c

      IL_02ef:  ldloc.1
      IL_02f0:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02f5:  ldloc.1
      IL_02f6:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_02fb:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0300:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
      IL_0305:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_030a:  br.s       IL_0335

      IL_030c:  ldloc.s    V_8
      IL_030e:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0313:  ldc.r4     0.0
      IL_0318:  ble.un.s   IL_0335

      IL_031a:  ldloc.1
      IL_031b:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0320:  ldloc.1
      IL_0321:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0326:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_032b:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
      IL_0330:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_0335:  ldloc.1
      IL_0336:  ldfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
      IL_033b:  ldloc.s    V_7
      IL_033d:  or
      IL_033e:  brfalse.s  IL_034c

      IL_0340:  ldarg.0
      IL_0341:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_stopped
      IL_0346:  ldloc.1
      IL_0347:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::Add(!0)
      IL_034c:  ldloca.s   V_0
      IL_034e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_0353:  brtrue     IL_0011

      IL_0358:  leave.s    IL_0368

    }  // end .try
    finally
    {
      IL_035a:  ldloca.s   V_0
      IL_035c:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_0362:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0367:  endfinally
    }  // end handler
    IL_0368:  ldarg.0
    IL_0369:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_stopped
    IL_036e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_0373:  stloc.0
    .try
    {
      IL_0374:  br.s       IL_0392

      IL_0376:  ldloca.s   V_0
      IL_0378:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
      IL_037d:  stloc.s    V_11
      IL_037f:  ldarg.0
      IL_0380:  ldfld      class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::Stopped
      IL_0385:  dup
      IL_0386:  brtrue.s   IL_038b

      IL_0388:  pop
      IL_0389:  br.s       IL_0392

      IL_038b:  ldloc.s    V_11
      IL_038d:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>::Invoke(!0)
      IL_0392:  ldloca.s   V_0
      IL_0394:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_0399:  brtrue.s   IL_0376

      IL_039b:  leave.s    IL_03ab

    }  // end .try
    finally
    {
      IL_039d:  ldloca.s   V_0
      IL_039f:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_03a5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03aa:  endfinally
    }  // end handler
    IL_03ab:  ldarg.0
    IL_03ac:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_stopped
    IL_03b1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::Clear()
    IL_03b6:  ldarg.0
    IL_03b7:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_03bc:  brfalse.s  IL_0409

    IL_03be:  ldc.r8     5.
    IL_03c7:  ldc.r8     0.0
    IL_03d0:  call       bool [Engine]Engine.Time::PeriodicEvent(float64,
                                                                 float64)
    IL_03d5:  brfalse.s  IL_0409

    IL_03d7:  ldarg.0
    IL_03d8:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_03dd:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_03e2:  stloc.s    V_12
    IL_03e4:  ldloc.s    V_12
    IL_03e6:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_03eb:  ldloc.s    V_12
    IL_03ed:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_03f2:  mul
    IL_03f3:  ldloc.s    V_12
    IL_03f5:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_03fa:  mul
    IL_03fb:  ldc.i4     0x8000
    IL_0400:  ble.s      IL_0409

    IL_0402:  ldarg.0
    IL_0403:  ldnull
    IL_0404:  stfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_0409:  ret
  } // end of method SubsystemMovingBlocks::Update

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemMovingBlocks::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemMovingBlocks::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       500 (0x1f4)
    .maxstack  9
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> V_0,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_1,
             int32 V_2,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_0006:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Clear()
    IL_000b:  ldarg.0
    IL_000c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks::m_indices
    IL_0011:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Clear()
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_001c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_0021:  stloc.0
    .try
    {
      IL_0022:  br.s       IL_0034

      IL_0024:  ldloca.s   V_0
      IL_0026:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
      IL_002b:  stloc.1
      IL_002c:  ldarg.0
      IL_002d:  ldarg.1
      IL_002e:  ldloc.1
      IL_002f:  call       instance void Game.SubsystemMovingBlocks::DrawMovingBlockSet(class Game.SubsystemDrawing,
                                                                                        class Game.SubsystemMovingBlocks/MovingBlockSet)
      IL_0034:  ldloca.s   V_0
      IL_0036:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_003b:  brtrue.s   IL_0024

      IL_003d:  leave.s    IL_004d

    }  // end .try
    finally
    {
      IL_003f:  ldloca.s   V_0
      IL_0041:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_0047:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004c:  endfinally
    }  // end handler
    IL_004d:  ldc.i4.0
    IL_004e:  stloc.2
    IL_004f:  br.s       IL_008f

    IL_0051:  ldarg.0
    IL_0052:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_removing
    IL_0057:  ldloc.2
    IL_0058:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Item(int32)
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  dup
    IL_0060:  ldfld      int32 Game.SubsystemMovingBlocks/MovingBlockSet::RemainCounter
    IL_0065:  stloc.s    V_4
    IL_0067:  ldloc.s    V_4
    IL_0069:  ldc.i4.1
    IL_006a:  sub
    IL_006b:  stfld      int32 Game.SubsystemMovingBlocks/MovingBlockSet::RemainCounter
    IL_0070:  ldloc.s    V_4
    IL_0072:  ldc.i4.0
    IL_0073:  ble.s      IL_0083

    IL_0075:  ldarg.0
    IL_0076:  ldarg.1
    IL_0077:  ldloc.3
    IL_0078:  call       instance void Game.SubsystemMovingBlocks::DrawMovingBlockSet(class Game.SubsystemDrawing,
                                                                                      class Game.SubsystemMovingBlocks/MovingBlockSet)
    IL_007d:  ldloc.2
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  stloc.2
    IL_0081:  br.s       IL_008f

    IL_0083:  ldarg.0
    IL_0084:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_removing
    IL_0089:  ldloc.2
    IL_008a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::RemoveAt(int32)
    IL_008f:  ldloc.2
    IL_0090:  ldarg.0
    IL_0091:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_removing
    IL_0096:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Count()
    IL_009b:  blt.s      IL_0051

    IL_009d:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_00a2:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_00a7:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_00ac:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_00b1:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_00b6:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_00c1:  ldstr      "u_texture"
    IL_00c6:  ldc.i4.0
    IL_00c7:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.SubsystemAnimatedTextures Game.SubsystemMovingBlocks::m_subsystemAnimatedTextures
    IL_00d2:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_00d7:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.Texture2D)
    IL_00dc:  ldarg.0
    IL_00dd:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_00e2:  ldstr      "u_samplerState"
    IL_00e7:  ldc.i4.0
    IL_00e8:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00ed:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00f2:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.SamplerState)
    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_00fd:  ldstr      "u_fogColor"
    IL_0102:  ldc.i4.0
    IL_0103:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.SubsystemSky Game.SubsystemMovingBlocks::m_subsystemSky
    IL_010e:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_0113:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_0118:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_011d:  ldarg.0
    IL_011e:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_0123:  ldstr      "u_fogStartInvLength"
    IL_0128:  ldc.i4.0
    IL_0129:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.SubsystemSky Game.SubsystemMovingBlocks::m_subsystemSky
    IL_0134:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0139:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_013e:  ldc.r4     1.
    IL_0143:  ldarg.0
    IL_0144:  ldfld      class Game.SubsystemSky Game.SubsystemMovingBlocks::m_subsystemSky
    IL_0149:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_014e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class Game.SubsystemSky Game.SubsystemMovingBlocks::m_subsystemSky
    IL_0159:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_015e:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0163:  sub
    IL_0164:  div
    IL_0165:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_016a:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_016f:  ldarg.0
    IL_0170:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_0175:  ldstr      "u_worldViewProjectionMatrix"
    IL_017a:  ldc.i4.0
    IL_017b:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0180:  ldarg.1
    IL_0181:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0186:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_018b:  ldarg.0
    IL_018c:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_0191:  ldstr      "u_viewPosition"
    IL_0196:  ldc.i4.0
    IL_0197:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_019c:  ldarg.1
    IL_019d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_01a2:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_01a7:  ldc.i4.2
    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_01ae:  ldsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.TerrainVertex::VertexDeclaration
    IL_01b3:  ldarg.0
    IL_01b4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_01b9:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_01be:  ldc.i4.0
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_01c5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks::m_indices
    IL_01d0:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_01d5:  ldc.i4.0
    IL_01d6:  ldarg.0
    IL_01d7:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks::m_indices
    IL_01dc:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_01e1:  call       void [Engine]Engine.Graphics.Display::DrawUserIndexed<valuetype Game.TerrainVertex>(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                                                             class [Engine]Engine.Graphics.Shader,
                                                                                                             class [Engine]Engine.Graphics.VertexDeclaration,
                                                                                                             !!0[],
                                                                                                             int32,
                                                                                                             int32,
                                                                                                             uint16[],
                                                                                                             int32,
                                                                                                             int32)
    IL_01e6:  ldsfld     bool Game.SubsystemMovingBlocks::DebugDrawMovingBlocks
    IL_01eb:  brfalse.s  IL_01f3

    IL_01ed:  ldarg.0
    IL_01ee:  call       instance void Game.SubsystemMovingBlocks::DebugDraw()
    IL_01f3:  ret
  } // end of method SubsystemMovingBlocks::Draw

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       459 (0x1cb)
    .maxstack  11
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             valuetype [Engine]Engine.Vector2 V_6,
             string V_7,
             object V_8,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> V_9,
             string[] V_10,
             int32 V_11,
             valuetype Game.MovingBlock V_12,
             string[] V_13)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemMovingBlocks::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.SubsystemMovingBlocks::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0031:  stfld      class Game.SubsystemSky Game.SubsystemMovingBlocks::m_subsystemSky
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAnimatedTextures>(bool)
    IL_0043:  stfld      class Game.SubsystemAnimatedTextures Game.SubsystemMovingBlocks::m_subsystemAnimatedTextures
    IL_0048:  ldarg.0
    IL_0049:  ldstr      "Shaders/AlphaTested"
    IL_004e:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_0053:  stfld      class [Engine]Engine.Graphics.Shader Game.SubsystemMovingBlocks::m_shader
    IL_0058:  ldarg.1
    IL_0059:  ldstr      "MovingBlockSets"
    IL_005e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0063:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_0068:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_006d:  stloc.0
    .try
    {
      IL_006e:  br         IL_01b3

      IL_0073:  ldloc.0
      IL_0074:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_0079:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_007e:  dup
      IL_007f:  ldstr      "Position"
      IL_0084:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0089:  stloc.1
      IL_008a:  dup
      IL_008b:  ldstr      "TargetPosition"
      IL_0090:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
      IL_0095:  stloc.2
      IL_0096:  dup
      IL_0097:  ldstr      "Speed"
      IL_009c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_00a1:  stloc.3
      IL_00a2:  dup
      IL_00a3:  ldstr      "Acceleration"
      IL_00a8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_00ad:  stloc.s    V_4
      IL_00af:  dup
      IL_00b0:  ldstr      "Drag"
      IL_00b5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
      IL_00ba:  stloc.s    V_5
      IL_00bc:  dup
      IL_00bd:  ldstr      "Smoothness"
      IL_00c2:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00c7:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector2>(string,
                                                                                                                                     !!0)
      IL_00cc:  stloc.s    V_6
      IL_00ce:  dup
      IL_00cf:  ldstr      "Id"
      IL_00d4:  ldnull
      IL_00d5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_00da:  stloc.s    V_7
      IL_00dc:  dup
      IL_00dd:  ldstr      "Tag"
      IL_00e2:  ldnull
      IL_00e3:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<object>(string,
                                                                                                           !!0)
      IL_00e8:  stloc.s    V_8
      IL_00ea:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::.ctor()
      IL_00ef:  stloc.s    V_9
      IL_00f1:  ldstr      "Blocks"
      IL_00f6:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_00fb:  ldc.i4.1
      IL_00fc:  newarr     [System.Runtime]System.Char
      IL_0101:  dup
      IL_0102:  ldc.i4.0
      IL_0103:  ldc.i4.s   59
      IL_0105:  stelem.i2
      IL_0106:  ldc.i4.1
      IL_0107:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                  valuetype [System.Runtime]System.StringSplitOptions)
      IL_010c:  stloc.s    V_10
      IL_010e:  ldc.i4.0
      IL_010f:  stloc.s    V_11
      IL_0111:  br.s       IL_0191

      IL_0113:  ldloc.s    V_10
      IL_0115:  ldloc.s    V_11
      IL_0117:  ldelem.ref
      IL_0118:  ldloca.s   V_12
      IL_011a:  initobj    Game.MovingBlock
      IL_0120:  ldc.i4.1
      IL_0121:  newarr     [System.Runtime]System.Char
      IL_0126:  dup
      IL_0127:  ldc.i4.0
      IL_0128:  ldc.i4.s   44
      IL_012a:  stelem.i2
      IL_012b:  ldc.i4.1
      IL_012c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                  valuetype [System.Runtime]System.StringSplitOptions)
      IL_0131:  stloc.s    V_13
      IL_0133:  ldloca.s   V_12
      IL_0135:  ldloc.s    V_13
      IL_0137:  ldc.i4.0
      IL_0138:  ldelem.ref
      IL_0139:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<int32>(string)
      IL_013e:  stfld      int32 Game.MovingBlock::Value
      IL_0143:  ldloca.s   V_12
      IL_0145:  ldflda     valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_014a:  ldloc.s    V_13
      IL_014c:  ldc.i4.1
      IL_014d:  ldelem.ref
      IL_014e:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<int32>(string)
      IL_0153:  stfld      int32 [Engine]Engine.Point3::X
      IL_0158:  ldloca.s   V_12
      IL_015a:  ldflda     valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_015f:  ldloc.s    V_13
      IL_0161:  ldc.i4.2
      IL_0162:  ldelem.ref
      IL_0163:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<int32>(string)
      IL_0168:  stfld      int32 [Engine]Engine.Point3::Y
      IL_016d:  ldloca.s   V_12
      IL_016f:  ldflda     valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_0174:  ldloc.s    V_13
      IL_0176:  ldc.i4.3
      IL_0177:  ldelem.ref
      IL_0178:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<int32>(string)
      IL_017d:  stfld      int32 [Engine]Engine.Point3::Z
      IL_0182:  ldloc.s    V_9
      IL_0184:  ldloc.s    V_12
      IL_0186:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::Add(!0)
      IL_018b:  ldloc.s    V_11
      IL_018d:  ldc.i4.1
      IL_018e:  add
      IL_018f:  stloc.s    V_11
      IL_0191:  ldloc.s    V_11
      IL_0193:  ldloc.s    V_10
      IL_0195:  ldlen
      IL_0196:  conv.i4
      IL_0197:  blt        IL_0113

      IL_019c:  ldarg.0
      IL_019d:  ldloc.1
      IL_019e:  ldloc.2
      IL_019f:  ldloc.3
      IL_01a0:  ldloc.s    V_4
      IL_01a2:  ldloc.s    V_5
      IL_01a4:  ldloc.s    V_6
      IL_01a6:  ldloc.s    V_9
      IL_01a8:  ldloc.s    V_7
      IL_01aa:  ldloc.s    V_8
      IL_01ac:  ldc.i4.0
      IL_01ad:  call       instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::AddMovingBlockSet(valuetype [Engine]Engine.Vector3,
                                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             float32,
                                                                                                             valuetype [Engine]Engine.Vector2,
                                                                                                             class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.MovingBlock>,
                                                                                                             string,
                                                                                                             object,
                                                                                                             bool)
      IL_01b2:  pop
      IL_01b3:  ldloc.0
      IL_01b4:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01b9:  brtrue     IL_0073

      IL_01be:  leave.s    IL_01ca

    }  // end .try
    finally
    {
      IL_01c0:  ldloc.0
      IL_01c1:  brfalse.s  IL_01c9

      IL_01c3:  ldloc.0
      IL_01c4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01c9:  endfinally
    }  // end handler
    IL_01ca:  ret
  } // end of method SubsystemMovingBlocks::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       514 (0x202)
    .maxstack  3
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet> V_2,
             class Game.SubsystemMovingBlocks/MovingBlockSet V_3,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_4,
             class [System.Runtime]System.Text.StringBuilder V_5,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock> V_6,
             valuetype Game.MovingBlock V_7)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "MovingBlockSets"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_001a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::GetEnumerator()
    IL_001f:  stloc.2
    .try
    {
      IL_0020:  br         IL_01e5

      IL_0025:  ldloca.s   V_2
      IL_0027:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::get_Current()
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
      IL_0045:  ldstr      "Position"
      IL_004a:  ldloc.3
      IL_004b:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
      IL_0050:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0055:  ldloc.s    V_4
      IL_0057:  ldstr      "TargetPosition"
      IL_005c:  ldloc.3
      IL_005d:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::TargetPosition
      IL_0062:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                      !!0)
      IL_0067:  ldloc.s    V_4
      IL_0069:  ldstr      "Speed"
      IL_006e:  ldloc.3
      IL_006f:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Speed
      IL_0074:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                             !!0)
      IL_0079:  ldloc.s    V_4
      IL_007b:  ldstr      "Acceleration"
      IL_0080:  ldloc.3
      IL_0081:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Acceleration
      IL_0086:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                             !!0)
      IL_008b:  ldloc.s    V_4
      IL_008d:  ldstr      "Drag"
      IL_0092:  ldloc.3
      IL_0093:  ldfld      float32 Game.SubsystemMovingBlocks/MovingBlockSet::Drag
      IL_0098:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                             !!0)
      IL_009d:  ldloc.3
      IL_009e:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_00a3:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_00a8:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                      valuetype [Engine]Engine.Vector2)
      IL_00ad:  brfalse.s  IL_00c1

      IL_00af:  ldloc.s    V_4
      IL_00b1:  ldstr      "Smoothness"
      IL_00b6:  ldloc.3
      IL_00b7:  ldfld      valuetype [Engine]Engine.Vector2 Game.SubsystemMovingBlocks/MovingBlockSet::Smoothness
      IL_00bc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector2>(string,
                                                                                                                                      !!0)
      IL_00c1:  ldloc.3
      IL_00c2:  ldfld      string Game.SubsystemMovingBlocks/MovingBlockSet::Id
      IL_00c7:  brfalse.s  IL_00db

      IL_00c9:  ldloc.s    V_4
      IL_00cb:  ldstr      "Id"
      IL_00d0:  ldloc.3
      IL_00d1:  ldfld      string Game.SubsystemMovingBlocks/MovingBlockSet::Id
      IL_00d6:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00db:  ldloc.3
      IL_00dc:  ldfld      object Game.SubsystemMovingBlocks/MovingBlockSet::Tag
      IL_00e1:  brfalse.s  IL_00f5

      IL_00e3:  ldloc.s    V_4
      IL_00e5:  ldstr      "Tag"
      IL_00ea:  ldloc.3
      IL_00eb:  ldfld      object Game.SubsystemMovingBlocks/MovingBlockSet::Tag
      IL_00f0:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<object>(string,
                                                                                                            !!0)
      IL_00f5:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
      IL_00fa:  stloc.s    V_5
      IL_00fc:  ldloc.3
      IL_00fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
      IL_0102:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::GetEnumerator()
      IL_0107:  stloc.s    V_6
      .try
      {
        IL_0109:  br         IL_01b2

        IL_010e:  ldloca.s   V_6
        IL_0110:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
        IL_0115:  stloc.s    V_7
        IL_0117:  ldloc.s    V_5
        IL_0119:  ldloc.s    V_7
        IL_011b:  ldfld      int32 Game.MovingBlock::Value
        IL_0120:  box        [System.Runtime]System.Int32
        IL_0125:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
        IL_012a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
        IL_012f:  pop
        IL_0130:  ldloc.s    V_5
        IL_0132:  ldc.i4.s   44
        IL_0134:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
        IL_0139:  pop
        IL_013a:  ldloc.s    V_5
        IL_013c:  ldloc.s    V_7
        IL_013e:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0143:  ldfld      int32 [Engine]Engine.Point3::X
        IL_0148:  box        [System.Runtime]System.Int32
        IL_014d:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
        IL_0152:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
        IL_0157:  pop
        IL_0158:  ldloc.s    V_5
        IL_015a:  ldc.i4.s   44
        IL_015c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
        IL_0161:  pop
        IL_0162:  ldloc.s    V_5
        IL_0164:  ldloc.s    V_7
        IL_0166:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_016b:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_0170:  box        [System.Runtime]System.Int32
        IL_0175:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
        IL_017a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
        IL_017f:  pop
        IL_0180:  ldloc.s    V_5
        IL_0182:  ldc.i4.s   44
        IL_0184:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
        IL_0189:  pop
        IL_018a:  ldloc.s    V_5
        IL_018c:  ldloc.s    V_7
        IL_018e:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
        IL_0193:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_0198:  box        [System.Runtime]System.Int32
        IL_019d:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
        IL_01a2:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
        IL_01a7:  pop
        IL_01a8:  ldloc.s    V_5
        IL_01aa:  ldc.i4.s   59
        IL_01ac:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
        IL_01b1:  pop
        IL_01b2:  ldloca.s   V_6
        IL_01b4:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
        IL_01b9:  brtrue     IL_010e

        IL_01be:  leave.s    IL_01ce

      }  // end .try
      finally
      {
        IL_01c0:  ldloca.s   V_6
        IL_01c2:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>
        IL_01c8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_01cd:  endfinally
      }  // end handler
      IL_01ce:  ldloc.s    V_4
      IL_01d0:  ldstr      "Blocks"
      IL_01d5:  ldloc.s    V_5
      IL_01d7:  callvirt   instance string [System.Runtime]System.Object::ToString()
      IL_01dc:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_01e1:  ldloc.1
      IL_01e2:  ldc.i4.1
      IL_01e3:  add
      IL_01e4:  stloc.1
      IL_01e5:  ldloca.s   V_2
      IL_01e7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>::MoveNext()
      IL_01ec:  brtrue     IL_0025

      IL_01f1:  leave.s    IL_0201

    }  // end .try
    finally
    {
      IL_01f3:  ldloca.s   V_2
      IL_01f5:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.SubsystemMovingBlocks/MovingBlockSet>
      IL_01fb:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0200:  endfinally
    }  // end handler
    IL_0201:  ret
  } // end of method SubsystemMovingBlocks::Save

  .method private hidebysig instance void 
          DebugDraw() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemMovingBlocks::DebugDraw

  .method private hidebysig instance void 
          MovingBlocksCollision(class Game.SubsystemMovingBlocks/MovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.BoundingBox V_0,
             int32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.SubsystemMovingBlocks/MovingBlockSet::BoundingBox(bool)
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_000e:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::Clear()
    IL_0013:  ldarg.0
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_001c:  call       instance void Game.SubsystemMovingBlocks::FindMovingBlocks(valuetype [Engine]Engine.BoundingBox,
                                                                                    bool,
                                                                                    class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>)
    IL_0021:  ldc.i4.0
    IL_0022:  stloc.1
    IL_0023:  br.s       IL_0041

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_002b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::get_Array()
    IL_0030:  ldloc.1
    IL_0031:  ldelem.ref
    IL_0032:  ldarg.1
    IL_0033:  beq.s      IL_003d

    IL_0035:  ldarg.1
    IL_0036:  ldc.i4.1
    IL_0037:  stfld      bool Game.SubsystemMovingBlocks/MovingBlockSet::Stop
    IL_003c:  ret

    IL_003d:  ldloc.1
    IL_003e:  ldc.i4.1
    IL_003f:  add
    IL_0040:  stloc.1
    IL_0041:  ldloc.1
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_0048:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::get_Count()
    IL_004d:  blt.s      IL_0025

    IL_004f:  ret
  } // end of method SubsystemMovingBlocks::MovingBlocksCollision

  .method private hidebysig instance void 
          TerrainCollision(class Game.SubsystemMovingBlocks/MovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       347 (0x15b)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0008:  ldfld      int32 [Engine]Engine.Box::Left
    IL_000d:  conv.r4
    IL_000e:  ldarg.1
    IL_000f:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0014:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0019:  add
    IL_001a:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_001f:  conv.i4
    IL_0020:  stfld      int32 [Engine]Engine.Point3::X
    IL_0025:  ldloca.s   V_0
    IL_0027:  ldarg.1
    IL_0028:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_002d:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0032:  conv.r4
    IL_0033:  ldarg.1
    IL_0034:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003e:  add
    IL_003f:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0044:  conv.i4
    IL_0045:  stfld      int32 [Engine]Engine.Point3::Y
    IL_004a:  ldloca.s   V_0
    IL_004c:  ldarg.1
    IL_004d:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0052:  ldfld      int32 [Engine]Engine.Box::Near
    IL_0057:  conv.r4
    IL_0058:  ldarg.1
    IL_0059:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_005e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0063:  add
    IL_0064:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0069:  conv.i4
    IL_006a:  stfld      int32 [Engine]Engine.Point3::Z
    IL_006f:  ldloca.s   V_1
    IL_0071:  ldarg.1
    IL_0072:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0077:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_007c:  conv.r4
    IL_007d:  ldarg.1
    IL_007e:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0083:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0088:  add
    IL_0089:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_008e:  conv.i4
    IL_008f:  stfld      int32 [Engine]Engine.Point3::X
    IL_0094:  ldloca.s   V_1
    IL_0096:  ldarg.1
    IL_0097:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_009c:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_00a1:  conv.r4
    IL_00a2:  ldarg.1
    IL_00a3:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_00a8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00ad:  add
    IL_00ae:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00b3:  conv.i4
    IL_00b4:  stfld      int32 [Engine]Engine.Point3::Y
    IL_00b9:  ldloca.s   V_1
    IL_00bb:  ldarg.1
    IL_00bc:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_00c1:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_00c6:  conv.r4
    IL_00c7:  ldarg.1
    IL_00c8:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_00cd:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00d2:  add
    IL_00d3:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00d8:  conv.i4
    IL_00d9:  stfld      int32 [Engine]Engine.Point3::Z
    IL_00de:  ldloc.0
    IL_00df:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00e4:  stloc.2
    IL_00e5:  br.s       IL_0151

    IL_00e7:  ldloc.0
    IL_00e8:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00ed:  stloc.3
    IL_00ee:  br.s       IL_0144

    IL_00f0:  ldloc.0
    IL_00f1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f6:  stloc.s    V_4
    IL_00f8:  br.s       IL_0136

    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class Game.SubsystemTerrain Game.SubsystemMovingBlocks::m_subsystemTerrain
    IL_0100:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0105:  ldloc.2
    IL_0106:  ldloc.s    V_4
    IL_0108:  ldloc.3
    IL_0109:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_010e:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0113:  brfalse.s  IL_0130

    IL_0115:  ldarg.0
    IL_0116:  ldfld      class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> Game.SubsystemMovingBlocks::CollidedWithTerrain
    IL_011b:  dup
    IL_011c:  brtrue.s   IL_0121

    IL_011e:  pop
    IL_011f:  br.s       IL_0130

    IL_0121:  ldarg.1
    IL_0122:  ldloc.2
    IL_0123:  ldloc.s    V_4
    IL_0125:  ldloc.3
    IL_0126:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_012b:  callvirt   instance void class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>::Invoke(!0,
                                                                                                                                                 !1)
    IL_0130:  ldloc.s    V_4
    IL_0132:  ldc.i4.1
    IL_0133:  add
    IL_0134:  stloc.s    V_4
    IL_0136:  ldloc.s    V_4
    IL_0138:  ldloc.1
    IL_0139:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_013e:  blt.s      IL_00fa

    IL_0140:  ldloc.3
    IL_0141:  ldc.i4.1
    IL_0142:  add
    IL_0143:  stloc.3
    IL_0144:  ldloc.3
    IL_0145:  ldloc.1
    IL_0146:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_014b:  blt.s      IL_00f0

    IL_014d:  ldloc.2
    IL_014e:  ldc.i4.1
    IL_014f:  add
    IL_0150:  stloc.2
    IL_0151:  ldloc.2
    IL_0152:  ldloc.1
    IL_0153:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0158:  blt.s      IL_00e7

    IL_015a:  ret
  } // end of method SubsystemMovingBlocks::TerrainCollision

  .method private hidebysig instance void 
          GenerateGeometry(class Game.SubsystemMovingBlocks/MovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       1242 (0x4da)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             valuetype [Engine]Engine.Point3 V_4,
             class Game.TerrainData V_5,
             valuetype [Engine]Engine.Point3 V_6,
             valuetype [Engine]Engine.Point3 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock> V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25,
             int32 V_26)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
    IL_0008:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000d:  ldc.r4     0.0
    IL_0012:  bgt.s      IL_0031

    IL_0014:  ldloca.s   V_0
    IL_0016:  ldarg.1
    IL_0017:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0021:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_0026:  conv.i4
    IL_0027:  dup
    IL_0028:  stloc.1
    IL_0029:  stfld      int32 [Engine]Engine.Point3::X
    IL_002e:  ldloc.1
    IL_002f:  br.s       IL_0042

    IL_0031:  ldarg.1
    IL_0032:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0037:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0041:  conv.i4
    IL_0042:  stfld      int32 [Engine]Engine.Point3::X
    IL_0047:  ldloca.s   V_0
    IL_0049:  ldarg.1
    IL_004a:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
    IL_004f:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0054:  ldc.r4     0.0
    IL_0059:  bgt.s      IL_0078

    IL_005b:  ldloca.s   V_0
    IL_005d:  ldarg.1
    IL_005e:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0063:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0068:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_006d:  conv.i4
    IL_006e:  dup
    IL_006f:  stloc.1
    IL_0070:  stfld      int32 [Engine]Engine.Point3::Y
    IL_0075:  ldloc.1
    IL_0076:  br.s       IL_0089

    IL_0078:  ldarg.1
    IL_0079:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_007e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0083:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0088:  conv.i4
    IL_0089:  stfld      int32 [Engine]Engine.Point3::Y
    IL_008e:  ldloca.s   V_0
    IL_0090:  ldarg.1
    IL_0091:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::CurrentVelocity
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009b:  ldc.r4     0.0
    IL_00a0:  bgt.s      IL_00bf

    IL_00a2:  ldloca.s   V_0
    IL_00a4:  ldarg.1
    IL_00a5:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_00aa:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00af:  call       float32 [Engine]Engine.MathUtils::Ceiling(float32)
    IL_00b4:  conv.i4
    IL_00b5:  dup
    IL_00b6:  stloc.1
    IL_00b7:  stfld      int32 [Engine]Engine.Point3::Z
    IL_00bc:  ldloc.1
    IL_00bd:  br.s       IL_00d0

    IL_00bf:  ldarg.1
    IL_00c0:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_00c5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ca:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00cf:  conv.i4
    IL_00d0:  stfld      int32 [Engine]Engine.Point3::Z
    IL_00d5:  ldloc.0
    IL_00d6:  ldarg.1
    IL_00d7:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryGenerationPosition
    IL_00dc:  call       bool [Engine]Engine.Point3::op_Inequality(valuetype [Engine]Engine.Point3,
                                                                   valuetype [Engine]Engine.Point3)
    IL_00e1:  brfalse    IL_04d9

    IL_00e6:  ldloca.s   V_2
    IL_00e8:  ldarg.1
    IL_00e9:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_00ee:  ldfld      int32 [Engine]Engine.Box::Left
    IL_00f3:  ldarg.1
    IL_00f4:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_00f9:  ldfld      int32 [Engine]Engine.Box::Top
    IL_00fe:  ldarg.1
    IL_00ff:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0104:  ldfld      int32 [Engine]Engine.Box::Near
    IL_0109:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_010e:  ldloca.s   V_3
    IL_0110:  ldarg.1
    IL_0111:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0116:  ldfld      int32 [Engine]Engine.Box::Width
    IL_011b:  ldarg.1
    IL_011c:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_0121:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0126:  ldarg.1
    IL_0127:  ldflda     valuetype [Engine]Engine.Box Game.SubsystemMovingBlocks/MovingBlockSet::Box
    IL_012c:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_0131:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0136:  ldloca.s   V_4
    IL_0138:  ldloc.3
    IL_0139:  ldfld      int32 [Engine]Engine.Point3::X
    IL_013e:  ldc.i4.2
    IL_013f:  add
    IL_0140:  call       uint32 [Engine]Engine.MathUtils::NextPowerOf2(uint32)
    IL_0145:  ldloc.3
    IL_0146:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_014b:  ldc.i4.2
    IL_014c:  add
    IL_014d:  call       uint32 [Engine]Engine.MathUtils::NextPowerOf2(uint32)
    IL_0152:  ldloc.3
    IL_0153:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0158:  ldc.i4.2
    IL_0159:  add
    IL_015a:  call       uint32 [Engine]Engine.MathUtils::NextPowerOf2(uint32)
    IL_015f:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0164:  ldarg.0
    IL_0165:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_016a:  brfalse.s  IL_01ba

    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_0172:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0177:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_017c:  ldloc.s    V_4
    IL_017e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0183:  blt.s      IL_01ba

    IL_0185:  ldarg.0
    IL_0186:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_018b:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0190:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_0195:  ldloc.s    V_4
    IL_0197:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_019c:  blt.s      IL_01ba

    IL_019e:  ldarg.0
    IL_019f:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_01a4:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_01a9:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_01ae:  ldloc.s    V_4
    IL_01b0:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01b5:  bge        IL_023e

    IL_01ba:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_01bf:  stloc.s    V_6
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_01c7:  brfalse.s  IL_0200

    IL_01c9:  ldloca.s   V_6
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_01d1:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_01d6:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_01db:  ldarg.0
    IL_01dc:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_01e1:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_01e6:  callvirt   instance int32 Game.TerrainData::get_SizeY()
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_01f1:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_01f6:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
    IL_01fb:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0200:  ldloc.s    V_6
    IL_0202:  ldloc.s    V_4
    IL_0204:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Max(valuetype [Engine]Engine.Point3,
                                                                                    valuetype [Engine]Engine.Point3)
    IL_0209:  stloc.s    V_7
    IL_020b:  ldarg.0
    IL_020c:  ldloc.s    V_7
    IL_020e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0213:  ldloc.s    V_7
    IL_0215:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_021a:  ldloc.s    V_7
    IL_021c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0221:  newobj     instance void Game.TerrainData::.ctor(int32,
                                                               int32,
                                                               int32)
    IL_0226:  ldnull
    IL_0227:  ldarg.0
    IL_0228:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_022d:  ldc.i4.1
    IL_022e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
    IL_0233:  ldnull
    IL_0234:  newobj     instance void Game.BlockGeometryGenerator::.ctor(class Game.TerrainData,
                                                                          class Game.SubsystemElectricity,
                                                                          class Game.SubsystemFurnitureBlockBehavior,
                                                                          class Game.SubsystemMetersBlockBehavior)
    IL_0239:  stfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_023e:  ldarg.0
    IL_023f:  ldfld      class Game.SubsystemTerrain Game.SubsystemMovingBlocks::m_subsystemTerrain
    IL_0244:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0249:  stloc.s    V_5
    IL_024b:  ldc.i4.0
    IL_024c:  stloc.s    V_8
    IL_024e:  br         IL_034f

    IL_0253:  ldc.i4.0
    IL_0254:  stloc.s    V_9
    IL_0256:  br         IL_033a

    IL_025b:  ldloc.s    V_8
    IL_025d:  ldloc.2
    IL_025e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0263:  add
    IL_0264:  ldloc.0
    IL_0265:  ldfld      int32 [Engine]Engine.Point3::X
    IL_026a:  add
    IL_026b:  ldc.i4.1
    IL_026c:  sub
    IL_026d:  stloc.s    V_10
    IL_026f:  ldloc.s    V_9
    IL_0271:  ldloc.2
    IL_0272:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0277:  add
    IL_0278:  ldloc.0
    IL_0279:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_027e:  add
    IL_027f:  ldc.i4.1
    IL_0280:  sub
    IL_0281:  stloc.s    V_11
    IL_0283:  ldloc.s    V_5
    IL_0285:  ldloc.s    V_10
    IL_0287:  ldloc.s    V_11
    IL_0289:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                      int32)
    IL_028e:  brfalse    IL_0334

    IL_0293:  ldloc.s    V_5
    IL_0295:  ldloc.s    V_10
    IL_0297:  ldloc.s    V_11
    IL_0299:  callvirt   instance int32 Game.TerrainData::GetShaftValueFast(int32,
                                                                            int32)
    IL_029e:  stloc.s    V_12
    IL_02a0:  ldarg.0
    IL_02a1:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_02a6:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_02ab:  ldloc.s    V_8
    IL_02ad:  ldloc.s    V_9
    IL_02af:  ldloc.s    V_12
    IL_02b1:  call       int32 Game.TerrainData::ExtractTemperature(int32)
    IL_02b6:  callvirt   instance void Game.TerrainData::SetTemperatureFast(int32,
                                                                            int32,
                                                                            int32)
    IL_02bb:  ldarg.0
    IL_02bc:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_02c1:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_02c6:  ldloc.s    V_8
    IL_02c8:  ldloc.s    V_9
    IL_02ca:  ldloc.s    V_12
    IL_02cc:  call       int32 Game.TerrainData::ExtractHumidity(int32)
    IL_02d1:  callvirt   instance void Game.TerrainData::SetHumidityFast(int32,
                                                                         int32,
                                                                         int32)
    IL_02d6:  ldc.i4.0
    IL_02d7:  stloc.s    V_13
    IL_02d9:  br.s       IL_0328

    IL_02db:  ldloc.s    V_13
    IL_02dd:  ldloc.2
    IL_02de:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_02e3:  add
    IL_02e4:  ldloc.0
    IL_02e5:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_02ea:  add
    IL_02eb:  ldc.i4.1
    IL_02ec:  sub
    IL_02ed:  stloc.s    V_14
    IL_02ef:  ldloc.s    V_5
    IL_02f1:  ldloc.s    V_10
    IL_02f3:  ldloc.s    V_14
    IL_02f5:  ldloc.s    V_11
    IL_02f7:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_02fc:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_0301:  stloc.s    V_15
    IL_0303:  ldarg.0
    IL_0304:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_0309:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_030e:  ldloc.s    V_8
    IL_0310:  ldloc.s    V_13
    IL_0312:  ldloc.s    V_9
    IL_0314:  ldc.i4.0
    IL_0315:  ldloc.s    V_15
    IL_0317:  ldc.i4.0
    IL_0318:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_031d:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32)
    IL_0322:  ldloc.s    V_13
    IL_0324:  ldc.i4.1
    IL_0325:  add
    IL_0326:  stloc.s    V_13
    IL_0328:  ldloc.s    V_13
    IL_032a:  ldloc.3
    IL_032b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0330:  ldc.i4.2
    IL_0331:  add
    IL_0332:  blt.s      IL_02db

    IL_0334:  ldloc.s    V_9
    IL_0336:  ldc.i4.1
    IL_0337:  add
    IL_0338:  stloc.s    V_9
    IL_033a:  ldloc.s    V_9
    IL_033c:  ldloc.3
    IL_033d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0342:  ldc.i4.2
    IL_0343:  add
    IL_0344:  blt        IL_025b

    IL_0349:  ldloc.s    V_8
    IL_034b:  ldc.i4.1
    IL_034c:  add
    IL_034d:  stloc.s    V_8
    IL_034f:  ldloc.s    V_8
    IL_0351:  ldloc.3
    IL_0352:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0357:  ldc.i4.2
    IL_0358:  add
    IL_0359:  blt        IL_0253

    IL_035e:  ldarg.1
    IL_035f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> Game.SubsystemMovingBlocks/MovingBlockSet::Blocks
    IL_0364:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::GetEnumerator()
    IL_0369:  stloc.s    V_16
    .try
    {
      IL_036b:  br         IL_03f7

      IL_0370:  ldloca.s   V_16
      IL_0372:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
      IL_0377:  dup
      IL_0378:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_037d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0382:  ldloc.2
      IL_0383:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0388:  sub
      IL_0389:  ldc.i4.1
      IL_038a:  add
      IL_038b:  stloc.s    V_17
      IL_038d:  dup
      IL_038e:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_0393:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0398:  ldloc.2
      IL_0399:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_039e:  sub
      IL_039f:  ldc.i4.1
      IL_03a0:  add
      IL_03a1:  stloc.s    V_18
      IL_03a3:  dup
      IL_03a4:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_03a9:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_03ae:  ldloc.2
      IL_03af:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_03b4:  sub
      IL_03b5:  ldc.i4.1
      IL_03b6:  add
      IL_03b7:  stloc.s    V_19
      IL_03b9:  ldarg.0
      IL_03ba:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
      IL_03bf:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
      IL_03c4:  ldloc.s    V_17
      IL_03c6:  ldloc.s    V_18
      IL_03c8:  ldloc.s    V_19
      IL_03ca:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                             int32,
                                                                             int32)
      IL_03cf:  stloc.s    V_20
      IL_03d1:  ldfld      int32 Game.MovingBlock::Value
      IL_03d6:  ldloc.s    V_20
      IL_03d8:  call       int32 Game.TerrainData::ReplaceLight(int32,
                                                                int32)
      IL_03dd:  stloc.s    V_21
      IL_03df:  ldarg.0
      IL_03e0:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
      IL_03e5:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
      IL_03ea:  ldloc.s    V_17
      IL_03ec:  ldloc.s    V_18
      IL_03ee:  ldloc.s    V_19
      IL_03f0:  ldloc.s    V_21
      IL_03f2:  callvirt   instance void Game.TerrainData::SetCellValueFast(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32)
      IL_03f7:  ldloca.s   V_16
      IL_03f9:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
      IL_03fe:  brtrue     IL_0370

      IL_0403:  leave.s    IL_0413

    }  // end .try
    finally
    {
      IL_0405:  ldloca.s   V_16
      IL_0407:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>
      IL_040d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0412:  endfinally
    }  // end handler
    IL_0413:  ldarg.1
    IL_0414:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks/MovingBlockSet::Vertices
    IL_0419:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Clear()
    IL_041e:  ldarg.1
    IL_041f:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
    IL_0424:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Clear()
    IL_0429:  ldc.i4.1
    IL_042a:  stloc.s    V_22
    IL_042c:  br.s       IL_04a8

    IL_042e:  ldc.i4.1
    IL_042f:  stloc.s    V_23
    IL_0431:  br.s       IL_0496

    IL_0433:  ldc.i4.1
    IL_0434:  stloc.s    V_24
    IL_0436:  br.s       IL_0484

    IL_0438:  ldarg.0
    IL_0439:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_043e:  ldfld      class Game.TerrainData Game.BlockGeometryGenerator::TerrainData
    IL_0443:  ldloc.s    V_22
    IL_0445:  ldloc.s    V_23
    IL_0447:  ldloc.s    V_24
    IL_0449:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32,
                                                                           int32,
                                                                           int32)
    IL_044e:  stloc.s    V_25
    IL_0450:  ldloc.s    V_25
    IL_0452:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0457:  stloc.s    V_26
    IL_0459:  ldloc.s    V_26
    IL_045b:  brfalse.s  IL_047e

    IL_045d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0462:  ldloc.s    V_26
    IL_0464:  ldelem.ref
    IL_0465:  ldarg.0
    IL_0466:  ldfld      class Game.BlockGeometryGenerator Game.SubsystemMovingBlocks::m_blockGeometryGenerator
    IL_046b:  ldarg.1
    IL_046c:  ldfld      class Game.TerrainGeometrySubsets Game.SubsystemMovingBlocks/MovingBlockSet::Tgs
    IL_0471:  ldloc.s    V_25
    IL_0473:  ldloc.s    V_22
    IL_0475:  ldloc.s    V_23
    IL_0477:  ldloc.s    V_24
    IL_0479:  callvirt   instance void Game.Block::GenerateTerrainVertices(class Game.BlockGeometryGenerator,
                                                                           class Game.TerrainGeometrySubsets,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           int32)
    IL_047e:  ldloc.s    V_24
    IL_0480:  ldc.i4.1
    IL_0481:  add
    IL_0482:  stloc.s    V_24
    IL_0484:  ldloc.s    V_24
    IL_0486:  ldloc.3
    IL_0487:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_048c:  ldc.i4.1
    IL_048d:  add
    IL_048e:  blt.s      IL_0438

    IL_0490:  ldloc.s    V_23
    IL_0492:  ldc.i4.1
    IL_0493:  add
    IL_0494:  stloc.s    V_23
    IL_0496:  ldloc.s    V_23
    IL_0498:  ldloc.3
    IL_0499:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_049e:  ldc.i4.1
    IL_049f:  add
    IL_04a0:  blt.s      IL_0433

    IL_04a2:  ldloc.s    V_22
    IL_04a4:  ldc.i4.1
    IL_04a5:  add
    IL_04a6:  stloc.s    V_22
    IL_04a8:  ldloc.s    V_22
    IL_04aa:  ldloc.3
    IL_04ab:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04b0:  ldc.i4.1
    IL_04b1:  add
    IL_04b2:  blt        IL_042e

    IL_04b7:  ldarg.1
    IL_04b8:  ldloc.2
    IL_04b9:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_04be:  ldc.r4     1.
    IL_04c3:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_04c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_04cd:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryOffset
    IL_04d2:  ldarg.1
    IL_04d3:  ldloc.0
    IL_04d4:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryGenerationPosition
    IL_04d9:  ret
  } // end of method SubsystemMovingBlocks::GenerateGeometry

  .method private hidebysig instance void 
          DrawMovingBlockSet(class Game.SubsystemDrawing subsystemDrawing,
                             class Game.SubsystemMovingBlocks/MovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       262 (0x106)
    .maxstack  3
    .locals init (int32 V_0,
             uint16[] V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype Game.TerrainVertex[] V_3,
             int32 V_4,
             int32 V_5,
             valuetype Game.TerrainVertex V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_000b:  ldc.i4     0x4e20
    IL_0010:  ble.s      IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::get_ViewFrustum()
    IL_0019:  ldarg.2
    IL_001a:  ldc.i4.0
    IL_001b:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.SubsystemMovingBlocks/MovingBlockSet::BoundingBox(bool)
    IL_0020:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0025:  brtrue.s   IL_0028

    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldarg.2
    IL_002a:  call       instance void Game.SubsystemMovingBlocks::GenerateGeometry(class Game.SubsystemMovingBlocks/MovingBlockSet)
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_0035:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_003a:  stloc.0
    IL_003b:  ldarg.2
    IL_003c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
    IL_0041:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0046:  stloc.1
    IL_0047:  ldarg.2
    IL_0048:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
    IL_004d:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0052:  pop
    IL_0053:  ldarg.2
    IL_0054:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::Position
    IL_0059:  ldarg.2
    IL_005a:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemMovingBlocks/MovingBlockSet::GeometryOffset
    IL_005f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0064:  stloc.2
    IL_0065:  ldarg.2
    IL_0066:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks/MovingBlockSet::Vertices
    IL_006b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_0070:  stloc.3
    IL_0071:  ldarg.2
    IL_0072:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks/MovingBlockSet::Vertices
    IL_0077:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_007c:  stloc.s    V_4
    IL_007e:  ldc.i4.0
    IL_007f:  stloc.s    V_5
    IL_0081:  br.s       IL_00d3

    IL_0083:  ldloc.3
    IL_0084:  ldloc.s    V_5
    IL_0086:  ldelem     Game.TerrainVertex
    IL_008b:  stloc.s    V_6
    IL_008d:  ldloca.s   V_6
    IL_008f:  ldflda     float32 Game.TerrainVertex::X
    IL_0094:  dup
    IL_0095:  ldind.r4
    IL_0096:  ldloc.2
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009c:  add
    IL_009d:  stind.r4
    IL_009e:  ldloca.s   V_6
    IL_00a0:  ldflda     float32 Game.TerrainVertex::Y
    IL_00a5:  dup
    IL_00a6:  ldind.r4
    IL_00a7:  ldloc.2
    IL_00a8:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00ad:  add
    IL_00ae:  stind.r4
    IL_00af:  ldloca.s   V_6
    IL_00b1:  ldflda     float32 Game.TerrainVertex::Z
    IL_00b6:  dup
    IL_00b7:  ldind.r4
    IL_00b8:  ldloc.2
    IL_00b9:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00be:  add
    IL_00bf:  stind.r4
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_00c6:  ldloc.s    V_6
    IL_00c8:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Add(!0)
    IL_00cd:  ldloc.s    V_5
    IL_00cf:  ldc.i4.1
    IL_00d0:  add
    IL_00d1:  stloc.s    V_5
    IL_00d3:  ldloc.s    V_5
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  blt.s      IL_0083

    IL_00d9:  ldc.i4.0
    IL_00da:  stloc.s    V_7
    IL_00dc:  br.s       IL_00f6

    IL_00de:  ldarg.0
    IL_00df:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks::m_indices
    IL_00e4:  ldloc.1
    IL_00e5:  ldloc.s    V_7
    IL_00e7:  ldelem.u2
    IL_00e8:  ldloc.0
    IL_00e9:  add
    IL_00ea:  conv.u2
    IL_00eb:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Add(!0)
    IL_00f0:  ldloc.s    V_7
    IL_00f2:  ldc.i4.1
    IL_00f3:  add
    IL_00f4:  stloc.s    V_7
    IL_00f6:  ldloc.s    V_7
    IL_00f8:  ldarg.2
    IL_00f9:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks/MovingBlockSet::Indices
    IL_00fe:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0103:  blt.s      IL_00de

    IL_0105:  ret
  } // end of method SubsystemMovingBlocks::DrawMovingBlockSet

  .method private hidebysig static bool  ExclusiveBoxIntersection(valuetype [Engine]Engine.BoundingBox b1,
                                                                  valuetype [Engine]Engine.BoundingBox b2) cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000b:  ldarg.1
    IL_000c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0011:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0016:  ble.un.s   IL_0091

    IL_0018:  ldarg.0
    IL_0019:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_001e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0023:  ldarg.1
    IL_0024:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0029:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_002e:  bge.un.s   IL_0091

    IL_0030:  ldarg.0
    IL_0031:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0036:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_003b:  ldarg.1
    IL_003c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0041:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0046:  ble.un.s   IL_0091

    IL_0048:  ldarg.0
    IL_0049:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_004e:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0053:  ldarg.1
    IL_0054:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0059:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_005e:  bge.un.s   IL_0091

    IL_0060:  ldarg.0
    IL_0061:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_006b:  ldarg.1
    IL_006c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0071:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0076:  ble.un.s   IL_0091

    IL_0078:  ldarg.0
    IL_0079:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_007e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0083:  ldarg.1
    IL_0084:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_008e:  clt
    IL_0090:  ret

    IL_0091:  ldc.i4.0
    IL_0092:  ret
  } // end of method SubsystemMovingBlocks::ExclusiveBoxIntersection

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_movingBlockSets
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_stopped
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.SubsystemMovingBlocks/MovingBlockSet> Game.SubsystemMovingBlocks::m_removing
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::.ctor()
    IL_0027:  stfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.SubsystemMovingBlocks::m_vertices
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [Engine]Engine.DynamicArray`1<uint16>::.ctor()
    IL_0032:  stfld      class [Engine]Engine.DynamicArray`1<uint16> Game.SubsystemMovingBlocks::m_indices
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet>::.ctor()
    IL_003d:  stfld      class [Engine]Engine.DynamicArray`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::m_result
    IL_0042:  ldarg.0
    IL_0043:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0048:  ret
  } // end of method SubsystemMovingBlocks::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     bool Game.SubsystemMovingBlocks::DebugDrawMovingBlocks
    IL_0006:  ldc.i4.1
    IL_0007:  newarr     [System.Runtime]System.Int32
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldc.i4.s   10
    IL_0010:  stelem.i4
    IL_0011:  stsfld     int32[] Game.SubsystemMovingBlocks::m_drawOrders
    IL_0016:  ret
  } // end of method SubsystemMovingBlocks::.cctor

  .event class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3> CollidedWithTerrain
  {
    .addon instance void Game.SubsystemMovingBlocks::add_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>)
    .removeon instance void Game.SubsystemMovingBlocks::remove_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>)
  } // end of event SubsystemMovingBlocks::CollidedWithTerrain
  .event class [System.Runtime]System.Action`1<class Game.IMovingBlockSet> Stopped
  {
    .addon instance void Game.SubsystemMovingBlocks::add_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>)
    .removeon instance void Game.SubsystemMovingBlocks::remove_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>)
  } // end of event SubsystemMovingBlocks::Stopped
  .property instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet>
          MovingBlockSets()
  {
    .get instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.IMovingBlockSet> Game.SubsystemMovingBlocks::get_MovingBlockSets()
  } // end of property SubsystemMovingBlocks::MovingBlockSets
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemMovingBlocks::get_UpdateOrder()
  } // end of property SubsystemMovingBlocks::UpdateOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemMovingBlocks::get_DrawOrders()
  } // end of property SubsystemMovingBlocks::DrawOrders
} // end of class Game.SubsystemMovingBlocks