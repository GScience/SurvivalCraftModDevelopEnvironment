.class public auto ansi beforefieldinit Game.TextureAtlas
       extends [System.Runtime]System.Object
{
  .field private class [Engine]Engine.Graphics.Texture2D m_texture
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle> m_rectangles
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Engine]Engine.Graphics.Texture2D texture,
                               string atlasDefinition,
                               string prefix) cil managed
  {
    // 代码大小       203 (0xcb)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1,
             string[] V_2,
             string V_3,
             valuetype [Engine]Engine.Rectangle V_4,
             valuetype [Engine]Engine.Rectangle V_5)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle> Game.TextureAtlas::m_rectangles
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  stfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_0018:  ldarg.2
    IL_0019:  ldc.i4.2
    IL_001a:  newarr     [System.Runtime]System.Char
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.s   10
    IL_0023:  stelem.i2
    IL_0024:  dup
    IL_0025:  ldc.i4.1
    IL_0026:  ldc.i4.s   13
    IL_0028:  stelem.i2
    IL_0029:  ldc.i4.1
    IL_002a:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002f:  stloc.0
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  br         IL_00c1

    IL_0037:  ldloc.0
    IL_0038:  ldloc.1
    IL_0039:  ldelem.ref
    IL_003a:  ldc.i4.1
    IL_003b:  newarr     [System.Runtime]System.Char
    IL_0040:  dup
    IL_0041:  ldc.i4.0
    IL_0042:  ldc.i4.s   32
    IL_0044:  stelem.i2
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  ldlen
    IL_004e:  conv.i4
    IL_004f:  ldc.i4.5
    IL_0050:  bge.s      IL_005d

    IL_0052:  ldstr      "Invalid texture atlas definition."
    IL_0057:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_005c:  throw

    IL_005d:  ldarg.3
    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.0
    IL_0060:  ldelem.ref
    IL_0061:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0066:  stloc.3
    IL_0067:  ldloca.s   V_5
    IL_0069:  initobj    [Engine]Engine.Rectangle
    IL_006f:  ldloca.s   V_5
    IL_0071:  ldloc.2
    IL_0072:  ldc.i4.1
    IL_0073:  ldelem.ref
    IL_0074:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_0079:  stfld      int32 [Engine]Engine.Rectangle::Left
    IL_007e:  ldloca.s   V_5
    IL_0080:  ldloc.2
    IL_0081:  ldc.i4.2
    IL_0082:  ldelem.ref
    IL_0083:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_0088:  stfld      int32 [Engine]Engine.Rectangle::Top
    IL_008d:  ldloca.s   V_5
    IL_008f:  ldloc.2
    IL_0090:  ldc.i4.3
    IL_0091:  ldelem.ref
    IL_0092:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_0097:  stfld      int32 [Engine]Engine.Rectangle::Width
    IL_009c:  ldloca.s   V_5
    IL_009e:  ldloc.2
    IL_009f:  ldc.i4.4
    IL_00a0:  ldelem.ref
    IL_00a1:  call       int32 [System.Runtime]System.Int32::Parse(string)
    IL_00a6:  stfld      int32 [Engine]Engine.Rectangle::Height
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  stloc.s    V_4
    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle> Game.TextureAtlas::m_rectangles
    IL_00b5:  ldloc.3
    IL_00b6:  ldloc.s    V_4
    IL_00b8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle>::Add(!0,
                                                                                                                                                         !1)
    IL_00bd:  ldloc.1
    IL_00be:  ldc.i4.1
    IL_00bf:  add
    IL_00c0:  stloc.1
    IL_00c1:  ldloc.1
    IL_00c2:  ldloc.0
    IL_00c3:  ldlen
    IL_00c4:  conv.i4
    IL_00c5:  blt        IL_0037

    IL_00ca:  ret
  } // end of method TextureAtlas::.ctor

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_Texture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_0006:  ret
  } // end of method TextureAtlas::get_Texture

  .method public hidebysig instance bool 
          ContainsTexture(string textureName) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle> Game.TextureAtlas::m_rectangles
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle>::ContainsKey(!0)
    IL_000c:  ret
  } // end of method TextureAtlas::ContainsTexture

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4> 
          GetTextureCoordinates(string textureName) cil managed
  {
    // 代码大小       151 (0x97)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Rectangle V_0,
             valuetype [Engine]Engine.Vector4 V_1,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle> Game.TextureAtlas::m_rectangles
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,valuetype [Engine]Engine.Rectangle>::TryGetValue(!0,
                                                                                                                                                                 !1&)
    IL_000e:  brfalse.s  IL_008d

    IL_0010:  ldloca.s   V_1
    IL_0012:  initobj    [Engine]Engine.Vector4
    IL_0018:  ldloca.s   V_1
    IL_001a:  ldloc.0
    IL_001b:  ldfld      int32 [Engine]Engine.Rectangle::Left
    IL_0020:  conv.r4
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_0027:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_002c:  conv.r4
    IL_002d:  div
    IL_002e:  stfld      float32 [Engine]Engine.Vector4::X
    IL_0033:  ldloca.s   V_1
    IL_0035:  ldloc.0
    IL_0036:  ldfld      int32 [Engine]Engine.Rectangle::Top
    IL_003b:  conv.r4
    IL_003c:  ldarg.0
    IL_003d:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_0042:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0047:  conv.r4
    IL_0048:  div
    IL_0049:  stfld      float32 [Engine]Engine.Vector4::Y
    IL_004e:  ldloca.s   V_1
    IL_0050:  ldloca.s   V_0
    IL_0052:  call       instance int32 [Engine]Engine.Rectangle::get_Right()
    IL_0057:  conv.r4
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_005e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0063:  conv.r4
    IL_0064:  div
    IL_0065:  stfld      float32 [Engine]Engine.Vector4::Z
    IL_006a:  ldloca.s   V_1
    IL_006c:  ldloca.s   V_0
    IL_006e:  call       instance int32 [Engine]Engine.Rectangle::get_Bottom()
    IL_0073:  conv.r4
    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::m_texture
    IL_007a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_007f:  conv.r4
    IL_0080:  div
    IL_0081:  stfld      float32 [Engine]Engine.Vector4::W
    IL_0086:  ldloc.1
    IL_0087:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
    IL_008c:  ret

    IL_008d:  ldloca.s   V_2
    IL_008f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>
    IL_0095:  ldloc.2
    IL_0096:  ret
  } // end of method TextureAtlas::GetTextureCoordinates

  .property instance class [Engine]Engine.Graphics.Texture2D
          Texture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.TextureAtlas::get_Texture()
  } // end of property TextureAtlas::Texture
} // end of class Game.TextureAtlas