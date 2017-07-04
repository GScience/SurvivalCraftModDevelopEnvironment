.class public abstract auto ansi sealed beforefieldinit Game.TextureAtlasManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture> m_subtextures
  .method public hidebysig static void  LoadAtlases() cil managed
  {
    // 代码大小       31 (0x1f)
    .maxstack  8
    IL_0000:  ldstr      "Atlases/AtlasTexture"
    IL_0005:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_000a:  ldstr      "Atlases/Atlas"
    IL_000f:  call       !!0 Game.ContentManager::Get<string>(string)
    IL_0014:  ldstr      "Textures/Atlas/"
    IL_0019:  call       void Game.TextureAtlasManager::LoadTextureAtlas(class [Engine]Engine.Graphics.Texture2D,
                                                                         string,
                                                                         string)
    IL_001e:  ret
  } // end of method TextureAtlasManager::LoadAtlases

  .method public hidebysig static class Game.Subtexture 
          GetSubtexture(string name) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  5
    .locals init (class Game.Subtexture V_0,
             class [System.Runtime]System.Exception V_1)
    IL_0000:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture> Game.TextureAtlasManager::m_subtextures
    IL_0005:  ldarg.0
    IL_0006:  ldloca.s   V_0
    IL_0008:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture>::TryGetValue(!0,
                                                                                                                                                    !1&)
    IL_000d:  brtrue.s   IL_004f

    .try
    {
      IL_000f:  ldarg.0
      IL_0010:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
      IL_0015:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_001a:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
      IL_001f:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Vector2,
                                                                valuetype [Engine]Engine.Vector2)
      IL_0024:  stloc.0
      IL_0025:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture> Game.TextureAtlasManager::m_subtextures
      IL_002a:  ldarg.0
      IL_002b:  ldloc.0
      IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture>::Add(!0,
                                                                                                                                              !1)
      IL_0031:  leave.s    IL_004f

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0033:  stloc.1
      IL_0034:  ldstr      "Required subtexture {0} not found in TextureAtlasM"
      + "anager."
      IL_0039:  ldc.i4.1
      IL_003a:  newarr     [System.Runtime]System.Object
      IL_003f:  dup
      IL_0040:  ldc.i4.0
      IL_0041:  ldarg.0
      IL_0042:  stelem.ref
      IL_0043:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_0048:  ldloc.1
      IL_0049:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string,
                                                                                                 class [System.Runtime]System.Exception)
      IL_004e:  throw

    }  // end handler
    IL_004f:  ldloc.0
    IL_0050:  ret
  } // end of method TextureAtlasManager::GetSubtexture

  .method private hidebysig static void  LoadTextureAtlas(class [Engine]Engine.Graphics.Texture2D texture,
                                                          string atlasDefinition,
                                                          string prefix) cil managed
  {
    // 代码大小       242 (0xf2)
    .maxstack  5
    .locals init (string[] V_0,
             int32 V_1,
             string[] V_2,
             string V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [Engine]Engine.Vector2 V_8,
             valuetype [Engine]Engine.Vector2 V_9,
             class Game.Subtexture V_10)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   10
    IL_000b:  stelem.i2
    IL_000c:  dup
    IL_000d:  ldc.i4.1
    IL_000e:  ldc.i4.s   13
    IL_0010:  stelem.i2
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  br         IL_00e8

    IL_001f:  ldloc.0
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  ldc.i4.1
    IL_0023:  newarr     [System.Runtime]System.Char
    IL_0028:  dup
    IL_0029:  ldc.i4.0
    IL_002a:  ldc.i4.s   32
    IL_002c:  stelem.i2
    IL_002d:  ldc.i4.1
    IL_002e:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_0033:  stloc.2
    IL_0034:  ldloc.2
    IL_0035:  ldlen
    IL_0036:  conv.i4
    IL_0037:  ldc.i4.5
    IL_0038:  bge.s      IL_0045

    IL_003a:  ldstr      "Invalid texture atlas definition."
    IL_003f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0044:  throw

    IL_0045:  ldarg.2
    IL_0046:  ldloc.2
    IL_0047:  ldc.i4.0
    IL_0048:  ldelem.ref
    IL_0049:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_004e:  stloc.3
    IL_004f:  ldloc.2
    IL_0050:  ldc.i4.1
    IL_0051:  ldelem.ref
    IL_0052:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0057:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_005c:  stloc.s    V_4
    IL_005e:  ldloc.2
    IL_005f:  ldc.i4.2
    IL_0060:  ldelem.ref
    IL_0061:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0066:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_006b:  stloc.s    V_5
    IL_006d:  ldloc.2
    IL_006e:  ldc.i4.3
    IL_006f:  ldelem.ref
    IL_0070:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0075:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_007a:  stloc.s    V_6
    IL_007c:  ldloc.2
    IL_007d:  ldc.i4.4
    IL_007e:  ldelem.ref
    IL_007f:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0084:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_0089:  stloc.s    V_7
    IL_008b:  ldloca.s   V_8
    IL_008d:  ldloc.s    V_4
    IL_008f:  conv.r4
    IL_0090:  ldarg.0
    IL_0091:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0096:  conv.r4
    IL_0097:  div
    IL_0098:  ldloc.s    V_5
    IL_009a:  conv.r4
    IL_009b:  ldarg.0
    IL_009c:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00a1:  conv.r4
    IL_00a2:  div
    IL_00a3:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00a8:  ldloca.s   V_9
    IL_00aa:  ldloc.s    V_4
    IL_00ac:  ldloc.s    V_6
    IL_00ae:  add
    IL_00af:  conv.r4
    IL_00b0:  ldarg.0
    IL_00b1:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00b6:  conv.r4
    IL_00b7:  div
    IL_00b8:  ldloc.s    V_5
    IL_00ba:  ldloc.s    V_7
    IL_00bc:  add
    IL_00bd:  conv.r4
    IL_00be:  ldarg.0
    IL_00bf:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00c4:  conv.r4
    IL_00c5:  div
    IL_00c6:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cb:  ldarg.0
    IL_00cc:  ldloc.s    V_8
    IL_00ce:  ldloc.s    V_9
    IL_00d0:  newobj     instance void Game.Subtexture::.ctor(class [Engine]Engine.Graphics.Texture2D,
                                                              valuetype [Engine]Engine.Vector2,
                                                              valuetype [Engine]Engine.Vector2)
    IL_00d5:  stloc.s    V_10
    IL_00d7:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture> Game.TextureAtlasManager::m_subtextures
    IL_00dc:  ldloc.3
    IL_00dd:  ldloc.s    V_10
    IL_00df:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture>::Add(!0,
                                                                                                                                            !1)
    IL_00e4:  ldloc.1
    IL_00e5:  ldc.i4.1
    IL_00e6:  add
    IL_00e7:  stloc.1
    IL_00e8:  ldloc.1
    IL_00e9:  ldloc.0
    IL_00ea:  ldlen
    IL_00eb:  conv.i4
    IL_00ec:  blt        IL_001f

    IL_00f1:  ret
  } // end of method TextureAtlasManager::LoadTextureAtlas

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<string,class Game.Subtexture> Game.TextureAtlasManager::m_subtextures
    IL_000a:  ret
  } // end of method TextureAtlasManager::.cctor

} // end of class Game.TextureAtlasManager