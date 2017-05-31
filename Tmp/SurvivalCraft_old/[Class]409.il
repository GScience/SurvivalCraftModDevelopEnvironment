.class public abstract auto ansi sealed beforefieldinit Game.ContentManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  8
    IL_0000:  ldstr      "app:/Content.pak"
    IL_0005:  call       void [Engine]Engine.Content.ContentCache::AddPackage(string)
    IL_000a:  ret
  } // end of method ContentManager::Initialize

  .method public hidebysig static object 
          Get(string name) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  call       object [Engine]Engine.Content.ContentCache::Get(string,
                                                                         bool)
    IL_0007:  ret
  } // end of method ContentManager::Get

  .method public hidebysig static object 
          Get(class [System.Runtime]System.Type 'type',
              string name) cil managed
  {
    // 代码大小       126 (0x7e)
    .maxstack  5
    .locals init (object V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldtoken    Game.Subtexture
    IL_0006:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  bne.un.s   IL_0014

    IL_000d:  ldarg.1
    IL_000e:  call       class Game.Subtexture Game.TextureAtlasManager::GetSubtexture(string)
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldtoken    [System.Runtime]System.String
    IL_001a:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_001f:  bne.un.s   IL_003b

    IL_0021:  ldarg.1
    IL_0022:  ldstr      "Strings/"
    IL_0027:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_002c:  brfalse.s  IL_003b

    IL_002e:  ldarg.1
    IL_002f:  ldc.i4.8
    IL_0030:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_0035:  call       string Game.StringsManager::GetString(string)
    IL_003a:  ret

    IL_003b:  ldarg.1
    IL_003c:  call       object Game.ContentManager::Get(string)
    IL_0041:  stloc.0
    IL_0042:  ldloc.0
    IL_0043:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0048:  ldarg.0
    IL_0049:  beq.s      IL_007c

    IL_004b:  ldstr      "Content \"{0}\" has type {1}, requested type was {2}"
    IL_0050:  ldc.i4.3
    IL_0051:  newarr     [System.Runtime]System.Object
    IL_0056:  dup
    IL_0057:  ldc.i4.0
    IL_0058:  ldarg.1
    IL_0059:  stelem.ref
    IL_005a:  dup
    IL_005b:  ldc.i4.1
    IL_005c:  ldloc.0
    IL_005d:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0062:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_0067:  stelem.ref
    IL_0068:  dup
    IL_0069:  ldc.i4.2
    IL_006a:  ldarg.0
    IL_006b:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_0070:  stelem.ref
    IL_0071:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0076:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_007b:  throw

    IL_007c:  ldloc.0
    IL_007d:  ret
  } // end of method ContentManager::Get

  .method public hidebysig static !!T  Get<T>(string name) cil managed
  {
    // 代码大小       22 (0x16)
    .maxstack  8
    IL_0000:  ldtoken    !!T
    IL_0005:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000a:  ldarg.0
    IL_000b:  call       object Game.ContentManager::Get(class [System.Runtime]System.Type,
                                                         string)
    IL_0010:  unbox.any  !!T
    IL_0015:  ret
  } // end of method ContentManager::Get

  .method public hidebysig static void  Dispose(string name) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void [Engine]Engine.Content.ContentCache::Dispose(string)
    IL_0006:  ret
  } // end of method ContentManager::Dispose

  .method public hidebysig static bool  IsContent(object content) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       bool [Engine]Engine.Content.ContentCache::IsContent(object)
    IL_0006:  ret
  } // end of method ContentManager::IsContent

  .method public hidebysig static valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> 
          List() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> [Engine]Engine.Content.ContentCache::List()
    IL_0005:  ret
  } // end of method ContentManager::List

  .method public hidebysig static valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> 
          List(string directory) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> [Engine]Engine.Content.ContentCache::List(string)
    IL_0006:  ret
  } // end of method ContentManager::List

} // end of class Game.ContentManager