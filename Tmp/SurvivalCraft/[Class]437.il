.class public auto ansi beforefieldinit Game.CharacterSkinsCache
       extends [System.Runtime]System.Object
{
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> m_textures
  .method public hidebysig instance bool 
          ContainsTexture(class [Engine]Engine.Graphics.Texture2D texture) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::ContainsValue(!1)
    IL_000c:  ret
  } // end of method CharacterSkinsCache::ContainsTexture

  .method public hidebysig instance class [Engine]Engine.Graphics.Texture2D 
          GetTexture(string name) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  3
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_0006:  ldarg.1
    IL_0007:  ldloca.s   V_0
    IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::TryGetValue(!0,
                                                                                                                                                                      !1&)
    IL_000e:  brtrue.s   IL_0024

    IL_0010:  ldarg.1
    IL_0011:  call       class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsManager::LoadTexture(string)
    IL_0016:  stloc.0
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_001d:  ldarg.1
    IL_001e:  ldloc.0
    IL_001f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::Add(!0,
                                                                                                                                                              !1)
    IL_0024:  ldloc.0
    IL_0025:  ret
  } // end of method CharacterSkinsCache::GetTexture

  .method public hidebysig instance void 
          Clear() cil managed
  {
    // 代码大小       78 (0x4e)
    .maxstack  1
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<string,class [Engine]Engine.Graphics.Texture2D> V_0,
             class [Engine]Engine.Graphics.Texture2D V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::get_Values()
    IL_000b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<string,class [Engine]Engine.Graphics.Texture2D>::GetEnumerator()
    IL_0010:  stloc.0
    .try
    {
      IL_0011:  br.s       IL_0029

      IL_0013:  ldloca.s   V_0
      IL_0015:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<string,class [Engine]Engine.Graphics.Texture2D>::get_Current()
      IL_001a:  stloc.1
      IL_001b:  ldloc.1
      IL_001c:  call       bool Game.ContentManager::IsContent(object)
      IL_0021:  brtrue.s   IL_0029

      IL_0023:  ldloc.1
      IL_0024:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
      IL_0029:  ldloca.s   V_0
      IL_002b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<string,class [Engine]Engine.Graphics.Texture2D>::MoveNext()
      IL_0030:  brtrue.s   IL_0013

      IL_0032:  leave.s    IL_0042

    }  // end .try
    finally
    {
      IL_0034:  ldloca.s   V_0
      IL_0036:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<string,class [Engine]Engine.Graphics.Texture2D>
      IL_003c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0041:  endfinally
    }  // end handler
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_0048:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::Clear()
    IL_004d:  ret
  } // end of method CharacterSkinsCache::Clear

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [Engine]Engine.Graphics.Texture2D> Game.CharacterSkinsCache::m_textures
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0011:  ret
  } // end of method CharacterSkinsCache::.ctor

} // end of class Game.CharacterSkinsCache