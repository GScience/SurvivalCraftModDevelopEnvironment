.class public auto ansi beforefieldinit Game.FurnitureDesign
       extends [System.Runtime]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit Cell
         extends [System.Runtime]System.ValueType
  {
    .field public int32 Value
  } // end of class Cell

  .class sequential ansi sealed nested private beforefieldinit Subdivision
         extends [System.Runtime]System.ValueType
  {
    .field public int32 TotalVolume
    .field public int32 MinVolume
    .field public class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Boxes
  } // end of class Subdivision

  .field public static literal int32 MinResolution = int32(0x00000002)
  .field public static literal int32 MaxResolution = int32(0x00000010)
  .field public static literal int32 MaxTriangles = int32(0x0000012C)
  .field public static literal int32 MaxNameLength = int32(0x00000014)
  .field private int32 m_index
  .field private string m_name
  .field private class Game.FurnitureSet m_furnitureSet
  .field assembly bool m_gcUsed
  .field assembly int32 m_terrainUseCount
  .field assembly int32 m_loadTimeLinkedDesignIndex
  .field private int32 m_resolution
  .field private int32[] m_values
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_hash
  .field private class Game.FurnitureGeometry m_geometry
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box> m_box
  .field private valuetype [System.Runtime]System.Nullable`1<int32> m_shadowStrengthFactor
  .field private valuetype [Engine]Engine.BoundingBox[][] m_collisionBoxesByRotation
  .field private valuetype [Engine]Engine.BoundingBox[][] m_interactionBoxesByRotation
  .field private valuetype [Engine]Engine.BoundingBox[][] m_torchPointsByRotation
  .field private int32 m_mainValue
  .field private int32 m_mountingFacesMask
  .field private int32 m_transparentFacesMask
  .field private class Game.FurnitureDesign m_linkedDesign
  .field private valuetype Game.FurnitureInteractionMode m_interactionMode
  .method public hidebysig specialname instance int32 
          get_Resolution() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0006:  ret
  } // end of method FurnitureDesign::get_Resolution

  .method public hidebysig specialname instance int32 
          get_Hash() cil managed
  {
    // 代码大小       133 (0x85)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype [System.Runtime]System.Nullable`1<int32> V_1,
             int32 V_2,
             valuetype [System.Runtime]System.Nullable`1<int32> V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000b:  brtrue.s   IL_0079

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0014:  ldarg.0
    IL_0015:  ldfld      valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::m_interactionMode
    IL_001a:  ldc.i4.4
    IL_001b:  shl
    IL_001c:  add
    IL_001d:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0022:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_0027:  ldc.i4.0
    IL_0028:  stloc.0
    IL_0029:  br.s       IL_006e

    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_0032:  stloc.1
    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0039:  ldloc.0
    IL_003a:  ldelem.i4
    IL_003b:  ldc.i4.1
    IL_003c:  ldc.i4.s   113
    IL_003e:  ldloc.0
    IL_003f:  mul
    IL_0040:  add
    IL_0041:  mul
    IL_0042:  stloc.2
    IL_0043:  ldloca.s   V_1
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_004a:  brtrue.s   IL_0057

    IL_004c:  ldloca.s   V_3
    IL_004e:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0054:  ldloc.3
    IL_0055:  br.s       IL_0065

    IL_0057:  ldloca.s   V_1
    IL_0059:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::GetValueOrDefault()
    IL_005e:  ldloc.2
    IL_005f:  add
    IL_0060:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_0065:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_006a:  ldloc.0
    IL_006b:  ldc.i4.1
    IL_006c:  add
    IL_006d:  stloc.0
    IL_006e:  ldloc.0
    IL_006f:  ldarg.0
    IL_0070:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0075:  ldlen
    IL_0076:  conv.i4
    IL_0077:  blt.s      IL_002b

    IL_0079:  ldarg.0
    IL_007a:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_007f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0084:  ret
  } // end of method FurnitureDesign::get_Hash

  .method public hidebysig specialname instance valuetype [Engine]Engine.Box 
          get_Box() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign::m_box
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box>::get_HasValue()
    IL_000b:  brtrue.s   IL_0038

    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.0
    IL_0012:  ldarg.0
    IL_0013:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0018:  ldarg.0
    IL_0019:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_001e:  ldarg.0
    IL_001f:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0024:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_0029:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_002e:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box>::.ctor(!0)
    IL_0033:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign::m_box
    IL_0038:  ldarg.0
    IL_0039:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign::m_box
    IL_003e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box>::get_Value()
    IL_0043:  ret
  } // end of method FurnitureDesign::get_Box

  .method public hidebysig specialname instance int32 
          get_ShadowStrengthFactor() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_shadowStrengthFactor
    IL_0006:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_000b:  brtrue.s   IL_0013

    IL_000d:  ldarg.0
    IL_000e:  call       instance void Game.FurnitureDesign::CalculateShadowStrengthFactor()
    IL_0013:  ldarg.0
    IL_0014:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_shadowStrengthFactor
    IL_0019:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001e:  ret
  } // end of method FurnitureDesign::get_ShadowStrengthFactor

  .method public hidebysig specialname instance bool 
          get_IsLightEmitter() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance valuetype [Engine]Engine.BoundingBox[] Game.FurnitureDesign::GetTorchPoints(int32)
    IL_0007:  ldlen
    IL_0008:  ldc.i4.0
    IL_0009:  cgt.un
    IL_000b:  ret
  } // end of method FurnitureDesign::get_IsLightEmitter

  .method public hidebysig specialname instance int32 
          get_MainValue() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FurnitureDesign::m_mainValue
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureDesign::CalculateMainValue()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      int32 Game.FurnitureDesign::m_mainValue
    IL_0014:  ret
  } // end of method FurnitureDesign::get_MainValue

  .method public hidebysig specialname instance int32 
          get_MountingFacesMask() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0006:  ldc.i4.0
    IL_0007:  bge.s      IL_000f

    IL_0009:  ldarg.0
    IL_000a:  call       instance void Game.FurnitureDesign::CalculateFacesMasks()
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0015:  ret
  } // end of method FurnitureDesign::get_MountingFacesMask

  .method public hidebysig specialname instance int32 
          get_TransparentFacesMask() cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0006:  ldc.i4.0
    IL_0007:  bge.s      IL_000f

    IL_0009:  ldarg.0
    IL_000a:  call       instance void Game.FurnitureDesign::CalculateFacesMasks()
    IL_000f:  ldarg.0
    IL_0010:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0015:  ret
  } // end of method FurnitureDesign::get_TransparentFacesMask

  .method public hidebysig specialname instance int32 
          get_Index() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.FurnitureDesign::m_index
    IL_0006:  ret
  } // end of method FurnitureDesign::get_Index

  .method assembly hidebysig specialname 
          instance void  set_Index(int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.FurnitureDesign::m_index
    IL_0007:  ret
  } // end of method FurnitureDesign::set_Index

  .method public hidebysig specialname instance string 
          get_Name() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.FurnitureDesign::m_name
    IL_0006:  ret
  } // end of method FurnitureDesign::get_Name

  .method public hidebysig specialname instance void 
          set_Name(string 'value') cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  3
    .locals init (string V_0,
             int32 V_1,
             char V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0006:  ldc.i4.0
    IL_0007:  ble.s      IL_007e

    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.0
    IL_000b:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0010:  ldc.i4.s   32
    IL_0012:  beq.s      IL_0026

    IL_0014:  ldarg.1
    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_001b:  ldc.i4.1
    IL_001c:  sub
    IL_001d:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_0022:  ldc.i4.s   32
    IL_0024:  bne.un.s   IL_0031

    IL_0026:  ldstr      "Invalid name."
    IL_002b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0030:  throw

    IL_0031:  ldarg.1
    IL_0032:  stloc.0
    IL_0033:  ldc.i4.0
    IL_0034:  stloc.1
    IL_0035:  br.s       IL_0060

    IL_0037:  ldloc.0
    IL_0038:  ldloc.1
    IL_0039:  callvirt   instance char [System.Runtime]System.String::get_Chars(int32)
    IL_003e:  stloc.2
    IL_003f:  ldloc.2
    IL_0040:  ldc.i4.s   127
    IL_0042:  bgt.s      IL_0051

    IL_0044:  ldloc.2
    IL_0045:  call       bool [System.Runtime]System.Char::IsLetterOrDigit(char)
    IL_004a:  brtrue.s   IL_005c

    IL_004c:  ldloc.2
    IL_004d:  ldc.i4.s   32
    IL_004f:  beq.s      IL_005c

    IL_0051:  ldstr      "Invalid name."
    IL_0056:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_005b:  throw

    IL_005c:  ldloc.1
    IL_005d:  ldc.i4.1
    IL_005e:  add
    IL_005f:  stloc.1
    IL_0060:  ldloc.1
    IL_0061:  ldloc.0
    IL_0062:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_0067:  blt.s      IL_0037

    IL_0069:  ldarg.1
    IL_006a:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_006f:  ldc.i4.s   20
    IL_0071:  ble.s      IL_007e

    IL_0073:  ldarg.1
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.s   20
    IL_0077:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_007c:  starg.s    'value'
    IL_007e:  ldarg.0
    IL_007f:  ldarg.1
    IL_0080:  stfld      string Game.FurnitureDesign::m_name
    IL_0085:  ret
  } // end of method FurnitureDesign::set_Name

  .method public hidebysig specialname instance class Game.FurnitureSet 
          get_FurnitureSet() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureSet Game.FurnitureDesign::m_furnitureSet
    IL_0006:  ret
  } // end of method FurnitureDesign::get_FurnitureSet

  .method public hidebysig specialname instance void 
          set_FurnitureSet(class Game.FurnitureSet 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.FurnitureSet Game.FurnitureDesign::m_furnitureSet
    IL_0007:  ret
  } // end of method FurnitureDesign::set_FurnitureSet

  .method public hidebysig specialname instance class Game.FurnitureDesign 
          get_LinkedDesign() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign Game.FurnitureDesign::m_linkedDesign
    IL_0006:  ret
  } // end of method FurnitureDesign::get_LinkedDesign

  .method public hidebysig specialname instance void 
          set_LinkedDesign(class Game.FurnitureDesign 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.FurnitureDesign Game.FurnitureDesign::m_linkedDesign
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      class Game.FurnitureDesign Game.FurnitureDesign::m_linkedDesign
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001c:  ret
  } // end of method FurnitureDesign::set_LinkedDesign

  .method public hidebysig specialname instance valuetype Game.FurnitureInteractionMode 
          get_InteractionMode() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::m_interactionMode
    IL_0006:  ret
  } // end of method FurnitureDesign::get_InteractionMode

  .method public hidebysig specialname instance void 
          set_InteractionMode(valuetype Game.FurnitureInteractionMode 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::m_interactionMode
    IL_0007:  beq.s      IL_001c

    IL_0009:  ldarg.0
    IL_000a:  ldarg.1
    IL_000b:  stfld      valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::m_interactionMode
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_0016:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_001c:  ret
  } // end of method FurnitureDesign::set_InteractionMode

  .method public hidebysig specialname instance class Game.FurnitureGeometry 
          get_Geometry() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureDesign::CreateGeometry()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_0014:  ret
  } // end of method FurnitureDesign::get_Geometry

  .method public hidebysig instance int32 
          GetValue(int32 index) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0006:  ldarg.1
    IL_0007:  ldelem.i4
    IL_0008:  ret
  } // end of method FurnitureDesign::GetValue

  .method public hidebysig instance void 
          SetValues(int32 resolution,
                    int32[] values) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  3
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  blt.s      IL_0009

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   16
    IL_0007:  ble.s      IL_0014

    IL_0009:  ldstr      "resolution"
    IL_000e:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0013:  throw

    IL_0014:  ldarg.2
    IL_0015:  ldlen
    IL_0016:  conv.i4
    IL_0017:  ldarg.1
    IL_0018:  ldarg.1
    IL_0019:  mul
    IL_001a:  ldarg.1
    IL_001b:  mul
    IL_001c:  beq.s      IL_0029

    IL_001e:  ldstr      "values"
    IL_0023:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0028:  throw

    IL_0029:  ldarg.0
    IL_002a:  ldarg.1
    IL_002b:  stfld      int32 Game.FurnitureDesign::m_resolution
    IL_0030:  ldarg.0
    IL_0031:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0036:  brfalse.s  IL_0047

    IL_0038:  ldarg.0
    IL_0039:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_003e:  ldlen
    IL_003f:  conv.i4
    IL_0040:  ldarg.1
    IL_0041:  ldarg.1
    IL_0042:  mul
    IL_0043:  ldarg.1
    IL_0044:  mul
    IL_0045:  beq.s      IL_0057

    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldarg.1
    IL_004a:  mul
    IL_004b:  ldarg.1
    IL_004c:  mul
    IL_004d:  newarr     [System.Runtime]System.Int32
    IL_0052:  stfld      int32[] Game.FurnitureDesign::m_values
    IL_0057:  ldarg.2
    IL_0058:  ldarg.0
    IL_0059:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_005e:  ldc.i4.0
    IL_005f:  callvirt   instance void [System.Runtime]System.Array::CopyTo(class [System.Runtime]System.Array,
                                                                            int32)
    IL_0064:  ldarg.0
    IL_0065:  ldflda     valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_hash
    IL_006a:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
    IL_0070:  ldarg.0
    IL_0071:  ldnull
    IL_0072:  stfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_0077:  ldarg.0
    IL_0078:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign::m_box
    IL_007d:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Box>
    IL_0083:  ldarg.0
    IL_0084:  ldnull
    IL_0085:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_008a:  ldarg.0
    IL_008b:  ldnull
    IL_008c:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_0091:  ldarg.0
    IL_0092:  ldnull
    IL_0093:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_0098:  ldarg.0
    IL_0099:  ldc.i4.0
    IL_009a:  stfld      int32 Game.FurnitureDesign::m_mainValue
    IL_009f:  ldarg.0
    IL_00a0:  ldc.i4.m1
    IL_00a1:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_00a6:  ldarg.0
    IL_00a7:  ldc.i4.m1
    IL_00a8:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_00ad:  ret
  } // end of method FurnitureDesign::SetValues

  .method public hidebysig instance string 
          GetDefaultName() cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0006:  ldc.i4.1
    IL_0007:  bne.un.s   IL_0033

    IL_0009:  ldarg.0
    IL_000a:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_000f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.1
    IL_0017:  ble.s      IL_0084

    IL_0019:  ldstr      "{0}-state Furniture"
    IL_001e:  ldc.i4.1
    IL_001f:  newarr     [System.Runtime]System.Object
    IL_0024:  dup
    IL_0025:  ldc.i4.0
    IL_0026:  ldloc.0
    IL_0027:  box        [System.Runtime]System.Int32
    IL_002c:  stelem.ref
    IL_002d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0032:  ret

    IL_0033:  ldarg.0
    IL_0034:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0039:  ldc.i4.2
    IL_003a:  bne.un.s   IL_0042

    IL_003c:  ldstr      "Furniture Button"
    IL_0041:  ret

    IL_0042:  ldarg.0
    IL_0043:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0048:  ldc.i4.3
    IL_0049:  bne.un.s   IL_0051

    IL_004b:  ldstr      "Furniture Switch"
    IL_0050:  ret

    IL_0051:  ldarg.0
    IL_0052:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0057:  ldc.i4.4
    IL_0058:  bne.un.s   IL_0084

    IL_005a:  ldarg.0
    IL_005b:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0060:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0065:  stloc.1
    IL_0066:  ldloc.1
    IL_0067:  ldc.i4.1
    IL_0068:  ble.s      IL_0084

    IL_006a:  ldstr      "{0}-state Connected Furniture"
    IL_006f:  ldc.i4.1
    IL_0070:  newarr     [System.Runtime]System.Object
    IL_0075:  dup
    IL_0076:  ldc.i4.0
    IL_0077:  ldloc.1
    IL_0078:  box        [System.Runtime]System.Int32
    IL_007d:  stelem.ref
    IL_007e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0083:  ret

    IL_0084:  ldstr      "Furniture"
    IL_0089:  ret
  } // end of method FurnitureDesign::GetDefaultName

  .method public hidebysig instance valuetype [Engine]Engine.BoundingBox[] 
          GetCollisionBoxes(int32 rotation) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureDesign::CreateCollisionAndInteractionBoxes()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_0014:  ldarg.1
    IL_0015:  ldelem.ref
    IL_0016:  ret
  } // end of method FurnitureDesign::GetCollisionBoxes

  .method public hidebysig instance valuetype [Engine]Engine.BoundingBox[] 
          GetInteractionBoxes(int32 rotation) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureDesign::CreateCollisionAndInteractionBoxes()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_0014:  ldarg.1
    IL_0015:  ldelem.ref
    IL_0016:  ret
  } // end of method FurnitureDesign::GetInteractionBoxes

  .method public hidebysig instance valuetype [Engine]Engine.BoundingBox[] 
          GetTorchPoints(int32 rotation) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldarg.0
    IL_0009:  call       instance void Game.FurnitureDesign::CreateTorchPoints()
    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_0014:  ldarg.1
    IL_0015:  ldelem.ref
    IL_0016:  ret
  } // end of method FurnitureDesign::GetTorchPoints

  .method public hidebysig instance void 
          Paint(valuetype [System.Runtime]System.Nullable`1<int32> color) cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  6
    .locals init (int32[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.IPaintableBlock V_4)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0006:  ldlen
    IL_0007:  conv.i4
    IL_0008:  newarr     [System.Runtime]System.Int32
    IL_000d:  stloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_004b

    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0018:  ldloc.1
    IL_0019:  ldelem.i4
    IL_001a:  stloc.2
    IL_001b:  ldloc.2
    IL_001c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0021:  stloc.3
    IL_0022:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0027:  ldloc.3
    IL_0028:  ldelem.ref
    IL_0029:  isinst     Game.IPaintableBlock
    IL_002e:  stloc.s    V_4
    IL_0030:  ldloc.s    V_4
    IL_0032:  brfalse.s  IL_0043

    IL_0034:  ldloc.0
    IL_0035:  ldloc.1
    IL_0036:  ldloc.s    V_4
    IL_0038:  ldnull
    IL_0039:  ldloc.2
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance int32 Game.IPaintableBlock::Paint(class Game.SubsystemTerrain,
                                                                    int32,
                                                                    valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_0040:  stelem.i4
    IL_0041:  br.s       IL_0047

    IL_0043:  ldloc.0
    IL_0044:  ldloc.1
    IL_0045:  ldloc.2
    IL_0046:  stelem.i4
    IL_0047:  ldloc.1
    IL_0048:  ldc.i4.1
    IL_0049:  add
    IL_004a:  stloc.1
    IL_004b:  ldloc.1
    IL_004c:  ldarg.0
    IL_004d:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0052:  ldlen
    IL_0053:  conv.i4
    IL_0054:  blt.s      IL_0012

    IL_0056:  ldarg.0
    IL_0057:  ldarg.0
    IL_0058:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_005d:  ldloc.0
    IL_005e:  call       instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_0063:  ret
  } // end of method FurnitureDesign::Paint

  .method public hidebysig instance void 
          Resize(int32 resolution) cil managed
  {
    // 代码大小       173 (0xad)
    .maxstack  6
    .locals init (int32[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  blt.s      IL_0009

    IL_0004:  ldarg.1
    IL_0005:  ldc.i4.s   16
    IL_0007:  ble.s      IL_0014

    IL_0009:  ldstr      "resolution"
    IL_000e:  newobj     instance void [System.Runtime]System.ArgumentException::.ctor(string)
    IL_0013:  throw

    IL_0014:  ldarg.1
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_001b:  beq        IL_00ac

    IL_0020:  ldarg.1
    IL_0021:  ldarg.1
    IL_0022:  mul
    IL_0023:  ldarg.1
    IL_0024:  mul
    IL_0025:  newarr     [System.Runtime]System.Int32
    IL_002a:  stloc.0
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.1
    IL_002d:  br.s       IL_00a0

    IL_002f:  ldc.i4.0
    IL_0030:  stloc.2
    IL_0031:  br.s       IL_0098

    IL_0033:  ldc.i4.0
    IL_0034:  stloc.3
    IL_0035:  br.s       IL_0090

    IL_0037:  ldloc.3
    IL_0038:  ldc.i4.0
    IL_0039:  blt.s      IL_008c

    IL_003b:  ldloc.3
    IL_003c:  ldarg.0
    IL_003d:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0042:  bge.s      IL_008c

    IL_0044:  ldloc.2
    IL_0045:  ldc.i4.0
    IL_0046:  blt.s      IL_008c

    IL_0048:  ldloc.2
    IL_0049:  ldarg.0
    IL_004a:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_004f:  bge.s      IL_008c

    IL_0051:  ldloc.1
    IL_0052:  ldc.i4.0
    IL_0053:  blt.s      IL_008c

    IL_0055:  ldloc.1
    IL_0056:  ldarg.0
    IL_0057:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_005c:  bge.s      IL_008c

    IL_005e:  ldloc.0
    IL_005f:  ldloc.3
    IL_0060:  ldloc.2
    IL_0061:  ldarg.1
    IL_0062:  mul
    IL_0063:  add
    IL_0064:  ldloc.1
    IL_0065:  ldarg.1
    IL_0066:  mul
    IL_0067:  ldarg.1
    IL_0068:  mul
    IL_0069:  add
    IL_006a:  ldarg.0
    IL_006b:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0070:  ldloc.3
    IL_0071:  ldloc.2
    IL_0072:  ldarg.0
    IL_0073:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0078:  mul
    IL_0079:  add
    IL_007a:  ldloc.1
    IL_007b:  ldarg.0
    IL_007c:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0081:  mul
    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0088:  mul
    IL_0089:  add
    IL_008a:  ldelem.i4
    IL_008b:  stelem.i4
    IL_008c:  ldloc.3
    IL_008d:  ldc.i4.1
    IL_008e:  add
    IL_008f:  stloc.3
    IL_0090:  ldloc.3
    IL_0091:  ldarg.1
    IL_0092:  blt.s      IL_0037

    IL_0094:  ldloc.2
    IL_0095:  ldc.i4.1
    IL_0096:  add
    IL_0097:  stloc.2
    IL_0098:  ldloc.2
    IL_0099:  ldarg.1
    IL_009a:  blt.s      IL_0033

    IL_009c:  ldloc.1
    IL_009d:  ldc.i4.1
    IL_009e:  add
    IL_009f:  stloc.1
    IL_00a0:  ldloc.1
    IL_00a1:  ldarg.1
    IL_00a2:  blt.s      IL_002f

    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.1
    IL_00a6:  ldloc.0
    IL_00a7:  call       instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_00ac:  ret
  } // end of method FurnitureDesign::Resize

  .method public hidebysig instance void 
          Shift(valuetype [Engine]Engine.Point3 delta) cil managed
  {
    // 代码大小       264 (0x108)
    .maxstack  6
    .locals init (int32[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6)
    IL_0000:  ldarg.1
    IL_0001:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_0006:  call       bool [Engine]Engine.Point3::op_Inequality(valuetype [Engine]Engine.Point3,
                                                                   valuetype [Engine]Engine.Point3)
    IL_000b:  brfalse    IL_0107

    IL_0010:  ldarg.0
    IL_0011:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0016:  ldarg.0
    IL_0017:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_001c:  mul
    IL_001d:  ldarg.0
    IL_001e:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0023:  mul
    IL_0024:  newarr     [System.Runtime]System.Int32
    IL_0029:  stloc.0
    IL_002a:  ldc.i4.0
    IL_002b:  stloc.1
    IL_002c:  br         IL_00ee

    IL_0031:  ldc.i4.0
    IL_0032:  stloc.2
    IL_0033:  br         IL_00de

    IL_0038:  ldc.i4.0
    IL_0039:  stloc.3
    IL_003a:  br         IL_00ce

    IL_003f:  ldloc.3
    IL_0040:  ldarg.1
    IL_0041:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0046:  add
    IL_0047:  stloc.s    V_4
    IL_0049:  ldloc.2
    IL_004a:  ldarg.1
    IL_004b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0050:  add
    IL_0051:  stloc.s    V_5
    IL_0053:  ldloc.1
    IL_0054:  ldarg.1
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005a:  add
    IL_005b:  stloc.s    V_6
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldc.i4.0
    IL_0060:  blt.s      IL_00ca

    IL_0062:  ldloc.s    V_4
    IL_0064:  ldarg.0
    IL_0065:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_006a:  bge.s      IL_00ca

    IL_006c:  ldloc.s    V_5
    IL_006e:  ldc.i4.0
    IL_006f:  blt.s      IL_00ca

    IL_0071:  ldloc.s    V_5
    IL_0073:  ldarg.0
    IL_0074:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0079:  bge.s      IL_00ca

    IL_007b:  ldloc.s    V_6
    IL_007d:  ldc.i4.0
    IL_007e:  blt.s      IL_00ca

    IL_0080:  ldloc.s    V_6
    IL_0082:  ldarg.0
    IL_0083:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0088:  bge.s      IL_00ca

    IL_008a:  ldloc.0
    IL_008b:  ldloc.s    V_4
    IL_008d:  ldloc.s    V_5
    IL_008f:  ldarg.0
    IL_0090:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0095:  mul
    IL_0096:  add
    IL_0097:  ldloc.s    V_6
    IL_0099:  ldarg.0
    IL_009a:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_009f:  mul
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00a6:  mul
    IL_00a7:  add
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_00ae:  ldloc.3
    IL_00af:  ldloc.2
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00b6:  mul
    IL_00b7:  add
    IL_00b8:  ldloc.1
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00bf:  mul
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00c6:  mul
    IL_00c7:  add
    IL_00c8:  ldelem.i4
    IL_00c9:  stelem.i4
    IL_00ca:  ldloc.3
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  stloc.3
    IL_00ce:  ldloc.3
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00d5:  blt        IL_003f

    IL_00da:  ldloc.2
    IL_00db:  ldc.i4.1
    IL_00dc:  add
    IL_00dd:  stloc.2
    IL_00de:  ldloc.2
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00e5:  blt        IL_0038

    IL_00ea:  ldloc.1
    IL_00eb:  ldc.i4.1
    IL_00ec:  add
    IL_00ed:  stloc.1
    IL_00ee:  ldloc.1
    IL_00ef:  ldarg.0
    IL_00f0:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00f5:  blt        IL_0031

    IL_00fa:  ldarg.0
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0101:  ldloc.0
    IL_0102:  call       instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_0107:  ret
  } // end of method FurnitureDesign::Shift

  .method public hidebysig instance void 
          Rotate(int32 axis,
                 int32 steps) cil managed
  {
    // 代码大小       414 (0x19e)
    .maxstack  6
    .locals init (int32[] V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Point3 V_5)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.4
    IL_0002:  rem
    IL_0003:  starg.s    steps
    IL_0005:  ldarg.2
    IL_0006:  ldc.i4.0
    IL_0007:  bge.s      IL_000e

    IL_0009:  ldarg.2
    IL_000a:  ldc.i4.4
    IL_000b:  add
    IL_000c:  starg.s    steps
    IL_000e:  ldarg.2
    IL_000f:  ldc.i4.0
    IL_0010:  ble        IL_019d

    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0021:  mul
    IL_0022:  ldarg.0
    IL_0023:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0028:  mul
    IL_0029:  newarr     [System.Runtime]System.Int32
    IL_002e:  stloc.0
    IL_002f:  ldc.i4.0
    IL_0030:  stloc.1
    IL_0031:  br         IL_0184

    IL_0036:  ldc.i4.0
    IL_0037:  stloc.2
    IL_0038:  br         IL_0174

    IL_003d:  ldc.i4.0
    IL_003e:  stloc.3
    IL_003f:  br         IL_0164

    IL_0044:  ldloc.3
    IL_0045:  conv.r4
    IL_0046:  ldloc.2
    IL_0047:  conv.r4
    IL_0048:  ldloc.1
    IL_0049:  conv.r4
    IL_004a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004f:  ldarg.0
    IL_0050:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0055:  conv.r4
    IL_0056:  ldc.r4     2.
    IL_005b:  div
    IL_005c:  ldc.r4     0.5
    IL_0061:  sub
    IL_0062:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_0067:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_006c:  ldarg.1
    IL_006d:  ldarg.2
    IL_006e:  call       valuetype [Engine]Engine.Vector3 Game.FurnitureDesign::RotatePoint(valuetype [Engine]Engine.Vector3,
                                                                                            int32,
                                                                                            int32)
    IL_0073:  ldarg.0
    IL_0074:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0079:  conv.r4
    IL_007a:  ldc.r4     2.
    IL_007f:  div
    IL_0080:  ldc.r4     0.5
    IL_0085:  sub
    IL_0086:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_008b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0090:  stloc.s    V_4
    IL_0092:  ldloca.s   V_5
    IL_0094:  ldloc.s    V_4
    IL_0096:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_009b:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00a0:  conv.i4
    IL_00a1:  ldloc.s    V_4
    IL_00a3:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00ad:  conv.i4
    IL_00ae:  ldloc.s    V_4
    IL_00b0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00b5:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00ba:  conv.i4
    IL_00bb:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00c0:  ldloc.s    V_5
    IL_00c2:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c7:  ldc.i4.0
    IL_00c8:  blt        IL_0160

    IL_00cd:  ldloc.s    V_5
    IL_00cf:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00da:  bge        IL_0160

    IL_00df:  ldloc.s    V_5
    IL_00e1:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00e6:  ldc.i4.0
    IL_00e7:  blt.s      IL_0160

    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00f6:  bge.s      IL_0160

    IL_00f8:  ldloc.s    V_5
    IL_00fa:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00ff:  ldc.i4.0
    IL_0100:  blt.s      IL_0160

    IL_0102:  ldloc.s    V_5
    IL_0104:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0109:  ldarg.0
    IL_010a:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_010f:  bge.s      IL_0160

    IL_0111:  ldloc.0
    IL_0112:  ldloc.s    V_5
    IL_0114:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0119:  ldloc.s    V_5
    IL_011b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0120:  ldarg.0
    IL_0121:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0126:  mul
    IL_0127:  add
    IL_0128:  ldloc.s    V_5
    IL_012a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_012f:  ldarg.0
    IL_0130:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0135:  mul
    IL_0136:  ldarg.0
    IL_0137:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_013c:  mul
    IL_013d:  add
    IL_013e:  ldarg.0
    IL_013f:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0144:  ldloc.3
    IL_0145:  ldloc.2
    IL_0146:  ldarg.0
    IL_0147:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_014c:  mul
    IL_014d:  add
    IL_014e:  ldloc.1
    IL_014f:  ldarg.0
    IL_0150:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0155:  mul
    IL_0156:  ldarg.0
    IL_0157:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_015c:  mul
    IL_015d:  add
    IL_015e:  ldelem.i4
    IL_015f:  stelem.i4
    IL_0160:  ldloc.3
    IL_0161:  ldc.i4.1
    IL_0162:  add
    IL_0163:  stloc.3
    IL_0164:  ldloc.3
    IL_0165:  ldarg.0
    IL_0166:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_016b:  blt        IL_0044

    IL_0170:  ldloc.2
    IL_0171:  ldc.i4.1
    IL_0172:  add
    IL_0173:  stloc.2
    IL_0174:  ldloc.2
    IL_0175:  ldarg.0
    IL_0176:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_017b:  blt        IL_003d

    IL_0180:  ldloc.1
    IL_0181:  ldc.i4.1
    IL_0182:  add
    IL_0183:  stloc.1
    IL_0184:  ldloc.1
    IL_0185:  ldarg.0
    IL_0186:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_018b:  blt        IL_0036

    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0197:  ldloc.0
    IL_0198:  call       instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_019d:  ret
  } // end of method FurnitureDesign::Rotate

  .method public hidebysig instance void 
          Load(int32 index,
               class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       244 (0xf4)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32[] V_2,
             string[] V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.FurnitureDesign::m_index
    IL_0007:  ldarg.0
    IL_0008:  ldarg.2
    IL_0009:  ldstr      "Name"
    IL_000e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0013:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                         !!0)
    IL_0018:  call       instance void Game.FurnitureDesign::set_Name(string)
    IL_001d:  ldarg.0
    IL_001e:  ldarg.2
    IL_001f:  ldstr      "TerrainUseCount"
    IL_0024:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0029:  stfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_002e:  ldarg.2
    IL_002f:  ldstr      "Resolution"
    IL_0034:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0039:  stloc.0
    IL_003a:  ldarg.0
    IL_003b:  ldarg.2
    IL_003c:  ldstr      "InteractionMode"
    IL_0041:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype Game.FurnitureInteractionMode>(string)
    IL_0046:  call       instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_004b:  ldarg.0
    IL_004c:  ldarg.2
    IL_004d:  ldstr      "LinkedDesign"
    IL_0052:  ldc.i4.m1
    IL_0053:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string,
                                                                                                        !!0)
    IL_0058:  stfld      int32 Game.FurnitureDesign::m_loadTimeLinkedDesignIndex
    IL_005d:  ldarg.2
    IL_005e:  ldstr      "Values"
    IL_0063:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0068:  ldc.i4.0
    IL_0069:  stloc.1
    IL_006a:  ldloc.0
    IL_006b:  ldloc.0
    IL_006c:  mul
    IL_006d:  ldloc.0
    IL_006e:  mul
    IL_006f:  newarr     [System.Runtime]System.Int32
    IL_0074:  stloc.2
    IL_0075:  ldc.i4.1
    IL_0076:  newarr     [System.Runtime]System.Char
    IL_007b:  dup
    IL_007c:  ldc.i4.0
    IL_007d:  ldc.i4.s   44
    IL_007f:  stelem.i2
    IL_0080:  ldc.i4.1
    IL_0081:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0086:  stloc.3
    IL_0087:  ldc.i4.0
    IL_0088:  stloc.s    V_4
    IL_008a:  br.s       IL_00e4

    IL_008c:  ldloc.3
    IL_008d:  ldloc.s    V_4
    IL_008f:  ldelem.ref
    IL_0090:  ldc.i4.1
    IL_0091:  newarr     [System.Runtime]System.Char
    IL_0096:  dup
    IL_0097:  ldc.i4.0
    IL_0098:  ldc.i4.s   42
    IL_009a:  stelem.i2
    IL_009b:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_00a0:  dup
    IL_00a1:  ldlen
    IL_00a2:  conv.i4
    IL_00a3:  ldc.i4.2
    IL_00a4:  beq.s      IL_00b1

    IL_00a6:  ldstr      "Invalid furniture values string."
    IL_00ab:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00b0:  throw

    IL_00b1:  dup
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldelem.ref
    IL_00b4:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_00b9:  stloc.s    V_5
    IL_00bb:  ldc.i4.1
    IL_00bc:  ldelem.ref
    IL_00bd:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_00c2:  stloc.s    V_6
    IL_00c4:  ldc.i4.0
    IL_00c5:  stloc.s    V_7
    IL_00c7:  br.s       IL_00d8

    IL_00c9:  ldloc.2
    IL_00ca:  ldloc.1
    IL_00cb:  ldloc.s    V_6
    IL_00cd:  stelem.i4
    IL_00ce:  ldloc.s    V_7
    IL_00d0:  ldc.i4.1
    IL_00d1:  add
    IL_00d2:  stloc.s    V_7
    IL_00d4:  ldloc.1
    IL_00d5:  ldc.i4.1
    IL_00d6:  add
    IL_00d7:  stloc.1
    IL_00d8:  ldloc.s    V_7
    IL_00da:  ldloc.s    V_5
    IL_00dc:  blt.s      IL_00c9

    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldc.i4.1
    IL_00e1:  add
    IL_00e2:  stloc.s    V_4
    IL_00e4:  ldloc.s    V_4
    IL_00e6:  ldloc.3
    IL_00e7:  ldlen
    IL_00e8:  conv.i4
    IL_00e9:  blt.s      IL_008c

    IL_00eb:  ldarg.0
    IL_00ec:  ldloc.0
    IL_00ed:  ldloc.2
    IL_00ee:  call       instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_00f3:  ret
  } // end of method FurnitureDesign::Load

  .method public hidebysig instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       261 (0x105)
    .maxstack  3
    .locals init (class [System.Runtime]System.Text.StringBuilder V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_000c:  ldc.i4.0
    IL_000d:  ldelem.i4
    IL_000e:  stloc.1
    IL_000f:  ldc.i4.1
    IL_0010:  stloc.2
    IL_0011:  ldc.i4.1
    IL_0012:  stloc.3
    IL_0013:  br.s       IL_0057

    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_001b:  ldloc.3
    IL_001c:  ldelem.i4
    IL_001d:  ldloc.1
    IL_001e:  beq.s      IL_004f

    IL_0020:  ldloc.0
    IL_0021:  ldloc.2
    IL_0022:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
    IL_0027:  pop
    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.s   42
    IL_002b:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0030:  pop
    IL_0031:  ldloc.0
    IL_0032:  ldloc.1
    IL_0033:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
    IL_0038:  pop
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.s   44
    IL_003c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0041:  pop
    IL_0042:  ldarg.0
    IL_0043:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0048:  ldloc.3
    IL_0049:  ldelem.i4
    IL_004a:  stloc.1
    IL_004b:  ldc.i4.1
    IL_004c:  stloc.2
    IL_004d:  br.s       IL_0053

    IL_004f:  ldloc.2
    IL_0050:  ldc.i4.1
    IL_0051:  add
    IL_0052:  stloc.2
    IL_0053:  ldloc.3
    IL_0054:  ldc.i4.1
    IL_0055:  add
    IL_0056:  stloc.3
    IL_0057:  ldloc.3
    IL_0058:  ldarg.0
    IL_0059:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_005e:  ldlen
    IL_005f:  conv.i4
    IL_0060:  blt.s      IL_0015

    IL_0062:  ldloc.0
    IL_0063:  ldloc.2
    IL_0064:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
    IL_0069:  pop
    IL_006a:  ldloc.0
    IL_006b:  ldc.i4.s   42
    IL_006d:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0072:  pop
    IL_0073:  ldloc.0
    IL_0074:  ldloc.1
    IL_0075:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(int32)
    IL_007a:  pop
    IL_007b:  ldloc.0
    IL_007c:  ldc.i4.s   44
    IL_007e:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0083:  pop
    IL_0084:  ldarg.0
    IL_0085:  call       instance string Game.FurnitureDesign::get_Name()
    IL_008a:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_008f:  brtrue.s   IL_00a2

    IL_0091:  ldarg.1
    IL_0092:  ldstr      "Name"
    IL_0097:  ldarg.0
    IL_0098:  call       instance string Game.FurnitureDesign::get_Name()
    IL_009d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_00a2:  ldarg.1
    IL_00a3:  ldstr      "TerrainUseCount"
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_00ae:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00b3:  ldarg.1
    IL_00b4:  ldstr      "Resolution"
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00bf:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00c4:  ldarg.1
    IL_00c5:  ldstr      "InteractionMode"
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::m_interactionMode
    IL_00d0:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype Game.FurnitureInteractionMode>(string,
                                                                                                                                           !!0)
    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00db:  brfalse.s  IL_00f3

    IL_00dd:  ldarg.1
    IL_00de:  ldstr      "LinkedDesign"
    IL_00e3:  ldarg.0
    IL_00e4:  call       instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00e9:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_00ee:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_00f3:  ldarg.1
    IL_00f4:  ldstr      "Values"
    IL_00f9:  ldloc.0
    IL_00fa:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_00ff:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0104:  ret
  } // end of method FurnitureDesign::Save

  .method public hidebysig instance bool 
          Compare(class Game.FurnitureDesign other) cil managed
  {
    // 代码大小       110 (0x6e)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  bne.un.s   IL_0006

    IL_0004:  ldc.i4.1
    IL_0005:  ret

    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0012:  bne.un.s   IL_006c

    IL_0014:  ldarg.0
    IL_0015:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0020:  bne.un.s   IL_006c

    IL_0022:  ldarg.0
    IL_0023:  call       instance int32 Game.FurnitureDesign::get_Hash()
    IL_0028:  ldarg.1
    IL_0029:  callvirt   instance int32 Game.FurnitureDesign::get_Hash()
    IL_002e:  bne.un.s   IL_006c

    IL_0030:  ldarg.0
    IL_0031:  call       instance string Game.FurnitureDesign::get_Name()
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance string Game.FurnitureDesign::get_Name()
    IL_003c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0041:  brfalse.s  IL_006c

    IL_0043:  ldc.i4.0
    IL_0044:  stloc.0
    IL_0045:  br.s       IL_005f

    IL_0047:  ldarg.0
    IL_0048:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_004d:  ldloc.0
    IL_004e:  ldelem.i4
    IL_004f:  ldarg.1
    IL_0050:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0055:  ldloc.0
    IL_0056:  ldelem.i4
    IL_0057:  beq.s      IL_005b

    IL_0059:  ldc.i4.0
    IL_005a:  ret

    IL_005b:  ldloc.0
    IL_005c:  ldc.i4.1
    IL_005d:  add
    IL_005e:  stloc.0
    IL_005f:  ldloc.0
    IL_0060:  ldarg.0
    IL_0061:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0066:  ldlen
    IL_0067:  conv.i4
    IL_0068:  blt.s      IL_0047

    IL_006a:  ldc.i4.1
    IL_006b:  ret

    IL_006c:  ldc.i4.0
    IL_006d:  ret
  } // end of method FurnitureDesign::Compare

  .method public hidebysig instance bool 
          CompareChain(class Game.FurnitureDesign other) cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  bne.un.s   IL_0006

    IL_0004:  ldc.i4.1
    IL_0005:  ret

    IL_0006:  ldarg.0
    IL_0007:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_000c:  stloc.0
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_001a:  ldloc.1
    IL_001b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0020:  beq.s      IL_0024

    IL_0022:  ldc.i4.0
    IL_0023:  ret

    IL_0024:  ldc.i4.0
    IL_0025:  stloc.2
    IL_0026:  br.s       IL_0043

    IL_0028:  ldloc.0
    IL_0029:  ldloc.2
    IL_002a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_002f:  ldloc.1
    IL_0030:  ldloc.2
    IL_0031:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0036:  callvirt   instance bool Game.FurnitureDesign::Compare(class Game.FurnitureDesign)
    IL_003b:  brtrue.s   IL_003f

    IL_003d:  ldc.i4.0
    IL_003e:  ret

    IL_003f:  ldloc.2
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  stloc.2
    IL_0043:  ldloc.2
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_004a:  blt.s      IL_0028

    IL_004c:  ldc.i4.1
    IL_004d:  ret
  } // end of method FurnitureDesign::CompareChain

  .method public hidebysig instance class Game.FurnitureDesign 
          Clone() cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  newobj     instance void Game.FurnitureDesign::.ctor()
    IL_0005:  dup
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000c:  ldarg.0
    IL_000d:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0012:  callvirt   instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_0017:  dup
    IL_0018:  ldarg.0
    IL_0019:  call       instance string Game.FurnitureDesign::get_Name()
    IL_001e:  callvirt   instance void Game.FurnitureDesign::set_Name(string)
    IL_0023:  dup
    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_002a:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_002f:  dup
    IL_0030:  ldarg.0
    IL_0031:  call       instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0036:  callvirt   instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_003b:  ret
  } // end of method FurnitureDesign::Clone

  .method public hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> 
          CloneChain() cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_000d:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor(int32)
    IL_0012:  stloc.1
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.3
    IL_0015:  br.s       IL_002d

    IL_0017:  ldloc.1
    IL_0018:  ldloc.0
    IL_0019:  ldloc.3
    IL_001a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_001f:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::Clone()
    IL_0024:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
    IL_0029:  ldloc.3
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  stloc.3
    IL_002d:  ldloc.3
    IL_002e:  ldloc.0
    IL_002f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0034:  blt.s      IL_0017

    IL_0036:  ldc.i4.0
    IL_0037:  stloc.s    V_4
    IL_0039:  br.s       IL_0058

    IL_003b:  ldloc.1
    IL_003c:  ldloc.s    V_4
    IL_003e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0043:  ldloc.1
    IL_0044:  ldloc.s    V_4
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_004d:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_0052:  ldloc.s    V_4
    IL_0054:  ldc.i4.1
    IL_0055:  add
    IL_0056:  stloc.s    V_4
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldloc.1
    IL_005b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0060:  ldc.i4.1
    IL_0061:  sub
    IL_0062:  blt.s      IL_003b

    IL_0064:  ldloc.0
    IL_0065:  ldloc.0
    IL_0066:  ldloc.0
    IL_0067:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_006c:  ldc.i4.1
    IL_006d:  sub
    IL_006e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0073:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_0078:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::IndexOf(!0)
    IL_007d:  stloc.2
    IL_007e:  ldloc.2
    IL_007f:  ldc.i4.0
    IL_0080:  blt.s      IL_009c

    IL_0082:  ldloc.1
    IL_0083:  ldloc.1
    IL_0084:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0089:  ldc.i4.1
    IL_008a:  sub
    IL_008b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0090:  ldloc.1
    IL_0091:  ldloc.2
    IL_0092:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0097:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_009c:  ldloc.1
    IL_009d:  ret
  } // end of method FurnitureDesign::CloneChain

  .method public hidebysig instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> 
          ListChain() cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  2
    .locals init (class Game.FurnitureDesign V_0,
             class [System.Collections]System.Collections.Generic.HashSet`1<class Game.FurnitureDesign> V_1,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_2)
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    IL_0002:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<class Game.FurnitureDesign>::.ctor()
    IL_0007:  stloc.1
    IL_0008:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor()
    IL_000d:  stloc.2
    IL_000e:  ldloc.1
    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<class Game.FurnitureDesign>::Add(!0)
    IL_0015:  pop
    IL_0016:  ldloc.2
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  brfalse.s  IL_0030

    IL_0027:  ldloc.1
    IL_0028:  ldloc.0
    IL_0029:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<class Game.FurnitureDesign>::Contains(!0)
    IL_002e:  brfalse.s  IL_000e

    IL_0030:  ldloc.2
    IL_0031:  ret
  } // end of method FurnitureDesign::ListChain

  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> 
          ListChains(class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> designs) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  2
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>> V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_1,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_3,
             class Game.FurnitureDesign V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_0057

    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.0
    IL_0011:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0016:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_001b:  stloc.2
    IL_001c:  ldloc.0
    IL_001d:  ldloc.2
    IL_001e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>>::Add(!0)
    IL_0023:  ldloc.2
    IL_0024:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_0029:  stloc.3
    .try
    {
      IL_002a:  br.s       IL_003e

      IL_002c:  ldloca.s   V_3
      IL_002e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
      IL_0033:  stloc.s    V_4
      IL_0035:  ldloc.1
      IL_0036:  ldloc.s    V_4
      IL_0038:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Remove(!0)
      IL_003d:  pop
      IL_003e:  ldloca.s   V_3
      IL_0040:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
      IL_0045:  brtrue.s   IL_002c

      IL_0047:  leave.s    IL_0057

    }  // end .try
    finally
    {
      IL_0049:  ldloca.s   V_3
      IL_004b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
      IL_0051:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0056:  endfinally
    }  // end handler
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_005d:  ldc.i4.0
    IL_005e:  bgt.s      IL_000f

    IL_0060:  ldloc.0
    IL_0061:  ret
  } // end of method FurnitureDesign::ListChains

  .method private hidebysig instance valuetype [Engine]Engine.Box 
          CalculateBox(valuetype [Engine]Engine.Box 'box') cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  stloc.0
    IL_0006:  ldc.i4     0x7fffffff
    IL_000b:  stloc.1
    IL_000c:  ldc.i4     0x7fffffff
    IL_0011:  stloc.2
    IL_0012:  ldc.i4     0x80000000
    IL_0017:  stloc.3
    IL_0018:  ldc.i4     0x80000000
    IL_001d:  stloc.s    V_4
    IL_001f:  ldc.i4     0x80000000
    IL_0024:  stloc.s    V_5
    IL_0026:  ldarg.1
    IL_0027:  ldfld      int32 [Engine]Engine.Box::Near
    IL_002c:  stloc.s    V_6
    IL_002e:  br         IL_00dc

    IL_0033:  ldarg.1
    IL_0034:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0039:  stloc.s    V_7
    IL_003b:  br         IL_00c8

    IL_0040:  ldarg.1
    IL_0041:  ldfld      int32 [Engine]Engine.Box::Left
    IL_0046:  stloc.s    V_8
    IL_0048:  ldarg.1
    IL_0049:  ldfld      int32 [Engine]Engine.Box::Left
    IL_004e:  ldloc.s    V_7
    IL_0050:  ldloc.s    V_6
    IL_0052:  ldarg.0
    IL_0053:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0058:  mul
    IL_0059:  add
    IL_005a:  ldarg.0
    IL_005b:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0060:  mul
    IL_0061:  add
    IL_0062:  stloc.s    V_9
    IL_0064:  br.s       IL_00b7

    IL_0066:  ldarg.0
    IL_0067:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_006c:  ldloc.s    V_9
    IL_006e:  ldelem.i4
    IL_006f:  brfalse.s  IL_00ab

    IL_0071:  ldloc.0
    IL_0072:  ldloc.s    V_8
    IL_0074:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0079:  stloc.0
    IL_007a:  ldloc.1
    IL_007b:  ldloc.s    V_7
    IL_007d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0082:  stloc.1
    IL_0083:  ldloc.2
    IL_0084:  ldloc.s    V_6
    IL_0086:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_008b:  stloc.2
    IL_008c:  ldloc.3
    IL_008d:  ldloc.s    V_8
    IL_008f:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0094:  stloc.3
    IL_0095:  ldloc.s    V_4
    IL_0097:  ldloc.s    V_7
    IL_0099:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_009e:  stloc.s    V_4
    IL_00a0:  ldloc.s    V_5
    IL_00a2:  ldloc.s    V_6
    IL_00a4:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldloc.s    V_8
    IL_00ad:  ldc.i4.1
    IL_00ae:  add
    IL_00af:  stloc.s    V_8
    IL_00b1:  ldloc.s    V_9
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  stloc.s    V_9
    IL_00b7:  ldloc.s    V_8
    IL_00b9:  ldarga.s   'box'
    IL_00bb:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_00c0:  blt.s      IL_0066

    IL_00c2:  ldloc.s    V_7
    IL_00c4:  ldc.i4.1
    IL_00c5:  add
    IL_00c6:  stloc.s    V_7
    IL_00c8:  ldloc.s    V_7
    IL_00ca:  ldarga.s   'box'
    IL_00cc:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_00d1:  blt        IL_0040

    IL_00d6:  ldloc.s    V_6
    IL_00d8:  ldc.i4.1
    IL_00d9:  add
    IL_00da:  stloc.s    V_6
    IL_00dc:  ldloc.s    V_6
    IL_00de:  ldarga.s   'box'
    IL_00e0:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_00e5:  blt        IL_0033

    IL_00ea:  ldloc.0
    IL_00eb:  ldloc.1
    IL_00ec:  ldloc.2
    IL_00ed:  ldloc.3
    IL_00ee:  ldloc.0
    IL_00ef:  sub
    IL_00f0:  ldc.i4.1
    IL_00f1:  add
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldloc.1
    IL_00f5:  sub
    IL_00f6:  ldc.i4.1
    IL_00f7:  add
    IL_00f8:  ldloc.s    V_5
    IL_00fa:  ldloc.2
    IL_00fb:  sub
    IL_00fc:  ldc.i4.1
    IL_00fd:  add
    IL_00fe:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_0103:  ret
  } // end of method FurnitureDesign::CalculateBox

  .method private hidebysig instance void 
          CalculateShadowStrengthFactor() cil managed
  {
    // 代码大小       259 (0x103)
    .maxstack  6
    .locals init (float32[] V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             int32 V_4,
             int32 V_5,
             float32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_000c:  mul
    IL_000d:  newarr     [System.Runtime]System.Single
    IL_0012:  stloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.1
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.s    V_4
    IL_0018:  br.s       IL_008f

    IL_001a:  ldc.i4.0
    IL_001b:  stloc.s    V_5
    IL_001d:  br.s       IL_007f

    IL_001f:  ldloc.s    V_5
    IL_0021:  ldc.i4.1
    IL_0022:  add
    IL_0023:  conv.r4
    IL_0024:  ldarg.0
    IL_0025:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_002a:  conv.r4
    IL_002b:  div
    IL_002c:  stloc.s    V_6
    IL_002e:  ldc.i4.0
    IL_002f:  stloc.s    V_7
    IL_0031:  br.s       IL_006f

    IL_0033:  ldarg.0
    IL_0034:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0039:  ldloc.1
    IL_003a:  dup
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.1
    IL_003e:  ldelem.i4
    IL_003f:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_0044:  brtrue.s   IL_0069

    IL_0046:  ldloc.0
    IL_0047:  ldloc.s    V_7
    IL_0049:  ldloc.s    V_4
    IL_004b:  ldarg.0
    IL_004c:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0051:  mul
    IL_0052:  add
    IL_0053:  ldloc.0
    IL_0054:  ldloc.s    V_7
    IL_0056:  ldloc.s    V_4
    IL_0058:  ldarg.0
    IL_0059:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_005e:  mul
    IL_005f:  add
    IL_0060:  ldelem.r4
    IL_0061:  ldloc.s    V_6
    IL_0063:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0068:  stelem.r4
    IL_0069:  ldloc.s    V_7
    IL_006b:  ldc.i4.1
    IL_006c:  add
    IL_006d:  stloc.s    V_7
    IL_006f:  ldloc.s    V_7
    IL_0071:  ldarg.0
    IL_0072:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0077:  blt.s      IL_0033

    IL_0079:  ldloc.s    V_5
    IL_007b:  ldc.i4.1
    IL_007c:  add
    IL_007d:  stloc.s    V_5
    IL_007f:  ldloc.s    V_5
    IL_0081:  ldarg.0
    IL_0082:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0087:  blt.s      IL_001f

    IL_0089:  ldloc.s    V_4
    IL_008b:  ldc.i4.1
    IL_008c:  add
    IL_008d:  stloc.s    V_4
    IL_008f:  ldloc.s    V_4
    IL_0091:  ldarg.0
    IL_0092:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0097:  blt.s      IL_001a

    IL_0099:  ldc.r4     0.0
    IL_009e:  stloc.2
    IL_009f:  ldc.i4.0
    IL_00a0:  stloc.s    V_8
    IL_00a2:  br.s       IL_00b1

    IL_00a4:  ldloc.2
    IL_00a5:  ldloc.0
    IL_00a6:  ldloc.s    V_8
    IL_00a8:  ldelem.r4
    IL_00a9:  add
    IL_00aa:  stloc.2
    IL_00ab:  ldloc.s    V_8
    IL_00ad:  ldc.i4.1
    IL_00ae:  add
    IL_00af:  stloc.s    V_8
    IL_00b1:  ldloc.s    V_8
    IL_00b3:  ldarg.0
    IL_00b4:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00b9:  ldarg.0
    IL_00ba:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00bf:  mul
    IL_00c0:  blt.s      IL_00a4

    IL_00c2:  ldloc.2
    IL_00c3:  ldarg.0
    IL_00c4:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00c9:  ldarg.0
    IL_00ca:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00cf:  mul
    IL_00d0:  conv.r4
    IL_00d1:  div
    IL_00d2:  stloc.2
    IL_00d3:  ldc.r4     1.5
    IL_00d8:  stloc.3
    IL_00d9:  ldarg.0
    IL_00da:  ldloc.2
    IL_00db:  ldc.r4     3.
    IL_00e0:  mul
    IL_00e1:  ldloc.3
    IL_00e2:  mul
    IL_00e3:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_00e8:  ldc.r4     0.0
    IL_00ed:  ldc.r4     3.
    IL_00f2:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00f7:  conv.i4
    IL_00f8:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
    IL_00fd:  stfld      valuetype [System.Runtime]System.Nullable`1<int32> Game.FurnitureDesign::m_shadowStrengthFactor
    IL_0102:  ret
  } // end of method FurnitureDesign::CalculateShadowStrengthFactor

  .method private hidebysig instance void 
          CreateGeometry() cil managed
  {
    // 代码大小       2672 (0xa70)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             valuetype [Engine]Engine.Point3 V_4,
             valuetype [Engine]Engine.Point3 V_5,
             valuetype [Engine]Engine.Point3 V_6,
             class Game.BlockMesh V_7,
             class Game.BlockMesh V_8,
             int32 V_9,
             valuetype Game.FurnitureDesign/Cell[] V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             valuetype Game.FurnitureDesign/Cell V_18,
             valuetype Game.FurnitureDesign/Cell V_19,
             int32 V_20,
             int32 V_21,
             int32 V_22,
             int32 V_23,
             int32 V_24,
             valuetype [Engine]Engine.Point2 V_25,
             float32 V_26,
             float32 V_27,
             float32 V_28,
             float32 V_29,
             float32 V_30,
             float32 V_31,
             float32 V_32,
             float32 V_33,
             float32 V_34,
             float32 V_35,
             float32 V_36,
             float32 V_37,
             float32 V_38,
             float32 V_39,
             float32 V_40,
             float32 V_41,
             float32 V_42,
             class Game.BlockMesh V_43,
             int32 V_44,
             class Game.Block V_45,
             int32 V_46,
             bool V_47,
             valuetype [Engine]Engine.Color V_48,
             class Game.IPaintableBlock V_49,
             int32 V_50,
             int32 V_51,
             int32 V_52,
             int32 V_53,
             valuetype [System.Runtime]System.Nullable`1<int32> V_54,
             int32 V_55,
             valuetype Game.BlockMeshVertex V_56)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.FurnitureGeometry::.ctor()
    IL_0006:  stfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.0
    IL_000d:  br         IL_0a68

    IL_0012:  ldloc.0
    IL_0013:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0018:  stloc.1
    IL_0019:  ldloc.0
    IL_001a:  brtrue.s   IL_005f

    IL_001c:  ldloca.s   V_2
    IL_001e:  ldc.i4.0
    IL_001f:  ldc.i4.0
    IL_0020:  ldc.i4.1
    IL_0021:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0026:  ldloca.s   V_3
    IL_0028:  ldc.i4.m1
    IL_0029:  ldc.i4.0
    IL_002a:  ldc.i4.0
    IL_002b:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0030:  ldloca.s   V_4
    IL_0032:  ldc.i4.0
    IL_0033:  ldc.i4.1
    IL_0034:  ldc.i4.0
    IL_0035:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_003a:  ldloca.s   V_6
    IL_003c:  ldarg.0
    IL_003d:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0042:  ldc.i4.0
    IL_0043:  ldc.i4.0
    IL_0044:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0049:  ldloca.s   V_5
    IL_004b:  ldarg.0
    IL_004c:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0051:  ldc.i4.1
    IL_0052:  sub
    IL_0053:  ldc.i4.0
    IL_0054:  ldc.i4.0
    IL_0055:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_005a:  br         IL_01b6

    IL_005f:  ldloc.0
    IL_0060:  ldc.i4.1
    IL_0061:  bne.un.s   IL_009a

    IL_0063:  ldloca.s   V_2
    IL_0065:  ldc.i4.1
    IL_0066:  ldc.i4.0
    IL_0067:  ldc.i4.0
    IL_0068:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_006d:  ldloca.s   V_3
    IL_006f:  ldc.i4.0
    IL_0070:  ldc.i4.0
    IL_0071:  ldc.i4.1
    IL_0072:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0077:  ldloca.s   V_4
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.1
    IL_007b:  ldc.i4.0
    IL_007c:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0081:  ldloca.s   V_6
    IL_0083:  ldc.i4.0
    IL_0084:  ldc.i4.0
    IL_0085:  ldc.i4.0
    IL_0086:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_008b:  ldloca.s   V_5
    IL_008d:  ldc.i4.0
    IL_008e:  ldc.i4.0
    IL_008f:  ldc.i4.0
    IL_0090:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0095:  br         IL_01b6

    IL_009a:  ldloc.0
    IL_009b:  ldc.i4.2
    IL_009c:  bne.un.s   IL_00e1

    IL_009e:  ldloca.s   V_2
    IL_00a0:  ldc.i4.0
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldc.i4.m1
    IL_00a3:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00a8:  ldloca.s   V_3
    IL_00aa:  ldc.i4.1
    IL_00ab:  ldc.i4.0
    IL_00ac:  ldc.i4.0
    IL_00ad:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00b2:  ldloca.s   V_4
    IL_00b4:  ldc.i4.0
    IL_00b5:  ldc.i4.1
    IL_00b6:  ldc.i4.0
    IL_00b7:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00bc:  ldloca.s   V_6
    IL_00be:  ldc.i4.0
    IL_00bf:  ldc.i4.0
    IL_00c0:  ldarg.0
    IL_00c1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00c6:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00cb:  ldloca.s   V_5
    IL_00cd:  ldc.i4.0
    IL_00ce:  ldc.i4.0
    IL_00cf:  ldarg.0
    IL_00d0:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_00d5:  ldc.i4.1
    IL_00d6:  sub
    IL_00d7:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00dc:  br         IL_01b6

    IL_00e1:  ldloc.0
    IL_00e2:  ldc.i4.3
    IL_00e3:  bne.un.s   IL_0134

    IL_00e5:  ldloca.s   V_2
    IL_00e7:  ldc.i4.m1
    IL_00e8:  ldc.i4.0
    IL_00e9:  ldc.i4.0
    IL_00ea:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00ef:  ldloca.s   V_3
    IL_00f1:  ldc.i4.0
    IL_00f2:  ldc.i4.0
    IL_00f3:  ldc.i4.m1
    IL_00f4:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00f9:  ldloca.s   V_4
    IL_00fb:  ldc.i4.0
    IL_00fc:  ldc.i4.1
    IL_00fd:  ldc.i4.0
    IL_00fe:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0103:  ldloca.s   V_6
    IL_0105:  ldarg.0
    IL_0106:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_010b:  ldc.i4.0
    IL_010c:  ldarg.0
    IL_010d:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0112:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0117:  ldloca.s   V_5
    IL_0119:  ldarg.0
    IL_011a:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_011f:  ldc.i4.1
    IL_0120:  sub
    IL_0121:  ldc.i4.0
    IL_0122:  ldarg.0
    IL_0123:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0128:  ldc.i4.1
    IL_0129:  sub
    IL_012a:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_012f:  br         IL_01b6

    IL_0134:  ldloc.0
    IL_0135:  ldc.i4.4
    IL_0136:  bne.un.s   IL_016c

    IL_0138:  ldloca.s   V_2
    IL_013a:  ldc.i4.0
    IL_013b:  ldc.i4.1
    IL_013c:  ldc.i4.0
    IL_013d:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0142:  ldloca.s   V_3
    IL_0144:  ldc.i4.1
    IL_0145:  ldc.i4.0
    IL_0146:  ldc.i4.0
    IL_0147:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_014c:  ldloca.s   V_4
    IL_014e:  ldc.i4.0
    IL_014f:  ldc.i4.0
    IL_0150:  ldc.i4.1
    IL_0151:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0156:  ldloca.s   V_6
    IL_0158:  ldc.i4.0
    IL_0159:  ldc.i4.0
    IL_015a:  ldc.i4.0
    IL_015b:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0160:  ldloca.s   V_5
    IL_0162:  ldc.i4.0
    IL_0163:  ldc.i4.0
    IL_0164:  ldc.i4.0
    IL_0165:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_016a:  br.s       IL_01b6

    IL_016c:  ldloca.s   V_2
    IL_016e:  ldc.i4.0
    IL_016f:  ldc.i4.m1
    IL_0170:  ldc.i4.0
    IL_0171:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0176:  ldloca.s   V_3
    IL_0178:  ldc.i4.1
    IL_0179:  ldc.i4.0
    IL_017a:  ldc.i4.0
    IL_017b:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0180:  ldloca.s   V_4
    IL_0182:  ldc.i4.0
    IL_0183:  ldc.i4.0
    IL_0184:  ldc.i4.m1
    IL_0185:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_018a:  ldloca.s   V_6
    IL_018c:  ldc.i4.0
    IL_018d:  ldarg.0
    IL_018e:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0193:  ldarg.0
    IL_0194:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0199:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_019e:  ldloca.s   V_5
    IL_01a0:  ldc.i4.0
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_01a7:  ldc.i4.1
    IL_01a8:  sub
    IL_01a9:  ldarg.0
    IL_01aa:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_01af:  ldc.i4.1
    IL_01b0:  sub
    IL_01b1:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01b6:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01bb:  stloc.s    V_7
    IL_01bd:  newobj     instance void Game.BlockMesh::.ctor()
    IL_01c2:  stloc.s    V_8
    IL_01c4:  ldc.i4.0
    IL_01c5:  stloc.s    V_9
    IL_01c7:  br         IL_0a0d

    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_01d2:  ldarg.0
    IL_01d3:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_01d8:  mul
    IL_01d9:  newarr     Game.FurnitureDesign/Cell
    IL_01de:  stloc.s    V_10
    IL_01e0:  ldc.i4.0
    IL_01e1:  stloc.s    V_11
    IL_01e3:  br         IL_033e

    IL_01e8:  ldc.i4.0
    IL_01e9:  stloc.s    V_12
    IL_01eb:  br         IL_032b

    IL_01f0:  ldloc.s    V_9
    IL_01f2:  ldloc.2
    IL_01f3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01f8:  mul
    IL_01f9:  ldloc.s    V_11
    IL_01fb:  ldloc.s    V_4
    IL_01fd:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0202:  mul
    IL_0203:  add
    IL_0204:  ldloc.s    V_12
    IL_0206:  ldloc.3
    IL_0207:  ldfld      int32 [Engine]Engine.Point3::X
    IL_020c:  mul
    IL_020d:  add
    IL_020e:  ldloc.s    V_5
    IL_0210:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0215:  add
    IL_0216:  stloc.s    V_13
    IL_0218:  ldloc.s    V_9
    IL_021a:  ldloc.2
    IL_021b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0220:  mul
    IL_0221:  ldloc.s    V_11
    IL_0223:  ldloc.s    V_4
    IL_0225:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_022a:  mul
    IL_022b:  add
    IL_022c:  ldloc.s    V_12
    IL_022e:  ldloc.3
    IL_022f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0234:  mul
    IL_0235:  add
    IL_0236:  ldloc.s    V_5
    IL_0238:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_023d:  add
    IL_023e:  stloc.s    V_14
    IL_0240:  ldloc.s    V_9
    IL_0242:  ldloc.2
    IL_0243:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0248:  mul
    IL_0249:  ldloc.s    V_11
    IL_024b:  ldloc.s    V_4
    IL_024d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0252:  mul
    IL_0253:  add
    IL_0254:  ldloc.s    V_12
    IL_0256:  ldloc.3
    IL_0257:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_025c:  mul
    IL_025d:  add
    IL_025e:  ldloc.s    V_5
    IL_0260:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0265:  add
    IL_0266:  stloc.s    V_15
    IL_0268:  ldloc.s    V_13
    IL_026a:  ldloc.s    V_14
    IL_026c:  ldarg.0
    IL_026d:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0272:  mul
    IL_0273:  add
    IL_0274:  ldloc.s    V_15
    IL_0276:  ldarg.0
    IL_0277:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_027c:  mul
    IL_027d:  ldarg.0
    IL_027e:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0283:  mul
    IL_0284:  add
    IL_0285:  stloc.s    V_16
    IL_0287:  ldarg.0
    IL_0288:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_028d:  ldloc.s    V_16
    IL_028f:  ldelem.i4
    IL_0290:  stloc.s    V_17
    IL_0292:  ldloca.s   V_19
    IL_0294:  initobj    Game.FurnitureDesign/Cell
    IL_029a:  ldloca.s   V_19
    IL_029c:  ldloc.s    V_17
    IL_029e:  stfld      int32 Game.FurnitureDesign/Cell::Value
    IL_02a3:  ldloc.s    V_19
    IL_02a5:  stloc.s    V_18
    IL_02a7:  ldloc.s    V_9
    IL_02a9:  ldc.i4.0
    IL_02aa:  ble.s      IL_0310

    IL_02ac:  ldloc.s    V_17
    IL_02ae:  brfalse.s  IL_0310

    IL_02b0:  ldloc.s    V_13
    IL_02b2:  ldloc.2
    IL_02b3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_02b8:  sub
    IL_02b9:  ldloc.s    V_14
    IL_02bb:  ldloc.2
    IL_02bc:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_02c1:  sub
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_02c8:  mul
    IL_02c9:  add
    IL_02ca:  ldloc.s    V_15
    IL_02cc:  ldloc.2
    IL_02cd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_02d2:  sub
    IL_02d3:  ldarg.0
    IL_02d4:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_02d9:  mul
    IL_02da:  ldarg.0
    IL_02db:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_02e0:  mul
    IL_02e1:  add
    IL_02e2:  stloc.s    V_20
    IL_02e4:  ldarg.0
    IL_02e5:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_02ea:  ldloc.s    V_20
    IL_02ec:  ldelem.i4
    IL_02ed:  stloc.s    V_21
    IL_02ef:  ldloc.s    V_21
    IL_02f1:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_02f6:  brfalse.s  IL_0308

    IL_02f8:  ldloc.s    V_17
    IL_02fa:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_02ff:  ldloc.s    V_21
    IL_0301:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0306:  bne.un.s   IL_0310

    IL_0308:  ldloca.s   V_18
    IL_030a:  ldc.i4.0
    IL_030b:  stfld      int32 Game.FurnitureDesign/Cell::Value
    IL_0310:  ldloc.s    V_10
    IL_0312:  ldloc.s    V_12
    IL_0314:  ldloc.s    V_11
    IL_0316:  ldarg.0
    IL_0317:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_031c:  mul
    IL_031d:  add
    IL_031e:  ldloc.s    V_18
    IL_0320:  stelem     Game.FurnitureDesign/Cell
    IL_0325:  ldloc.s    V_12
    IL_0327:  ldc.i4.1
    IL_0328:  add
    IL_0329:  stloc.s    V_12
    IL_032b:  ldloc.s    V_12
    IL_032d:  ldarg.0
    IL_032e:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0333:  blt        IL_01f0

    IL_0338:  ldloc.s    V_11
    IL_033a:  ldc.i4.1
    IL_033b:  add
    IL_033c:  stloc.s    V_11
    IL_033e:  ldloc.s    V_11
    IL_0340:  ldarg.0
    IL_0341:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0346:  blt        IL_01e8

    IL_034b:  ldc.i4.0
    IL_034c:  stloc.s    V_22
    IL_034e:  br         IL_09fa

    IL_0353:  ldc.i4.0
    IL_0354:  stloc.s    V_23
    IL_0356:  br         IL_09e7

    IL_035b:  ldloc.s    V_10
    IL_035d:  ldloc.s    V_23
    IL_035f:  ldloc.s    V_22
    IL_0361:  ldarg.0
    IL_0362:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0367:  mul
    IL_0368:  add
    IL_0369:  ldelema    Game.FurnitureDesign/Cell
    IL_036e:  ldfld      int32 Game.FurnitureDesign/Cell::Value
    IL_0373:  stloc.s    V_24
    IL_0375:  ldloc.s    V_24
    IL_0377:  brfalse    IL_09e1

    IL_037c:  ldarg.0
    IL_037d:  ldloc.s    V_10
    IL_037f:  ldloc.s    V_23
    IL_0381:  ldloc.s    V_22
    IL_0383:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0388:  ldloc.s    V_24
    IL_038a:  call       instance valuetype [Engine]Engine.Point2 Game.FurnitureDesign::FindLargestSize(valuetype Game.FurnitureDesign/Cell[],
                                                                                                        valuetype [Engine]Engine.Point2,
                                                                                                        int32)
    IL_038f:  stloc.s    V_25
    IL_0391:  ldloc.s    V_25
    IL_0393:  ldsfld     valuetype [Engine]Engine.Point2 [Engine]Engine.Point2::Zero
    IL_0398:  call       bool [Engine]Engine.Point2::op_Equality(valuetype [Engine]Engine.Point2,
                                                                 valuetype [Engine]Engine.Point2)
    IL_039d:  brtrue     IL_09e1

    IL_03a2:  ldarg.0
    IL_03a3:  ldloc.s    V_10
    IL_03a5:  ldloc.s    V_23
    IL_03a7:  ldloc.s    V_22
    IL_03a9:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_03ae:  ldloc.s    V_25
    IL_03b0:  call       instance void Game.FurnitureDesign::MarkUsed(valuetype Game.FurnitureDesign/Cell[],
                                                                      valuetype [Engine]Engine.Point2,
                                                                      valuetype [Engine]Engine.Point2)
    IL_03b5:  ldc.r4     5.0000002e-004
    IL_03ba:  ldarg.0
    IL_03bb:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_03c0:  conv.r4
    IL_03c1:  mul
    IL_03c2:  stloc.s    V_26
    IL_03c4:  ldloc.s    V_23
    IL_03c6:  conv.r4
    IL_03c7:  ldloc.s    V_26
    IL_03c9:  sub
    IL_03ca:  stloc.s    V_27
    IL_03cc:  ldloc.s    V_23
    IL_03ce:  ldloc.s    V_25
    IL_03d0:  ldfld      int32 [Engine]Engine.Point2::X
    IL_03d5:  add
    IL_03d6:  conv.r4
    IL_03d7:  ldloc.s    V_26
    IL_03d9:  add
    IL_03da:  stloc.s    V_28
    IL_03dc:  ldloc.s    V_22
    IL_03de:  conv.r4
    IL_03df:  ldloc.s    V_26
    IL_03e1:  sub
    IL_03e2:  stloc.s    V_29
    IL_03e4:  ldloc.s    V_22
    IL_03e6:  ldloc.s    V_25
    IL_03e8:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_03ed:  add
    IL_03ee:  conv.r4
    IL_03ef:  ldloc.s    V_26
    IL_03f1:  add
    IL_03f2:  stloc.s    V_30
    IL_03f4:  ldloc.s    V_9
    IL_03f6:  ldloc.2
    IL_03f7:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03fc:  mul
    IL_03fd:  conv.r4
    IL_03fe:  ldloc.s    V_29
    IL_0400:  ldloc.s    V_4
    IL_0402:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0407:  conv.r4
    IL_0408:  mul
    IL_0409:  add
    IL_040a:  ldloc.s    V_27
    IL_040c:  ldloc.3
    IL_040d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0412:  conv.r4
    IL_0413:  mul
    IL_0414:  add
    IL_0415:  ldloc.s    V_6
    IL_0417:  ldfld      int32 [Engine]Engine.Point3::X
    IL_041c:  conv.r4
    IL_041d:  add
    IL_041e:  stloc.s    V_31
    IL_0420:  ldloc.s    V_9
    IL_0422:  ldloc.2
    IL_0423:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0428:  mul
    IL_0429:  conv.r4
    IL_042a:  ldloc.s    V_29
    IL_042c:  ldloc.s    V_4
    IL_042e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0433:  conv.r4
    IL_0434:  mul
    IL_0435:  add
    IL_0436:  ldloc.s    V_27
    IL_0438:  ldloc.3
    IL_0439:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_043e:  conv.r4
    IL_043f:  mul
    IL_0440:  add
    IL_0441:  ldloc.s    V_6
    IL_0443:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0448:  conv.r4
    IL_0449:  add
    IL_044a:  stloc.s    V_32
    IL_044c:  ldloc.s    V_9
    IL_044e:  ldloc.2
    IL_044f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0454:  mul
    IL_0455:  conv.r4
    IL_0456:  ldloc.s    V_29
    IL_0458:  ldloc.s    V_4
    IL_045a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_045f:  conv.r4
    IL_0460:  mul
    IL_0461:  add
    IL_0462:  ldloc.s    V_27
    IL_0464:  ldloc.3
    IL_0465:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_046a:  conv.r4
    IL_046b:  mul
    IL_046c:  add
    IL_046d:  ldloc.s    V_6
    IL_046f:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0474:  conv.r4
    IL_0475:  add
    IL_0476:  stloc.s    V_33
    IL_0478:  ldloc.s    V_9
    IL_047a:  ldloc.2
    IL_047b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0480:  mul
    IL_0481:  conv.r4
    IL_0482:  ldloc.s    V_29
    IL_0484:  ldloc.s    V_4
    IL_0486:  ldfld      int32 [Engine]Engine.Point3::X
    IL_048b:  conv.r4
    IL_048c:  mul
    IL_048d:  add
    IL_048e:  ldloc.s    V_28
    IL_0490:  ldloc.3
    IL_0491:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0496:  conv.r4
    IL_0497:  mul
    IL_0498:  add
    IL_0499:  ldloc.s    V_6
    IL_049b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_04a0:  conv.r4
    IL_04a1:  add
    IL_04a2:  stloc.s    V_34
    IL_04a4:  ldloc.s    V_9
    IL_04a6:  ldloc.2
    IL_04a7:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_04ac:  mul
    IL_04ad:  conv.r4
    IL_04ae:  ldloc.s    V_29
    IL_04b0:  ldloc.s    V_4
    IL_04b2:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_04b7:  conv.r4
    IL_04b8:  mul
    IL_04b9:  add
    IL_04ba:  ldloc.s    V_28
    IL_04bc:  ldloc.3
    IL_04bd:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_04c2:  conv.r4
    IL_04c3:  mul
    IL_04c4:  add
    IL_04c5:  ldloc.s    V_6
    IL_04c7:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_04cc:  conv.r4
    IL_04cd:  add
    IL_04ce:  stloc.s    V_35
    IL_04d0:  ldloc.s    V_9
    IL_04d2:  ldloc.2
    IL_04d3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04d8:  mul
    IL_04d9:  conv.r4
    IL_04da:  ldloc.s    V_29
    IL_04dc:  ldloc.s    V_4
    IL_04de:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04e3:  conv.r4
    IL_04e4:  mul
    IL_04e5:  add
    IL_04e6:  ldloc.s    V_28
    IL_04e8:  ldloc.3
    IL_04e9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04ee:  conv.r4
    IL_04ef:  mul
    IL_04f0:  add
    IL_04f1:  ldloc.s    V_6
    IL_04f3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_04f8:  conv.r4
    IL_04f9:  add
    IL_04fa:  stloc.s    V_36
    IL_04fc:  ldloc.s    V_9
    IL_04fe:  ldloc.2
    IL_04ff:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0504:  mul
    IL_0505:  conv.r4
    IL_0506:  ldloc.s    V_30
    IL_0508:  ldloc.s    V_4
    IL_050a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_050f:  conv.r4
    IL_0510:  mul
    IL_0511:  add
    IL_0512:  ldloc.s    V_28
    IL_0514:  ldloc.3
    IL_0515:  ldfld      int32 [Engine]Engine.Point3::X
    IL_051a:  conv.r4
    IL_051b:  mul
    IL_051c:  add
    IL_051d:  ldloc.s    V_6
    IL_051f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0524:  conv.r4
    IL_0525:  add
    IL_0526:  stloc.s    V_37
    IL_0528:  ldloc.s    V_9
    IL_052a:  ldloc.2
    IL_052b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0530:  mul
    IL_0531:  conv.r4
    IL_0532:  ldloc.s    V_30
    IL_0534:  ldloc.s    V_4
    IL_0536:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_053b:  conv.r4
    IL_053c:  mul
    IL_053d:  add
    IL_053e:  ldloc.s    V_28
    IL_0540:  ldloc.3
    IL_0541:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0546:  conv.r4
    IL_0547:  mul
    IL_0548:  add
    IL_0549:  ldloc.s    V_6
    IL_054b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0550:  conv.r4
    IL_0551:  add
    IL_0552:  stloc.s    V_38
    IL_0554:  ldloc.s    V_9
    IL_0556:  ldloc.2
    IL_0557:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_055c:  mul
    IL_055d:  conv.r4
    IL_055e:  ldloc.s    V_30
    IL_0560:  ldloc.s    V_4
    IL_0562:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0567:  conv.r4
    IL_0568:  mul
    IL_0569:  add
    IL_056a:  ldloc.s    V_28
    IL_056c:  ldloc.3
    IL_056d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0572:  conv.r4
    IL_0573:  mul
    IL_0574:  add
    IL_0575:  ldloc.s    V_6
    IL_0577:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_057c:  conv.r4
    IL_057d:  add
    IL_057e:  stloc.s    V_39
    IL_0580:  ldloc.s    V_9
    IL_0582:  ldloc.2
    IL_0583:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0588:  mul
    IL_0589:  conv.r4
    IL_058a:  ldloc.s    V_30
    IL_058c:  ldloc.s    V_4
    IL_058e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0593:  conv.r4
    IL_0594:  mul
    IL_0595:  add
    IL_0596:  ldloc.s    V_27
    IL_0598:  ldloc.3
    IL_0599:  ldfld      int32 [Engine]Engine.Point3::X
    IL_059e:  conv.r4
    IL_059f:  mul
    IL_05a0:  add
    IL_05a1:  ldloc.s    V_6
    IL_05a3:  ldfld      int32 [Engine]Engine.Point3::X
    IL_05a8:  conv.r4
    IL_05a9:  add
    IL_05aa:  stloc.s    V_40
    IL_05ac:  ldloc.s    V_9
    IL_05ae:  ldloc.2
    IL_05af:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_05b4:  mul
    IL_05b5:  conv.r4
    IL_05b6:  ldloc.s    V_30
    IL_05b8:  ldloc.s    V_4
    IL_05ba:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_05bf:  conv.r4
    IL_05c0:  mul
    IL_05c1:  add
    IL_05c2:  ldloc.s    V_27
    IL_05c4:  ldloc.3
    IL_05c5:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_05ca:  conv.r4
    IL_05cb:  mul
    IL_05cc:  add
    IL_05cd:  ldloc.s    V_6
    IL_05cf:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_05d4:  conv.r4
    IL_05d5:  add
    IL_05d6:  stloc.s    V_41
    IL_05d8:  ldloc.s    V_9
    IL_05da:  ldloc.2
    IL_05db:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_05e0:  mul
    IL_05e1:  conv.r4
    IL_05e2:  ldloc.s    V_30
    IL_05e4:  ldloc.s    V_4
    IL_05e6:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_05eb:  conv.r4
    IL_05ec:  mul
    IL_05ed:  add
    IL_05ee:  ldloc.s    V_27
    IL_05f0:  ldloc.3
    IL_05f1:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_05f6:  conv.r4
    IL_05f7:  mul
    IL_05f8:  add
    IL_05f9:  ldloc.s    V_6
    IL_05fb:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0600:  conv.r4
    IL_0601:  add
    IL_0602:  stloc.s    V_42
    IL_0604:  ldloc.s    V_7
    IL_0606:  stloc.s    V_43
    IL_0608:  ldloc.s    V_24
    IL_060a:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_060f:  stloc.s    V_44
    IL_0611:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0616:  ldloc.s    V_44
    IL_0618:  ldelem.ref
    IL_0619:  stloc.s    V_45
    IL_061b:  ldloc.s    V_45
    IL_061d:  ldloc.0
    IL_061e:  ldloc.s    V_24
    IL_0620:  callvirt   instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0625:  stloc.s    V_46
    IL_0627:  ldc.i4.0
    IL_0628:  stloc.s    V_47
    IL_062a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_062f:  stloc.s    V_48
    IL_0631:  ldloc.s    V_45
    IL_0633:  isinst     Game.IPaintableBlock
    IL_0638:  stloc.s    V_49
    IL_063a:  ldloc.s    V_49
    IL_063c:  brfalse.s  IL_066a

    IL_063e:  ldloc.s    V_49
    IL_0640:  ldloc.s    V_24
    IL_0642:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.IPaintableBlock::GetPaintColor(int32)
    IL_0647:  stloc.s    V_54
    IL_0649:  ldloca.s   V_54
    IL_064b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0650:  brfalse    IL_06db

    IL_0655:  ldsfld     valuetype [Engine]Engine.Color[] Game.PaintBucketBlock::PaintColors
    IL_065a:  ldloca.s   V_54
    IL_065c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0661:  ldelem     [Engine]Engine.Color
    IL_0666:  stloc.s    V_48
    IL_0668:  br.s       IL_06db

    IL_066a:  ldloc.s    V_45
    IL_066c:  isinst     Game.WaterBlock
    IL_0671:  brfalse.s  IL_068c

    IL_0673:  ldsfld     class Game.BlockColorsMap Game.BlockColorsMap::WaterColorsMap
    IL_0678:  ldc.i4.s   12
    IL_067a:  ldc.i4.s   12
    IL_067c:  callvirt   instance valuetype [Engine]Engine.Color Game.BlockColorsMap::Lookup(int32,
                                                                                             int32)
    IL_0681:  stloc.s    V_48
    IL_0683:  ldc.i4     0xbd
    IL_0688:  stloc.s    V_46
    IL_068a:  br.s       IL_06db

    IL_068c:  ldloc.s    V_45
    IL_068e:  isinst     Game.CarpetBlock
    IL_0693:  brfalse.s  IL_06b3

    IL_0695:  ldloc.s    V_24
    IL_0697:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_069c:  call       int32 Game.CarpetBlock::GetColor(int32)
    IL_06a1:  stloc.s    V_55
    IL_06a3:  ldsfld     valuetype [Engine]Engine.Color[] Game.CarpetBlock::CartpetColors
    IL_06a8:  ldloc.s    V_55
    IL_06aa:  ldelem     [Engine]Engine.Color
    IL_06af:  stloc.s    V_48
    IL_06b1:  br.s       IL_06db

    IL_06b3:  ldloc.s    V_45
    IL_06b5:  isinst     Game.TorchBlock
    IL_06ba:  brtrue.s   IL_06c5

    IL_06bc:  ldloc.s    V_45
    IL_06be:  isinst     Game.WickerLampBlock
    IL_06c3:  brfalse.s  IL_06ce

    IL_06c5:  ldc.i4.1
    IL_06c6:  stloc.s    V_47
    IL_06c8:  ldc.i4.s   31
    IL_06ca:  stloc.s    V_46
    IL_06cc:  br.s       IL_06db

    IL_06ce:  ldloc.s    V_45
    IL_06d0:  isinst     Game.GlassBlock
    IL_06d5:  brfalse.s  IL_06db

    IL_06d7:  ldloc.s    V_8
    IL_06d9:  stloc.s    V_43
    IL_06db:  ldloc.s    V_46
    IL_06dd:  ldc.i4.s   16
    IL_06df:  rem
    IL_06e0:  stloc.s    V_50
    IL_06e2:  ldloc.s    V_46
    IL_06e4:  ldc.i4.s   16
    IL_06e6:  div
    IL_06e7:  stloc.s    V_51
    IL_06e9:  ldloc.s    V_43
    IL_06eb:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_06f0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_06f5:  stloc.s    V_52
    IL_06f7:  ldloc.s    V_43
    IL_06f9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_06fe:  dup
    IL_06ff:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Count()
    IL_0704:  ldc.i4.4
    IL_0705:  add
    IL_0706:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::set_Count(int32)
    IL_070b:  ldloc.s    V_43
    IL_070d:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex> Game.BlockMesh::Vertices
    IL_0712:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.BlockMeshVertex>::get_Array()
    IL_0717:  dup
    IL_0718:  ldloc.s    V_52
    IL_071a:  ldloca.s   V_56
    IL_071c:  initobj    Game.BlockMeshVertex
    IL_0722:  ldloca.s   V_56
    IL_0724:  ldloc.s    V_31
    IL_0726:  ldloc.s    V_32
    IL_0728:  ldloc.s    V_33
    IL_072a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_072f:  ldarg.0
    IL_0730:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0735:  conv.r4
    IL_0736:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_073b:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_0740:  ldloca.s   V_56
    IL_0742:  ldloc.s    V_48
    IL_0744:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0749:  ldloca.s   V_56
    IL_074b:  ldloc.1
    IL_074c:  conv.u1
    IL_074d:  stfld      uint8 Game.BlockMeshVertex::Face
    IL_0752:  ldloca.s   V_56
    IL_0754:  ldloc.s    V_23
    IL_0756:  conv.r4
    IL_0757:  ldc.r4     9.9999998e-003
    IL_075c:  add
    IL_075d:  ldloc.s    V_22
    IL_075f:  conv.r4
    IL_0760:  ldc.r4     9.9999998e-003
    IL_0765:  add
    IL_0766:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_076b:  ldarg.0
    IL_076c:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0771:  conv.r4
    IL_0772:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0777:  ldloc.s    V_50
    IL_0779:  conv.r4
    IL_077a:  ldloc.s    V_51
    IL_077c:  conv.r4
    IL_077d:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0782:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0787:  ldc.r4     16.
    IL_078c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0791:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0796:  ldloca.s   V_56
    IL_0798:  ldloc.s    V_47
    IL_079a:  stfld      bool Game.BlockMeshVertex::IsEmissive
    IL_079f:  ldloc.s    V_56
    IL_07a1:  stelem     Game.BlockMeshVertex
    IL_07a6:  dup
    IL_07a7:  ldloc.s    V_52
    IL_07a9:  ldc.i4.1
    IL_07aa:  add
    IL_07ab:  ldloca.s   V_56
    IL_07ad:  initobj    Game.BlockMeshVertex
    IL_07b3:  ldloca.s   V_56
    IL_07b5:  ldloc.s    V_34
    IL_07b7:  ldloc.s    V_35
    IL_07b9:  ldloc.s    V_36
    IL_07bb:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_07c0:  ldarg.0
    IL_07c1:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_07c6:  conv.r4
    IL_07c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_07cc:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_07d1:  ldloca.s   V_56
    IL_07d3:  ldloc.s    V_48
    IL_07d5:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_07da:  ldloca.s   V_56
    IL_07dc:  ldloc.1
    IL_07dd:  conv.u1
    IL_07de:  stfld      uint8 Game.BlockMeshVertex::Face
    IL_07e3:  ldloca.s   V_56
    IL_07e5:  ldloc.s    V_23
    IL_07e7:  ldloc.s    V_25
    IL_07e9:  ldfld      int32 [Engine]Engine.Point2::X
    IL_07ee:  add
    IL_07ef:  conv.r4
    IL_07f0:  ldc.r4     9.9999998e-003
    IL_07f5:  sub
    IL_07f6:  ldloc.s    V_22
    IL_07f8:  conv.r4
    IL_07f9:  ldc.r4     9.9999998e-003
    IL_07fe:  add
    IL_07ff:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0804:  ldarg.0
    IL_0805:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_080a:  conv.r4
    IL_080b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0810:  ldloc.s    V_50
    IL_0812:  conv.r4
    IL_0813:  ldloc.s    V_51
    IL_0815:  conv.r4
    IL_0816:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_081b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0820:  ldc.r4     16.
    IL_0825:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_082a:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_082f:  ldloca.s   V_56
    IL_0831:  ldloc.s    V_47
    IL_0833:  stfld      bool Game.BlockMeshVertex::IsEmissive
    IL_0838:  ldloc.s    V_56
    IL_083a:  stelem     Game.BlockMeshVertex
    IL_083f:  dup
    IL_0840:  ldloc.s    V_52
    IL_0842:  ldc.i4.2
    IL_0843:  add
    IL_0844:  ldloca.s   V_56
    IL_0846:  initobj    Game.BlockMeshVertex
    IL_084c:  ldloca.s   V_56
    IL_084e:  ldloc.s    V_37
    IL_0850:  ldloc.s    V_38
    IL_0852:  ldloc.s    V_39
    IL_0854:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0859:  ldarg.0
    IL_085a:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_085f:  conv.r4
    IL_0860:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0865:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_086a:  ldloca.s   V_56
    IL_086c:  ldloc.s    V_48
    IL_086e:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0873:  ldloca.s   V_56
    IL_0875:  ldloc.1
    IL_0876:  conv.u1
    IL_0877:  stfld      uint8 Game.BlockMeshVertex::Face
    IL_087c:  ldloca.s   V_56
    IL_087e:  ldloc.s    V_23
    IL_0880:  ldloc.s    V_25
    IL_0882:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0887:  add
    IL_0888:  conv.r4
    IL_0889:  ldc.r4     9.9999998e-003
    IL_088e:  sub
    IL_088f:  ldloc.s    V_22
    IL_0891:  ldloc.s    V_25
    IL_0893:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0898:  add
    IL_0899:  conv.r4
    IL_089a:  ldc.r4     9.9999998e-003
    IL_089f:  sub
    IL_08a0:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08a5:  ldarg.0
    IL_08a6:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_08ab:  conv.r4
    IL_08ac:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_08b1:  ldloc.s    V_50
    IL_08b3:  conv.r4
    IL_08b4:  ldloc.s    V_51
    IL_08b6:  conv.r4
    IL_08b7:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_08bc:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_08c1:  ldc.r4     16.
    IL_08c6:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_08cb:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_08d0:  ldloca.s   V_56
    IL_08d2:  ldloc.s    V_47
    IL_08d4:  stfld      bool Game.BlockMeshVertex::IsEmissive
    IL_08d9:  ldloc.s    V_56
    IL_08db:  stelem     Game.BlockMeshVertex
    IL_08e0:  ldloc.s    V_52
    IL_08e2:  ldc.i4.3
    IL_08e3:  add
    IL_08e4:  ldloca.s   V_56
    IL_08e6:  initobj    Game.BlockMeshVertex
    IL_08ec:  ldloca.s   V_56
    IL_08ee:  ldloc.s    V_40
    IL_08f0:  ldloc.s    V_41
    IL_08f2:  ldloc.s    V_42
    IL_08f4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_08f9:  ldarg.0
    IL_08fa:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_08ff:  conv.r4
    IL_0900:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0905:  stfld      valuetype [Engine]Engine.Vector3 Game.BlockMeshVertex::Position
    IL_090a:  ldloca.s   V_56
    IL_090c:  ldloc.s    V_48
    IL_090e:  stfld      valuetype [Engine]Engine.Color Game.BlockMeshVertex::Color
    IL_0913:  ldloca.s   V_56
    IL_0915:  ldloc.1
    IL_0916:  conv.u1
    IL_0917:  stfld      uint8 Game.BlockMeshVertex::Face
    IL_091c:  ldloca.s   V_56
    IL_091e:  ldloc.s    V_23
    IL_0920:  conv.r4
    IL_0921:  ldc.r4     9.9999998e-003
    IL_0926:  add
    IL_0927:  ldloc.s    V_22
    IL_0929:  ldloc.s    V_25
    IL_092b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0930:  add
    IL_0931:  conv.r4
    IL_0932:  ldc.r4     9.9999998e-003
    IL_0937:  sub
    IL_0938:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_093d:  ldarg.0
    IL_093e:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0943:  conv.r4
    IL_0944:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0949:  ldloc.s    V_50
    IL_094b:  conv.r4
    IL_094c:  ldloc.s    V_51
    IL_094e:  conv.r4
    IL_094f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0954:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0959:  ldc.r4     16.
    IL_095e:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Division(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0963:  stfld      valuetype [Engine]Engine.Vector2 Game.BlockMeshVertex::TextureCoordinates
    IL_0968:  ldloca.s   V_56
    IL_096a:  ldloc.s    V_47
    IL_096c:  stfld      bool Game.BlockMeshVertex::IsEmissive
    IL_0971:  ldloc.s    V_56
    IL_0973:  stelem     Game.BlockMeshVertex
    IL_0978:  ldloc.s    V_43
    IL_097a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_097f:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0984:  stloc.s    V_53
    IL_0986:  ldloc.s    V_43
    IL_0988:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_098d:  dup
    IL_098e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0993:  ldc.i4.6
    IL_0994:  add
    IL_0995:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_099a:  ldloc.s    V_43
    IL_099c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_09a1:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_09a6:  dup
    IL_09a7:  ldloc.s    V_53
    IL_09a9:  ldloc.s    V_52
    IL_09ab:  conv.u2
    IL_09ac:  stelem.i2
    IL_09ad:  dup
    IL_09ae:  ldloc.s    V_53
    IL_09b0:  ldc.i4.1
    IL_09b1:  add
    IL_09b2:  ldloc.s    V_52
    IL_09b4:  ldc.i4.2
    IL_09b5:  add
    IL_09b6:  conv.u2
    IL_09b7:  stelem.i2
    IL_09b8:  dup
    IL_09b9:  ldloc.s    V_53
    IL_09bb:  ldc.i4.2
    IL_09bc:  add
    IL_09bd:  ldloc.s    V_52
    IL_09bf:  ldc.i4.1
    IL_09c0:  add
    IL_09c1:  conv.u2
    IL_09c2:  stelem.i2
    IL_09c3:  dup
    IL_09c4:  ldloc.s    V_53
    IL_09c6:  ldc.i4.3
    IL_09c7:  add
    IL_09c8:  ldloc.s    V_52
    IL_09ca:  ldc.i4.2
    IL_09cb:  add
    IL_09cc:  conv.u2
    IL_09cd:  stelem.i2
    IL_09ce:  dup
    IL_09cf:  ldloc.s    V_53
    IL_09d1:  ldc.i4.4
    IL_09d2:  add
    IL_09d3:  ldloc.s    V_52
    IL_09d5:  conv.u2
    IL_09d6:  stelem.i2
    IL_09d7:  ldloc.s    V_53
    IL_09d9:  ldc.i4.5
    IL_09da:  add
    IL_09db:  ldloc.s    V_52
    IL_09dd:  ldc.i4.3
    IL_09de:  add
    IL_09df:  conv.u2
    IL_09e0:  stelem.i2
    IL_09e1:  ldloc.s    V_23
    IL_09e3:  ldc.i4.1
    IL_09e4:  add
    IL_09e5:  stloc.s    V_23
    IL_09e7:  ldloc.s    V_23
    IL_09e9:  ldarg.0
    IL_09ea:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_09ef:  blt        IL_035b

    IL_09f4:  ldloc.s    V_22
    IL_09f6:  ldc.i4.1
    IL_09f7:  add
    IL_09f8:  stloc.s    V_22
    IL_09fa:  ldloc.s    V_22
    IL_09fc:  ldarg.0
    IL_09fd:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0a02:  blt        IL_0353

    IL_0a07:  ldloc.s    V_9
    IL_0a09:  ldc.i4.1
    IL_0a0a:  add
    IL_0a0b:  stloc.s    V_9
    IL_0a0d:  ldloc.s    V_9
    IL_0a0f:  ldarg.0
    IL_0a10:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_0a15:  blt        IL_01cc

    IL_0a1a:  ldloc.s    V_7
    IL_0a1c:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0a21:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0a26:  ldc.i4.0
    IL_0a27:  ble.s      IL_0a3f

    IL_0a29:  ldloc.s    V_7
    IL_0a2b:  callvirt   instance void Game.BlockMesh::Trim()
    IL_0a30:  ldarg.0
    IL_0a31:  ldfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_0a36:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetOpaqueByFace
    IL_0a3b:  ldloc.0
    IL_0a3c:  ldloc.s    V_7
    IL_0a3e:  stelem.ref
    IL_0a3f:  ldloc.s    V_8
    IL_0a41:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.BlockMesh::Indices
    IL_0a46:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0a4b:  ldc.i4.0
    IL_0a4c:  ble.s      IL_0a64

    IL_0a4e:  ldloc.s    V_8
    IL_0a50:  callvirt   instance void Game.BlockMesh::Trim()
    IL_0a55:  ldarg.0
    IL_0a56:  ldfld      class Game.FurnitureGeometry Game.FurnitureDesign::m_geometry
    IL_0a5b:  ldfld      class Game.BlockMesh[] Game.FurnitureGeometry::SubsetAlphaTestByFace
    IL_0a60:  ldloc.0
    IL_0a61:  ldloc.s    V_8
    IL_0a63:  stelem.ref
    IL_0a64:  ldloc.0
    IL_0a65:  ldc.i4.1
    IL_0a66:  add
    IL_0a67:  stloc.0
    IL_0a68:  ldloc.0
    IL_0a69:  ldc.i4.6
    IL_0a6a:  blt        IL_0012

    IL_0a6f:  ret
  } // end of method FurnitureDesign::CreateGeometry

  .method private hidebysig instance void 
          CreateCollisionAndInteractionBoxes() cil managed
  {
    // 代码大小       1166 (0x48e)
    .maxstack  4
    .locals init (valuetype Game.FurnitureDesign/Subdivision V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox> V_1,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox> V_2,
             bool V_3,
             float32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Box V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             int32 V_9,
             valuetype [Engine]Engine.Matrix V_10,
             int32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             valuetype [Engine]Engine.BoundingBox V_14,
             int32 V_15,
             int32 V_16,
             valuetype [Engine]Engine.BoundingBox V_17,
             valuetype [Engine]Engine.BoundingBox V_18,
             valuetype [Engine]Engine.BoundingBox V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             int32 V_21,
             valuetype [Engine]Engine.Vector3 V_22,
             valuetype [Engine]Engine.BoundingBox V_23,
             int32 V_24,
             valuetype [Engine]Engine.BoundingBox V_25,
             int32 V_26,
             valuetype [Engine]Engine.Matrix V_27,
             int32 V_28,
             valuetype [Engine]Engine.Vector3 V_29,
             valuetype [Engine]Engine.Vector3 V_30,
             valuetype [Engine]Engine.BoundingBox V_31)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0007:  ldc.i4.0
    IL_0008:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0014:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_0019:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::.ctor(int32)
    IL_001e:  stloc.1
    IL_001f:  ldc.i4.0
    IL_0020:  stloc.s    V_5
    IL_0022:  br.s       IL_009e

    IL_0024:  ldloc.0
    IL_0025:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_002a:  ldloc.s    V_5
    IL_002c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Item(int32)
    IL_0031:  stloc.s    V_6
    IL_0033:  ldloc.s    V_6
    IL_0035:  ldfld      int32 [Engine]Engine.Box::Left
    IL_003a:  conv.r4
    IL_003b:  ldloc.s    V_6
    IL_003d:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0042:  conv.r4
    IL_0043:  ldloc.s    V_6
    IL_0045:  ldfld      int32 [Engine]Engine.Box::Near
    IL_004a:  conv.r4
    IL_004b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0050:  ldarg.0
    IL_0051:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0056:  conv.r4
    IL_0057:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_005c:  stloc.s    V_7
    IL_005e:  ldloca.s   V_6
    IL_0060:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_0065:  conv.r4
    IL_0066:  ldloca.s   V_6
    IL_0068:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_006d:  conv.r4
    IL_006e:  ldloca.s   V_6
    IL_0070:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_0075:  conv.r4
    IL_0076:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007b:  ldarg.0
    IL_007c:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0081:  conv.r4
    IL_0082:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0087:  stloc.s    V_8
    IL_0089:  ldloc.1
    IL_008a:  ldloc.s    V_7
    IL_008c:  ldloc.s    V_8
    IL_008e:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0093:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_0098:  ldloc.s    V_5
    IL_009a:  ldc.i4.1
    IL_009b:  add
    IL_009c:  stloc.s    V_5
    IL_009e:  ldloc.s    V_5
    IL_00a0:  ldloc.0
    IL_00a1:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_00a6:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_00ab:  blt        IL_0024

    IL_00b0:  ldarg.0
    IL_00b1:  ldc.i4.4
    IL_00b2:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_00b7:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_00bc:  ldc.i4.0
    IL_00bd:  stloc.s    V_9
    IL_00bf:  br         IL_0192

    IL_00c4:  ldc.r4     -0.5
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  ldc.r4     -0.5
    IL_00d3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_00d8:  ldloc.s    V_9
    IL_00da:  conv.r4
    IL_00db:  ldc.r4     3.1415927
    IL_00e0:  mul
    IL_00e1:  ldc.r4     2.
    IL_00e6:  div
    IL_00e7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_00ec:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00f1:  ldc.r4     0.5
    IL_00f6:  ldc.r4     0.0
    IL_00fb:  ldc.r4     0.5
    IL_0100:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_0105:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_010a:  stloc.s    V_10
    IL_010c:  ldarg.0
    IL_010d:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_0112:  ldloc.s    V_9
    IL_0114:  ldloc.1
    IL_0115:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_011a:  newarr     [Engine]Engine.BoundingBox
    IL_011f:  stelem.ref
    IL_0120:  ldc.i4.0
    IL_0121:  stloc.s    V_11
    IL_0123:  br.s       IL_0182

    IL_0125:  ldloc.1
    IL_0126:  ldloc.s    V_11
    IL_0128:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_012d:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0132:  ldloc.s    V_10
    IL_0134:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0139:  stloc.s    V_12
    IL_013b:  ldloc.1
    IL_013c:  ldloc.s    V_11
    IL_013e:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0143:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_0148:  ldloc.s    V_10
    IL_014a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_014f:  stloc.s    V_13
    IL_0151:  ldloca.s   V_14
    IL_0153:  ldloc.s    V_12
    IL_0155:  ldloc.s    V_13
    IL_0157:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Min(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_015c:  ldloc.s    V_12
    IL_015e:  ldloc.s    V_13
    IL_0160:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_0165:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_016a:  ldarg.0
    IL_016b:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_collisionBoxesByRotation
    IL_0170:  ldloc.s    V_9
    IL_0172:  ldelem.ref
    IL_0173:  ldloc.s    V_11
    IL_0175:  ldloc.s    V_14
    IL_0177:  stelem     [Engine]Engine.BoundingBox
    IL_017c:  ldloc.s    V_11
    IL_017e:  ldc.i4.1
    IL_017f:  add
    IL_0180:  stloc.s    V_11
    IL_0182:  ldloc.s    V_11
    IL_0184:  ldloc.1
    IL_0185:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_018a:  blt.s      IL_0125

    IL_018c:  ldloc.s    V_9
    IL_018e:  ldc.i4.1
    IL_018f:  add
    IL_0190:  stloc.s    V_9
    IL_0192:  ldloc.s    V_9
    IL_0194:  ldc.i4.4
    IL_0195:  blt        IL_00c4

    IL_019a:  ldloc.1
    IL_019b:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_01a0:  stloc.2
    IL_01a1:  ldc.i4.0
    IL_01a2:  stloc.s    V_15
    IL_01a4:  br         IL_025d

    IL_01a9:  ldc.i4.0
    IL_01aa:  stloc.s    V_16
    IL_01ac:  br         IL_024a

    IL_01b1:  ldloc.s    V_15
    IL_01b3:  ldloc.s    V_16
    IL_01b5:  beq        IL_0244

    IL_01ba:  ldloc.2
    IL_01bb:  ldloc.s    V_15
    IL_01bd:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_01c2:  stloc.s    V_17
    IL_01c4:  ldloc.2
    IL_01c5:  ldloc.s    V_16
    IL_01c7:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_01cc:  stloc.s    V_18
    IL_01ce:  ldloc.s    V_17
    IL_01d0:  ldloc.s    V_18
    IL_01d2:  call       valuetype [Engine]Engine.BoundingBox [Engine]Engine.BoundingBox::Union(valuetype [Engine]Engine.BoundingBox,
                                                                                                valuetype [Engine]Engine.BoundingBox)
    IL_01d7:  stloc.s    V_19
    IL_01d9:  ldloca.s   V_19
    IL_01db:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_01e0:  stloc.s    V_20
    IL_01e2:  ldloca.s   V_19
    IL_01e4:  call       instance float32 [Engine]Engine.BoundingBox::Volume()
    IL_01e9:  ldloca.s   V_17
    IL_01eb:  call       instance float32 [Engine]Engine.BoundingBox::Volume()
    IL_01f0:  sub
    IL_01f1:  ldloca.s   V_18
    IL_01f3:  call       instance float32 [Engine]Engine.BoundingBox::Volume()
    IL_01f8:  sub
    IL_01f9:  ldloc.s    V_20
    IL_01fb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0200:  ldloc.s    V_20
    IL_0202:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0207:  ldloc.s    V_20
    IL_0209:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_020e:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32)
    IL_0213:  div
    IL_0214:  ldc.r4     0.40000001
    IL_0219:  bge.un.s   IL_0244

    IL_021b:  ldloc.2
    IL_021c:  ldloc.s    V_15
    IL_021e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::RemoveAt(int32)
    IL_0223:  ldloc.2
    IL_0224:  ldloc.s    V_15
    IL_0226:  ldloc.s    V_16
    IL_0228:  blt.s      IL_022e

    IL_022a:  ldloc.s    V_16
    IL_022c:  br.s       IL_0232

    IL_022e:  ldloc.s    V_16
    IL_0230:  ldc.i4.1
    IL_0231:  sub
    IL_0232:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::RemoveAt(int32)
    IL_0237:  ldloc.2
    IL_0238:  ldloc.s    V_19
    IL_023a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_023f:  br         IL_01a1

    IL_0244:  ldloc.s    V_16
    IL_0246:  ldc.i4.1
    IL_0247:  add
    IL_0248:  stloc.s    V_16
    IL_024a:  ldloc.s    V_16
    IL_024c:  ldloc.2
    IL_024d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_0252:  blt        IL_01b1

    IL_0257:  ldloc.s    V_15
    IL_0259:  ldc.i4.1
    IL_025a:  add
    IL_025b:  stloc.s    V_15
    IL_025d:  ldloc.s    V_15
    IL_025f:  ldloc.2
    IL_0260:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_0265:  blt        IL_01a9

    IL_026a:  ldc.i4.0
    IL_026b:  stloc.3
    IL_026c:  ldc.i4.0
    IL_026d:  stloc.s    V_21
    IL_026f:  br         IL_02fc

    IL_0274:  ldloc.2
    IL_0275:  ldloc.s    V_21
    IL_0277:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_027c:  stloc.s    V_23
    IL_027e:  ldloca.s   V_23
    IL_0280:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_0285:  stloc.s    V_22
    IL_0287:  ldloc.3
    IL_0288:  ldloc.s    V_22
    IL_028a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_028f:  ldc.r4     0.60000002
    IL_0294:  blt.un.s   IL_02a9

    IL_0296:  ldloc.s    V_22
    IL_0298:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_029d:  ldc.r4     0.60000002
    IL_02a2:  clt.un
    IL_02a4:  ldc.i4.0
    IL_02a5:  ceq
    IL_02a7:  br.s       IL_02aa

    IL_02a9:  ldc.i4.0
    IL_02aa:  or
    IL_02ab:  stloc.3
    IL_02ac:  ldloc.3
    IL_02ad:  ldloc.s    V_22
    IL_02af:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02b4:  ldc.r4     0.60000002
    IL_02b9:  blt.un.s   IL_02ce

    IL_02bb:  ldloc.s    V_22
    IL_02bd:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02c2:  ldc.r4     0.60000002
    IL_02c7:  clt.un
    IL_02c9:  ldc.i4.0
    IL_02ca:  ceq
    IL_02cc:  br.s       IL_02cf

    IL_02ce:  ldc.i4.0
    IL_02cf:  or
    IL_02d0:  stloc.3
    IL_02d1:  ldloc.3
    IL_02d2:  ldloc.s    V_22
    IL_02d4:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02d9:  ldc.r4     0.60000002
    IL_02de:  blt.un.s   IL_02f3

    IL_02e0:  ldloc.s    V_22
    IL_02e2:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02e7:  ldc.r4     0.60000002
    IL_02ec:  clt.un
    IL_02ee:  ldc.i4.0
    IL_02ef:  ceq
    IL_02f1:  br.s       IL_02f4

    IL_02f3:  ldc.i4.0
    IL_02f4:  or
    IL_02f5:  stloc.3
    IL_02f6:  ldloc.s    V_21
    IL_02f8:  ldc.i4.1
    IL_02f9:  add
    IL_02fa:  stloc.s    V_21
    IL_02fc:  ldloc.s    V_21
    IL_02fe:  ldloc.2
    IL_02ff:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_0304:  blt        IL_0274

    IL_0309:  ldloc.3
    IL_030a:  brtrue.s   IL_0313

    IL_030c:  ldc.r4     0.60000002
    IL_0311:  br.s       IL_0318

    IL_0313:  ldc.r4     6.25e-002
    IL_0318:  stloc.s    V_4
    IL_031a:  ldc.i4.0
    IL_031b:  stloc.s    V_24
    IL_031d:  br.s       IL_0396

    IL_031f:  ldloc.2
    IL_0320:  ldloc.s    V_24
    IL_0322:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0327:  stloc.s    V_25
    IL_0329:  ldloca.s   V_25
    IL_032b:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0330:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0335:  ldloca.s   V_25
    IL_0337:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_033c:  ldflda     float32 [Engine]Engine.Vector3::X
    IL_0341:  ldloc.s    V_4
    IL_0343:  call       void Game.FurnitureDesign::EnsureMinSize(float32&,
                                                                  float32&,
                                                                  float32)
    IL_0348:  ldloca.s   V_25
    IL_034a:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_034f:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0354:  ldloca.s   V_25
    IL_0356:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_035b:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0360:  ldloc.s    V_4
    IL_0362:  call       void Game.FurnitureDesign::EnsureMinSize(float32&,
                                                                  float32&,
                                                                  float32)
    IL_0367:  ldloca.s   V_25
    IL_0369:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_036e:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_0373:  ldloca.s   V_25
    IL_0375:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_037a:  ldflda     float32 [Engine]Engine.Vector3::Z
    IL_037f:  ldloc.s    V_4
    IL_0381:  call       void Game.FurnitureDesign::EnsureMinSize(float32&,
                                                                  float32&,
                                                                  float32)
    IL_0386:  ldloc.2
    IL_0387:  ldloc.s    V_24
    IL_0389:  ldloc.s    V_25
    IL_038b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::set_Item(int32,
                                                                                                                                                   !0)
    IL_0390:  ldloc.s    V_24
    IL_0392:  ldc.i4.1
    IL_0393:  add
    IL_0394:  stloc.s    V_24
    IL_0396:  ldloc.s    V_24
    IL_0398:  ldloc.2
    IL_0399:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_039e:  blt        IL_031f

    IL_03a3:  ldarg.0
    IL_03a4:  ldc.i4.4
    IL_03a5:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_03aa:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_03af:  ldc.i4.0
    IL_03b0:  stloc.s    V_26
    IL_03b2:  br         IL_0485

    IL_03b7:  ldc.r4     -0.5
    IL_03bc:  ldc.r4     0.0
    IL_03c1:  ldc.r4     -0.5
    IL_03c6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03cb:  ldloc.s    V_26
    IL_03cd:  conv.r4
    IL_03ce:  ldc.r4     3.1415927
    IL_03d3:  mul
    IL_03d4:  ldc.r4     2.
    IL_03d9:  div
    IL_03da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_03df:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03e4:  ldc.r4     0.5
    IL_03e9:  ldc.r4     0.0
    IL_03ee:  ldc.r4     0.5
    IL_03f3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_03f8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_03fd:  stloc.s    V_27
    IL_03ff:  ldarg.0
    IL_0400:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_0405:  ldloc.s    V_26
    IL_0407:  ldloc.2
    IL_0408:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_040d:  newarr     [Engine]Engine.BoundingBox
    IL_0412:  stelem.ref
    IL_0413:  ldc.i4.0
    IL_0414:  stloc.s    V_28
    IL_0416:  br.s       IL_0475

    IL_0418:  ldloc.2
    IL_0419:  ldloc.s    V_28
    IL_041b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0420:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0425:  ldloc.s    V_27
    IL_0427:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_042c:  stloc.s    V_29
    IL_042e:  ldloc.2
    IL_042f:  ldloc.s    V_28
    IL_0431:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0436:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_043b:  ldloc.s    V_27
    IL_043d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0442:  stloc.s    V_30
    IL_0444:  ldloca.s   V_31
    IL_0446:  ldloc.s    V_29
    IL_0448:  ldloc.s    V_30
    IL_044a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Min(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_044f:  ldloc.s    V_29
    IL_0451:  ldloc.s    V_30
    IL_0453:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_0458:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_045d:  ldarg.0
    IL_045e:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_interactionBoxesByRotation
    IL_0463:  ldloc.s    V_26
    IL_0465:  ldelem.ref
    IL_0466:  ldloc.s    V_28
    IL_0468:  ldloc.s    V_31
    IL_046a:  stelem     [Engine]Engine.BoundingBox
    IL_046f:  ldloc.s    V_28
    IL_0471:  ldc.i4.1
    IL_0472:  add
    IL_0473:  stloc.s    V_28
    IL_0475:  ldloc.s    V_28
    IL_0477:  ldloc.2
    IL_0478:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_047d:  blt.s      IL_0418

    IL_047f:  ldloc.s    V_26
    IL_0481:  ldc.i4.1
    IL_0482:  add
    IL_0483:  stloc.s    V_26
    IL_0485:  ldloc.s    V_26
    IL_0487:  ldc.i4.4
    IL_0488:  blt        IL_03b7

    IL_048d:  ret
  } // end of method FurnitureDesign::CreateCollisionAndInteractionBoxes

  .method private hidebysig instance void 
          CreateTorchPoints() cil managed
  {
    // 代码大小       686 (0x2ae)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox> V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             valuetype [Engine]Engine.BoundingBox V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.BoundingBox V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             int32 V_11,
             valuetype [Engine]Engine.Matrix V_12,
             int32 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             valuetype [Engine]Engine.Vector3 V_15)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.1
    IL_0008:  br         IL_01bb

    IL_000d:  ldc.i4.0
    IL_000e:  stloc.2
    IL_000f:  br         IL_01ab

    IL_0014:  ldc.i4.0
    IL_0015:  stloc.3
    IL_0016:  br         IL_019b

    IL_001b:  ldarg.0
    IL_001c:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0021:  ldloc.3
    IL_0022:  ldloc.2
    IL_0023:  ldarg.0
    IL_0024:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0029:  mul
    IL_002a:  add
    IL_002b:  ldloc.1
    IL_002c:  ldarg.0
    IL_002d:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0032:  mul
    IL_0033:  ldarg.0
    IL_0034:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0039:  mul
    IL_003a:  add
    IL_003b:  ldelem.i4
    IL_003c:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0041:  stloc.s    V_4
    IL_0043:  ldloc.s    V_4
    IL_0045:  ldc.i4.s   31
    IL_0047:  beq.s      IL_0052

    IL_0049:  ldloc.s    V_4
    IL_004b:  ldc.i4.s   17
    IL_004d:  bne.un     IL_0197

    IL_0052:  ldloca.s   V_5
    IL_0054:  ldloc.3
    IL_0055:  conv.r4
    IL_0056:  ldloc.2
    IL_0057:  conv.r4
    IL_0058:  ldloc.1
    IL_0059:  conv.r4
    IL_005a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  ldarg.0
    IL_0060:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0065:  conv.r4
    IL_0066:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_006b:  ldloc.3
    IL_006c:  ldc.i4.1
    IL_006d:  add
    IL_006e:  conv.r4
    IL_006f:  ldloc.2
    IL_0070:  ldc.i4.1
    IL_0071:  add
    IL_0072:  conv.r4
    IL_0073:  ldloc.1
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  conv.r4
    IL_0077:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007c:  ldarg.0
    IL_007d:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0082:  conv.r4
    IL_0083:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0088:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_008d:  ldc.i4.m1
    IL_008e:  stloc.s    V_6
    IL_0090:  ldc.i4.0
    IL_0091:  stloc.s    V_7
    IL_0093:  br         IL_015b

    IL_0098:  ldloc.0
    IL_0099:  ldloc.s    V_7
    IL_009b:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_00a0:  stloc.s    V_8
    IL_00a2:  ldloca.s   V_8
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_00a9:  stloc.s    V_9
    IL_00ab:  ldloca.s   V_8
    IL_00ad:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_00b2:  ldloca.s   V_5
    IL_00b4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00be:  stloc.s    V_10
    IL_00c0:  ldloca.s   V_10
    IL_00c2:  ldloc.s    V_10
    IL_00c4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c9:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00ce:  ldloc.s    V_9
    IL_00d0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d5:  ldc.r4     2.
    IL_00da:  div
    IL_00db:  sub
    IL_00dc:  ldc.r4     0.0
    IL_00e1:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00e6:  stfld      float32 [Engine]Engine.Vector3::X
    IL_00eb:  ldloca.s   V_10
    IL_00ed:  ldloc.s    V_10
    IL_00ef:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00f4:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_00f9:  ldloc.s    V_9
    IL_00fb:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0100:  ldc.r4     2.
    IL_0105:  div
    IL_0106:  sub
    IL_0107:  ldc.r4     0.0
    IL_010c:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0111:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0116:  ldloca.s   V_10
    IL_0118:  ldloc.s    V_10
    IL_011a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_011f:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0124:  ldloc.s    V_9
    IL_0126:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_012b:  ldc.r4     2.
    IL_0130:  div
    IL_0131:  sub
    IL_0132:  ldc.r4     0.0
    IL_0137:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_013c:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_0141:  ldloca.s   V_10
    IL_0143:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0148:  ldc.r4     0.15000001
    IL_014d:  bge.un.s   IL_0155

    IL_014f:  ldloc.s    V_7
    IL_0151:  stloc.s    V_6
    IL_0153:  br.s       IL_0168

    IL_0155:  ldloc.s    V_7
    IL_0157:  ldc.i4.1
    IL_0158:  add
    IL_0159:  stloc.s    V_7
    IL_015b:  ldloc.s    V_7
    IL_015d:  ldloc.0
    IL_015e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_0163:  blt        IL_0098

    IL_0168:  ldloc.s    V_6
    IL_016a:  ldc.i4.0
    IL_016b:  blt.s      IL_0186

    IL_016d:  ldloc.0
    IL_016e:  ldloc.s    V_6
    IL_0170:  ldloc.0
    IL_0171:  ldloc.s    V_6
    IL_0173:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0178:  ldloc.s    V_5
    IL_017a:  call       valuetype [Engine]Engine.BoundingBox [Engine]Engine.BoundingBox::Union(valuetype [Engine]Engine.BoundingBox,
                                                                                                valuetype [Engine]Engine.BoundingBox)
    IL_017f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::set_Item(int32,
                                                                                                                                                   !0)
    IL_0184:  br.s       IL_0197

    IL_0186:  ldloc.0
    IL_0187:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_018c:  ldc.i4.4
    IL_018d:  bge.s      IL_0197

    IL_018f:  ldloc.0
    IL_0190:  ldloc.s    V_5
    IL_0192:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::Add(!0)
    IL_0197:  ldloc.3
    IL_0198:  ldc.i4.1
    IL_0199:  add
    IL_019a:  stloc.3
    IL_019b:  ldloc.3
    IL_019c:  ldarg.0
    IL_019d:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01a2:  blt        IL_001b

    IL_01a7:  ldloc.2
    IL_01a8:  ldc.i4.1
    IL_01a9:  add
    IL_01aa:  stloc.2
    IL_01ab:  ldloc.2
    IL_01ac:  ldarg.0
    IL_01ad:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01b2:  blt        IL_0014

    IL_01b7:  ldloc.1
    IL_01b8:  ldc.i4.1
    IL_01b9:  add
    IL_01ba:  stloc.1
    IL_01bb:  ldloc.1
    IL_01bc:  ldarg.0
    IL_01bd:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01c2:  blt        IL_000d

    IL_01c7:  ldarg.0
    IL_01c8:  ldc.i4.4
    IL_01c9:  newarr     valuetype [Engine]Engine.BoundingBox[]
    IL_01ce:  stfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_01d3:  ldc.i4.0
    IL_01d4:  stloc.s    V_11
    IL_01d6:  br         IL_02a5

    IL_01db:  ldc.r4     -0.5
    IL_01e0:  ldc.r4     0.0
    IL_01e5:  ldc.r4     -0.5
    IL_01ea:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_01ef:  ldloc.s    V_11
    IL_01f1:  conv.r4
    IL_01f2:  ldc.r4     3.1415927
    IL_01f7:  mul
    IL_01f8:  ldc.r4     2.
    IL_01fd:  div
    IL_01fe:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
    IL_0203:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0208:  ldc.r4     0.5
    IL_020d:  ldc.r4     0.0
    IL_0212:  ldc.r4     0.5
    IL_0217:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                  float32,
                                                                                                  float32)
    IL_021c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0221:  stloc.s    V_12
    IL_0223:  ldarg.0
    IL_0224:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_0229:  ldloc.s    V_11
    IL_022b:  ldloc.0
    IL_022c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_0231:  newarr     [Engine]Engine.BoundingBox
    IL_0236:  stelem.ref
    IL_0237:  ldc.i4.0
    IL_0238:  stloc.s    V_13
    IL_023a:  br.s       IL_0295

    IL_023c:  ldloc.0
    IL_023d:  ldloc.s    V_13
    IL_023f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_0244:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0249:  ldloc.s    V_12
    IL_024b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0250:  stloc.s    V_14
    IL_0252:  ldloc.0
    IL_0253:  ldloc.s    V_13
    IL_0255:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Item(int32)
    IL_025a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_025f:  ldloc.s    V_12
    IL_0261:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_0266:  stloc.s    V_15
    IL_0268:  ldarg.0
    IL_0269:  ldfld      valuetype [Engine]Engine.BoundingBox[][] Game.FurnitureDesign::m_torchPointsByRotation
    IL_026e:  ldloc.s    V_11
    IL_0270:  ldelem.ref
    IL_0271:  ldloc.s    V_13
    IL_0273:  ldloc.s    V_14
    IL_0275:  ldloc.s    V_15
    IL_0277:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Min(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_027c:  ldloc.s    V_14
    IL_027e:  ldloc.s    V_15
    IL_0280:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Max(valuetype [Engine]Engine.Vector3,
                                                                                      valuetype [Engine]Engine.Vector3)
    IL_0285:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_028a:  stelem     [Engine]Engine.BoundingBox
    IL_028f:  ldloc.s    V_13
    IL_0291:  ldc.i4.1
    IL_0292:  add
    IL_0293:  stloc.s    V_13
    IL_0295:  ldloc.s    V_13
    IL_0297:  ldloc.0
    IL_0298:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.BoundingBox>::get_Count()
    IL_029d:  blt.s      IL_023c

    IL_029f:  ldloc.s    V_11
    IL_02a1:  ldc.i4.1
    IL_02a2:  add
    IL_02a3:  stloc.s    V_11
    IL_02a5:  ldloc.s    V_11
    IL_02a7:  ldc.i4.4
    IL_02a8:  blt        IL_01db

    IL_02ad:  ret
  } // end of method FurnitureDesign::CreateTorchPoints

  .method private hidebysig instance void 
          CalculateMainValue() cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<int32,int32> V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,int32> V_7,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,int32> V_8)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,int32>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldc.i4.0
    IL_0007:  stloc.2
    IL_0008:  br.s       IL_0077

    IL_000a:  ldc.i4.0
    IL_000b:  stloc.3
    IL_000c:  br.s       IL_006a

    IL_000e:  ldarg.0
    IL_000f:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0014:  ldc.i4.1
    IL_0015:  sub
    IL_0016:  stloc.s    V_4
    IL_0018:  br.s       IL_0061

    IL_001a:  ldarg.0
    IL_001b:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0020:  ldloc.3
    IL_0021:  ldloc.s    V_4
    IL_0023:  ldarg.0
    IL_0024:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0029:  mul
    IL_002a:  add
    IL_002b:  ldloc.2
    IL_002c:  ldarg.0
    IL_002d:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0032:  mul
    IL_0033:  ldarg.0
    IL_0034:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0039:  mul
    IL_003a:  add
    IL_003b:  ldelem.i4
    IL_003c:  stloc.s    V_5
    IL_003e:  ldloc.s    V_5
    IL_0040:  brfalse.s  IL_005b

    IL_0042:  ldloc.0
    IL_0043:  ldloc.s    V_5
    IL_0045:  ldloca.s   V_6
    IL_0047:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,int32>::TryGetValue(!0,
                                                                                                                                   !1&)
    IL_004c:  pop
    IL_004d:  ldloc.0
    IL_004e:  ldloc.s    V_5
    IL_0050:  ldloc.s    V_6
    IL_0052:  ldc.i4.1
    IL_0053:  add
    IL_0054:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,int32>::set_Item(!0,
                                                                                                                                !1)
    IL_0059:  br.s       IL_0066

    IL_005b:  ldloc.s    V_4
    IL_005d:  ldc.i4.1
    IL_005e:  sub
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.0
    IL_0064:  bge.s      IL_001a

    IL_0066:  ldloc.3
    IL_0067:  ldc.i4.1
    IL_0068:  add
    IL_0069:  stloc.3
    IL_006a:  ldloc.3
    IL_006b:  ldarg.0
    IL_006c:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0071:  blt.s      IL_000e

    IL_0073:  ldloc.2
    IL_0074:  ldc.i4.1
    IL_0075:  add
    IL_0076:  stloc.2
    IL_0077:  ldloc.2
    IL_0078:  ldarg.0
    IL_0079:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_007e:  blt.s      IL_000a

    IL_0080:  ldc.i4.0
    IL_0081:  stloc.1
    IL_0082:  ldloc.0
    IL_0083:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,int32>::GetEnumerator()
    IL_0088:  stloc.s    V_7
    .try
    {
      IL_008a:  br.s       IL_00b4

      IL_008c:  ldloca.s   V_7
      IL_008e:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,int32>::get_Current()
      IL_0093:  stloc.s    V_8
      IL_0095:  ldloca.s   V_8
      IL_0097:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,int32>::get_Value()
      IL_009c:  ldloc.1
      IL_009d:  ble.s      IL_00b4

      IL_009f:  ldarg.0
      IL_00a0:  ldloca.s   V_8
      IL_00a2:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,int32>::get_Key()
      IL_00a7:  stfld      int32 Game.FurnitureDesign::m_mainValue
      IL_00ac:  ldloca.s   V_8
      IL_00ae:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,int32>::get_Value()
      IL_00b3:  stloc.1
      IL_00b4:  ldloca.s   V_7
      IL_00b6:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,int32>::MoveNext()
      IL_00bb:  brtrue.s   IL_008c

      IL_00bd:  leave.s    IL_00cd

    }  // end .try
    finally
    {
      IL_00bf:  ldloca.s   V_7
      IL_00c1:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,int32>
      IL_00c7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00cc:  endfinally
    }  // end handler
    IL_00cd:  ret
  } // end of method FurnitureDesign::CalculateMainValue

  .method private hidebysig instance void 
          CalculateFacesMasks() cil managed
  {
    // 代码大小       599 (0x257)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_000e:  ldc.i4.0
    IL_000f:  stloc.0
    IL_0010:  br         IL_00b5

    IL_0015:  ldc.i4.0
    IL_0016:  stloc.1
    IL_0017:  br         IL_00a5

    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_002a:  mul
    IL_002b:  add
    IL_002c:  ldelem.i4
    IL_002d:  ldarg.0
    IL_002e:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_0033:  ldloc.0
    IL_0034:  ldloc.1
    IL_0035:  ldarg.0
    IL_0036:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_003b:  mul
    IL_003c:  add
    IL_003d:  ldarg.0
    IL_003e:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0043:  ldc.i4.1
    IL_0044:  sub
    IL_0045:  ldarg.0
    IL_0046:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_004b:  mul
    IL_004c:  ldarg.0
    IL_004d:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0052:  mul
    IL_0053:  add
    IL_0054:  ldelem.i4
    IL_0055:  stloc.2
    IL_0056:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_005b:  brfalse.s  IL_006d

    IL_005d:  ldarg.0
    IL_005e:  ldarg.0
    IL_005f:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0064:  ldc.i4.4
    IL_0065:  or
    IL_0066:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_006b:  br.s       IL_007b

    IL_006d:  ldarg.0
    IL_006e:  ldarg.0
    IL_006f:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0074:  ldc.i4.4
    IL_0075:  or
    IL_0076:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_007b:  ldloc.2
    IL_007c:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_0081:  brfalse.s  IL_0093

    IL_0083:  ldarg.0
    IL_0084:  ldarg.0
    IL_0085:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_008a:  ldc.i4.1
    IL_008b:  or
    IL_008c:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0091:  br.s       IL_00a1

    IL_0093:  ldarg.0
    IL_0094:  ldarg.0
    IL_0095:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_009a:  ldc.i4.1
    IL_009b:  or
    IL_009c:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_00a1:  ldloc.1
    IL_00a2:  ldc.i4.1
    IL_00a3:  add
    IL_00a4:  stloc.1
    IL_00a5:  ldloc.1
    IL_00a6:  ldarg.0
    IL_00a7:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00ac:  blt        IL_001c

    IL_00b1:  ldloc.0
    IL_00b2:  ldc.i4.1
    IL_00b3:  add
    IL_00b4:  stloc.0
    IL_00b5:  ldloc.0
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00bc:  blt        IL_0015

    IL_00c1:  ldc.i4.0
    IL_00c2:  stloc.3
    IL_00c3:  br         IL_017e

    IL_00c8:  ldc.i4.0
    IL_00c9:  stloc.s    V_4
    IL_00cb:  br         IL_016d

    IL_00d0:  ldarg.0
    IL_00d1:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_00d6:  ldloc.3
    IL_00d7:  ldarg.0
    IL_00d8:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00dd:  mul
    IL_00de:  ldloc.s    V_4
    IL_00e0:  ldarg.0
    IL_00e1:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00e6:  mul
    IL_00e7:  ldarg.0
    IL_00e8:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00ed:  mul
    IL_00ee:  add
    IL_00ef:  ldelem.i4
    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_00f6:  ldarg.0
    IL_00f7:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_00fc:  ldc.i4.1
    IL_00fd:  sub
    IL_00fe:  ldloc.3
    IL_00ff:  ldarg.0
    IL_0100:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0105:  mul
    IL_0106:  add
    IL_0107:  ldloc.s    V_4
    IL_0109:  ldarg.0
    IL_010a:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_010f:  mul
    IL_0110:  ldarg.0
    IL_0111:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0116:  mul
    IL_0117:  add
    IL_0118:  ldelem.i4
    IL_0119:  stloc.s    V_5
    IL_011b:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_0120:  brfalse.s  IL_0132

    IL_0122:  ldarg.0
    IL_0123:  ldarg.0
    IL_0124:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0129:  ldc.i4.8
    IL_012a:  or
    IL_012b:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0130:  br.s       IL_0140

    IL_0132:  ldarg.0
    IL_0133:  ldarg.0
    IL_0134:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0139:  ldc.i4.8
    IL_013a:  or
    IL_013b:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0140:  ldloc.s    V_5
    IL_0142:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_0147:  brfalse.s  IL_0159

    IL_0149:  ldarg.0
    IL_014a:  ldarg.0
    IL_014b:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0150:  ldc.i4.2
    IL_0151:  or
    IL_0152:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0157:  br.s       IL_0167

    IL_0159:  ldarg.0
    IL_015a:  ldarg.0
    IL_015b:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0160:  ldc.i4.2
    IL_0161:  or
    IL_0162:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0167:  ldloc.s    V_4
    IL_0169:  ldc.i4.1
    IL_016a:  add
    IL_016b:  stloc.s    V_4
    IL_016d:  ldloc.s    V_4
    IL_016f:  ldarg.0
    IL_0170:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0175:  blt        IL_00d0

    IL_017a:  ldloc.3
    IL_017b:  ldc.i4.1
    IL_017c:  add
    IL_017d:  stloc.3
    IL_017e:  ldloc.3
    IL_017f:  ldarg.0
    IL_0180:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0185:  blt        IL_00c8

    IL_018a:  ldc.i4.0
    IL_018b:  stloc.s    V_6
    IL_018d:  br         IL_0249

    IL_0192:  ldc.i4.0
    IL_0193:  stloc.s    V_7
    IL_0195:  br         IL_0236

    IL_019a:  ldarg.0
    IL_019b:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_01a0:  ldloc.s    V_6
    IL_01a2:  ldloc.s    V_7
    IL_01a4:  ldarg.0
    IL_01a5:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01aa:  mul
    IL_01ab:  ldarg.0
    IL_01ac:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01b1:  mul
    IL_01b2:  add
    IL_01b3:  ldelem.i4
    IL_01b4:  ldarg.0
    IL_01b5:  ldfld      int32[] Game.FurnitureDesign::m_values
    IL_01ba:  ldloc.s    V_6
    IL_01bc:  ldarg.0
    IL_01bd:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01c2:  ldc.i4.1
    IL_01c3:  sub
    IL_01c4:  ldarg.0
    IL_01c5:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01ca:  mul
    IL_01cb:  add
    IL_01cc:  ldloc.s    V_7
    IL_01ce:  ldarg.0
    IL_01cf:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01d4:  mul
    IL_01d5:  ldarg.0
    IL_01d6:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_01db:  mul
    IL_01dc:  add
    IL_01dd:  ldelem.i4
    IL_01de:  stloc.s    V_8
    IL_01e0:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_01e5:  brfalse.s  IL_01f8

    IL_01e7:  ldarg.0
    IL_01e8:  ldarg.0
    IL_01e9:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_01ee:  ldc.i4.s   16
    IL_01f0:  or
    IL_01f1:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_01f6:  br.s       IL_0207

    IL_01f8:  ldarg.0
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_01ff:  ldc.i4.s   32
    IL_0201:  or
    IL_0202:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0207:  ldloc.s    V_8
    IL_0209:  call       bool Game.FurnitureDesign::IsValueTransparent(int32)
    IL_020e:  brfalse.s  IL_0221

    IL_0210:  ldarg.0
    IL_0211:  ldarg.0
    IL_0212:  ldfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0217:  ldc.i4.s   32
    IL_0219:  or
    IL_021a:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_021f:  br.s       IL_0230

    IL_0221:  ldarg.0
    IL_0222:  ldarg.0
    IL_0223:  ldfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0228:  ldc.i4.s   16
    IL_022a:  or
    IL_022b:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0230:  ldloc.s    V_7
    IL_0232:  ldc.i4.1
    IL_0233:  add
    IL_0234:  stloc.s    V_7
    IL_0236:  ldloc.s    V_7
    IL_0238:  ldarg.0
    IL_0239:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_023e:  blt        IL_019a

    IL_0243:  ldloc.s    V_6
    IL_0245:  ldc.i4.1
    IL_0246:  add
    IL_0247:  stloc.s    V_6
    IL_0249:  ldloc.s    V_6
    IL_024b:  ldarg.0
    IL_024c:  call       instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0251:  blt        IL_0192

    IL_0256:  ret
  } // end of method FurnitureDesign::CalculateFacesMasks

  .method private hidebysig instance valuetype Game.FurnitureDesign/Subdivision 
          CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box 'box',
                                    int32 depth) cil managed
  {
    // 代码大小       1055 (0x41f)
    .maxstack  8
    .locals init (int32 V_0,
             valuetype Game.FurnitureDesign/Subdivision V_1,
             int32 V_2,
             valuetype [Engine]Engine.Box V_3,
             valuetype [Engine]Engine.Box V_4,
             valuetype Game.FurnitureDesign/Subdivision V_5,
             valuetype Game.FurnitureDesign/Subdivision V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             valuetype [Engine]Engine.Box V_11,
             valuetype [Engine]Engine.Box V_12,
             valuetype Game.FurnitureDesign/Subdivision V_13,
             valuetype Game.FurnitureDesign/Subdivision V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             valuetype [Engine]Engine.Box V_19,
             valuetype [Engine]Engine.Box V_20,
             valuetype Game.FurnitureDesign/Subdivision V_21,
             valuetype Game.FurnitureDesign/Subdivision V_22,
             int32 V_23,
             int32 V_24,
             int32 V_25)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldloca.s   V_1
    IL_0004:  initobj    Game.FurnitureDesign/Subdivision
    IL_000a:  ldloca.s   V_1
    IL_000c:  ldarg.1
    IL_000d:  ldfld      int32 [Engine]Engine.Box::Width
    IL_0012:  ldarg.1
    IL_0013:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0018:  mul
    IL_0019:  ldarg.1
    IL_001a:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_001f:  mul
    IL_0020:  stfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0025:  ldloca.s   V_1
    IL_0027:  ldloc.1
    IL_0028:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_002d:  stfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_0032:  ldloca.s   V_1
    IL_0034:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::.ctor()
    IL_0039:  dup
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::Add(!0)
    IL_0040:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0045:  ldarg.2
    IL_0046:  ldc.i4.2
    IL_0047:  bge        IL_041d

    IL_004c:  ldarga.s   'box'
    IL_004e:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_0053:  ldc.i4.1
    IL_0054:  sub
    IL_0055:  stloc.2
    IL_0056:  br         IL_017f

    IL_005b:  ldarg.0
    IL_005c:  ldarg.1
    IL_005d:  ldfld      int32 [Engine]Engine.Box::Left
    IL_0062:  ldarg.1
    IL_0063:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0068:  ldarg.1
    IL_0069:  ldfld      int32 [Engine]Engine.Box::Near
    IL_006e:  ldarg.1
    IL_006f:  ldfld      int32 [Engine]Engine.Box::Width
    IL_0074:  ldloc.2
    IL_0075:  ldarg.1
    IL_0076:  ldfld      int32 [Engine]Engine.Box::Top
    IL_007b:  sub
    IL_007c:  ldarg.1
    IL_007d:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_0082:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_0087:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_008c:  stloc.3
    IL_008d:  ldarg.0
    IL_008e:  ldarg.1
    IL_008f:  ldfld      int32 [Engine]Engine.Box::Left
    IL_0094:  ldloc.2
    IL_0095:  ldarg.1
    IL_0096:  ldfld      int32 [Engine]Engine.Box::Near
    IL_009b:  ldarg.1
    IL_009c:  ldfld      int32 [Engine]Engine.Box::Width
    IL_00a1:  ldarga.s   'box'
    IL_00a3:  call       instance int32 [Engine]Engine.Box::get_Bottom()
    IL_00a8:  ldloc.2
    IL_00a9:  sub
    IL_00aa:  ldarg.1
    IL_00ab:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_00b0:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_00b5:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_00ba:  stloc.s    V_4
    IL_00bc:  ldarg.0
    IL_00bd:  ldloc.3
    IL_00be:  ldarg.2
    IL_00bf:  ldc.i4.1
    IL_00c0:  add
    IL_00c1:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_00c6:  stloc.s    V_5
    IL_00c8:  ldarg.0
    IL_00c9:  ldloc.s    V_4
    IL_00cb:  ldarg.2
    IL_00cc:  ldc.i4.1
    IL_00cd:  add
    IL_00ce:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_00d3:  stloc.s    V_6
    IL_00d5:  ldloc.s    V_5
    IL_00d7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_00dc:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_00e1:  ldloc.s    V_6
    IL_00e3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_00e8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_00ed:  add
    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_00f5:  ldloc.s    V_6
    IL_00f7:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_00fc:  add
    IL_00fd:  stloc.s    V_7
    IL_00ff:  ldloc.s    V_5
    IL_0101:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_0106:  ldloc.s    V_6
    IL_0108:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_010d:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0112:  stloc.s    V_8
    IL_0114:  ldloc.1
    IL_0115:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_011a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_011f:  bgt.s      IL_0125

    IL_0121:  ldloc.s    V_7
    IL_0123:  br.s       IL_0129

    IL_0125:  ldloc.s    V_7
    IL_0127:  ldloc.0
    IL_0128:  add
    IL_0129:  stloc.s    V_9
    IL_012b:  ldloc.s    V_9
    IL_012d:  ldloc.1
    IL_012e:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0133:  blt.s      IL_0149

    IL_0135:  ldloc.s    V_9
    IL_0137:  ldloc.1
    IL_0138:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_013d:  bne.un.s   IL_017b

    IL_013f:  ldloc.s    V_8
    IL_0141:  ldloc.1
    IL_0142:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_0147:  ble.s      IL_017b

    IL_0149:  ldloca.s   V_1
    IL_014b:  ldloc.s    V_7
    IL_014d:  stfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0152:  ldloca.s   V_1
    IL_0154:  ldloc.s    V_8
    IL_0156:  stfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_015b:  ldloca.s   V_1
    IL_015d:  ldloc.s    V_5
    IL_015f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0164:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0169:  ldloc.1
    IL_016a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_016f:  ldloc.s    V_6
    IL_0171:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0176:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_017b:  ldloc.2
    IL_017c:  ldc.i4.1
    IL_017d:  sub
    IL_017e:  stloc.2
    IL_017f:  ldloc.2
    IL_0180:  ldarg.1
    IL_0181:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0186:  ldc.i4.1
    IL_0187:  add
    IL_0188:  bge        IL_005b

    IL_018d:  ldarg.1
    IL_018e:  ldfld      int32 [Engine]Engine.Box::Near
    IL_0193:  ldc.i4.1
    IL_0194:  add
    IL_0195:  stloc.s    V_10
    IL_0197:  br         IL_02c7

    IL_019c:  ldarg.0
    IL_019d:  ldarg.1
    IL_019e:  ldfld      int32 [Engine]Engine.Box::Left
    IL_01a3:  ldarg.1
    IL_01a4:  ldfld      int32 [Engine]Engine.Box::Top
    IL_01a9:  ldarg.1
    IL_01aa:  ldfld      int32 [Engine]Engine.Box::Near
    IL_01af:  ldarg.1
    IL_01b0:  ldfld      int32 [Engine]Engine.Box::Width
    IL_01b5:  ldarg.1
    IL_01b6:  ldfld      int32 [Engine]Engine.Box::Height
    IL_01bb:  ldloc.s    V_10
    IL_01bd:  ldarg.1
    IL_01be:  ldfld      int32 [Engine]Engine.Box::Near
    IL_01c3:  sub
    IL_01c4:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_01c9:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_01ce:  stloc.s    V_11
    IL_01d0:  ldarg.0
    IL_01d1:  ldarg.1
    IL_01d2:  ldfld      int32 [Engine]Engine.Box::Left
    IL_01d7:  ldarg.1
    IL_01d8:  ldfld      int32 [Engine]Engine.Box::Top
    IL_01dd:  ldloc.s    V_10
    IL_01df:  ldarg.1
    IL_01e0:  ldfld      int32 [Engine]Engine.Box::Width
    IL_01e5:  ldarg.1
    IL_01e6:  ldfld      int32 [Engine]Engine.Box::Height
    IL_01eb:  ldarga.s   'box'
    IL_01ed:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_01f2:  ldloc.s    V_10
    IL_01f4:  sub
    IL_01f5:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_01fa:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_01ff:  stloc.s    V_12
    IL_0201:  ldarg.0
    IL_0202:  ldloc.s    V_11
    IL_0204:  ldarg.2
    IL_0205:  ldc.i4.1
    IL_0206:  add
    IL_0207:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_020c:  stloc.s    V_13
    IL_020e:  ldarg.0
    IL_020f:  ldloc.s    V_12
    IL_0211:  ldarg.2
    IL_0212:  ldc.i4.1
    IL_0213:  add
    IL_0214:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_0219:  stloc.s    V_14
    IL_021b:  ldloc.s    V_13
    IL_021d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0222:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_0227:  ldloc.s    V_14
    IL_0229:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_022e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_0233:  add
    IL_0234:  ldloc.s    V_13
    IL_0236:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_023b:  ldloc.s    V_14
    IL_023d:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0242:  add
    IL_0243:  stloc.s    V_15
    IL_0245:  ldloc.s    V_13
    IL_0247:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_024c:  ldloc.s    V_14
    IL_024e:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_0253:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0258:  stloc.s    V_16
    IL_025a:  ldloc.1
    IL_025b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0260:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_0265:  bgt.s      IL_026b

    IL_0267:  ldloc.s    V_15
    IL_0269:  br.s       IL_026f

    IL_026b:  ldloc.s    V_15
    IL_026d:  ldloc.0
    IL_026e:  add
    IL_026f:  stloc.s    V_17
    IL_0271:  ldloc.s    V_17
    IL_0273:  ldloc.1
    IL_0274:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0279:  blt.s      IL_028f

    IL_027b:  ldloc.s    V_17
    IL_027d:  ldloc.1
    IL_027e:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0283:  bne.un.s   IL_02c1

    IL_0285:  ldloc.s    V_16
    IL_0287:  ldloc.1
    IL_0288:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_028d:  ble.s      IL_02c1

    IL_028f:  ldloca.s   V_1
    IL_0291:  ldloc.s    V_15
    IL_0293:  stfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0298:  ldloca.s   V_1
    IL_029a:  ldloc.s    V_16
    IL_029c:  stfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_02a1:  ldloca.s   V_1
    IL_02a3:  ldloc.s    V_13
    IL_02a5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_02aa:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_02af:  ldloc.1
    IL_02b0:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_02b5:  ldloc.s    V_14
    IL_02b7:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_02bc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_02c1:  ldloc.s    V_10
    IL_02c3:  ldc.i4.1
    IL_02c4:  add
    IL_02c5:  stloc.s    V_10
    IL_02c7:  ldloc.s    V_10
    IL_02c9:  ldarga.s   'box'
    IL_02cb:  call       instance int32 [Engine]Engine.Box::get_Far()
    IL_02d0:  blt        IL_019c

    IL_02d5:  ldarg.1
    IL_02d6:  ldfld      int32 [Engine]Engine.Box::Left
    IL_02db:  ldc.i4.1
    IL_02dc:  add
    IL_02dd:  stloc.s    V_18
    IL_02df:  br         IL_040f

    IL_02e4:  ldarg.0
    IL_02e5:  ldarg.1
    IL_02e6:  ldfld      int32 [Engine]Engine.Box::Left
    IL_02eb:  ldarg.1
    IL_02ec:  ldfld      int32 [Engine]Engine.Box::Top
    IL_02f1:  ldarg.1
    IL_02f2:  ldfld      int32 [Engine]Engine.Box::Near
    IL_02f7:  ldloc.s    V_18
    IL_02f9:  ldarg.1
    IL_02fa:  ldfld      int32 [Engine]Engine.Box::Left
    IL_02ff:  sub
    IL_0300:  ldarg.1
    IL_0301:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0306:  ldarg.1
    IL_0307:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_030c:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_0311:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_0316:  stloc.s    V_19
    IL_0318:  ldarg.0
    IL_0319:  ldloc.s    V_18
    IL_031b:  ldarg.1
    IL_031c:  ldfld      int32 [Engine]Engine.Box::Top
    IL_0321:  ldarg.1
    IL_0322:  ldfld      int32 [Engine]Engine.Box::Near
    IL_0327:  ldarga.s   'box'
    IL_0329:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_032e:  ldloc.s    V_18
    IL_0330:  sub
    IL_0331:  ldarg.1
    IL_0332:  ldfld      int32 [Engine]Engine.Box::Height
    IL_0337:  ldarg.1
    IL_0338:  ldfld      int32 [Engine]Engine.Box::Depth
    IL_033d:  newobj     instance void [Engine]Engine.Box::.ctor(int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 int32)
    IL_0342:  call       instance valuetype [Engine]Engine.Box Game.FurnitureDesign::CalculateBox(valuetype [Engine]Engine.Box)
    IL_0347:  stloc.s    V_20
    IL_0349:  ldarg.0
    IL_034a:  ldloc.s    V_19
    IL_034c:  ldarg.2
    IL_034d:  ldc.i4.1
    IL_034e:  add
    IL_034f:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_0354:  stloc.s    V_21
    IL_0356:  ldarg.0
    IL_0357:  ldloc.s    V_20
    IL_0359:  ldarg.2
    IL_035a:  ldc.i4.1
    IL_035b:  add
    IL_035c:  call       instance valuetype Game.FurnitureDesign/Subdivision Game.FurnitureDesign::CreateBoundingBoxesHelper(valuetype [Engine]Engine.Box,
                                                                                                                             int32)
    IL_0361:  stloc.s    V_22
    IL_0363:  ldloc.s    V_21
    IL_0365:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_036a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_036f:  ldloc.s    V_22
    IL_0371:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0376:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_037b:  add
    IL_037c:  ldloc.s    V_21
    IL_037e:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_0383:  ldloc.s    V_22
    IL_0385:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_038a:  add
    IL_038b:  stloc.s    V_23
    IL_038d:  ldloc.s    V_21
    IL_038f:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_0394:  ldloc.s    V_22
    IL_0396:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_039b:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_03a0:  stloc.s    V_24
    IL_03a2:  ldloc.1
    IL_03a3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_03a8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::get_Count()
    IL_03ad:  bgt.s      IL_03b3

    IL_03af:  ldloc.s    V_23
    IL_03b1:  br.s       IL_03b7

    IL_03b3:  ldloc.s    V_23
    IL_03b5:  ldloc.0
    IL_03b6:  add
    IL_03b7:  stloc.s    V_25
    IL_03b9:  ldloc.s    V_25
    IL_03bb:  ldloc.1
    IL_03bc:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_03c1:  blt.s      IL_03d7

    IL_03c3:  ldloc.s    V_25
    IL_03c5:  ldloc.1
    IL_03c6:  ldfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_03cb:  bne.un.s   IL_0409

    IL_03cd:  ldloc.s    V_24
    IL_03cf:  ldloc.1
    IL_03d0:  ldfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_03d5:  ble.s      IL_0409

    IL_03d7:  ldloca.s   V_1
    IL_03d9:  ldloc.s    V_23
    IL_03db:  stfld      int32 Game.FurnitureDesign/Subdivision::TotalVolume
    IL_03e0:  ldloca.s   V_1
    IL_03e2:  ldloc.s    V_24
    IL_03e4:  stfld      int32 Game.FurnitureDesign/Subdivision::MinVolume
    IL_03e9:  ldloca.s   V_1
    IL_03eb:  ldloc.s    V_21
    IL_03ed:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_03f2:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_03f7:  ldloc.1
    IL_03f8:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_03fd:  ldloc.s    V_22
    IL_03ff:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box> Game.FurnitureDesign/Subdivision::Boxes
    IL_0404:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Box>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0409:  ldloc.s    V_18
    IL_040b:  ldc.i4.1
    IL_040c:  add
    IL_040d:  stloc.s    V_18
    IL_040f:  ldloc.s    V_18
    IL_0411:  ldarga.s   'box'
    IL_0413:  call       instance int32 [Engine]Engine.Box::get_Right()
    IL_0418:  blt        IL_02e4

    IL_041d:  ldloc.1
    IL_041e:  ret
  } // end of method FurnitureDesign::CreateBoundingBoxesHelper

  .method private hidebysig instance valuetype [Engine]Engine.Point2 
          FindLargestSize(valuetype Game.FurnitureDesign/Cell[] surface,
                          valuetype [Engine]Engine.Point2 start,
                          int32 'value') cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point2 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype [Engine]Engine.Point2 V_4)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Point2 [Engine]Engine.Point2::Zero
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_000c:  stloc.1
    IL_000d:  ldarg.2
    IL_000e:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0013:  stloc.2
    IL_0014:  br.s       IL_0083

    IL_0016:  ldarg.2
    IL_0017:  ldfld      int32 [Engine]Engine.Point2::X
    IL_001c:  stloc.3
    IL_001d:  br.s       IL_007b

    IL_001f:  ldloc.3
    IL_0020:  ldloc.1
    IL_0021:  beq.s      IL_003b

    IL_0023:  ldarg.1
    IL_0024:  ldloc.3
    IL_0025:  ldloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_002c:  mul
    IL_002d:  add
    IL_002e:  ldelema    Game.FurnitureDesign/Cell
    IL_0033:  ldfld      int32 Game.FurnitureDesign/Cell::Value
    IL_0038:  ldarg.3
    IL_0039:  beq.s      IL_0077

    IL_003b:  ldloc.3
    IL_003c:  stloc.1
    IL_003d:  ldloca.s   V_4
    IL_003f:  ldloc.1
    IL_0040:  ldarg.2
    IL_0041:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0046:  sub
    IL_0047:  ldloc.2
    IL_0048:  ldarg.2
    IL_0049:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_004e:  sub
    IL_004f:  ldc.i4.1
    IL_0050:  add
    IL_0051:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0056:  ldloc.s    V_4
    IL_0058:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005d:  ldloc.s    V_4
    IL_005f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0064:  mul
    IL_0065:  ldloc.0
    IL_0066:  ldfld      int32 [Engine]Engine.Point2::X
    IL_006b:  ldloc.0
    IL_006c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0071:  mul
    IL_0072:  ble.s      IL_0077

    IL_0074:  ldloc.s    V_4
    IL_0076:  stloc.0
    IL_0077:  ldloc.3
    IL_0078:  ldc.i4.1
    IL_0079:  add
    IL_007a:  stloc.3
    IL_007b:  ldloc.3
    IL_007c:  ldloc.1
    IL_007d:  ble.s      IL_001f

    IL_007f:  ldloc.2
    IL_0080:  ldc.i4.1
    IL_0081:  add
    IL_0082:  stloc.2
    IL_0083:  ldloc.2
    IL_0084:  ldarg.0
    IL_0085:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_008a:  blt.s      IL_0016

    IL_008c:  ldloc.0
    IL_008d:  ret
  } // end of method FurnitureDesign::FindLargestSize

  .method private hidebysig instance void 
          MarkUsed(valuetype Game.FurnitureDesign/Cell[] surface,
                   valuetype [Engine]Engine.Point2 start,
                   valuetype [Engine]Engine.Point2 size) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0040

    IL_0009:  ldarg.2
    IL_000a:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000f:  stloc.1
    IL_0010:  br.s       IL_002c

    IL_0012:  ldarg.1
    IL_0013:  ldloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldfld      int32 Game.FurnitureDesign::m_resolution
    IL_001b:  mul
    IL_001c:  add
    IL_001d:  ldelema    Game.FurnitureDesign/Cell
    IL_0022:  ldc.i4.0
    IL_0023:  stfld      int32 Game.FurnitureDesign/Cell::Value
    IL_0028:  ldloc.1
    IL_0029:  ldc.i4.1
    IL_002a:  add
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0033:  ldarg.3
    IL_0034:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0039:  add
    IL_003a:  blt.s      IL_0012

    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.1
    IL_003e:  add
    IL_003f:  stloc.0
    IL_0040:  ldloc.0
    IL_0041:  ldarg.2
    IL_0042:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0047:  ldarg.3
    IL_0048:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_004d:  add
    IL_004e:  blt.s      IL_0009

    IL_0050:  ret
  } // end of method FurnitureDesign::MarkUsed

  .method private hidebysig static valuetype [Engine]Engine.Vector3 
          RotatePoint(valuetype [Engine]Engine.Vector3 p,
                      int32 axis,
                      int32 steps) cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0063

    IL_0004:  ldarg.1
    IL_0005:  brfalse.s  IL_000d

    IL_0007:  ldarg.1
    IL_0008:  ldc.i4.1
    IL_0009:  beq.s      IL_0029

    IL_000b:  br.s       IL_0045

    IL_000d:  ldarga.s   p
    IL_000f:  ldarg.0
    IL_0010:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0015:  ldarg.0
    IL_0016:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001b:  ldarg.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0021:  neg
    IL_0022:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0027:  br.s       IL_005f

    IL_0029:  ldarga.s   p
    IL_002b:  ldarg.0
    IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0031:  neg
    IL_0032:  ldarg.0
    IL_0033:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0038:  ldarg.0
    IL_0039:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_003e:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0043:  br.s       IL_005f

    IL_0045:  ldarga.s   p
    IL_0047:  ldarg.0
    IL_0048:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004d:  neg
    IL_004e:  ldarg.0
    IL_004f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0054:  ldarg.0
    IL_0055:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_005f:  ldloc.0
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  stloc.0
    IL_0063:  ldloc.0
    IL_0064:  ldarg.2
    IL_0065:  blt.s      IL_0004

    IL_0067:  ldarg.0
    IL_0068:  ret
  } // end of method FurnitureDesign::RotatePoint

  .method private hidebysig static void  EnsureMinSize(float32& min,
                                                       float32& max,
                                                       float32 minSize) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  4
    .locals init (float32 V_0,
             float32 V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldind.r4
    IL_0002:  ldarg.0
    IL_0003:  ldind.r4
    IL_0004:  sub
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.2
    IL_0008:  bge.un.s   IL_005b

    IL_000a:  ldarg.2
    IL_000b:  ldloc.0
    IL_000c:  sub
    IL_000d:  stloc.1
    IL_000e:  ldarg.0
    IL_000f:  ldarg.0
    IL_0010:  ldind.r4
    IL_0011:  ldloc.1
    IL_0012:  ldc.r4     2.
    IL_0017:  div
    IL_0018:  sub
    IL_0019:  stind.r4
    IL_001a:  ldarg.1
    IL_001b:  ldarg.1
    IL_001c:  ldind.r4
    IL_001d:  ldloc.1
    IL_001e:  ldc.r4     2.
    IL_0023:  div
    IL_0024:  add
    IL_0025:  stind.r4
    IL_0026:  ldarg.0
    IL_0027:  ldind.r4
    IL_0028:  ldc.r4     0.0
    IL_002d:  bge.un.s   IL_003e

    IL_002f:  ldarg.1
    IL_0030:  ldarg.1
    IL_0031:  ldind.r4
    IL_0032:  ldarg.0
    IL_0033:  ldind.r4
    IL_0034:  sub
    IL_0035:  stind.r4
    IL_0036:  ldarg.0
    IL_0037:  ldc.r4     0.0
    IL_003c:  stind.r4
    IL_003d:  ret

    IL_003e:  ldarg.1
    IL_003f:  ldind.r4
    IL_0040:  ldc.r4     1.
    IL_0045:  ble.un.s   IL_005b

    IL_0047:  ldarg.0
    IL_0048:  ldarg.0
    IL_0049:  ldind.r4
    IL_004a:  ldarg.1
    IL_004b:  ldind.r4
    IL_004c:  ldc.r4     1.
    IL_0051:  sub
    IL_0052:  sub
    IL_0053:  stind.r4
    IL_0054:  ldarg.1
    IL_0055:  ldc.r4     1.
    IL_005a:  stind.r4
    IL_005b:  ret
  } // end of method FurnitureDesign::EnsureMinSize

  .method private hidebysig static bool  IsValueTransparent(int32 'value') cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  brfalse.s  IL_000e

    IL_0003:  ldarg.0
    IL_0004:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0009:  ldc.i4.s   15
    IL_000b:  ceq
    IL_000d:  ret

    IL_000e:  ldc.i4.1
    IL_000f:  ret
  } // end of method FurnitureDesign::IsValueTransparent

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  stfld      int32 Game.FurnitureDesign::m_index
    IL_0007:  ldarg.0
    IL_0008:  ldsfld     string [System.Runtime]System.String::Empty
    IL_000d:  stfld      string Game.FurnitureDesign::m_name
    IL_0012:  ldarg.0
    IL_0013:  ldc.i4.m1
    IL_0014:  stfld      int32 Game.FurnitureDesign::m_loadTimeLinkedDesignIndex
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.m1
    IL_001b:  stfld      int32 Game.FurnitureDesign::m_mountingFacesMask
    IL_0020:  ldarg.0
    IL_0021:  ldc.i4.m1
    IL_0022:  stfld      int32 Game.FurnitureDesign::m_transparentFacesMask
    IL_0027:  ldarg.0
    IL_0028:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_002d:  ret
  } // end of method FurnitureDesign::.ctor

  .property instance int32 Resolution()
  {
    .get instance int32 Game.FurnitureDesign::get_Resolution()
  } // end of property FurnitureDesign::Resolution
  .property instance int32 Hash()
  {
    .get instance int32 Game.FurnitureDesign::get_Hash()
  } // end of property FurnitureDesign::Hash
  .property instance valuetype [Engine]Engine.Box
          Box()
  {
    .get instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
  } // end of property FurnitureDesign::Box
  .property instance int32 ShadowStrengthFactor()
  {
    .get instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
  } // end of property FurnitureDesign::ShadowStrengthFactor
  .property instance bool IsLightEmitter()
  {
    .get instance bool Game.FurnitureDesign::get_IsLightEmitter()
  } // end of property FurnitureDesign::IsLightEmitter
  .property instance int32 MainValue()
  {
    .get instance int32 Game.FurnitureDesign::get_MainValue()
  } // end of property FurnitureDesign::MainValue
  .property instance int32 MountingFacesMask()
  {
    .get instance int32 Game.FurnitureDesign::get_MountingFacesMask()
  } // end of property FurnitureDesign::MountingFacesMask
  .property instance int32 TransparentFacesMask()
  {
    .get instance int32 Game.FurnitureDesign::get_TransparentFacesMask()
  } // end of property FurnitureDesign::TransparentFacesMask
  .property instance int32 Index()
  {
    .get instance int32 Game.FurnitureDesign::get_Index()
    .set instance void Game.FurnitureDesign::set_Index(int32)
  } // end of property FurnitureDesign::Index
  .property instance string Name()
  {
    .get instance string Game.FurnitureDesign::get_Name()
    .set instance void Game.FurnitureDesign::set_Name(string)
  } // end of property FurnitureDesign::Name
  .property instance class Game.FurnitureSet
          FurnitureSet()
  {
    .get instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
    .set instance void Game.FurnitureDesign::set_FurnitureSet(class Game.FurnitureSet)
  } // end of property FurnitureDesign::FurnitureSet
  .property instance class Game.FurnitureDesign
          LinkedDesign()
  {
    .get instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    .set instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
  } // end of property FurnitureDesign::LinkedDesign
  .property instance valuetype Game.FurnitureInteractionMode
          InteractionMode()
  {
    .get instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    .set instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
  } // end of property FurnitureDesign::InteractionMode
  .property instance class Game.FurnitureGeometry
          Geometry()
  {
    .get instance class Game.FurnitureGeometry Game.FurnitureDesign::get_Geometry()
  } // end of property FurnitureDesign::Geometry
} // end of class Game.FurnitureDesign