.class public abstract auto ansi beforefieldinit Game.FurnitureElectricElement
       extends Game.ElectricElement
{
  .class auto ansi sealed nested private beforefieldinit '<GetMountingCellFaces>d__1'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.CellFace>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private valuetype Game.CellFace '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field private class Game.SubsystemElectricity subsystemElectricity
    .field public class Game.SubsystemElectricity '<>3__subsystemElectricity'
    .field private valuetype [Engine]Engine.Point3 point
    .field public valuetype [Engine]Engine.Point3 '<>3__point'
    .field private int32 '<rotation>5__1'
    .field private class Game.FurnitureDesign '<design>5__2'
    .field private int32 '<face>5__3'
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
      IL_0008:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetMountingCellFaces>d__1'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<GetMountingCellFaces>d__1'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       314 (0x13a)
      .maxstack  5
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0013

      IL_000a:  ldloc.0
      IL_000b:  ldc.i4.1
      IL_000c:  beq        IL_0113

      IL_0011:  ldc.i4.0
      IL_0012:  ret

      IL_0013:  ldarg.0
      IL_0014:  ldc.i4.m1
      IL_0015:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_001a:  ldarg.0
      IL_001b:  ldfld      class Game.SubsystemElectricity Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::subsystemElectricity
      IL_0020:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
      IL_0025:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_002a:  ldarg.0
      IL_002b:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_0030:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0035:  ldarg.0
      IL_0036:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_003b:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0040:  ldarg.0
      IL_0041:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_0046:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_004b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0050:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_0055:  stloc.1
      IL_0056:  ldarg.0
      IL_0057:  ldloc.1
      IL_0058:  call       int32 Game.FurnitureBlock::GetRotation(int32)
      IL_005d:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<rotation>5__1'
      IL_0062:  ldloc.1
      IL_0063:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
      IL_0068:  stloc.2
      IL_0069:  ldarg.0
      IL_006a:  ldarg.0
      IL_006b:  ldfld      class Game.SubsystemElectricity Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::subsystemElectricity
      IL_0070:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
      IL_0075:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
      IL_007a:  ldloc.2
      IL_007b:  callvirt   instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
      IL_0080:  stfld      class Game.FurnitureDesign Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<design>5__2'
      IL_0085:  ldarg.0
      IL_0086:  ldfld      class Game.FurnitureDesign Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<design>5__2'
      IL_008b:  brfalse    IL_0138

      IL_0090:  ldarg.0
      IL_0091:  ldc.i4.0
      IL_0092:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_0097:  br         IL_012c

      IL_009c:  ldarg.0
      IL_009d:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_00a2:  ldc.i4.4
      IL_00a3:  blt.s      IL_00ad

      IL_00a5:  ldarg.0
      IL_00a6:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_00ab:  br.s       IL_00be

      IL_00ad:  ldarg.0
      IL_00ae:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_00b3:  ldarg.0
      IL_00b4:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<rotation>5__1'
      IL_00b9:  sub
      IL_00ba:  ldc.i4.4
      IL_00bb:  add
      IL_00bc:  ldc.i4.4
      IL_00bd:  rem
      IL_00be:  stloc.3
      IL_00bf:  ldarg.0
      IL_00c0:  ldfld      class Game.FurnitureDesign Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<design>5__2'
      IL_00c5:  callvirt   instance int32 Game.FurnitureDesign::get_MountingFacesMask()
      IL_00ca:  ldc.i4.1
      IL_00cb:  ldloc.3
      IL_00cc:  ldc.i4.s   31
      IL_00ce:  and
      IL_00cf:  shl
      IL_00d0:  and
      IL_00d1:  brfalse.s  IL_011a

      IL_00d3:  ldarg.0
      IL_00d4:  ldarg.0
      IL_00d5:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_00da:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00df:  ldarg.0
      IL_00e0:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_00e5:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00ea:  ldarg.0
      IL_00eb:  ldflda     valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_00f0:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00f5:  ldarg.0
      IL_00f6:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_00fb:  call       int32 Game.CellFace::OppositeFace(int32)
      IL_0100:  newobj     instance void Game.CellFace::.ctor(int32,
                                                              int32,
                                                              int32,
                                                              int32)
      IL_0105:  stfld      valuetype Game.CellFace Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>2__current'
      IL_010a:  ldarg.0
      IL_010b:  ldc.i4.1
      IL_010c:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_0111:  ldc.i4.1
      IL_0112:  ret

      IL_0113:  ldarg.0
      IL_0114:  ldc.i4.m1
      IL_0115:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_011a:  ldarg.0
      IL_011b:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_0120:  ldc.i4.1
      IL_0121:  add
      IL_0122:  stloc.s    V_4
      IL_0124:  ldarg.0
      IL_0125:  ldloc.s    V_4
      IL_0127:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_012c:  ldarg.0
      IL_012d:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<face>5__3'
      IL_0132:  ldc.i4.6
      IL_0133:  blt        IL_009c

      IL_0138:  ldc.i4.0
      IL_0139:  ret
    } // end of method '<GetMountingCellFaces>d__1'::MoveNext

    .method private hidebysig newslot specialname virtual final 
            instance valuetype Game.CellFace 
            'System.Collections.Generic.IEnumerator<Game.CellFace>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.CellFace>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype Game.CellFace Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetMountingCellFaces>d__1'::'System.Collections.Generic.IEnumerator<Game.CellFace>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetMountingCellFaces>d__1'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      valuetype Game.CellFace Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>2__current'
      IL_0006:  box        Game.CellFace
      IL_000b:  ret
    } // end of method '<GetMountingCellFaces>d__1'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.CellFace> 
            'System.Collections.Generic.IEnumerable<Game.CellFace>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>::GetEnumerator()
      // 代码大小       67 (0x43)
      .maxstack  2
      .locals init (class Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0029

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.SubsystemElectricity Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>3__subsystemElectricity'
      IL_0030:  stfld      class Game.SubsystemElectricity Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::subsystemElectricity
      IL_0035:  ldloc.0
      IL_0036:  ldarg.0
      IL_0037:  ldfld      valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>3__point'
      IL_003c:  stfld      valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::point
      IL_0041:  ldloc.0
      IL_0042:  ret
    } // end of method '<GetMountingCellFaces>d__1'::'System.Collections.Generic.IEnumerable<Game.CellFace>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype Game.CellFace> Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'System.Collections.Generic.IEnumerable<Game.CellFace>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetMountingCellFaces>d__1'::System.Collections.IEnumerable.GetEnumerator

    .property instance valuetype Game.CellFace
            'System.Collections.Generic.IEnumerator<Game.CellFace>.Current'()
    {
      .get instance valuetype Game.CellFace Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'System.Collections.Generic.IEnumerator<Game.CellFace>.get_Current'()
    } // end of property '<GetMountingCellFaces>d__1'::'System.Collections.Generic.IEnumerator<Game.CellFace>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetMountingCellFaces>d__1'::System.Collections.IEnumerator.Current
  } // end of class '<GetMountingCellFaces>d__1'

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace> Game.FurnitureElectricElement::GetMountingCellFaces(class Game.SubsystemElectricity,
                                                                                                                                                                     valuetype [Engine]Engine.Point3)
    IL_0009:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
    IL_000e:  ret
  } // end of method FurnitureElectricElement::.ctor

  .method private hidebysig static class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace> 
          GetMountingCellFaces(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 38 47 61 6D 65 2E 46 75 72 6E 69 74 75 72   // ..8Game.Furnitur
                                                                                                                                                      65 45 6C 65 63 74 72 69 63 45 6C 65 6D 65 6E 74   // eElectricElement
                                                                                                                                                      2B 3C 47 65 74 4D 6F 75 6E 74 69 6E 67 43 65 6C   // +<GetMountingCel
                                                                                                                                                      6C 46 61 63 65 73 3E 64 5F 5F 31 00 00 )          // lFaces>d__1..
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.SubsystemElectricity Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>3__subsystemElectricity'
    IL_000e:  dup
    IL_000f:  ldarg.1
    IL_0010:  stfld      valuetype [Engine]Engine.Point3 Game.FurnitureElectricElement/'<GetMountingCellFaces>d__1'::'<>3__point'
    IL_0015:  ret
  } // end of method FurnitureElectricElement::GetMountingCellFaces

} // end of class Game.FurnitureElectricElement