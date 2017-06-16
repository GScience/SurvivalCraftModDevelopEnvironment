
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0




// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:20:0
}
.assembly extern Survivalcraft
{
  .ver 2:0:30:0
}
.assembly extern Engine
{
  .ver 0:0:0:0
}
.assembly extern System.Collections
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly extern System.Reflection
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly extern EntitySystem
{
  .ver 0:0:0:0
}
.assembly extern System.Diagnostics.Debug
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly extern System.Reflection.Extensions
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System.Linq
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System.Xml.XDocument
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly extern System.Threading.Tasks
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:10:0
}
.assembly UserAdditionCode
{
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                                   63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 04 54 65 73 74 00 00 )                      // ...Test..
  .custom instance void [System.Runtime]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 04 54 65 73 74 00 00 )                      // ...Test..
  .custom instance void [System.Runtime]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 12 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                        20 32 30 31 37 00 00 )                            //  2017..
  .custom instance void [System.Runtime]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [System.Runtime]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 15 2E 4E 45 54 43 6F 72 65 2C 56 65 72 73   // ....NETCore,Vers
                                                                                                              69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14 46 72 61   // ion=v5.0..T..Fra
                                                                                                              6D 65 77 6F 72 6B 44 69 73 70 6C 61 79 4E 61 6D   // meworkDisplayNam
                                                                                                              65 1A 2E 4E 45 54 20 66 6F 72 20 57 69 6E 64 6F   // e..NET for Windo
                                                                                                              77 73 20 55 6E 69 76 65 72 73 61 6C )             // ws Universal
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.mresource public GScience.Properties.Test.rd.xml
{
  // Offset: 0x00000000 Length: 0x0000055D
  // 警告: 创建了托管资源文件 GScience.Properties.Test.rd.xml
}
.module UserAdditionCode.dll
// MVID: {D8C10AB0-0DD0-4248-801F-842CA10E475E}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x004F0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit GScience.ModAPI.Info
       extends [System.Runtime]System.Object
{
  .field public static string author
  .field public static string version
  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.BuildConfiguration 
          get_BuildConfiguration() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.BuildConfiguration V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Info::get_BuildConfiguration

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.Platform 
          get_Platform() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.Platform V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.3
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Info::get_Platform

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Info::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldstr      "GM2000"
    IL_0005:  stsfld     string GScience.ModAPI.Info::author
    IL_000a:  ldstr      "1.0.0"
    IL_000f:  stsfld     string GScience.ModAPI.Info::version
    IL_0014:  ret
  } // end of method Info::.cctor

  .property valuetype [Survivalcraft]Game.BuildConfiguration
          BuildConfiguration()
  {
    .get valuetype [Survivalcraft]Game.BuildConfiguration GScience.ModAPI.Info::get_BuildConfiguration()
  } // end of property Info::BuildConfiguration
  .property valuetype [Survivalcraft]Game.Platform
          Platform()
  {
    .get valuetype [Survivalcraft]Game.Platform GScience.ModAPI.Info::get_Platform()
  } // end of property Info::Platform
} // end of class GScience.ModAPI.Info

.class private auto ansi beforefieldinit GScience.ModAPI.Debug.InputManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Debug.InputManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> '<>9__0_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void GScience.ModAPI.Debug.InputManager/'<>c'::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Debug.InputManager/'<>c' GScience.ModAPI.Debug.InputManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Initialize>b__0_0'(valuetype [Engine]Engine.Input.Key key) cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       void GScience.ModAPI.Debug.InputManager::onKeyboardDown(valuetype [Engine]Engine.Input.Key)
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::'<Initialize>b__0_0'

  } // end of class '<>c'

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldsfld     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> GScience.ModAPI.Debug.InputManager/'<>c'::'<>9__0_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class GScience.ModAPI.Debug.InputManager/'<>c' GScience.ModAPI.Debug.InputManager/'<>c'::'<>9'
    IL_000f:  ldftn      instance void GScience.ModAPI.Debug.InputManager/'<>c'::'<Initialize>b__0_0'(valuetype [Engine]Engine.Input.Key)
    IL_0015:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>::.ctor(object,
                                                                                                                        native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> GScience.ModAPI.Debug.InputManager/'<>c'::'<>9__0_0'
    IL_0020:  call       void [Engine]Engine.Input.Keyboard::add_KeyDown(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>)
    IL_0025:  nop
    IL_0026:  ret
  } // end of method InputManager::Initialize

  .method public hidebysig static void  onKeyboardDown(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   14
    IL_0004:  ceq
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_001d

    IL_000a:  nop
    IL_000b:  call       void [Survivalcraft]Game.DialogsManager::HideAllDialogs()
    IL_0010:  nop
    IL_0011:  newobj     instance void [Survivalcraft]Game.ViewGameLogDialog::.ctor()
    IL_0016:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
    IL_001b:  nop
    IL_001c:  nop
    IL_001d:  ret
  } // end of method InputManager::onKeyboardDown

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method InputManager::.ctor

} // end of class GScience.ModAPI.Debug.InputManager

.class public auto ansi beforefieldinit GScience.ModAPI.Block.Block`1<([Survivalcraft]Game.Block) BlockBaseType>
       extends [System.Runtime]System.Object
{
  .field private static class GScience.ModAPI.Block.Block`1<!BlockBaseType> m_block
  .method family hidebysig static void  setContentAndAddToGame(string blockContent) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       void GScience.ModAPI.Block.BlockManager::addBlock<!BlockBaseType>(string)
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Block`1::setContentAndAddToGame

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Block`1::.ctor

} // end of class GScience.ModAPI.Block.Block`1

.class public abstract auto ansi sealed beforefieldinit GScience.ModAPI.Block.BlockManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c__5`1'<([Survivalcraft]Game.Block) BlockBaseType>
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType> '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__5_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType>::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!0> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!BlockBaseType>::'<>9'
      IL_000a:  ret
    } // end of method '<>c__5`1'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__5`1'::.ctor

    .method assembly hidebysig instance bool 
            '<addBlock>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "Index"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c__5`1'::'<addBlock>b__5_0'

  } // end of class '<>c__5`1'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Block.BlockManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__6_0'
    .field public static class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> '<>9__6_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void GScience.ModAPI.Block.BlockManager/'<>c'::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<loadBlocks>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "Index"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c'::'<loadBlocks>b__6_0'

    .method assembly hidebysig instance bool 
            '<loadBlocks>b__6_1'(class [System.Reflection]System.Reflection.FieldInfo fi) cil managed
    {
      // 代码大小       47 (0x2f)
      .maxstack  2
      .locals init (bool V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_0007:  ldstr      "m_block"
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  brfalse.s  IL_001b

      IL_0013:  ldarg.1
      IL_0014:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_0019:  br.s       IL_001c

      IL_001b:  ldc.i4.0
      IL_001c:  stloc.0
      IL_001d:  ldloc.0
      IL_001e:  brfalse.s  IL_0029

      IL_0020:  ldarg.1
      IL_0021:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_0026:  stloc.1
      IL_0027:  br.s       IL_002d

      IL_0029:  ldc.i4.0
      IL_002a:  stloc.1
      IL_002b:  br.s       IL_002d

      IL_002d:  ldloc.1
      IL_002e:  ret
    } // end of method '<>c'::'<loadBlocks>b__6_1'

  } // end of class '<>c'

  .field private static int32 m_blockCount
  .field private static class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> blockList
  .field private static bool m_hasLoafSCBlock
  .method public hidebysig static int32  getCount() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (bool V_0,
             int32 V_1)
    IL_0000:  nop
    IL_0001:  ldsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse.s  IL_001b

    IL_000d:  nop
    IL_000e:  call       void GScience.ModAPI.Block.BlockManager::loadBlocks()
    IL_0013:  nop
    IL_0014:  ldc.i4.1
    IL_0015:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_001a:  nop
    IL_001b:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0020:  stloc.1
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method BlockManager::getCount

  .method public hidebysig static class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> 
          getBlockList() cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  2
    .locals init (bool V_0,
             class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> V_1)
    IL_0000:  nop
    IL_0001:  ldsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0006:  ldc.i4.0
    IL_0007:  ceq
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brfalse.s  IL_001b

    IL_000d:  nop
    IL_000e:  call       void GScience.ModAPI.Block.BlockManager::loadBlocks()
    IL_0013:  nop
    IL_0014:  ldc.i4.1
    IL_0015:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_001a:  nop
    IL_001b:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_0020:  stloc.1
    IL_0021:  br.s       IL_0023

    IL_0023:  ldloc.1
    IL_0024:  ret
  } // end of method BlockManager::getBlockList

  .method assembly hidebysig static void 
          addBlock<([Survivalcraft]Game.Block) BlockBaseType>(string blockContent) cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  4
    .locals init (class [Survivalcraft]Game.Block V_0,
             class [System.Reflection]System.Reflection.FieldInfo V_1,
             int32 V_2,
             bool V_3,
             object[] V_4,
             bool V_5,
             object[] V_6)
    IL_0000:  nop
    IL_0001:  ldtoken    !!BlockBaseType
    IL_0006:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000b:  call       instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0010:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
    IL_0015:  castclass  [Survivalcraft]Game.Block
    IL_001a:  stloc.0
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0021:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_0026:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9__5_0'
    IL_002b:  dup
    IL_002c:  brtrue.s   IL_0045

    IL_002e:  pop
    IL_002f:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!0> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9'
    IL_0034:  ldftn      instance bool class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<addBlock>b__5_0'(class [System.Reflection]System.Reflection.FieldInfo)
    IL_003a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                             native int)
    IL_003f:  dup
    IL_0040:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> class GScience.ModAPI.Block.BlockManager/'<>c__5`1'<!!BlockBaseType>::'<>9__5_0'
    IL_0045:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                              class [System.Runtime]System.Func`2<!!0,bool>)
    IL_004a:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_004f:  stloc.1
    IL_0050:  ldloc.1
    IL_0051:  brfalse.s  IL_006a

    IL_0053:  ldloc.1
    IL_0054:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
    IL_0059:  ldtoken    [System.Runtime]System.Int32
    IL_005e:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0063:  ceq
    IL_0065:  ldc.i4.0
    IL_0066:  ceq
    IL_0068:  br.s       IL_006b

    IL_006a:  ldc.i4.1
    IL_006b:  stloc.3
    IL_006c:  ldloc.3
    IL_006d:  brfalse.s  IL_0098

    IL_006f:  nop
    IL_0070:  ldc.i4.1
    IL_0071:  newarr     [System.Runtime]System.Object
    IL_0076:  dup
    IL_0077:  ldc.i4.0
    IL_0078:  ldloc.0
    IL_0079:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_007e:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_0083:  stelem.ref
    IL_0084:  stloc.s    V_4
    IL_0086:  ldstr      "Block type \"{0}\" does not have static field Index "
    + "of type int."
    IL_008b:  ldloc.s    V_4
    IL_008d:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0092:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0097:  throw

    IL_0098:  ldloc.1
    IL_0099:  ldnull
    IL_009a:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
    IL_009f:  unbox.any  [System.Runtime]System.Int32
    IL_00a4:  stloc.2
    IL_00a5:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_00aa:  ldloc.2
    IL_00ab:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::ContainsKey(!0)
    IL_00b0:  stloc.s    V_5
    IL_00b2:  ldloc.s    V_5
    IL_00b4:  brfalse.s  IL_00df

    IL_00b6:  nop
    IL_00b7:  ldc.i4.1
    IL_00b8:  newarr     [System.Runtime]System.Object
    IL_00bd:  dup
    IL_00be:  ldc.i4.0
    IL_00bf:  ldloc.0
    IL_00c0:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_00c5:  callvirt   instance string [System.Runtime]System.Type::get_FullName()
    IL_00ca:  stelem.ref
    IL_00cb:  stloc.s    V_6
    IL_00cd:  ldstr      "Index of block type \"{0}\" conflicts with another b"
    + "lock."
    IL_00d2:  ldloc.s    V_6
    IL_00d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d9:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00de:  throw

    IL_00df:  ldloc.0
    IL_00e0:  ldloc.2
    IL_00e1:  stfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_00e6:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_00eb:  ldloc.2
    IL_00ec:  ldloc.0
    IL_00ed:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::Add(!0,
                                                                                                                                                     !1)
    IL_00f2:  nop
    IL_00f3:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_00f8:  ldloc.2
    IL_00f9:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00fe:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0103:  ret
  } // end of method BlockManager::addBlock

  .method assembly hidebysig static void 
          loadBlocks() cil managed
  {
    // 代码大小       541 (0x21d)
    .maxstack  4
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_0,
             class [System.Reflection]System.Reflection.TypeInfo V_1,
             bool V_2,
             class [System.Reflection]System.Reflection.FieldInfo V_3,
             int32 V_4,
             class [Survivalcraft]Game.Block V_5,
             bool V_6,
             object[] V_7,
             bool V_8,
             object[] V_9,
             bool V_10,
             class [System.Reflection]System.Reflection.FieldInfo V_11,
             bool V_12,
             object[] V_13)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldtoken    Game.BlocksManager
    IL_0007:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_000c:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_0011:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_0016:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_001b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_0020:  stloc.0
    .try
    {
      IL_0021:  br         IL_0204

      IL_0026:  ldloc.0
      IL_0027:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_002c:  stloc.1
      IL_002d:  nop
      IL_002e:  ldloc.1
      IL_002f:  ldtoken    [Survivalcraft]Game.Block
      IL_0034:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_0039:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_003e:  brfalse.s  IL_004b

      IL_0040:  ldloc.1
      IL_0041:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_0046:  ldc.i4.0
      IL_0047:  ceq
      IL_0049:  br.s       IL_004c

      IL_004b:  ldc.i4.0
      IL_004c:  stloc.2
      IL_004d:  ldloc.2
      IL_004e:  brfalse    IL_0153

      IL_0053:  nop
      IL_0054:  ldloc.1
      IL_0055:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_005a:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
      IL_005f:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_0'
      IL_0064:  dup
      IL_0065:  brtrue.s   IL_007e

      IL_0067:  pop
      IL_0068:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_006d:  ldftn      instance bool GScience.ModAPI.Block.BlockManager/'<>c'::'<loadBlocks>b__6_0'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_0073:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_0078:  dup
      IL_0079:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_0'
      IL_007e:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_0083:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0088:  stloc.3
      IL_0089:  ldloc.3
      IL_008a:  brfalse.s  IL_00a3

      IL_008c:  ldloc.3
      IL_008d:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_0092:  ldtoken    [System.Runtime]System.Int32
      IL_0097:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_009c:  ceq
      IL_009e:  ldc.i4.0
      IL_009f:  ceq
      IL_00a1:  br.s       IL_00a4

      IL_00a3:  ldc.i4.1
      IL_00a4:  stloc.s    V_6
      IL_00a6:  ldloc.s    V_6
      IL_00a8:  brfalse.s  IL_00ce

      IL_00aa:  nop
      IL_00ab:  ldc.i4.1
      IL_00ac:  newarr     [System.Runtime]System.Object
      IL_00b1:  dup
      IL_00b2:  ldc.i4.0
      IL_00b3:  ldloc.1
      IL_00b4:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_00b9:  stelem.ref
      IL_00ba:  stloc.s    V_7
      IL_00bc:  ldstr      "Block type \"{0}\" does not have static field Index "
      + "of type int."
      IL_00c1:  ldloc.s    V_7
      IL_00c3:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00c8:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_00cd:  throw

      IL_00ce:  ldloc.3
      IL_00cf:  ldnull
      IL_00d0:  callvirt   instance object [System.Reflection]System.Reflection.FieldInfo::GetValue(object)
      IL_00d5:  unbox.any  [System.Runtime]System.Int32
      IL_00da:  stloc.s    V_4
      IL_00dc:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
      IL_00e1:  ldloc.s    V_4
      IL_00e3:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::ContainsKey(!0)
      IL_00e8:  stloc.s    V_8
      IL_00ea:  ldloc.s    V_8
      IL_00ec:  brfalse.s  IL_0112

      IL_00ee:  nop
      IL_00ef:  ldc.i4.1
      IL_00f0:  newarr     [System.Runtime]System.Object
      IL_00f5:  dup
      IL_00f6:  ldc.i4.0
      IL_00f7:  ldloc.1
      IL_00f8:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_00fd:  stelem.ref
      IL_00fe:  stloc.s    V_9
      IL_0100:  ldstr      "Index of block type \"{0}\" conflicts with another b"
      + "lock."
      IL_0105:  ldloc.s    V_9
      IL_0107:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_010c:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0111:  throw

      IL_0112:  ldloc.1
      IL_0113:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_0118:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_011d:  castclass  [Survivalcraft]Game.Block
      IL_0122:  stloc.s    V_5
      IL_0124:  ldloc.s    V_5
      IL_0126:  ldloc.s    V_4
      IL_0128:  stfld      int32 [Survivalcraft]Game.Block::BlockIndex
      IL_012d:  ldsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
      IL_0132:  ldloc.s    V_4
      IL_0134:  ldloc.s    V_5
      IL_0136:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::Add(!0,
                                                                                                                                                       !1)
      IL_013b:  nop
      IL_013c:  ldsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
      IL_0141:  ldloc.s    V_4
      IL_0143:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0148:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
      IL_014d:  nop
      IL_014e:  br         IL_0203

      IL_0153:  ldloc.1
      IL_0154:  ldtoken    GScience.ModAPI.Block.Block`1
      IL_0159:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_015e:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsSubclassOf(class [System.Runtime]System.Type)
      IL_0163:  brfalse.s  IL_0170

      IL_0165:  ldloc.1
      IL_0166:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_016b:  ldc.i4.0
      IL_016c:  ceq
      IL_016e:  br.s       IL_0171

      IL_0170:  ldc.i4.0
      IL_0171:  stloc.s    V_10
      IL_0173:  ldloc.s    V_10
      IL_0175:  brfalse    IL_0203

      IL_017a:  nop
      IL_017b:  ldloc.1
      IL_017c:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_0181:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
      IL_0186:  ldsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_1'
      IL_018b:  dup
      IL_018c:  brtrue.s   IL_01a5

      IL_018e:  pop
      IL_018f:  ldsfld     class GScience.ModAPI.Block.BlockManager/'<>c' GScience.ModAPI.Block.BlockManager/'<>c'::'<>9'
      IL_0194:  ldftn      instance bool GScience.ModAPI.Block.BlockManager/'<>c'::'<loadBlocks>b__6_1'(class [System.Reflection]System.Reflection.FieldInfo)
      IL_019a:  newobj     instance void class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool>::.ctor(object,
                                                                                                                                               native int)
      IL_019f:  dup
      IL_01a0:  stsfld     class [System.Runtime]System.Func`2<class [System.Reflection]System.Reflection.FieldInfo,bool> GScience.ModAPI.Block.BlockManager/'<>c'::'<>9__6_1'
      IL_01a5:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
      IL_01aa:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [System.Reflection]System.Reflection.FieldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_01af:  stloc.s    V_11
      IL_01b1:  ldloc.s    V_11
      IL_01b3:  brfalse.s  IL_01cd

      IL_01b5:  ldloc.s    V_11
      IL_01b7:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
      IL_01bc:  ldtoken    GScience.ModAPI.Block.Block`1
      IL_01c1:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_01c6:  ceq
      IL_01c8:  ldc.i4.0
      IL_01c9:  ceq
      IL_01cb:  br.s       IL_01ce

      IL_01cd:  ldc.i4.1
      IL_01ce:  stloc.s    V_12
      IL_01d0:  ldloc.s    V_12
      IL_01d2:  brfalse.s  IL_01f8

      IL_01d4:  nop
      IL_01d5:  ldc.i4.1
      IL_01d6:  newarr     [System.Runtime]System.Object
      IL_01db:  dup
      IL_01dc:  ldc.i4.0
      IL_01dd:  ldloc.1
      IL_01de:  callvirt   instance string [System.Reflection]System.Reflection.TypeInfo::get_FullName()
      IL_01e3:  stelem.ref
      IL_01e4:  stloc.s    V_13
      IL_01e6:  ldstr      "Block type \"{0}\" does not have static field m_bloc"
      + "k of type int."
      IL_01eb:  ldloc.s    V_13
      IL_01ed:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_01f2:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_01f7:  throw

      IL_01f8:  ldstr      "Block type \"{0}\" does not have static field m_bloc"
      + "k of type int."
      IL_01fd:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0202:  throw

      IL_0203:  nop
      IL_0204:  ldloc.0
      IL_0205:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_020a:  brtrue     IL_0026

      IL_020f:  leave.s    IL_021c

    }  // end .try
    finally
    {
      IL_0211:  ldloc.0
      IL_0212:  brfalse.s  IL_021b

      IL_0214:  ldloc.0
      IL_0215:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_021a:  nop
      IL_021b:  endfinally
    }  // end handler
    IL_021c:  ret
  } // end of method BlockManager::loadBlocks

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  stsfld     int32 GScience.ModAPI.Block.BlockManager::m_blockCount
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::.ctor()
    IL_000b:  stsfld     class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::blockList
    IL_0010:  ldc.i4.0
    IL_0011:  stsfld     bool GScience.ModAPI.Block.BlockManager::m_hasLoafSCBlock
    IL_0016:  ret
  } // end of method BlockManager::.cctor

} // end of class GScience.ModAPI.Block.BlockManager

.class public abstract auto ansi sealed Game.BlocksManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlockByTypeName>b__0'(class [Survivalcraft]Game.Block b) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass14_0'::'<FindBlockByTypeName>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BlocksManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> '<>9__15_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BlocksManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance class [Survivalcraft]Game.Block 
            '<FindBlocksByCraftingId>b__15_0'(class [Survivalcraft]Game.Block b) cil managed
    {
      // 代码大小       2 (0x2)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ret
    } // end of method '<>c'::'<FindBlocksByCraftingId>b__15_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass17_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__0'(class [Survivalcraft]Game.Block v) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass17_0'::'<LoadBlocksData>b__0'

  } // end of class '<>c__DisplayClass17_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string refTypeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass17_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__1'(class [Survivalcraft]Game.Block v) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass17_1'::'<LoadBlocksData>b__1'

  } // end of class '<>c__DisplayClass17_1'

  .field private static class [Survivalcraft]Game.Block[] m_blocks
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_categories
  .field private static class [Survivalcraft]Game.DrawBlockEnvironmentData m_defaultEnvironmentData
  .field private static class [Survivalcraft]Game.FluidBlock[] m_fluidBlocks
  .field private static class [Engine]Engine.Graphics.RasterizerState m_rasterizerState
  .field private static valuetype [Engine]Engine.Vector4[] m_slotTexCoords
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (class [Engine]Engine.Graphics.RasterizerState V_0)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_000a:  newobj     instance void [Survivalcraft]Game.DrawBlockEnvironmentData::.ctor()
    IL_000f:  stsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_0014:  nop
    IL_0015:  newobj     instance void [Engine]Engine.Graphics.RasterizerState::.ctor()
    IL_001a:  dup
    IL_001b:  ldc.i4.2
    IL_001c:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_CullMode(valuetype [Engine]Engine.Graphics.CullMode)
    IL_0021:  nop
    IL_0022:  dup
    IL_0023:  ldc.i4.1
    IL_0024:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_ScissorTestEnable(bool)
    IL_0029:  nop
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  stsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_0031:  ldc.i4     0x100
    IL_0036:  newarr     [Engine]Engine.Vector4
    IL_003b:  stsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0040:  ret
  } // end of method BlocksManager::.cctor

  .method private hidebysig static void  CalculateSlotTexCoordTables() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_001c

    IL_0005:  nop
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_000b:  ldloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       valuetype [Engine]Engine.Vector4 Game.BlocksManager::TextureSlotToTextureCoords(int32)
    IL_0012:  stelem     [Engine]Engine.Vector4
    IL_0017:  nop
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.1
    IL_001a:  add
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldc.i4     0x100
    IL_0022:  clt
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  brtrue.s   IL_0005

    IL_0028:  ret
  } // end of method BlocksManager::CalculateSlotTexCoordTables

  .method public hidebysig static int32  DamageItem(int32 'value',
                                                    int32 damageCount) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  3
    .locals init (int32 V_0,
             class [Survivalcraft]Game.Block V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_0007:  stloc.0
    IL_0008:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldloc.0
    IL_000e:  ldelem.ref
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  ldfld      int32 [Survivalcraft]Game.Block::Durability
    IL_0016:  ldc.i4.0
    IL_0017:  clt
    IL_0019:  stloc.3
    IL_001a:  ldloc.3
    IL_001b:  brfalse.s  IL_0023

    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  stloc.s    V_4
    IL_0021:  br.s       IL_0057

    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance int32 [Survivalcraft]Game.Block::GetDamage(int32)
    IL_002a:  ldarg.1
    IL_002b:  add
    IL_002c:  stloc.2
    IL_002d:  ldloc.2
    IL_002e:  ldloc.1
    IL_002f:  ldfld      int32 [Survivalcraft]Game.Block::Durability
    IL_0034:  cgt
    IL_0036:  ldc.i4.0
    IL_0037:  ceq
    IL_0039:  stloc.s    V_5
    IL_003b:  ldloc.s    V_5
    IL_003d:  brfalse.s  IL_004c

    IL_003f:  nop
    IL_0040:  ldloc.1
    IL_0041:  ldarg.0
    IL_0042:  ldloc.2
    IL_0043:  callvirt   instance int32 [Survivalcraft]Game.Block::SetDamage(int32,
                                                                             int32)
    IL_0048:  stloc.s    V_4
    IL_004a:  br.s       IL_0057

    IL_004c:  ldloc.1
    IL_004d:  ldarg.0
    IL_004e:  callvirt   instance int32 [Survivalcraft]Game.Block::GetDamageDestructionValue(int32)
    IL_0053:  stloc.s    V_4
    IL_0055:  br.s       IL_0057

    IL_0057:  ldloc.s    V_4
    IL_0059:  ret
  } // end of method BlocksManager::DamageItem

  .method public hidebysig static void  DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      valuetype [Engine]Engine.Vector3 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      valuetype [Engine]Engine.Color topColor,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       1530 (0x5fa)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             int32 V_14,
             class [Survivalcraft]Game.Block V_15,
             valuetype [Engine]Engine.Vector4 V_16,
             valuetype [Engine]Engine.Color V_17,
             class [Engine]Engine.Graphics.TexturedBatch3D V_18,
             bool V_19,
             valuetype [Engine]Engine.Matrix V_20)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_0035:  ldarg.s    environmentData
    IL_0037:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_003c:  ldelem.r4
    IL_003d:  stloc.1
    IL_003e:  ldarg.s    color
    IL_0040:  ldloc.1
    IL_0041:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0046:  starg.s    color
    IL_0048:  ldarga.s   color
    IL_004a:  ldc.i4     0xff
    IL_004f:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0054:  nop
    IL_0055:  ldarg.s    topColor
    IL_0057:  ldloc.1
    IL_0058:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005d:  starg.s    topColor
    IL_005f:  ldarga.s   topColor
    IL_0061:  ldc.i4     0xff
    IL_0066:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006b:  nop
    IL_006c:  ldarg.3
    IL_006d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0072:  ldarg.2
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0078:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007d:  stloc.2
    IL_007e:  ldarg.3
    IL_007f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0084:  ldarg.2
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_008f:  stloc.3
    IL_0090:  ldarg.3
    IL_0091:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0096:  ldarg.2
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldarg.3
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  ldc.r4     0.5
    IL_00b2:  ldloc.2
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00b8:  ldloc.3
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00be:  ldloc.s    V_4
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloc.s    V_5
    IL_00d3:  ldc.r4     0.5
    IL_00d8:  ldloc.2
    IL_00d9:  ldloc.3
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00df:  ldloc.s    V_4
    IL_00e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f0:  stloc.s    V_7
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldc.r4     0.5
    IL_00f9:  ldloc.2
    IL_00fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00ff:  ldloc.3
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0105:  ldloc.s    V_4
    IL_0107:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0116:  stloc.s    V_8
    IL_0118:  ldloc.s    V_5
    IL_011a:  ldc.r4     0.5
    IL_011f:  ldloc.2
    IL_0120:  ldloc.3
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  ldloc.s    V_4
    IL_0128:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_012d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0132:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0137:  stloc.s    V_9
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldc.r4     0.5
    IL_0140:  ldloc.2
    IL_0141:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0146:  ldloc.3
    IL_0147:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_014c:  ldloc.s    V_4
    IL_014e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015d:  stloc.s    V_10
    IL_015f:  ldloc.s    V_5
    IL_0161:  ldc.r4     0.5
    IL_0166:  ldloc.2
    IL_0167:  ldloc.3
    IL_0168:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_016d:  ldloc.s    V_4
    IL_016f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  stloc.s    V_11
    IL_0180:  ldloc.s    V_5
    IL_0182:  ldc.r4     0.5
    IL_0187:  ldloc.2
    IL_0188:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_018d:  ldloc.3
    IL_018e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0193:  ldloc.s    V_4
    IL_0195:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a4:  stloc.s    V_12
    IL_01a6:  ldloc.s    V_5
    IL_01a8:  ldc.r4     0.5
    IL_01ad:  ldloc.2
    IL_01ae:  ldloc.3
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  ldloc.s    V_4
    IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c5:  stloc.s    V_13
    IL_01c7:  ldarg.s    environmentData
    IL_01c9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_01d3:  stloc.s    V_19
    IL_01d5:  ldloc.s    V_19
    IL_01d7:  brfalse.s  IL_0249

    IL_01d9:  nop
    IL_01da:  ldarg.s    environmentData
    IL_01dc:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01e1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_01e6:  stloc.s    V_20
    IL_01e8:  ldloca.s   V_6
    IL_01ea:  ldloca.s   V_20
    IL_01ec:  ldloca.s   V_6
    IL_01ee:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01f3:  nop
    IL_01f4:  ldloca.s   V_7
    IL_01f6:  ldloca.s   V_20
    IL_01f8:  ldloca.s   V_7
    IL_01fa:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01ff:  nop
    IL_0200:  ldloca.s   V_8
    IL_0202:  ldloca.s   V_20
    IL_0204:  ldloca.s   V_8
    IL_0206:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_020b:  nop
    IL_020c:  ldloca.s   V_9
    IL_020e:  ldloca.s   V_20
    IL_0210:  ldloca.s   V_9
    IL_0212:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0217:  nop
    IL_0218:  ldloca.s   V_10
    IL_021a:  ldloca.s   V_20
    IL_021c:  ldloca.s   V_10
    IL_021e:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0223:  nop
    IL_0224:  ldloca.s   V_11
    IL_0226:  ldloca.s   V_20
    IL_0228:  ldloca.s   V_11
    IL_022a:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_022f:  nop
    IL_0230:  ldloca.s   V_12
    IL_0232:  ldloca.s   V_20
    IL_0234:  ldloca.s   V_12
    IL_0236:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_023b:  nop
    IL_023c:  ldloca.s   V_13
    IL_023e:  ldloca.s   V_20
    IL_0240:  ldloca.s   V_13
    IL_0242:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0247:  nop
    IL_0248:  nop
    IL_0249:  ldarg.1
    IL_024a:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_024f:  stloc.s    V_14
    IL_0251:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0256:  ldloc.s    V_14
    IL_0258:  ldelem.ref
    IL_0259:  stloc.s    V_15
    IL_025b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0260:  ldloc.s    V_15
    IL_0262:  ldc.i4.0
    IL_0263:  ldarg.1
    IL_0264:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0269:  ldelem     [Engine]Engine.Vector4
    IL_026e:  stloc.s    V_16
    IL_0270:  ldarg.s    color
    IL_0272:  ldarg.3
    IL_0273:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0278:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_027d:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0282:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0287:  stloc.s    V_17
    IL_0289:  ldloca.s   V_17
    IL_028b:  ldc.i4     0xff
    IL_0290:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0295:  nop
    IL_0296:  ldarg.0
    IL_0297:  ldloc.0
    IL_0298:  ldc.i4.1
    IL_0299:  ldc.i4.0
    IL_029a:  ldnull
    IL_029b:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_02a0:  ldnull
    IL_02a1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_02a6:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_02ab:  stloc.s    V_18
    IL_02ad:  ldloc.s    V_18
    IL_02af:  ldloc.s    V_6
    IL_02b1:  ldloc.s    V_8
    IL_02b3:  ldloc.s    V_9
    IL_02b5:  ldloc.s    V_7
    IL_02b7:  ldloc.s    V_16
    IL_02b9:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_02be:  ldloc.s    V_16
    IL_02c0:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02c5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ca:  ldloc.s    V_16
    IL_02cc:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_02d1:  ldloc.s    V_16
    IL_02d3:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02dd:  ldloc.s    V_16
    IL_02df:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02e4:  ldloc.s    V_16
    IL_02e6:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02eb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f0:  ldloc.s    V_16
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02f7:  ldloc.s    V_16
    IL_02f9:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02fe:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0303:  ldloc.s    V_17
    IL_0305:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_030a:  nop
    IL_030b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0310:  ldloc.s    V_15
    IL_0312:  ldc.i4.2
    IL_0313:  ldarg.1
    IL_0314:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0319:  ldelem     [Engine]Engine.Vector4
    IL_031e:  stloc.s    V_16
    IL_0320:  ldarg.s    color
    IL_0322:  ldarg.3
    IL_0323:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0328:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_032d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0332:  stloc.s    V_17
    IL_0334:  ldloca.s   V_17
    IL_0336:  ldc.i4     0xff
    IL_033b:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0340:  nop
    IL_0341:  ldloc.s    V_18
    IL_0343:  ldloc.s    V_10
    IL_0345:  ldloc.s    V_11
    IL_0347:  ldloc.s    V_13
    IL_0349:  ldloc.s    V_12
    IL_034b:  ldloc.s    V_16
    IL_034d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0352:  ldloc.s    V_16
    IL_0354:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0359:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_035e:  ldloc.s    V_16
    IL_0360:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0365:  ldloc.s    V_16
    IL_0367:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_036c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0371:  ldloc.s    V_16
    IL_0373:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0378:  ldloc.s    V_16
    IL_037a:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_037f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0384:  ldloc.s    V_16
    IL_0386:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_038b:  ldloc.s    V_16
    IL_038d:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0392:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0397:  ldloc.s    V_17
    IL_0399:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_039e:  nop
    IL_039f:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_03a4:  ldloc.s    V_15
    IL_03a6:  ldc.i4.5
    IL_03a7:  ldarg.1
    IL_03a8:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_03ad:  ldelem     [Engine]Engine.Vector4
    IL_03b2:  stloc.s    V_16
    IL_03b4:  ldarg.s    color
    IL_03b6:  ldarg.3
    IL_03b7:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_03bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_03c1:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_03c6:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_03cb:  stloc.s    V_17
    IL_03cd:  ldloca.s   V_17
    IL_03cf:  ldc.i4     0xff
    IL_03d4:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_03d9:  nop
    IL_03da:  ldloc.s    V_18
    IL_03dc:  ldloc.s    V_6
    IL_03de:  ldloc.s    V_7
    IL_03e0:  ldloc.s    V_11
    IL_03e2:  ldloc.s    V_10
    IL_03e4:  ldloc.s    V_16
    IL_03e6:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_03eb:  ldloc.s    V_16
    IL_03ed:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_03f2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f7:  ldloc.s    V_16
    IL_03f9:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_03fe:  ldloc.s    V_16
    IL_0400:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0405:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_040a:  ldloc.s    V_16
    IL_040c:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0411:  ldloc.s    V_16
    IL_0413:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0418:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041d:  ldloc.s    V_16
    IL_041f:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0424:  ldloc.s    V_16
    IL_0426:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_042b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0430:  ldloc.s    V_17
    IL_0432:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0437:  nop
    IL_0438:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_043d:  ldloc.s    V_15
    IL_043f:  ldc.i4.4
    IL_0440:  ldarg.1
    IL_0441:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0446:  ldelem     [Engine]Engine.Vector4
    IL_044b:  stloc.s    V_16
    IL_044d:  ldarg.s    topColor
    IL_044f:  ldarg.3
    IL_0450:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0455:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_045a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_045f:  stloc.s    V_17
    IL_0461:  ldloca.s   V_17
    IL_0463:  ldc.i4     0xff
    IL_0468:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_046d:  nop
    IL_046e:  ldloc.s    V_18
    IL_0470:  ldloc.s    V_8
    IL_0472:  ldloc.s    V_12
    IL_0474:  ldloc.s    V_13
    IL_0476:  ldloc.s    V_9
    IL_0478:  ldloc.s    V_16
    IL_047a:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_047f:  ldloc.s    V_16
    IL_0481:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0486:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_048b:  ldloc.s    V_16
    IL_048d:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0492:  ldloc.s    V_16
    IL_0494:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0499:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_049e:  ldloc.s    V_16
    IL_04a0:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04a5:  ldloc.s    V_16
    IL_04a7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_04ac:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b1:  ldloc.s    V_16
    IL_04b3:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04b8:  ldloc.s    V_16
    IL_04ba:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_04bf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04c4:  ldloc.s    V_17
    IL_04c6:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_04cb:  nop
    IL_04cc:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_04d1:  ldloc.s    V_15
    IL_04d3:  ldc.i4.1
    IL_04d4:  ldarg.1
    IL_04d5:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_04da:  ldelem     [Engine]Engine.Vector4
    IL_04df:  stloc.s    V_16
    IL_04e1:  ldarg.s    color
    IL_04e3:  ldarg.3
    IL_04e4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_04e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_04ee:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_04f3:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_04f8:  stloc.s    V_17
    IL_04fa:  ldloca.s   V_17
    IL_04fc:  ldc.i4     0xff
    IL_0501:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0506:  nop
    IL_0507:  ldloc.s    V_18
    IL_0509:  ldloc.s    V_6
    IL_050b:  ldloc.s    V_10
    IL_050d:  ldloc.s    V_12
    IL_050f:  ldloc.s    V_8
    IL_0511:  ldloc.s    V_16
    IL_0513:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0518:  ldloc.s    V_16
    IL_051a:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_051f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0524:  ldloc.s    V_16
    IL_0526:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_052b:  ldloc.s    V_16
    IL_052d:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0532:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0537:  ldloc.s    V_16
    IL_0539:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_053e:  ldloc.s    V_16
    IL_0540:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0545:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054a:  ldloc.s    V_16
    IL_054c:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0551:  ldloc.s    V_16
    IL_0553:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0558:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_055d:  ldloc.s    V_17
    IL_055f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0564:  nop
    IL_0565:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_056a:  ldloc.s    V_15
    IL_056c:  ldc.i4.3
    IL_056d:  ldarg.1
    IL_056e:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0573:  ldelem     [Engine]Engine.Vector4
    IL_0578:  stloc.s    V_16
    IL_057a:  ldarg.s    color
    IL_057c:  ldarg.3
    IL_057d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0582:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0587:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_058c:  stloc.s    V_17
    IL_058e:  ldloca.s   V_17
    IL_0590:  ldc.i4     0xff
    IL_0595:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_059a:  nop
    IL_059b:  ldloc.s    V_18
    IL_059d:  ldloc.s    V_7
    IL_059f:  ldloc.s    V_9
    IL_05a1:  ldloc.s    V_13
    IL_05a3:  ldloc.s    V_11
    IL_05a5:  ldloc.s    V_16
    IL_05a7:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_05ac:  ldloc.s    V_16
    IL_05ae:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_05b3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05b8:  ldloc.s    V_16
    IL_05ba:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_05bf:  ldloc.s    V_16
    IL_05c1:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_05c6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05cb:  ldloc.s    V_16
    IL_05cd:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05d2:  ldloc.s    V_16
    IL_05d4:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_05d9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05de:  ldloc.s    V_16
    IL_05e0:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05e5:  ldloc.s    V_16
    IL_05e7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_05ec:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05f1:  ldloc.s    V_17
    IL_05f3:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05f8:  nop
    IL_05f9:  ret
  } // end of method BlocksManager::DrawCubeBlock

  .method public hidebysig static void  DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       665 (0x299)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             class [Engine]Engine.Graphics.Texture2D V_2,
             class [Engine]Engine.Graphics.TexturedBatch3D V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             int32 V_10,
             class [Survivalcraft]Game.Block V_11,
             valuetype [Engine]Engine.Vector4 V_12,
             bool V_13,
             bool V_14,
             valuetype [Engine]Engine.Matrix V_15,
             bool V_16)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.2
    IL_0030:  ldarg.0
    IL_0031:  ldloc.2
    IL_0032:  ldc.i4.1
    IL_0033:  ldc.i4.0
    IL_0034:  ldnull
    IL_0035:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_003a:  ldnull
    IL_003b:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0045:  stloc.3
    IL_0046:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_004b:  ldarg.s    environmentData
    IL_004d:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_0052:  ldelem.r4
    IL_0053:  stloc.s    V_4
    IL_0055:  ldarg.s    color
    IL_0057:  ldloc.s    V_4
    IL_0059:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005e:  starg.s    color
    IL_0060:  ldarga.s   color
    IL_0062:  ldc.i4     0xff
    IL_0067:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006c:  nop
    IL_006d:  ldarg.s    environmentData
    IL_006f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0074:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0079:  stloc.s    V_13
    IL_007b:  ldloc.s    V_13
    IL_007d:  brfalse.s  IL_00bc

    IL_007f:  nop
    IL_0080:  ldarg.s    environmentData
    IL_0082:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0087:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_008c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_009b:  stloc.0
    IL_009c:  ldarg.s    environmentData
    IL_009e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_00a3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00a8:  ldloc.0
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00b8:  stloc.1
    IL_00b9:  nop
    IL_00ba:  br.s       IL_00cc

    IL_00bc:  nop
    IL_00bd:  ldarg.3
    IL_00be:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00c3:  stloc.0
    IL_00c4:  ldarg.3
    IL_00c5:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00ca:  stloc.1
    IL_00cb:  nop
    IL_00cc:  ldarg.3
    IL_00cd:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00d2:  stloc.s    V_5
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  ldc.r4     0.85000002
    IL_00db:  ldarg.2
    IL_00dc:  mul
    IL_00dd:  ldloc.0
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00e3:  ldloc.1
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f3:  stloc.s    V_6
    IL_00f5:  ldloc.s    V_5
    IL_00f7:  ldc.r4     0.85000002
    IL_00fc:  ldarg.2
    IL_00fd:  mul
    IL_00fe:  ldloc.0
    IL_00ff:  ldloc.1
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0105:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010f:  stloc.s    V_7
    IL_0111:  ldloc.s    V_5
    IL_0113:  ldc.r4     0.85000002
    IL_0118:  ldarg.2
    IL_0119:  mul
    IL_011a:  ldloc.0
    IL_011b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0120:  ldloc.1
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0130:  stloc.s    V_8
    IL_0132:  ldloc.s    V_5
    IL_0134:  ldc.r4     0.85000002
    IL_0139:  ldarg.2
    IL_013a:  mul
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0142:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0147:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014c:  stloc.s    V_9
    IL_014e:  ldarg.s    environmentData
    IL_0150:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0155:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_015a:  stloc.s    V_14
    IL_015c:  ldloc.s    V_14
    IL_015e:  brfalse.s  IL_01a0

    IL_0160:  nop
    IL_0161:  ldarg.s    environmentData
    IL_0163:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0168:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_016d:  stloc.s    V_15
    IL_016f:  ldloca.s   V_6
    IL_0171:  ldloca.s   V_15
    IL_0173:  ldloca.s   V_6
    IL_0175:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_017a:  nop
    IL_017b:  ldloca.s   V_7
    IL_017d:  ldloca.s   V_15
    IL_017f:  ldloca.s   V_7
    IL_0181:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0186:  nop
    IL_0187:  ldloca.s   V_8
    IL_0189:  ldloca.s   V_15
    IL_018b:  ldloca.s   V_8
    IL_018d:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0192:  nop
    IL_0193:  ldloca.s   V_9
    IL_0195:  ldloca.s   V_15
    IL_0197:  ldloca.s   V_9
    IL_0199:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_019e:  nop
    IL_019f:  nop
    IL_01a0:  ldarg.1
    IL_01a1:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_01a6:  stloc.s    V_10
    IL_01a8:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01ad:  ldloc.s    V_10
    IL_01af:  ldelem.ref
    IL_01b0:  stloc.s    V_11
    IL_01b2:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_01b7:  ldloc.s    V_11
    IL_01b9:  ldc.i4.m1
    IL_01ba:  ldarg.1
    IL_01bb:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_01c0:  ldelem     [Engine]Engine.Vector4
    IL_01c5:  stloc.s    V_12
    IL_01c7:  ldloc.3
    IL_01c8:  ldloc.s    V_6
    IL_01ca:  ldloc.s    V_8
    IL_01cc:  ldloc.s    V_9
    IL_01ce:  ldloc.s    V_7
    IL_01d0:  ldloc.s    V_12
    IL_01d2:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01d7:  ldloc.s    V_12
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_01de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e3:  ldloc.s    V_12
    IL_01e5:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01ea:  ldloc.s    V_12
    IL_01ec:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f6:  ldloc.s    V_12
    IL_01f8:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01fd:  ldloc.s    V_12
    IL_01ff:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0204:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0209:  ldloc.s    V_12
    IL_020b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0210:  ldloc.s    V_12
    IL_0212:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0217:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021c:  ldarg.s    color
    IL_021e:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0223:  nop
    IL_0224:  ldarg.s    environmentData
    IL_0226:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_022b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0230:  ldc.i4.0
    IL_0231:  ceq
    IL_0233:  stloc.s    V_16
    IL_0235:  ldloc.s    V_16
    IL_0237:  brfalse.s  IL_0298

    IL_0239:  nop
    IL_023a:  ldloc.3
    IL_023b:  ldloc.s    V_6
    IL_023d:  ldloc.s    V_7
    IL_023f:  ldloc.s    V_9
    IL_0241:  ldloc.s    V_8
    IL_0243:  ldloc.s    V_12
    IL_0245:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_024a:  ldloc.s    V_12
    IL_024c:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0251:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0256:  ldloc.s    V_12
    IL_0258:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_025d:  ldloc.s    V_12
    IL_025f:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0264:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0269:  ldloc.s    V_12
    IL_026b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0270:  ldloc.s    V_12
    IL_0272:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0277:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027c:  ldloc.s    V_12
    IL_027e:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0283:  ldloc.s    V_12
    IL_0285:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_028a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_028f:  ldarg.s    color
    IL_0291:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0296:  nop
    IL_0297:  nop
    IL_0298:  ret
  } // end of method BlocksManager::DrawFlatBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldloc.0
    IL_0033:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0038:  ldarg.2
    IL_0039:  ldarg.3
    IL_003a:  ldarg.s    environmentData
    IL_003c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class [Survivalcraft]Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Survivalcraft]Game.DrawBlockEnvironmentData)
    IL_0041:  nop
    IL_0042:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldloc.0
    IL_0033:  ldarg.2
    IL_0034:  ldarg.3
    IL_0035:  ldarg.s    matrix
    IL_0037:  ldarg.s    environmentData
    IL_0039:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class [Survivalcraft]Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Survivalcraft]Game.DrawBlockEnvironmentData)
    IL_003e:  nop
    IL_003f:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      class [Engine]Engine.Graphics.Texture2D texture,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       765 (0x2fd)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector4 V_2,
             bool V_3,
             class [Engine]Engine.Graphics.TexturedBatch3D V_4,
             bool V_5,
             int32 V_6,
             valuetype [Survivalcraft]Game.BlockMeshVertex[] V_7,
             int32 V_8,
             uint16[] V_9,
             class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<uint16> V_13,
             int32 V_14,
             bool V_15,
             bool V_16,
             bool V_17,
             int32 V_18,
             valuetype [Survivalcraft]Game.BlockMeshVertex V_19,
             bool V_20,
             valuetype [Engine]Engine.Vector4 V_21,
             float32 V_22,
             bool V_23,
             valuetype [Engine]Engine.Color V_24,
             bool V_25,
             int32 V_26,
             bool V_27)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_0013:  ldarg.s    environmentData
    IL_0015:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_001a:  ldelem.r4
    IL_001b:  stloc.1
    IL_001c:  ldarg.3
    IL_001d:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_0022:  ldloc.1
    IL_0023:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::op_Multiply(valuetype [Engine]Engine.Vector4,
                                                                                              float32)
    IL_0028:  stloc.2
    IL_0029:  ldloc.2
    IL_002a:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_002f:  call       bool [Engine]Engine.Vector4::op_Equality(valuetype [Engine]Engine.Vector4,
                                                                  valuetype [Engine]Engine.Vector4)
    IL_0034:  stloc.3
    IL_0035:  ldarg.0
    IL_0036:  ldarg.2
    IL_0037:  ldc.i4.1
    IL_0038:  ldc.i4.0
    IL_0039:  ldnull
    IL_003a:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_003f:  ldnull
    IL_0040:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_004a:  stloc.s    V_4
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.s    V_5
    IL_004f:  ldarg.s    environmentData
    IL_0051:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_005b:  stloc.s    V_15
    IL_005d:  ldloc.s    V_15
    IL_005f:  brfalse.s  IL_007e

    IL_0061:  nop
    IL_0062:  ldarg.s    matrix
    IL_0064:  ldobj      [Engine]Engine.Matrix
    IL_0069:  ldarg.s    environmentData
    IL_006b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0075:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007a:  stloc.0
    IL_007b:  nop
    IL_007c:  br.s       IL_0088

    IL_007e:  nop
    IL_007f:  ldarg.s    matrix
    IL_0081:  ldobj      [Engine]Engine.Matrix
    IL_0086:  stloc.0
    IL_0087:  nop
    IL_0088:  ldarg.s    size
    IL_008a:  ldc.r4     1.
    IL_008f:  ceq
    IL_0091:  ldc.i4.0
    IL_0092:  ceq
    IL_0094:  stloc.s    V_16
    IL_0096:  ldloc.s    V_16
    IL_0098:  brfalse.s  IL_00aa

    IL_009a:  nop
    IL_009b:  ldarg.s    size
    IL_009d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00a2:  ldloc.0
    IL_00a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a8:  stloc.0
    IL_00a9:  nop
    IL_00aa:  ldloc.0
    IL_00ab:  ldfld      float32 [Engine]Engine.Matrix::M14
    IL_00b0:  ldc.r4     0.0
    IL_00b5:  bne.un.s   IL_00e6

    IL_00b7:  ldloc.0
    IL_00b8:  ldfld      float32 [Engine]Engine.Matrix::M24
    IL_00bd:  ldc.r4     0.0
    IL_00c2:  bne.un.s   IL_00e6

    IL_00c4:  ldloc.0
    IL_00c5:  ldfld      float32 [Engine]Engine.Matrix::M34
    IL_00ca:  ldc.r4     0.0
    IL_00cf:  bne.un.s   IL_00e3

    IL_00d1:  ldloc.0
    IL_00d2:  ldfld      float32 [Engine]Engine.Matrix::M44
    IL_00d7:  ldc.r4     1.
    IL_00dc:  ceq
    IL_00de:  ldc.i4.0
    IL_00df:  ceq
    IL_00e1:  br.s       IL_00e4

    IL_00e3:  ldc.i4.1
    IL_00e4:  br.s       IL_00e7

    IL_00e6:  ldc.i4.1
    IL_00e7:  stloc.s    V_17
    IL_00e9:  ldloc.s    V_17
    IL_00eb:  brfalse.s  IL_00f2

    IL_00ed:  nop
    IL_00ee:  ldc.i4.1
    IL_00ef:  stloc.s    V_5
    IL_00f1:  nop
    IL_00f2:  ldarg.1
    IL_00f3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex> [Survivalcraft]Game.BlockMesh::Vertices
    IL_00f8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex>::get_Count()
    IL_00fd:  stloc.s    V_6
    IL_00ff:  ldarg.1
    IL_0100:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex> [Survivalcraft]Game.BlockMesh::Vertices
    IL_0105:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex>::get_Array()
    IL_010a:  stloc.s    V_7
    IL_010c:  ldarg.1
    IL_010d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Survivalcraft]Game.BlockMesh::Indices
    IL_0112:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0117:  stloc.s    V_8
    IL_0119:  ldarg.1
    IL_011a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Survivalcraft]Game.BlockMesh::Indices
    IL_011f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0124:  stloc.s    V_9
    IL_0126:  ldloc.s    V_4
    IL_0128:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_012d:  stloc.s    V_10
    IL_012f:  ldloc.s    V_10
    IL_0131:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0136:  stloc.s    V_11
    IL_0138:  ldloc.s    V_10
    IL_013a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_013f:  stloc.s    V_12
    IL_0141:  ldloc.s    V_10
    IL_0143:  dup
    IL_0144:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0149:  ldloc.s    V_6
    IL_014b:  add
    IL_014c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_0151:  nop
    IL_0152:  ldc.i4.0
    IL_0153:  stloc.s    V_18
    IL_0155:  br         IL_0299

    IL_015a:  nop
    IL_015b:  ldloc.s    V_7
    IL_015d:  ldloc.s    V_18
    IL_015f:  ldelem     [Survivalcraft]Game.BlockMeshVertex
    IL_0164:  stloc.s    V_19
    IL_0166:  ldloc.s    V_5
    IL_0168:  stloc.s    V_20
    IL_016a:  ldloc.s    V_20
    IL_016c:  brfalse.s  IL_01ca

    IL_016e:  nop
    IL_016f:  ldloca.s   V_21
    IL_0171:  ldloc.s    V_19
    IL_0173:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_0178:  ldc.r4     1.
    IL_017d:  call       instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                     float32)
    IL_0182:  ldloca.s   V_21
    IL_0184:  ldloca.s   V_0
    IL_0186:  ldloca.s   V_21
    IL_0188:  call       void [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector4&)
    IL_018d:  nop
    IL_018e:  ldc.r4     1.
    IL_0193:  ldloc.s    V_21
    IL_0195:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_019a:  div
    IL_019b:  stloc.s    V_22
    IL_019d:  ldloca.s   V_19
    IL_019f:  ldloc.s    V_21
    IL_01a1:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01a6:  ldloc.s    V_22
    IL_01a8:  mul
    IL_01a9:  ldloc.s    V_21
    IL_01ab:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01b0:  ldloc.s    V_22
    IL_01b2:  mul
    IL_01b3:  ldloc.s    V_21
    IL_01b5:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01ba:  ldloc.s    V_22
    IL_01bc:  mul
    IL_01bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c2:  stfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01c7:  nop
    IL_01c8:  br.s       IL_01e2

    IL_01ca:  nop
    IL_01cb:  ldloca.s   V_19
    IL_01cd:  ldflda     valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01d2:  ldloca.s   V_0
    IL_01d4:  ldloca.s   V_19
    IL_01d6:  ldflda     valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01db:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01e0:  nop
    IL_01e1:  nop
    IL_01e2:  ldloc.s    V_19
    IL_01e4:  ldfld      bool [Survivalcraft]Game.BlockMeshVertex::IsEmissive
    IL_01e9:  ldloc.3
    IL_01ea:  or
    IL_01eb:  stloc.s    V_23
    IL_01ed:  ldloc.s    V_23
    IL_01ef:  brfalse.s  IL_0222

    IL_01f1:  nop
    IL_01f2:  ldloc.s    V_10
    IL_01f4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_01f9:  ldloc.s    V_12
    IL_01fb:  dup
    IL_01fc:  ldc.i4.1
    IL_01fd:  add
    IL_01fe:  stloc.s    V_12
    IL_0200:  ldloc.s    V_19
    IL_0202:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_0207:  ldloc.s    V_19
    IL_0209:  ldfld      valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_020e:  ldloc.s    V_19
    IL_0210:  ldfld      valuetype [Engine]Engine.Vector2 [Survivalcraft]Game.BlockMeshVertex::TextureCoordinates
    IL_0215:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_021a:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_021f:  nop
    IL_0220:  br.s       IL_0292

    IL_0222:  nop
    IL_0223:  ldloca.s   V_24
    IL_0225:  ldloca.s   V_19
    IL_0227:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_022c:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0231:  conv.r4
    IL_0232:  ldloc.2
    IL_0233:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0238:  mul
    IL_0239:  conv.u1
    IL_023a:  ldloca.s   V_19
    IL_023c:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_0241:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0246:  conv.r4
    IL_0247:  ldloc.2
    IL_0248:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_024d:  mul
    IL_024e:  conv.u1
    IL_024f:  ldloca.s   V_19
    IL_0251:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_0256:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_025b:  conv.r4
    IL_025c:  ldloc.2
    IL_025d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0262:  mul
    IL_0263:  conv.u1
    IL_0264:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0269:  ldloc.s    V_10
    IL_026b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_0270:  ldloc.s    V_12
    IL_0272:  dup
    IL_0273:  ldc.i4.1
    IL_0274:  add
    IL_0275:  stloc.s    V_12
    IL_0277:  ldloc.s    V_19
    IL_0279:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_027e:  ldloc.s    V_24
    IL_0280:  ldloc.s    V_19
    IL_0282:  ldfld      valuetype [Engine]Engine.Vector2 [Survivalcraft]Game.BlockMeshVertex::TextureCoordinates
    IL_0287:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_028c:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_0291:  nop
    IL_0292:  nop
    IL_0293:  ldloc.s    V_18
    IL_0295:  ldc.i4.1
    IL_0296:  add
    IL_0297:  stloc.s    V_18
    IL_0299:  ldloc.s    V_18
    IL_029b:  ldloc.s    V_6
    IL_029d:  clt
    IL_029f:  stloc.s    V_25
    IL_02a1:  ldloc.s    V_25
    IL_02a3:  brtrue     IL_015a

    IL_02a8:  ldloc.s    V_4
    IL_02aa:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_02af:  stloc.s    V_13
    IL_02b1:  ldloc.s    V_13
    IL_02b3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02b8:  stloc.s    V_14
    IL_02ba:  ldloc.s    V_13
    IL_02bc:  dup
    IL_02bd:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02c2:  ldloc.s    V_8
    IL_02c4:  add
    IL_02c5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02ca:  nop
    IL_02cb:  ldc.i4.0
    IL_02cc:  stloc.s    V_26
    IL_02ce:  br.s       IL_02f0

    IL_02d0:  nop
    IL_02d1:  ldloc.s    V_13
    IL_02d3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d8:  ldloc.s    V_14
    IL_02da:  dup
    IL_02db:  ldc.i4.1
    IL_02dc:  add
    IL_02dd:  stloc.s    V_14
    IL_02df:  ldloc.s    V_11
    IL_02e1:  ldloc.s    V_9
    IL_02e3:  ldloc.s    V_26
    IL_02e5:  ldelem.u2
    IL_02e6:  add
    IL_02e7:  conv.u2
    IL_02e8:  stelem.i2
    IL_02e9:  nop
    IL_02ea:  ldloc.s    V_26
    IL_02ec:  ldc.i4.1
    IL_02ed:  add
    IL_02ee:  stloc.s    V_26
    IL_02f0:  ldloc.s    V_26
    IL_02f2:  ldloc.s    V_8
    IL_02f4:  clt
    IL_02f6:  stloc.s    V_27
    IL_02f8:  ldloc.s    V_27
    IL_02fa:  brtrue.s   IL_02d0

    IL_02fc:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static class [Survivalcraft]Game.Block 
          FindBlockByTypeName(string typeName,
                              bool throwIfNotFound) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  4
    .locals init (class Game.BlocksManager/'<>c__DisplayClass14_0' V_0,
             class [Survivalcraft]Game.Block V_1,
             bool V_2,
             object[] V_3,
             class [Survivalcraft]Game.Block V_4)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
    IL_000d:  nop
    IL_000e:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass14_0'::'<FindBlockByTypeName>b__0'(class [Survivalcraft]Game.Block)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_001f:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  ldnull
    IL_0027:  ceq
    IL_0029:  ldarg.1
    IL_002a:  and
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  brfalse.s  IL_0051

    IL_002f:  nop
    IL_0030:  ldc.i4.1
    IL_0031:  newarr     [System.Runtime]System.Object
    IL_0036:  dup
    IL_0037:  ldc.i4.0
    IL_0038:  ldloc.0
    IL_0039:  ldfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
    IL_003e:  stelem.ref
    IL_003f:  stloc.3
    IL_0040:  ldstr      "Block with type {0} not found."
    IL_0045:  ldloc.3
    IL_0046:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_004b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0050:  throw

    IL_0051:  ldloc.1
    IL_0052:  stloc.s    V_4
    IL_0054:  br.s       IL_0056

    IL_0056:  ldloc.s    V_4
    IL_0058:  ret
  } // end of method BlocksManager::FindBlockByTypeName

  .method public hidebysig static class [Survivalcraft]Game.Block[] 
          FindBlocksByCraftingId(string craftingId) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (class [Survivalcraft]Game.Block[] V_0)
    IL_0000:  nop
    IL_0001:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> Game.BlocksManager/'<>c'::'<>9__15_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
    IL_0014:  ldftn      instance class [Survivalcraft]Game.Block Game.BlocksManager/'<>c'::'<FindBlocksByCraftingId>b__15_0'(class [Survivalcraft]Game.Block)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block>::.ctor(object,
                                                                                                                                                   native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> Game.BlocksManager/'<>c'::'<>9__15_0'
    IL_0025:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_002a:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_002f:  stloc.0
    IL_0030:  br.s       IL_0032

    IL_0032:  ldloc.0
    IL_0033:  ret
  } // end of method BlocksManager::FindBlocksByCraftingId

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       603 (0x25b)
    .maxstack  4
    .locals init (class [Survivalcraft]Game.Block[] V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block> V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             bool V_6,
             bool V_7,
             int32 V_8,
             bool V_9,
             class [Survivalcraft]Game.Block[] V_10,
             int32 V_11,
             class [Survivalcraft]Game.Block V_12,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_13,
             int32 V_14,
             string V_15,
             bool V_16)
    IL_0000:  nop
    IL_0001:  call       void Game.BlocksManager::CalculateSlotTexCoordTables()
    IL_0006:  nop
    IL_0007:  call       int32 GScience.ModAPI.Block.BlockManager::getCount()
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  newarr     [Survivalcraft]Game.Block
    IL_0013:  stsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0018:  call       int32 GScience.ModAPI.Block.BlockManager::getCount()
    IL_001d:  ldc.i4.1
    IL_001e:  add
    IL_001f:  newarr     [Survivalcraft]Game.FluidBlock
    IL_0024:  stsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_0029:  nop
    IL_002a:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::getBlockList()
    IL_002f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::GetEnumerator()
    IL_0034:  stloc.1
    .try
    {
      IL_0035:  br.s       IL_0074

      IL_0037:  ldloca.s   V_1
      IL_0039:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>::get_Current()
      IL_003e:  stloc.2
      IL_003f:  nop
      IL_0040:  ldloca.s   V_2
      IL_0042:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Key()
      IL_0047:  stloc.3
      IL_0048:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
      IL_004d:  ldloc.3
      IL_004e:  ldloca.s   V_2
      IL_0050:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Value()
      IL_0055:  stelem.ref
      IL_0056:  ldloca.s   V_2
      IL_0058:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Key()
      IL_005d:  stloc.s    V_4
      IL_005f:  ldsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
      IL_0064:  ldloc.s    V_4
      IL_0066:  ldloca.s   V_2
      IL_0068:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Value()
      IL_006d:  isinst     [Survivalcraft]Game.FluidBlock
      IL_0072:  stelem.ref
      IL_0073:  nop
      IL_0074:  ldloca.s   V_1
      IL_0076:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>::MoveNext()
      IL_007b:  brtrue.s   IL_0037

      IL_007d:  leave.s    IL_008e

    }  // end .try
    finally
    {
      IL_007f:  ldloca.s   V_1
      IL_0081:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>
      IL_0087:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008c:  nop
      IL_008d:  endfinally
    }  // end handler
    IL_008e:  ldc.i4.0
    IL_008f:  stloc.s    V_5
    IL_0091:  br.s       IL_00bd

    IL_0093:  nop
    IL_0094:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldelem.ref
    IL_009c:  ldnull
    IL_009d:  ceq
    IL_009f:  stloc.s    V_6
    IL_00a1:  ldloc.s    V_6
    IL_00a3:  brfalse.s  IL_00b6

    IL_00a5:  nop
    IL_00a6:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldelem.ref
    IL_00b4:  stelem.ref
    IL_00b5:  nop
    IL_00b6:  nop
    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldc.i4.1
    IL_00ba:  add
    IL_00bb:  stloc.s    V_5
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00c4:  ldlen
    IL_00c5:  conv.i4
    IL_00c6:  clt
    IL_00c8:  stloc.s    V_7
    IL_00ca:  ldloc.s    V_7
    IL_00cc:  brtrue.s   IL_0093

    IL_00ce:  ldstr      "BlocksData"
    IL_00d3:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_00d8:  nop
    IL_00d9:  ldstr      "BlocksData"
    IL_00de:  call       !!0 [Survivalcraft]Game.ContentManager::Get<string>(string)
    IL_00e3:  call       void Game.BlocksManager::LoadBlocksData(string)
    IL_00e8:  nop
    IL_00e9:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ee:  stloc.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  stloc.s    V_8
    IL_00f2:  br.s       IL_0106

    IL_00f4:  nop
    IL_00f5:  ldloc.0
    IL_00f6:  ldloc.s    V_8
    IL_00f8:  ldelem.ref
    IL_00f9:  callvirt   instance void [Survivalcraft]Game.Block::Initialize()
    IL_00fe:  nop
    IL_00ff:  nop
    IL_0100:  ldloc.s    V_8
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  stloc.s    V_8
    IL_0106:  ldloc.s    V_8
    IL_0108:  ldloc.0
    IL_0109:  ldlen
    IL_010a:  conv.i4
    IL_010b:  clt
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  brtrue.s   IL_00f4

    IL_0113:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0118:  ldstr      "Terrain"
    IL_011d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0122:  nop
    IL_0123:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0128:  ldstr      "Plants"
    IL_012d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0132:  nop
    IL_0133:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0138:  ldstr      "Construction"
    IL_013d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0142:  nop
    IL_0143:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0148:  ldstr      "Items"
    IL_014d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0152:  nop
    IL_0153:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0158:  ldstr      "Tools"
    IL_015d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0162:  nop
    IL_0163:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0168:  ldstr      "Clothes"
    IL_016d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0172:  nop
    IL_0173:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0178:  ldstr      "Electrics"
    IL_017d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0182:  nop
    IL_0183:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0188:  ldstr      "Food"
    IL_018d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0192:  nop
    IL_0193:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0198:  ldstr      "Spawner Eggs"
    IL_019d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01a2:  nop
    IL_01a3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01a8:  ldstr      "Painted"
    IL_01ad:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01b2:  nop
    IL_01b3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01b8:  ldstr      "Dyed"
    IL_01bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01c2:  nop
    IL_01c3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01c8:  ldstr      "Fireworks"
    IL_01cd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01d2:  nop
    IL_01d3:  nop
    IL_01d4:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01d9:  stloc.s    V_10
    IL_01db:  ldc.i4.0
    IL_01dc:  stloc.s    V_11
    IL_01de:  br.s       IL_0252

    IL_01e0:  ldloc.s    V_10
    IL_01e2:  ldloc.s    V_11
    IL_01e4:  ldelem.ref
    IL_01e5:  stloc.s    V_12
    IL_01e7:  nop
    IL_01e8:  nop
    IL_01e9:  ldloc.s    V_12
    IL_01eb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [Survivalcraft]Game.Block::GetCreativeValues()
    IL_01f0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_01f5:  stloc.s    V_13
    .try
    {
      IL_01f7:  br.s       IL_0233

      IL_01f9:  ldloc.s    V_13
      IL_01fb:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_0200:  stloc.s    V_14
      IL_0202:  nop
      IL_0203:  ldloc.s    V_12
      IL_0205:  ldloc.s    V_14
      IL_0207:  callvirt   instance string [Survivalcraft]Game.Block::GetCategory(int32)
      IL_020c:  stloc.s    V_15
      IL_020e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0213:  ldloc.s    V_15
      IL_0215:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<string>::Contains(!0)
      IL_021a:  ldc.i4.0
      IL_021b:  ceq
      IL_021d:  stloc.s    V_16
      IL_021f:  ldloc.s    V_16
      IL_0221:  brfalse.s  IL_0232

      IL_0223:  nop
      IL_0224:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0229:  ldloc.s    V_15
      IL_022b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_0230:  nop
      IL_0231:  nop
      IL_0232:  nop
      IL_0233:  ldloc.s    V_13
      IL_0235:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_023a:  brtrue.s   IL_01f9

      IL_023c:  leave.s    IL_024b

    }  // end .try
    finally
    {
      IL_023e:  ldloc.s    V_13
      IL_0240:  brfalse.s  IL_024a

      IL_0242:  ldloc.s    V_13
      IL_0244:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0249:  nop
      IL_024a:  endfinally
    }  // end handler
    IL_024b:  nop
    IL_024c:  ldloc.s    V_11
    IL_024e:  ldc.i4.1
    IL_024f:  add
    IL_0250:  stloc.s    V_11
    IL_0252:  ldloc.s    V_11
    IL_0254:  ldloc.s    V_10
    IL_0256:  ldlen
    IL_0257:  conv.i4
    IL_0258:  blt.s      IL_01e0

    IL_025a:  ret
  } // end of method BlocksManager::Initialize

  .method private hidebysig static void  LoadBlocksData(string data) cil managed
  {
    // 代码大小       938 (0x3aa)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool> V_0,
             char[] V_1,
             string[] V_2,
             string[] V_3,
             int32 V_4,
             char[] V_5,
             string[] V_6,
             bool V_7,
             class Game.BlocksManager/'<>c__DisplayClass17_0' V_8,
             bool V_9,
             object[] V_10,
             bool V_11,
             class [Survivalcraft]Game.Block V_12,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo> V_13,
             bool V_14,
             object[] V_15,
             bool V_16,
             object[] V_17,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_18,
             class [System.Reflection]System.Reflection.FieldInfo V_19,
             bool V_20,
             int32 V_21,
             string V_22,
             string V_23,
             bool V_24,
             class [System.Reflection]System.Reflection.FieldInfo V_25,
             object V_26,
             bool V_27,
             object[] V_28,
             bool V_29,
             class Game.BlocksManager/'<>c__DisplayClass17_1' V_30,
             bool V_31,
             class [Survivalcraft]Game.Block V_32,
             bool V_33,
             object[] V_34,
             bool V_35,
             bool V_36,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.Block> V_37,
             class [Survivalcraft]Game.Block V_38,
             object[] V_39)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldstr      "\r"
    IL_000d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0012:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0017:  starg.s    data
    IL_0019:  ldc.i4.1
    IL_001a:  newarr     [System.Runtime]System.Char
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.s   10
    IL_0023:  stelem.i2
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002d:  stloc.2
    IL_002e:  ldnull
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.s    V_4
    IL_0033:  br         IL_0334

    IL_0038:  nop
    IL_0039:  ldc.i4.1
    IL_003a:  newarr     [System.Runtime]System.Char
    IL_003f:  dup
    IL_0040:  ldc.i4.0
    IL_0041:  ldc.i4.s   59
    IL_0043:  stelem.i2
    IL_0044:  stloc.s    V_5
    IL_0046:  ldloc.2
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldelem.ref
    IL_004a:  ldloc.s    V_5
    IL_004c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0051:  stloc.s    V_6
    IL_0053:  ldloc.s    V_4
    IL_0055:  ldc.i4.0
    IL_0056:  ceq
    IL_0058:  stloc.s    V_7
    IL_005a:  ldloc.s    V_7
    IL_005c:  brfalse.s  IL_0082

    IL_005e:  nop
    IL_005f:  ldloc.s    V_6
    IL_0061:  ldlen
    IL_0062:  conv.i4
    IL_0063:  ldc.i4.1
    IL_0064:  sub
    IL_0065:  newarr     [System.Runtime]System.String
    IL_006a:  stloc.3
    IL_006b:  ldloc.s    V_6
    IL_006d:  ldc.i4.1
    IL_006e:  ldloc.3
    IL_006f:  ldc.i4.0
    IL_0070:  ldloc.s    V_6
    IL_0072:  ldlen
    IL_0073:  conv.i4
    IL_0074:  ldc.i4.1
    IL_0075:  sub
    IL_0076:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 int32,
                                                                 class [System.Runtime]System.Array,
                                                                 int32,
                                                                 int32)
    IL_007b:  nop
    IL_007c:  nop
    IL_007d:  br         IL_032d

    IL_0082:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass17_0'::.ctor()
    IL_0087:  stloc.s    V_8
    IL_0089:  nop
    IL_008a:  ldloc.s    V_6
    IL_008c:  ldlen
    IL_008d:  conv.i4
    IL_008e:  ldloc.3
    IL_008f:  ldlen
    IL_0090:  conv.i4
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ceq
    IL_0095:  ldc.i4.0
    IL_0096:  ceq
    IL_0098:  stloc.s    V_9
    IL_009a:  ldloc.s    V_9
    IL_009c:  brfalse.s  IL_00cc

    IL_009e:  nop
    IL_009f:  ldc.i4.1
    IL_00a0:  newarr     [System.Runtime]System.Object
    IL_00a5:  dup
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldloc.s    V_6
    IL_00a9:  ldlen
    IL_00aa:  brtrue.s   IL_00b3

    IL_00ac:  ldstr      "unknown"
    IL_00b1:  br.s       IL_00b7

    IL_00b3:  ldloc.s    V_6
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldelem.ref
    IL_00b7:  stelem.ref
    IL_00b8:  stloc.s    V_10
    IL_00ba:  ldstr      "Not enough field values for block \"{0}\"."
    IL_00bf:  ldloc.s    V_10
    IL_00c1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c6:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00cb:  throw

    IL_00cc:  ldloc.s    V_8
    IL_00ce:  ldloc.s    V_6
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldelem.ref
    IL_00d2:  stfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_00de:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e3:  ldc.i4.0
    IL_00e4:  ceq
    IL_00e6:  stloc.s    V_11
    IL_00e8:  ldloc.s    V_11
    IL_00ea:  brfalse    IL_032c

    IL_00ef:  nop
    IL_00f0:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass17_0'::'<LoadBlocksData>b__0'(class [Survivalcraft]Game.Block)
    IL_00fd:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_0102:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.s    V_12
    IL_010b:  ldnull
    IL_010c:  ceq
    IL_010e:  stloc.s    V_14
    IL_0110:  ldloc.s    V_14
    IL_0112:  brfalse.s  IL_0139

    IL_0114:  nop
    IL_0115:  ldc.i4.1
    IL_0116:  newarr     [System.Runtime]System.Object
    IL_011b:  dup
    IL_011c:  ldc.i4.0
    IL_011d:  ldloc.s    V_8
    IL_011f:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_0124:  stelem.ref
    IL_0125:  stloc.s    V_15
    IL_0127:  ldstr      "Block \"{0}\" not found when loading block data."
    IL_012c:  ldloc.s    V_15
    IL_012e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0133:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0138:  throw

    IL_0139:  ldloc.0
    IL_013a:  ldloc.s    V_12
    IL_013c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::ContainsKey(!0)
    IL_0141:  stloc.s    V_16
    IL_0143:  ldloc.s    V_16
    IL_0145:  brfalse.s  IL_016c

    IL_0147:  nop
    IL_0148:  ldc.i4.1
    IL_0149:  newarr     [System.Runtime]System.Object
    IL_014e:  dup
    IL_014f:  ldc.i4.0
    IL_0150:  ldloc.s    V_8
    IL_0152:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_0157:  stelem.ref
    IL_0158:  stloc.s    V_17
    IL_015a:  ldstr      "Data for block \"{0}\" specified more than once when"
    + " loading block data."
    IL_015f:  ldloc.s    V_17
    IL_0161:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0166:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_016b:  throw

    IL_016c:  ldloc.0
    IL_016d:  ldloc.s    V_12
    IL_016f:  ldc.i4.1
    IL_0170:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::Add(!0,
                                                                                                                                                    !1)
    IL_0175:  nop
    IL_0176:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::.ctor()
    IL_017b:  stloc.s    V_13
    IL_017d:  nop
    IL_017e:  ldloc.s    V_12
    IL_0180:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0185:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_018a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_018f:  stloc.s    V_18
    .try
    {
      IL_0191:  br.s       IL_01cd

      IL_0193:  ldloc.s    V_18
      IL_0195:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_019a:  stloc.s    V_19
      IL_019c:  nop
      IL_019d:  ldloc.s    V_19
      IL_019f:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_01a4:  brfalse.s  IL_01b2

      IL_01a6:  ldloc.s    V_19
      IL_01a8:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_01ad:  ldc.i4.0
      IL_01ae:  ceq
      IL_01b0:  br.s       IL_01b3

      IL_01b2:  ldc.i4.0
      IL_01b3:  stloc.s    V_20
      IL_01b5:  ldloc.s    V_20
      IL_01b7:  brfalse.s  IL_01cc

      IL_01b9:  nop
      IL_01ba:  ldloc.s    V_13
      IL_01bc:  ldloc.s    V_19
      IL_01be:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_01c3:  ldloc.s    V_19
      IL_01c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::Add(!0,
                                                                                                                                                                             !1)
      IL_01ca:  nop
      IL_01cb:  nop
      IL_01cc:  nop
      IL_01cd:  ldloc.s    V_18
      IL_01cf:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01d4:  brtrue.s   IL_0193

      IL_01d6:  leave.s    IL_01e5

    }  // end .try
    finally
    {
      IL_01d8:  ldloc.s    V_18
      IL_01da:  brfalse.s  IL_01e4

      IL_01dc:  ldloc.s    V_18
      IL_01de:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01e3:  nop
      IL_01e4:  endfinally
    }  // end handler
    IL_01e5:  ldc.i4.1
    IL_01e6:  stloc.s    V_21
    IL_01e8:  br         IL_031a

    IL_01ed:  nop
    IL_01ee:  ldloc.3
    IL_01ef:  ldloc.s    V_21
    IL_01f1:  ldc.i4.1
    IL_01f2:  sub
    IL_01f3:  ldelem.ref
    IL_01f4:  stloc.s    V_22
    IL_01f6:  ldloc.s    V_6
    IL_01f8:  ldloc.s    V_21
    IL_01fa:  ldelem.ref
    IL_01fb:  stloc.s    V_23
    IL_01fd:  ldloc.s    V_23
    IL_01ff:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0204:  ldc.i4.0
    IL_0205:  ceq
    IL_0207:  stloc.s    V_24
    IL_0209:  ldloc.s    V_24
    IL_020b:  brfalse    IL_0313

    IL_0210:  nop
    IL_0211:  ldloc.s    V_13
    IL_0213:  ldloc.s    V_22
    IL_0215:  ldloca.s   V_25
    IL_0217:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::TryGetValue(!0,
                                                                                                                                                                                   !1&)
    IL_021c:  ldc.i4.0
    IL_021d:  ceq
    IL_021f:  stloc.s    V_27
    IL_0221:  ldloc.s    V_27
    IL_0223:  brfalse.s  IL_0245

    IL_0225:  nop
    IL_0226:  ldc.i4.1
    IL_0227:  newarr     [System.Runtime]System.Object
    IL_022c:  dup
    IL_022d:  ldc.i4.0
    IL_022e:  ldloc.s    V_22
    IL_0230:  stelem.ref
    IL_0231:  stloc.s    V_28
    IL_0233:  ldstr      "Field \"{0}\" not found or not accessible when loadi"
    + "ng block data."
    IL_0238:  ldloc.s    V_28
    IL_023a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_023f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0244:  throw

    IL_0245:  ldnull
    IL_0246:  stloc.s    V_26
    IL_0248:  ldloc.s    V_23
    IL_024a:  ldstr      "#"
    IL_024f:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_0254:  stloc.s    V_29
    IL_0256:  ldloc.s    V_29
    IL_0258:  brfalse    IL_02f4

    IL_025d:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass17_1'::.ctor()
    IL_0262:  stloc.s    V_30
    IL_0264:  nop
    IL_0265:  ldloc.s    V_30
    IL_0267:  ldloc.s    V_23
    IL_0269:  ldc.i4.1
    IL_026a:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_026f:  stfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_0274:  ldloc.s    V_30
    IL_0276:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_027b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0280:  stloc.s    V_31
    IL_0282:  ldloc.s    V_31
    IL_0284:  brfalse.s  IL_0298

    IL_0286:  nop
    IL_0287:  ldloc.s    V_12
    IL_0289:  ldfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_028e:  box        [System.Runtime]System.Int32
    IL_0293:  stloc.s    V_26
    IL_0295:  nop
    IL_0296:  br.s       IL_02f1

    IL_0298:  nop
    IL_0299:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_029e:  ldloc.s    V_30
    IL_02a0:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass17_1'::'<LoadBlocksData>b__1'(class [Survivalcraft]Game.Block)
    IL_02a6:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_02ab:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_02b0:  stloc.s    V_32
    IL_02b2:  ldloc.s    V_32
    IL_02b4:  ldnull
    IL_02b5:  ceq
    IL_02b7:  stloc.s    V_33
    IL_02b9:  ldloc.s    V_33
    IL_02bb:  brfalse.s  IL_02e2

    IL_02bd:  nop
    IL_02be:  ldc.i4.1
    IL_02bf:  newarr     [System.Runtime]System.Object
    IL_02c4:  dup
    IL_02c5:  ldc.i4.0
    IL_02c6:  ldloc.s    V_30
    IL_02c8:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_02cd:  stelem.ref
    IL_02ce:  stloc.s    V_34
    IL_02d0:  ldstr      "Reference block \"{0}\" not found when loading block"
    + " data."
    IL_02d5:  ldloc.s    V_34
    IL_02d7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_02dc:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_02e1:  throw

    IL_02e2:  ldloc.s    V_32
    IL_02e4:  ldfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_02e9:  box        [System.Runtime]System.Int32
    IL_02ee:  stloc.s    V_26
    IL_02f0:  nop
    IL_02f1:  nop
    IL_02f2:  br.s       IL_0306

    IL_02f4:  nop
    IL_02f5:  ldloc.s    V_25
    IL_02f7:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
    IL_02fc:  ldloc.s    V_23
    IL_02fe:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                       string)
    IL_0303:  stloc.s    V_26
    IL_0305:  nop
    IL_0306:  ldloc.s    V_25
    IL_0308:  ldloc.s    V_12
    IL_030a:  ldloc.s    V_26
    IL_030c:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                object)
    IL_0311:  nop
    IL_0312:  nop
    IL_0313:  nop
    IL_0314:  ldloc.s    V_21
    IL_0316:  ldc.i4.1
    IL_0317:  add
    IL_0318:  stloc.s    V_21
    IL_031a:  ldloc.s    V_21
    IL_031c:  ldloc.s    V_6
    IL_031e:  ldlen
    IL_031f:  conv.i4
    IL_0320:  clt
    IL_0322:  stloc.s    V_35
    IL_0324:  ldloc.s    V_35
    IL_0326:  brtrue     IL_01ed

    IL_032b:  nop
    IL_032c:  nop
    IL_032d:  nop
    IL_032e:  ldloc.s    V_4
    IL_0330:  ldc.i4.1
    IL_0331:  add
    IL_0332:  stloc.s    V_4
    IL_0334:  ldloc.s    V_4
    IL_0336:  ldloc.2
    IL_0337:  ldlen
    IL_0338:  conv.i4
    IL_0339:  clt
    IL_033b:  stloc.s    V_36
    IL_033d:  ldloc.s    V_36
    IL_033f:  brtrue     IL_0038

    IL_0344:  nop
    IL_0345:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_034a:  ldloc.0
    IL_034b:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::get_Keys()
    IL_0350:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Except<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0355:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.Block>::GetEnumerator()
    IL_035a:  stloc.s    V_37
    .try
    {
      IL_035c:  br.s       IL_0391

      IL_035e:  ldloc.s    V_37
      IL_0360:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.Block>::get_Current()
      IL_0365:  stloc.s    V_38
      IL_0367:  nop
      IL_0368:  ldc.i4.1
      IL_0369:  newarr     [System.Runtime]System.Object
      IL_036e:  dup
      IL_036f:  ldc.i4.0
      IL_0370:  ldloc.s    V_38
      IL_0372:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0377:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_037c:  stelem.ref
      IL_037d:  stloc.s    V_39
      IL_037f:  ldstr      "Data for block \"{0}\" not found when loading blocks"
      + " data."
      IL_0384:  ldloc.s    V_39
      IL_0386:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_038b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0390:  throw

      IL_0391:  ldloc.s    V_37
      IL_0393:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0398:  brtrue.s   IL_035e

      IL_039a:  leave.s    IL_03a9

    }  // end .try
    finally
    {
      IL_039c:  ldloc.s    V_37
      IL_039e:  brfalse.s  IL_03a8

      IL_03a0:  ldloc.s    V_37
      IL_03a2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03a7:  nop
      IL_03a8:  endfinally
    }  // end handler
    IL_03a9:  ret
  } // end of method BlocksManager::LoadBlocksData

  .method private hidebysig static valuetype [Engine]Engine.Vector4 
          TextureSlotToTextureCoords(int32 slot) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector4 V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   16
    IL_0004:  div
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.s   16
    IL_0009:  rem
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  conv.r4
    IL_000d:  ldc.r4     1.e-003
    IL_0012:  add
    IL_0013:  ldc.r4     16.
    IL_0018:  div
    IL_0019:  stloc.2
    IL_001a:  ldloc.0
    IL_001b:  conv.r4
    IL_001c:  ldc.r4     1.e-003
    IL_0021:  add
    IL_0022:  ldc.r4     16.
    IL_0027:  div
    IL_0028:  stloc.3
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  conv.r4
    IL_002d:  ldc.r4     1.e-003
    IL_0032:  sub
    IL_0033:  ldc.r4     16.
    IL_0038:  div
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.2
    IL_003c:  ldloc.3
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  conv.r4
    IL_0043:  ldc.r4     1.e-003
    IL_0048:  sub
    IL_0049:  ldc.r4     16.
    IL_004e:  div
    IL_004f:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_0054:  stloc.s    V_5
    IL_0056:  br.s       IL_0058

    IL_0058:  ldloc.s    V_5
    IL_005a:  ret
  } // end of method BlocksManager::TextureSlotToTextureCoords

  .method public hidebysig specialname static 
          class [Survivalcraft]Game.Block[] 
          get_Blocks() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (class [Survivalcraft]Game.Block[] V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BlocksManager::get_Blocks

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_Categories() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  1
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<string> V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method BlocksManager::get_Categories

  .method public hidebysig specialname static 
          class [Survivalcraft]Game.FluidBlock[] 
          get_FluidBlocks() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (class [Survivalcraft]Game.FluidBlock[] V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BlocksManager::get_FluidBlocks

  .property class [Survivalcraft]Game.Block[]
          Blocks()
  {
    .get class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
  } // end of property BlocksManager::Blocks
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          Categories()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
  } // end of property BlocksManager::Categories
  .property class [Survivalcraft]Game.FluidBlock[]
          FluidBlocks()
  {
    .get class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
  } // end of property BlocksManager::FluidBlocks
} // end of class Game.BlocksManager

.class public auto ansi beforefieldinit Game.LoadingScreen
       extends [Survivalcraft]Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public valuetype [Engine]Engine.Content.ContentInfo localContentInfo
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass5_0'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5'() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldflda     valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0006:  ldfld      string [Engine]Engine.Content.ContentInfo::Name
      IL_000b:  call       object [Survivalcraft]Game.ContentManager::Get(string)
      IL_0010:  pop
      IL_0011:  ret
    } // end of method '<>c__DisplayClass5_0'::'<.ctor>b__5'

  } // end of class '<>c__DisplayClass5_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.LoadingScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__5_0'
    .field public static class [System.Runtime]System.Action '<>9__5_1'
    .field public static class [System.Runtime]System.Action '<>9__5_2'
    .field public static class [System.Runtime]System.Action '<>9__5_3'
    .field public static class [System.Runtime]System.Action '<>9__5_4'
    .field public static class [System.Runtime]System.Action '<>9__5_6'
    .field public static class [System.Runtime]System.Action '<>9__5_7'
    .field public static class [System.Runtime]System.Action '<>9__5_8'
    .field public static class [System.Runtime]System.Action '<>9__5_9'
    .field public static class [System.Runtime]System.Action '<>9__5_10'
    .field public static class [System.Runtime]System.Action '<>9__5_11'
    .field public static class [System.Runtime]System.Action '<>9__5_12'
    .field public static class [System.Runtime]System.Action '<>9__5_13'
    .field public static class [System.Runtime]System.Action '<>9__8_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.LoadingScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<.ctor>b__5_0'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CommunityContentManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_0'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_1'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.MotdManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_1'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_2'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.LightingManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_2'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_3'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.StringsManager::LoadStrings()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_3'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_4'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.TextureAtlasManager::LoadAtlases()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_4'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_6'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.DatabaseManager::LoadDatabase()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_6'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_7'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.WorldsManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_7'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_8'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.BlocksTexturesManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_8'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_9'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CharacterSkinsManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_9'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_10'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.FurniturePacksManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_10'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_11'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void Game.BlocksManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_11'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_12'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void [Survivalcraft]Game.CraftingRecipesManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_12'

    .method assembly hidebysig instance void 
            '<.ctor>b__5_13'() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  call       void GScience.ModAPI.Debug.InputManager::Initialize()
      IL_0005:  nop
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__5_13'

    .method assembly hidebysig instance void 
            '<Update>b__8_1'() cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  8
      IL_0000:  ldstr      "MainMenu"
      IL_0005:  call       !!0[] [System.Runtime]System.Array::Empty<object>()
      IL_000a:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                                 object[])
      IL_000f:  nop
      IL_0010:  ret
    } // end of method '<>c'::'<Update>b__8_1'

  } // end of class '<>c'

  .field private class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> m_loadActions
  .field private int32 m_index
  .field private bool m_loadingFinished
  .field private bool m_pauseLoading
  .field private bool m_loadingErrorsSuppressed
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       746 (0x2ea)
    .maxstack  5
    .locals init (class [Survivalcraft]Game.LabelWidget V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo> V_2,
             class Game.LoadingScreen/'<>c__DisplayClass5_0' V_3,
             bool V_4)
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [Survivalcraft]Game.Screen::.ctor()
    IL_0011:  nop
    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0019:  ldarg.0
    IL_001a:  ldstr      "Screens/LoadingScreen"
    IL_001f:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0024:  call       void [Survivalcraft]Game.WidgetsManager::LoadWidgetContents(class [Survivalcraft]Game.Widget,
                                                                                     object,
                                                                                     class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_0029:  nop
    IL_002a:  newobj     instance void [Survivalcraft]Game.LabelWidget::.ctor()
    IL_002f:  stloc.0
    IL_0030:  ldloc.0
    IL_0031:  ldstr      "Powered By GScience Studio\n"
    IL_0036:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_003b:  nop
    IL_003c:  ldloc.0
    IL_003d:  dup
    IL_003e:  callvirt   instance string [Survivalcraft]Game.LabelWidget::get_Text()
    IL_0043:  ldstr      "Author:"
    IL_0048:  ldsfld     string GScience.ModAPI.Info::author
    IL_004d:  ldstr      "\n"
    IL_0052:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string,
                                                                      string)
    IL_0057:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_005c:  nop
    IL_005d:  ldloc.0
    IL_005e:  dup
    IL_005f:  callvirt   instance string [Survivalcraft]Game.LabelWidget::get_Text()
    IL_0064:  ldstr      "Mod API Version:"
    IL_0069:  ldsfld     string GScience.ModAPI.Info::version
    IL_006e:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_0073:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0078:  nop
    IL_0079:  ldloc.0
    IL_007a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::LightBlue
    IL_007f:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Color(valuetype [Engine]Engine.Color)
    IL_0084:  nop
    IL_0085:  ldloc.0
    IL_0086:  ldc.r4     0.5
    IL_008b:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_FontScale(float32)
    IL_0090:  nop
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0097:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_009c:  ldloc.0
    IL_009d:  callvirt   instance void [Survivalcraft]Game.WidgetsContainer::Add(class [Survivalcraft]Game.Widget)
    IL_00a2:  nop
    IL_00a3:  ldarg.0
    IL_00a4:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_00a9:  dup
    IL_00aa:  brtrue.s   IL_00c3

    IL_00ac:  pop
    IL_00ad:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00b2:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_0'()
    IL_00b8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00bd:  dup
    IL_00be:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_0'
    IL_00c3:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00c8:  nop
    IL_00c9:  ldarg.0
    IL_00ca:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_00cf:  dup
    IL_00d0:  brtrue.s   IL_00e9

    IL_00d2:  pop
    IL_00d3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00d8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_1'()
    IL_00de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00e3:  dup
    IL_00e4:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_1'
    IL_00e9:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_00ee:  nop
    IL_00ef:  ldarg.0
    IL_00f0:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_00f5:  dup
    IL_00f6:  brtrue.s   IL_010f

    IL_00f8:  pop
    IL_00f9:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_00fe:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_2'()
    IL_0104:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0109:  dup
    IL_010a:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_2'
    IL_010f:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0114:  nop
    IL_0115:  ldarg.0
    IL_0116:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_011b:  dup
    IL_011c:  brtrue.s   IL_0135

    IL_011e:  pop
    IL_011f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0124:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_3'()
    IL_012a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_012f:  dup
    IL_0130:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_3'
    IL_0135:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_013a:  nop
    IL_013b:  ldarg.0
    IL_013c:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_0141:  dup
    IL_0142:  brtrue.s   IL_015b

    IL_0144:  pop
    IL_0145:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_014a:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_4'()
    IL_0150:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0155:  dup
    IL_0156:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_4'
    IL_015b:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0160:  nop
    IL_0161:  call       valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo> [Survivalcraft]Game.ContentManager::List()
    IL_0166:  stloc.1
    IL_0167:  ldloca.s   V_1
    IL_0169:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype [Engine]Engine.Content.ContentInfo>::GetEnumerator()
    IL_016e:  stloc.2
    .try
    {
      IL_016f:  nop
      IL_0170:  br.s       IL_019a

      IL_0172:  newobj     instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::.ctor()
      IL_0177:  stloc.3
      IL_0178:  nop
      IL_0179:  ldloc.3
      IL_017a:  ldloca.s   V_2
      IL_017c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::get_Current()
      IL_0181:  stfld      valuetype [Engine]Engine.Content.ContentInfo Game.LoadingScreen/'<>c__DisplayClass5_0'::localContentInfo
      IL_0186:  ldarg.0
      IL_0187:  ldloc.3
      IL_0188:  ldftn      instance void Game.LoadingScreen/'<>c__DisplayClass5_0'::'<.ctor>b__5'()
      IL_018e:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0193:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
      IL_0198:  nop
      IL_0199:  nop
      IL_019a:  ldloca.s   V_2
      IL_019c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>::MoveNext()
      IL_01a1:  stloc.s    V_4
      IL_01a3:  ldloc.s    V_4
      IL_01a5:  brtrue.s   IL_0172

      IL_01a7:  nop
      IL_01a8:  leave.s    IL_01b9

    }  // end .try
    finally
    {
      IL_01aa:  ldloca.s   V_2
      IL_01ac:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype [Engine]Engine.Content.ContentInfo>
      IL_01b2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b7:  nop
      IL_01b8:  endfinally
    }  // end handler
    IL_01b9:  ldarg.0
    IL_01ba:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_01bf:  dup
    IL_01c0:  brtrue.s   IL_01d9

    IL_01c2:  pop
    IL_01c3:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01c8:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_6'()
    IL_01ce:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d3:  dup
    IL_01d4:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_6'
    IL_01d9:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_01de:  nop
    IL_01df:  ldarg.0
    IL_01e0:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_01e5:  dup
    IL_01e6:  brtrue.s   IL_01ff

    IL_01e8:  pop
    IL_01e9:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_01ee:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_7'()
    IL_01f4:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f9:  dup
    IL_01fa:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_7'
    IL_01ff:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0204:  nop
    IL_0205:  ldarg.0
    IL_0206:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_020b:  dup
    IL_020c:  brtrue.s   IL_0225

    IL_020e:  pop
    IL_020f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0214:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_8'()
    IL_021a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_021f:  dup
    IL_0220:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_8'
    IL_0225:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_022a:  nop
    IL_022b:  ldarg.0
    IL_022c:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_0231:  dup
    IL_0232:  brtrue.s   IL_024b

    IL_0234:  pop
    IL_0235:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_023a:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_9'()
    IL_0240:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0245:  dup
    IL_0246:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_9'
    IL_024b:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0250:  nop
    IL_0251:  ldarg.0
    IL_0252:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_0257:  dup
    IL_0258:  brtrue.s   IL_0271

    IL_025a:  pop
    IL_025b:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0260:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_10'()
    IL_0266:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_026b:  dup
    IL_026c:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_10'
    IL_0271:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_0276:  nop
    IL_0277:  ldarg.0
    IL_0278:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_027d:  dup
    IL_027e:  brtrue.s   IL_0297

    IL_0280:  pop
    IL_0281:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0286:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_11'()
    IL_028c:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0291:  dup
    IL_0292:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_11'
    IL_0297:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_029c:  nop
    IL_029d:  ldarg.0
    IL_029e:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_02a3:  dup
    IL_02a4:  brtrue.s   IL_02bd

    IL_02a6:  pop
    IL_02a7:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_02ac:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_12'()
    IL_02b2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02b7:  dup
    IL_02b8:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_12'
    IL_02bd:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02c2:  nop
    IL_02c3:  ldarg.0
    IL_02c4:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_13'
    IL_02c9:  dup
    IL_02ca:  brtrue.s   IL_02e3

    IL_02cc:  pop
    IL_02cd:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_02d2:  ldftn      instance void Game.LoadingScreen/'<>c'::'<.ctor>b__5_13'()
    IL_02d8:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_02dd:  dup
    IL_02de:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__5_13'
    IL_02e3:  call       instance void Game.LoadingScreen::AddLoadAction(class [System.Runtime]System.Action)
    IL_02e8:  nop
    IL_02e9:  ret
  } // end of method LoadingScreen::.ctor

  .method public hidebysig instance void 
          AddLoadAction(class [System.Runtime]System.Action action) cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::Add(!0)
    IL_000d:  nop
    IL_000e:  ret
  } // end of method LoadingScreen::AddLoadAction

  .method public hidebysig virtual instance void 
          Leave() cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Textures/Gui/CandyRufusLogo"
    IL_0006:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Textures/Gui/EngineLogo"
    IL_0011:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_0016:  nop
    IL_0017:  ret
  } // end of method LoadingScreen::Leave

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       348 (0x15c)
    .maxstack  6
    .locals init (float64 V_0,
             bool V_1,
             bool V_2,
             class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> V_3,
             int32 V_4,
             int32 V_5,
             class [System.Runtime]System.Exception V_6,
             bool V_7,
             bool V_8,
             bool V_9,
             bool V_10)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Game.LoadingScreen::m_loadingFinished
    IL_0007:  stloc.1
    IL_0008:  ldloc.1
    IL_0009:  brfalse.s  IL_0010

    IL_000b:  br         IL_015b

    IL_0010:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0015:  stloc.0
    IL_0016:  br         IL_00e8

    IL_001b:  nop
    IL_001c:  ldarg.0
    IL_001d:  ldfld      int32 Game.LoadingScreen::m_index
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0028:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_002d:  clt
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  brfalse    IL_00e5

    IL_0036:  nop
    .try
    {
      IL_0037:  nop
      IL_0038:  ldarg.0
      IL_0039:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
      IL_003e:  stloc.3
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 Game.LoadingScreen::m_index
      IL_0045:  stloc.s    V_4
      IL_0047:  ldarg.0
      IL_0048:  ldloc.s    V_4
      IL_004a:  ldc.i4.1
      IL_004b:  add
      IL_004c:  stfld      int32 Game.LoadingScreen::m_index
      IL_0051:  ldloc.s    V_4
      IL_0053:  stloc.s    V_5
      IL_0055:  ldloc.3
      IL_0056:  ldloc.s    V_5
      IL_0058:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Item(int32)
      IL_005d:  callvirt   instance void [System.Runtime]System.Action::Invoke()
      IL_0062:  nop
      IL_0063:  nop
      IL_0064:  leave.s    IL_00c8

    }  // end .try
    catch [System.Runtime]System.Exception 
    {
      IL_0066:  stloc.s    V_6
      IL_0068:  nop
      IL_0069:  ldstr      "Loading error. Reason: "
      IL_006e:  ldloc.s    V_6
      IL_0070:  callvirt   instance string [System.Runtime]System.Exception::get_Message()
      IL_0075:  call       string [System.Runtime]System.String::Concat(string,
                                                                        string)
      IL_007a:  call       void [Engine]Engine.Log::Error(string)
      IL_007f:  nop
      IL_0080:  ldarg.0
      IL_0081:  ldfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
      IL_0086:  ldc.i4.0
      IL_0087:  ceq
      IL_0089:  stloc.s    V_7
      IL_008b:  ldloc.s    V_7
      IL_008d:  brfalse.s  IL_00c5

      IL_008f:  nop
      IL_0090:  ldarg.0
      IL_0091:  ldc.i4.1
      IL_0092:  stfld      bool Game.LoadingScreen::m_pauseLoading
      IL_0097:  ldstr      "Loading Error"
      IL_009c:  ldloc.s    V_6
      IL_009e:  call       string [Survivalcraft]Game.ExceptionManager::MakeFullErrorMessage(class [System.Runtime]System.Exception)
      IL_00a3:  ldstr      "OK"
      IL_00a8:  ldstr      "Suppress"
      IL_00ad:  ldarg.0
      IL_00ae:  ldftn      instance void Game.LoadingScreen::'<Update>b__8_0'(valuetype [Survivalcraft]Game.MessageDialogButton)
      IL_00b4:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>::.ctor(object,
                                                                                                                                         native int)
      IL_00b9:  newobj     instance void [Survivalcraft]Game.MessageDialog::.ctor(string,
                                                                                  string,
                                                                                  string,
                                                                                  string,
                                                                                  class [System.Runtime]System.Action`1<valuetype [Survivalcraft]Game.MessageDialogButton>)
      IL_00be:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
      IL_00c3:  nop
      IL_00c4:  nop
      IL_00c5:  nop
      IL_00c6:  leave.s    IL_00c8

    }  // end handler
    IL_00c8:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_00cd:  ldloc.0
    IL_00ce:  sub
    IL_00cf:  ldc.r8     0.10000000000000001
    IL_00d8:  cgt
    IL_00da:  stloc.s    V_8
    IL_00dc:  ldloc.s    V_8
    IL_00de:  brfalse.s  IL_00e2

    IL_00e0:  br.s       IL_00fa

    IL_00e2:  nop
    IL_00e3:  br.s       IL_00e7

    IL_00e5:  br.s       IL_00fa

    IL_00e7:  nop
    IL_00e8:  ldarg.0
    IL_00e9:  ldfld      bool Game.LoadingScreen::m_pauseLoading
    IL_00ee:  ldc.i4.0
    IL_00ef:  ceq
    IL_00f1:  stloc.s    V_9
    IL_00f3:  ldloc.s    V_9
    IL_00f5:  brtrue     IL_001b

    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      int32 Game.LoadingScreen::m_index
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action> Game.LoadingScreen::m_loadActions
    IL_0106:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [System.Runtime]System.Action>::get_Count()
    IL_010b:  clt
    IL_010d:  stloc.s    V_10
    IL_010f:  ldloc.s    V_10
    IL_0111:  brfalse.s  IL_0115

    IL_0113:  br.s       IL_015b

    IL_0115:  ldarg.0
    IL_0116:  ldc.i4.1
    IL_0117:  stfld      bool Game.LoadingScreen::m_loadingFinished
    IL_011c:  ldstr      "Audio/UI/ButtonClick"
    IL_0121:  ldc.r4     1.
    IL_0126:  ldc.r4     0.0
    IL_012b:  ldc.r4     0.0
    IL_0130:  call       void [Survivalcraft]Game.AudioManager::PlaySound(string,
                                                                          float32,
                                                                          float32,
                                                                          float32)
    IL_0135:  nop
    IL_0136:  ldsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_013b:  dup
    IL_013c:  brtrue.s   IL_0155

    IL_013e:  pop
    IL_013f:  ldsfld     class Game.LoadingScreen/'<>c' Game.LoadingScreen/'<>c'::'<>9'
    IL_0144:  ldftn      instance void Game.LoadingScreen/'<>c'::'<Update>b__8_1'()
    IL_014a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_014f:  dup
    IL_0150:  stsfld     class [System.Runtime]System.Action Game.LoadingScreen/'<>c'::'<>9__8_1'
    IL_0155:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_015a:  nop
    IL_015b:  ret
  } // end of method LoadingScreen::Update

  .method private hidebysig instance void 
          '<Update>b__8_0'(valuetype [Survivalcraft]Game.MessageDialogButton b) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       43 (0x2b)
    .maxstack  2
    .locals init (bool V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  ceq
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  brfalse.s  IL_0014

    IL_0009:  nop
    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.0
    IL_000c:  stfld      bool Game.LoadingScreen::m_pauseLoading
    IL_0011:  nop
    IL_0012:  br.s       IL_002a

    IL_0014:  nop
    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.1
    IL_0017:  ceq
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  brfalse.s  IL_0022

    IL_0020:  br.s       IL_002a

    IL_0022:  ldarg.0
    IL_0023:  ldc.i4.1
    IL_0024:  stfld      bool Game.LoadingScreen::m_loadingErrorsSuppressed
    IL_0029:  nop
    IL_002a:  ret
  } // end of method LoadingScreen::'<Update>b__8_0'

} // end of class Game.LoadingScreen

.class public auto ansi beforefieldinit Game.MarketplaceManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MarketplaceManager::Initialize

  .method public hidebysig static void  ShowMarketplace() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MarketplaceManager::ShowMarketplace

  .method public hidebysig specialname static 
          bool  get_IsTrialMode() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method MarketplaceManager::get_IsTrialMode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MarketplaceManager::.ctor

  .property bool IsTrialMode()
  {
    .get bool Game.MarketplaceManager::get_IsTrialMode()
  } // end of property MarketplaceManager::IsTrialMode
} // end of class Game.MarketplaceManager

.class public auto ansi beforefieldinit Game.SingleplayerScreen
       extends [Survivalcraft]Game.Screen
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [Survivalcraft]Game.BusyDialog dialog
    .field public class Game.SingleplayerScreen '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_0'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__0'() cil managed
    {
      // 代码大小       136 (0x88)
      .maxstack  3
      .locals init (class Game.SingleplayerScreen/'<>c__DisplayClass2_1' V_0)
      IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldloc.0
      IL_0007:  ldarg.0
      IL_0008:  stfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_000d:  nop
      IL_000e:  ldloc.0
      IL_000f:  ldarg.0
      IL_0010:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_0015:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_001a:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
      IL_001f:  castclass  [Survivalcraft]Game.WorldInfo
      IL_0024:  stfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_0029:  call       void [Survivalcraft]Game.WorldsManager::UpdateWorldsList()
      IL_002e:  nop
      IL_002f:  ldloc.0
      IL_0030:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> [Survivalcraft]Game.WorldsManager::get_WorldInfos()
      IL_0035:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo>
      IL_003a:  castclass  class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.WorldInfo>
      IL_003f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_0044:  stfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_0049:  ldloc.0
      IL_004a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_004f:  ldsfld     class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_0054:  dup
      IL_0055:  brtrue.s   IL_006e

      IL_0057:  pop
      IL_0058:  ldsfld     class Game.SingleplayerScreen/'<>c' Game.SingleplayerScreen/'<>c'::'<>9'
      IL_005d:  ldftn      instance int32 Game.SingleplayerScreen/'<>c'::'<Enter>b__2_1'(class [Survivalcraft]Game.WorldInfo,
                                                                                         class [Survivalcraft]Game.WorldInfo)
      IL_0063:  newobj     instance void class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo>::.ctor(object,
                                                                                                                               native int)
      IL_0068:  dup
      IL_0069:  stsfld     class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c'::'<>9__2_1'
      IL_006e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::Sort(class [System.Runtime]System.Comparison`1<!0>)
      IL_0073:  nop
      IL_0074:  ldloc.0
      IL_0075:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<Enter>b__2'()
      IL_007b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_0080:  ldc.i4.0
      IL_0081:  call       void [Engine]Engine.Dispatcher::Dispatch(class [System.Runtime]System.Action,
                                                                    bool)
      IL_0086:  nop
      IL_0087:  ret
    } // end of method '<>c__DisplayClass2_0'::'<Enter>b__0'

  } // end of class '<>c__DisplayClass2_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass2_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> worldInfos
    .field public class [Survivalcraft]Game.WorldInfo selectedItem
    .field public class Game.SingleplayerScreen/'<>c__DisplayClass2_0' 'CS$<>8__locals1'
    .field public class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> '<>9__3'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass2_1'::.ctor

    .method assembly hidebysig instance void 
            '<Enter>b__2'() cil managed
    {
      // 代码大小       190 (0xbe)
      .maxstack  5
      .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo> V_0,
               object V_1,
               bool V_2,
               class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> V_3)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_0007:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_000c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_0011:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::ClearItems()
      IL_0016:  nop
      IL_0017:  nop
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_001e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo>::GetEnumerator()
      IL_0023:  stloc.0
      .try
      {
        IL_0024:  br.s       IL_0045

        IL_0026:  ldloca.s   V_0
        IL_0028:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>::get_Current()
        IL_002d:  stloc.1
        IL_002e:  ldarg.0
        IL_002f:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
        IL_0034:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
        IL_0039:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
        IL_003e:  ldloc.1
        IL_003f:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::AddItem(object)
        IL_0044:  nop
        IL_0045:  ldloca.s   V_0
        IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>::MoveNext()
        IL_004c:  brtrue.s   IL_0026

        IL_004e:  leave.s    IL_005f

      }  // end .try
      finally
      {
        IL_0050:  ldloca.s   V_0
        IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.WorldInfo>
        IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_005d:  nop
        IL_005e:  endfinally
      }  // end handler
      IL_005f:  ldarg.0
      IL_0060:  ldfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_0065:  ldnull
      IL_0066:  cgt.un
      IL_0068:  stloc.2
      IL_0069:  ldloc.2
      IL_006a:  brfalse.s  IL_00ac

      IL_006c:  ldarg.0
      IL_006d:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_0072:  ldfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
      IL_0077:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
      IL_007c:  ldarg.0
      IL_007d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.WorldInfo> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::worldInfos
      IL_0082:  ldarg.0
      IL_0083:  ldfld      class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>9__3'
      IL_0088:  dup
      IL_0089:  brtrue.s   IL_00a1

      IL_008b:  pop
      IL_008c:  ldarg.0
      IL_008d:  ldarg.0
      IL_008e:  ldftn      instance bool Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<Enter>b__3'(class [Survivalcraft]Game.WorldInfo)
      IL_0094:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool>::.ctor(object,
                                                                                                                              native int)
      IL_0099:  dup
      IL_009a:  stloc.3
      IL_009b:  stfld      class [System.Runtime]System.Func`2<class [Survivalcraft]Game.WorldInfo,bool> Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'<>9__3'
      IL_00a0:  ldloc.3
      IL_00a1:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.WorldInfo>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                        class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00a6:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
      IL_00ab:  nop
      IL_00ac:  ldarg.0
      IL_00ad:  ldfld      class Game.SingleplayerScreen/'<>c__DisplayClass2_0' Game.SingleplayerScreen/'<>c__DisplayClass2_1'::'CS$<>8__locals1'
      IL_00b2:  ldfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
      IL_00b7:  call       void [Survivalcraft]Game.DialogsManager::HideDialog(class [Survivalcraft]Game.Dialog)
      IL_00bc:  nop
      IL_00bd:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Enter>b__2'

    .method assembly hidebysig instance bool 
            '<Enter>b__3'(class [Survivalcraft]Game.WorldInfo wi) cil managed
    {
      // 代码大小       23 (0x17)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string [Survivalcraft]Game.WorldInfo::DirectoryName
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [Survivalcraft]Game.WorldInfo Game.SingleplayerScreen/'<>c__DisplayClass2_1'::selectedItem
      IL_000c:  ldfld      string [Survivalcraft]Game.WorldInfo::DirectoryName
      IL_0011:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0016:  ret
    } // end of method '<>c__DisplayClass2_1'::'<Enter>b__3'

  } // end of class '<>c__DisplayClass2_1'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SingleplayerScreen/'<>c' '<>9'
    .field public static class [System.Runtime]System.Comparison`1<class [Survivalcraft]Game.WorldInfo> '<>9__2_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SingleplayerScreen/'<>c' Game.SingleplayerScreen/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance int32 
            '<Enter>b__2_1'(class [Survivalcraft]Game.WorldInfo w1,
                            class [Survivalcraft]Game.WorldInfo w2) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.2
      IL_0001:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
      IL_0006:  ldarg.1
      IL_0007:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
      IL_000c:  call       int32 [System.Runtime]System.DateTime::Compare(valuetype [System.Runtime]System.DateTime,
                                                                          valuetype [System.Runtime]System.DateTime)
      IL_0011:  ret
    } // end of method '<>c'::'<Enter>b__2_1'

  } // end of class '<>c'

  .field private class [Survivalcraft]Game.ListPanelWidget m_worldsListWidget
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       100 (0x64)
    .maxstack  4
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [Survivalcraft]Game.Screen::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_000e:  ldarg.0
    IL_000f:  ldstr      "Screens/SingleplayerScreen"
    IL_0014:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0019:  call       void [Survivalcraft]Game.WidgetsManager::LoadWidgetContents(class [Survivalcraft]Game.Widget,
                                                                                     object,
                                                                                     class [System.Xml.XDocument]System.Xml.Linq.XElement)
    IL_001e:  nop
    IL_001f:  ldarg.0
    IL_0020:  ldarg.0
    IL_0021:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0026:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_002b:  ldstr      "WorldsList"
    IL_0030:  ldc.i4.1
    IL_0031:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ListPanelWidget>(string,
                                                                                                                            bool)
    IL_0036:  stfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0041:  dup
    IL_0042:  callvirt   instance class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget> [Survivalcraft]Game.ListPanelWidget::get_ItemWidgetFactory()
    IL_0047:  ldarg.0
    IL_0048:  ldftn      instance class [Survivalcraft]Game.Widget Game.SingleplayerScreen::'<.ctor>b__1_0'(object)
    IL_004e:  newobj     instance void class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>::.ctor(object,
                                                                                                                           native int)
    IL_0053:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0058:  castclass  class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>
    IL_005d:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_ItemWidgetFactory(class [System.Runtime]System.Func`2<object,class [Survivalcraft]Game.Widget>)
    IL_0062:  nop
    IL_0063:  ret
  } // end of method SingleplayerScreen::.ctor

  .method public hidebysig virtual instance void 
          Enter(object[] parameters) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (class Game.SingleplayerScreen/'<>c__DisplayClass2_0' V_0)
    IL_0000:  newobj     instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SingleplayerScreen Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<>4__this'
    IL_000d:  nop
    IL_000e:  ldloc.0
    IL_000f:  ldstr      "Scanning Worlds"
    IL_0014:  ldnull
    IL_0015:  newobj     instance void [Survivalcraft]Game.BusyDialog::.ctor(string,
                                                                             string)
    IL_001a:  stfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
    IL_001f:  ldloc.0
    IL_0020:  ldfld      class [Survivalcraft]Game.BusyDialog Game.SingleplayerScreen/'<>c__DisplayClass2_0'::dialog
    IL_0025:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
    IL_002a:  nop
    IL_002b:  ldloc.0
    IL_002c:  ldftn      instance void Game.SingleplayerScreen/'<>c__DisplayClass2_0'::'<Enter>b__0'()
    IL_0032:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0037:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_003c:  pop
    IL_003d:  ret
  } // end of method SingleplayerScreen::Enter

  .method public hidebysig virtual instance void 
          Update() cil managed
  {
    // 代码大小       491 (0x1eb)
    .maxstack  4
    .locals init (object[] V_0,
             bool V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<object> V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             bool V_7)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0007:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_000c:  brfalse.s  IL_0030

    IL_000e:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo> [Survivalcraft]Game.WorldsManager::get_WorldInfos()
    IL_0013:  stloc.2
    IL_0014:  ldloca.s   V_2
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_001c:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0021:  castclass  [Survivalcraft]Game.WorldInfo
    IL_0026:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Survivalcraft]Game.WorldInfo>::IndexOf(!0)
    IL_002b:  ldc.i4.0
    IL_002c:  clt
    IL_002e:  br.s       IL_0031

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.1
    IL_0032:  ldloc.1
    IL_0033:  brfalse.s  IL_0044

    IL_0035:  nop
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_003c:  ldnull
    IL_003d:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_0042:  nop
    IL_0043:  nop
    IL_0044:  ldc.i4.1
    IL_0045:  newarr     [System.Runtime]System.Object
    IL_004a:  dup
    IL_004b:  ldc.i4.0
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0052:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<object> [Survivalcraft]Game.ListPanelWidget::get_Items()
    IL_0057:  stloc.3
    IL_0058:  ldloca.s   V_3
    IL_005a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<object>::get_Count()
    IL_005f:  box        [System.Runtime]System.Int32
    IL_0064:  stelem.ref
    IL_0065:  stloc.0
    IL_0066:  ldarg.0
    IL_0067:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_006c:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0071:  ldstr      "TopBar.Label"
    IL_0076:  ldc.i4.1
    IL_0077:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_007c:  ldstr      "Existing Worlds ({0})"
    IL_0081:  ldloc.0
    IL_0082:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0087:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_008c:  nop
    IL_008d:  ldarg.0
    IL_008e:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0093:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0098:  ldstr      "Play"
    IL_009d:  ldc.i4.1
    IL_009e:  callvirt   instance class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsContainer::Find(string,
                                                                                                              bool)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00a9:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_00ae:  ldnull
    IL_00af:  cgt.un
    IL_00b1:  callvirt   instance void [Survivalcraft]Game.Widget::set_IsEnabled(bool)
    IL_00b6:  nop
    IL_00b7:  ldarg.0
    IL_00b8:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_00bd:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_00c2:  ldstr      "Properties"
    IL_00c7:  ldc.i4.1
    IL_00c8:  callvirt   instance class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsContainer::Find(string,
                                                                                                              bool)
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_00d3:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_00d8:  ldnull
    IL_00d9:  cgt.un
    IL_00db:  callvirt   instance void [Survivalcraft]Game.Widget::set_IsEnabled(bool)
    IL_00e0:  nop
    IL_00e1:  ldarg.0
    IL_00e2:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_00e7:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_00ec:  ldstr      "Play"
    IL_00f1:  ldc.i4.1
    IL_00f2:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_00f7:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_00fc:  brfalse.s  IL_010e

    IL_00fe:  ldarg.0
    IL_00ff:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0104:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0109:  ldnull
    IL_010a:  cgt.un
    IL_010c:  br.s       IL_010f

    IL_010e:  ldc.i4.0
    IL_010f:  stloc.s    V_4
    IL_0111:  ldloc.s    V_4
    IL_0113:  brfalse.s  IL_0129

    IL_0115:  nop
    IL_0116:  ldarg.0
    IL_0117:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_0'()
    IL_011d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0122:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_0127:  nop
    IL_0128:  nop
    IL_0129:  ldarg.0
    IL_012a:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_012f:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0134:  ldstr      "NewWorld"
    IL_0139:  ldc.i4.1
    IL_013a:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_013f:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_0144:  stloc.s    V_5
    IL_0146:  ldloc.s    V_5
    IL_0148:  brfalse.s  IL_015e

    IL_014a:  nop
    IL_014b:  ldarg.0
    IL_014c:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_1'()
    IL_0152:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0157:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_015c:  nop
    IL_015d:  nop
    IL_015e:  ldarg.0
    IL_015f:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_0164:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0169:  ldstr      "Properties"
    IL_016e:  ldc.i4.1
    IL_016f:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_0174:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_0179:  brfalse.s  IL_018b

    IL_017b:  ldarg.0
    IL_017c:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0181:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0186:  ldnull
    IL_0187:  cgt.un
    IL_0189:  br.s       IL_018c

    IL_018b:  ldc.i4.0
    IL_018c:  stloc.s    V_6
    IL_018e:  ldloc.s    V_6
    IL_0190:  brfalse.s  IL_01a6

    IL_0192:  nop
    IL_0193:  ldarg.0
    IL_0194:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_2'()
    IL_019a:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_019f:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01a4:  nop
    IL_01a5:  nop
    IL_01a6:  call       valuetype [Survivalcraft]Game.InputState [Survivalcraft]Game.InputManager::get_InputState()
    IL_01ab:  ldfld      bool [Survivalcraft]Game.InputState::Back
    IL_01b0:  brtrue.s   IL_01cf

    IL_01b2:  ldarg.0
    IL_01b3:  call       instance class [Survivalcraft]Game.ContainerWidget [Survivalcraft]Game.Screen::get_ScreenWidget()
    IL_01b8:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_01bd:  ldstr      "TopBar.Back"
    IL_01c2:  ldc.i4.1
    IL_01c3:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.ButtonWidget>(string,
                                                                                                                         bool)
    IL_01c8:  callvirt   instance bool [Survivalcraft]Game.ButtonWidget::get_IsClicked()
    IL_01cd:  br.s       IL_01d0

    IL_01cf:  ldc.i4.1
    IL_01d0:  stloc.s    V_7
    IL_01d2:  ldloc.s    V_7
    IL_01d4:  brfalse.s  IL_01ea

    IL_01d6:  nop
    IL_01d7:  ldarg.0
    IL_01d8:  ldftn      instance void Game.SingleplayerScreen::'<Update>b__3_3'()
    IL_01de:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01e3:  call       void [Survivalcraft]Game.FrontendManager::StartFadeOutIn(class [System.Runtime]System.Action)
    IL_01e8:  nop
    IL_01e9:  nop
    IL_01ea:  ret
  } // end of method SingleplayerScreen::Update

  .method private hidebysig instance class [Survivalcraft]Game.Widget 
          '<.ctor>b__1_0'(object item) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       393 (0x189)
    .maxstack  7
    .locals init (class [Survivalcraft]Game.WorldInfo V_0,
             class [Survivalcraft]Game.ContainerWidget V_1,
             class [Survivalcraft]Game.LabelWidget V_2,
             class [Survivalcraft]Game.LabelWidget V_3,
             class [Survivalcraft]Game.LabelWidget V_4,
             class [Survivalcraft]Game.LabelWidget V_5,
             class [Survivalcraft]Game.LabelWidget V_6,
             class [Survivalcraft]Game.LabelWidget V_7,
             class [Survivalcraft]Game.Widget V_8)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  castclass  [Survivalcraft]Game.WorldInfo
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  ldstr      "Widgets/SavedWorldItem"
    IL_000e:  call       !!0 [Survivalcraft]Game.ContentManager::Get<class [System.Xml.XDocument]System.Xml.Linq.XElement>(string)
    IL_0013:  ldnull
    IL_0014:  call       class [Survivalcraft]Game.Widget [Survivalcraft]Game.WidgetsManager::LoadWidget(object,
                                                                                                         class [System.Xml.XDocument]System.Xml.Linq.XElement,
                                                                                                         class [Survivalcraft]Game.ContainerWidget)
    IL_0019:  castclass  [Survivalcraft]Game.ContainerWidget
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0025:  ldstr      "WorldItem.Name"
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0030:  stloc.2
    IL_0031:  ldloc.1
    IL_0032:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0037:  ldstr      "WorldItem.Size"
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0042:  stloc.3
    IL_0043:  ldloc.1
    IL_0044:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0049:  ldstr      "WorldItem.Date"
    IL_004e:  ldc.i4.1
    IL_004f:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0054:  stloc.s    V_4
    IL_0056:  ldloc.1
    IL_0057:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_005c:  ldstr      "WorldItem.GameMode"
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_0067:  stloc.s    V_5
    IL_0069:  ldloc.1
    IL_006a:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_006f:  ldstr      "WorldItem.EnvironmentBehaviorMode"
    IL_0074:  ldc.i4.1
    IL_0075:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_007a:  stloc.s    V_6
    IL_007c:  ldloc.1
    IL_007d:  ldfld      class [Survivalcraft]Game.WidgetsContainer [Survivalcraft]Game.ContainerWidget::Children
    IL_0082:  ldstr      "WorldItem.Version"
    IL_0087:  ldc.i4.1
    IL_0088:  callvirt   instance !!0 [Survivalcraft]Game.WidgetsContainer::Find<class [Survivalcraft]Game.LabelWidget>(string,
                                                                                                                        bool)
    IL_008d:  stloc.s    V_7
    IL_008f:  ldloc.1
    IL_0090:  ldloc.0
    IL_0091:  callvirt   instance void [Survivalcraft]Game.Widget::set_Tag(object)
    IL_0096:  nop
    IL_0097:  ldloc.2
    IL_0098:  ldloc.0
    IL_0099:  ldfld      string [Survivalcraft]Game.WorldInfo::Name
    IL_009e:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_00a3:  nop
    IL_00a4:  ldloc.3
    IL_00a5:  ldstr      "{0:0.00MB}"
    IL_00aa:  ldc.i4.1
    IL_00ab:  newarr     [System.Runtime]System.Object
    IL_00b0:  dup
    IL_00b1:  ldc.i4.0
    IL_00b2:  ldloc.0
    IL_00b3:  ldfld      int64 [Survivalcraft]Game.WorldInfo::Size
    IL_00b8:  conv.r8
    IL_00b9:  ldc.r8     1024.
    IL_00c2:  div
    IL_00c3:  ldc.r8     1024.
    IL_00cc:  div
    IL_00cd:  conv.r4
    IL_00ce:  box        [System.Runtime]System.Single
    IL_00d3:  stelem.ref
    IL_00d4:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00d9:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_00de:  nop
    IL_00df:  ldloc.s    V_4
    IL_00e1:  ldstr      "{0:dd MMM yyyy HH:mm}"
    IL_00e6:  ldc.i4.1
    IL_00e7:  newarr     [System.Runtime]System.Object
    IL_00ec:  dup
    IL_00ed:  ldc.i4.0
    IL_00ee:  ldloc.0
    IL_00ef:  ldfld      valuetype [System.Runtime]System.DateTime [Survivalcraft]Game.WorldInfo::LastSaveTime
    IL_00f4:  box        [System.Runtime]System.DateTime
    IL_00f9:  stelem.ref
    IL_00fa:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00ff:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0104:  nop
    IL_0105:  ldloc.s    V_5
    IL_0107:  ldloc.0
    IL_0108:  ldflda     valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_010d:  constrained. [Survivalcraft]Game.GameMode
    IL_0113:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0118:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_011d:  nop
    IL_011e:  ldloc.s    V_6
    IL_0120:  ldloc.0
    IL_0121:  ldflda     valuetype [Survivalcraft]Game.EnvironmentBehaviorMode [Survivalcraft]Game.WorldInfo::EnvironmentBehaviorMode
    IL_0126:  constrained. [Survivalcraft]Game.EnvironmentBehaviorMode
    IL_012c:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0131:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0136:  nop
    IL_0137:  ldloc.s    V_7
    IL_0139:  ldloc.0
    IL_013a:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_013f:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0144:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0149:  brfalse.s  IL_0176

    IL_014b:  ldloc.0
    IL_014c:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0151:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0156:  brtrue.s   IL_016f

    IL_0158:  ldstr      "("
    IL_015d:  ldloc.0
    IL_015e:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0163:  ldstr      ")"
    IL_0168:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_016d:  br.s       IL_0174

    IL_016f:  ldstr      "(unknown)"
    IL_0174:  br.s       IL_017b

    IL_0176:  ldsfld     string [System.Runtime]System.String::Empty
    IL_017b:  callvirt   instance void [Survivalcraft]Game.LabelWidget::set_Text(string)
    IL_0180:  nop
    IL_0181:  ldloc.1
    IL_0182:  stloc.s    V_8
    IL_0184:  br.s       IL_0186

    IL_0186:  ldloc.s    V_8
    IL_0188:  ret
  } // end of method SingleplayerScreen::'<.ctor>b__1_0'

  .method private hidebysig instance void 
          '<Update>b__3_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       48 (0x30)
    .maxstack  3
    .locals init (object[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.2
    IL_0002:  newarr     [System.Runtime]System.Object
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0010:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0015:  stelem.ref
    IL_0016:  ldstr      "GameLoading"
    IL_001b:  ldloc.0
    IL_001c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0021:  nop
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0028:  ldnull
    IL_0029:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_002e:  nop
    IL_002f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_0'

  .method private hidebysig instance void 
          '<Update>b__3_1'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "NewWorld"
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0018:  ldnull
    IL_0019:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_1'

  .method private hidebysig instance void 
          '<Update>b__3_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       35 (0x23)
    .maxstack  4
    .locals init (object[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Object
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_000f:  callvirt   instance object [Survivalcraft]Game.ListPanelWidget::get_SelectedItem()
    IL_0014:  stelem.ref
    IL_0015:  stloc.0
    IL_0016:  ldstr      "ModifyWorld"
    IL_001b:  ldloc.0
    IL_001c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0021:  nop
    IL_0022:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_2'

  .method private hidebysig instance void 
          '<Update>b__3_3'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "MainMenu"
    IL_0006:  ldc.i4.0
    IL_0007:  newarr     [System.Runtime]System.Object
    IL_000c:  call       void [Survivalcraft]Game.ScreensManager::SwitchScreen(string,
                                                                               object[])
    IL_0011:  nop
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [Survivalcraft]Game.ListPanelWidget Game.SingleplayerScreen::m_worldsListWidget
    IL_0018:  ldnull
    IL_0019:  callvirt   instance void [Survivalcraft]Game.ListPanelWidget::set_SelectedItem(object)
    IL_001e:  nop
    IL_001f:  ret
  } // end of method SingleplayerScreen::'<Update>b__3_3'

} // end of class Game.SingleplayerScreen

.class public auto ansi beforefieldinit Game.SubsystemEggBlockBehavior
       extends [Survivalcraft]Game.SubsystemBlockBehavior
{
  .field private class [Survivalcraft]Game.EggBlock m_eggBlock
  .field private class [Survivalcraft]Game.Random m_random
  .field private class [Survivalcraft]Game.SubsystemCreatureSpawn m_subsystemCreatureSpawn
  .field private class [Survivalcraft]Game.SubsystemEntityFactory m_subsystemEntityFactory
  .field private class [Survivalcraft]Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [Survivalcraft]Game.SubsystemGui m_subsystemGui
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  3
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0008:  nop
    IL_0009:  ldarg.0
    IL_000a:  ldarg.0
    IL_000b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0010:  ldc.i4.1
    IL_0011:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGameInfo>(bool)
    IL_0016:  stfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_001b:  ldarg.0
    IL_001c:  ldarg.0
    IL_001d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0022:  ldc.i4.1
    IL_0023:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemEntityFactory>(bool)
    IL_0028:  stfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_002d:  ldarg.0
    IL_002e:  ldarg.0
    IL_002f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0034:  ldc.i4.1
    IL_0035:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemCreatureSpawn>(bool)
    IL_003a:  stfld      class [Survivalcraft]Game.SubsystemCreatureSpawn Game.SubsystemEggBlockBehavior::m_subsystemCreatureSpawn
    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0046:  ldc.i4.1
    IL_0047:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class [Survivalcraft]Game.SubsystemGui>(bool)
    IL_004c:  stfld      class [Survivalcraft]Game.SubsystemGui Game.SubsystemEggBlockBehavior::m_subsystemGui
    IL_0051:  ret
  } // end of method SubsystemEggBlockBehavior::Load

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype [Survivalcraft]Game.CellFace> cellFace,
                            class [Survivalcraft]Game.ComponentBody componentBody,
                            class [Survivalcraft]Game.WorldItem worldItem) cil managed
  {
    // 代码大小       241 (0xf1)
    .maxstack  5
    .locals init (int32 V_0,
             bool V_1,
             bool V_2,
             class [Survivalcraft]Game.EggBlock/EggType V_3,
             class [EntitySystem]GameEntitySystem.Entity V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldfld      int32 [Survivalcraft]Game.WorldItem::Value
    IL_0007:  call       int32 [Survivalcraft]Game.TerrainData::ExtractData(int32)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  call       bool [Survivalcraft]Game.EggBlock::GetIsLaid(int32)
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  call       bool [Survivalcraft]Game.EggBlock::GetIsCooked(int32)
    IL_001a:  brtrue.s   IL_005c

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Survivalcraft]Game.SubsystemGameInfo Game.SubsystemEggBlockBehavior::m_subsystemGameInfo
    IL_0022:  callvirt   instance class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.SubsystemGameInfo::get_WorldInfo()
    IL_0027:  ldfld      valuetype [Survivalcraft]Game.GameMode [Survivalcraft]Game.WorldInfo::GameMode
    IL_002c:  brfalse.s  IL_0059

    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_0034:  ldc.r4     0.0
    IL_0039:  ldc.r4     1.
    IL_003e:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_0043:  ldloc.1
    IL_0044:  brtrue.s   IL_004d

    IL_0046:  ldc.r4     1.
    IL_004b:  br.s       IL_0052

    IL_004d:  ldc.r4     0.2
    IL_0052:  cgt.un
    IL_0054:  ldc.i4.0
    IL_0055:  ceq
    IL_0057:  br.s       IL_005a

    IL_0059:  ldc.i4.1
    IL_005a:  br.s       IL_005d

    IL_005c:  ldc.i4.0
    IL_005d:  stloc.2
    IL_005e:  ldloc.2
    IL_005f:  brfalse    IL_00e9

    IL_0064:  nop
    IL_0065:  ldarg.0
    IL_0066:  ldfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_006b:  ldloc.0
    IL_006c:  callvirt   instance class [Survivalcraft]Game.EggBlock/EggType [Survivalcraft]Game.EggBlock::GetEggType(int32)
    IL_0071:  stloc.3
    IL_0072:  ldarg.0
    IL_0073:  ldfld      class [Survivalcraft]Game.SubsystemEntityFactory Game.SubsystemEggBlockBehavior::m_subsystemEntityFactory
    IL_0078:  ldloc.3
    IL_0079:  ldfld      string [Survivalcraft]Game.EggBlock/EggType::TemplateName
    IL_007e:  ldc.i4.1
    IL_007f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [Survivalcraft]Game.SubsystemEntityFactory::CreateEntity(string,
                                                                                                                                       bool)
    IL_0084:  stloc.s    V_4
    IL_0086:  ldloc.s    V_4
    IL_0088:  ldc.i4.1
    IL_0089:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_008e:  ldarg.3
    IL_008f:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.WorldItem::Position
    IL_0094:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0099:  nop
    IL_009a:  ldloc.s    V_4
    IL_009c:  ldc.i4.1
    IL_009d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentBody>(bool)
    IL_00a2:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_00ad:  ldc.r4     0.0
    IL_00b2:  ldc.r4     6.283185
    IL_00b7:  callvirt   instance float32 [Survivalcraft]Game.Random::UniformFloat(float32,
                                                                                   float32)
    IL_00bc:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_00c1:  callvirt   instance void [Survivalcraft]Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_00c6:  nop
    IL_00c7:  ldloc.s    V_4
    IL_00c9:  ldc.i4.1
    IL_00ca:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class [Survivalcraft]Game.ComponentSpawn>(bool)
    IL_00cf:  ldc.r4     0.25
    IL_00d4:  callvirt   instance void [Survivalcraft]Game.ComponentSpawn::set_SpawnDuration(float32)
    IL_00d9:  nop
    IL_00da:  ldarg.0
    IL_00db:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_00e0:  ldloc.s    V_4
    IL_00e2:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_00e7:  nop
    IL_00e8:  nop
    IL_00e9:  ldc.i4.1
    IL_00ea:  stloc.s    V_5
    IL_00ec:  br.s       IL_00ee

    IL_00ee:  ldloc.s    V_5
    IL_00f0:  ret
  } // end of method SubsystemEggBlockBehavior::OnHitAsProjectile

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  1
    .locals init (int32[] V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  newarr     [System.Runtime]System.Int32
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method SubsystemEggBlockBehavior::get_HandledBlocks

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldc.i4.s   118
    IL_0008:  ldelem.ref
    IL_0009:  castclass  [Survivalcraft]Game.EggBlock
    IL_000e:  stfld      class [Survivalcraft]Game.EggBlock Game.SubsystemEggBlockBehavior::m_eggBlock
    IL_0013:  ldarg.0
    IL_0014:  newobj     instance void [Survivalcraft]Game.Random::.ctor()
    IL_0019:  stfld      class [Survivalcraft]Game.Random Game.SubsystemEggBlockBehavior::m_random
    IL_001e:  ldarg.0
    IL_001f:  call       instance void [Survivalcraft]Game.SubsystemBlockBehavior::.ctor()
    IL_0024:  nop
    IL_0025:  ret
  } // end of method SubsystemEggBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemEggBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemEggBlockBehavior::HandledBlocks
} // end of class Game.SubsystemEggBlockBehavior

.class public abstract auto ansi sealed Game.VersionsManager
       extends [System.Runtime]System.Object
{
  .field private static class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> m_versionConverters
  .field private static string '<LastLaunchedVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private static string '<SerializationVersion>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private static string '<Version>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Diagnostics.Debug]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       390 (0x186)
    .maxstack  4
    .locals init (class [System.Reflection]System.Reflection.AssemblyName V_0,
             object[] V_1,
             object[] V_2,
             class [System.Reflection]System.Reflection.Assembly[] V_3,
             int32 V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo> V_5,
             class [System.Reflection]System.Reflection.TypeInfo V_6,
             bool V_7,
             class [Survivalcraft]Game.VersionConverter V_8,
             bool V_9)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_000a:  nop
    IL_000b:  ldtoken    Game.VersionsManager
    IL_0010:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0015:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
    IL_001a:  callvirt   instance class [System.Reflection]System.Reflection.Assembly [System.Reflection]System.Reflection.TypeInfo::get_Assembly()
    IL_001f:  callvirt   instance string [System.Reflection]System.Reflection.Assembly::get_FullName()
    IL_0024:  newobj     instance void [System.Reflection]System.Reflection.AssemblyName::.ctor(string)
    IL_0029:  stloc.0
    IL_002a:  ldc.i4.4
    IL_002b:  newarr     [System.Runtime]System.Object
    IL_0030:  dup
    IL_0031:  ldc.i4.0
    IL_0032:  ldloc.0
    IL_0033:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0038:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_003d:  box        [System.Runtime]System.Int32
    IL_0042:  stelem.ref
    IL_0043:  dup
    IL_0044:  ldc.i4.1
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_004b:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_0050:  box        [System.Runtime]System.Int32
    IL_0055:  stelem.ref
    IL_0056:  dup
    IL_0057:  ldc.i4.2
    IL_0058:  ldloc.0
    IL_0059:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_005e:  callvirt   instance int32 [System.Runtime]System.Version::get_Build()
    IL_0063:  box        [System.Runtime]System.Int32
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  ldc.i4.3
    IL_006b:  ldloc.0
    IL_006c:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_0071:  callvirt   instance int32 [System.Runtime]System.Version::get_Revision()
    IL_0076:  box        [System.Runtime]System.Int32
    IL_007b:  stelem.ref
    IL_007c:  stloc.1
    IL_007d:  ldstr      "{0}.{1}.{2}.{3}"
    IL_0082:  ldloc.1
    IL_0083:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0088:  call       void Game.VersionsManager::set_Version(string)
    IL_008d:  nop
    IL_008e:  ldc.i4.2
    IL_008f:  newarr     [System.Runtime]System.Object
    IL_0094:  dup
    IL_0095:  ldc.i4.0
    IL_0096:  ldloc.0
    IL_0097:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_009c:  callvirt   instance int32 [System.Runtime]System.Version::get_Major()
    IL_00a1:  box        [System.Runtime]System.Int32
    IL_00a6:  stelem.ref
    IL_00a7:  dup
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldloc.0
    IL_00aa:  callvirt   instance class [System.Runtime]System.Version [System.Reflection]System.Reflection.AssemblyName::get_Version()
    IL_00af:  callvirt   instance int32 [System.Runtime]System.Version::get_Minor()
    IL_00b4:  box        [System.Runtime]System.Int32
    IL_00b9:  stelem.ref
    IL_00ba:  stloc.2
    IL_00bb:  ldstr      "{0}.{1}"
    IL_00c0:  ldloc.2
    IL_00c1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c6:  call       void Game.VersionsManager::set_SerializationVersion(string)
    IL_00cb:  nop
    IL_00cc:  call       valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly> [Engine]Engine.Serialization.TypeCache::get_LoadedAssemblies()
    IL_00d1:  box        valuetype [Engine]Engine.ReadOnlyList`1<class [System.Reflection]System.Reflection.Assembly>
    IL_00d6:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [System.Reflection]System.Reflection.Assembly>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_00db:  stloc.3
    IL_00dc:  ldc.i4.0
    IL_00dd:  stloc.s    V_4
    IL_00df:  br         IL_0175

    IL_00e4:  nop
    IL_00e5:  nop
    IL_00e6:  ldloc.3
    IL_00e7:  ldloc.s    V_4
    IL_00e9:  ldelem.ref
    IL_00ea:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo> [System.Reflection]System.Reflection.Assembly::get_DefinedTypes()
    IL_00ef:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.TypeInfo>::GetEnumerator()
    IL_00f4:  stloc.s    V_5
    .try
    {
      IL_00f6:  br.s       IL_0156

      IL_00f8:  ldloc.s    V_5
      IL_00fa:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.TypeInfo>::get_Current()
      IL_00ff:  stloc.s    V_6
      IL_0101:  nop
      IL_0102:  ldloc.s    V_6
      IL_0104:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsAbstract()
      IL_0109:  brtrue.s   IL_012c

      IL_010b:  ldloc.s    V_6
      IL_010d:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::get_IsInterface()
      IL_0112:  brtrue.s   IL_012c

      IL_0114:  ldtoken    [Survivalcraft]Game.VersionConverter
      IL_0119:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
      IL_011e:  call       class [System.Reflection]System.Reflection.TypeInfo [System.Reflection]System.Reflection.IntrospectionExtensions::GetTypeInfo(class [System.Runtime]System.Type)
      IL_0123:  ldloc.s    V_6
      IL_0125:  callvirt   instance bool [System.Reflection]System.Reflection.TypeInfo::IsAssignableFrom(class [System.Reflection]System.Reflection.TypeInfo)
      IL_012a:  br.s       IL_012d

      IL_012c:  ldc.i4.0
      IL_012d:  stloc.s    V_7
      IL_012f:  ldloc.s    V_7
      IL_0131:  brfalse.s  IL_0155

      IL_0133:  nop
      IL_0134:  ldloc.s    V_6
      IL_0136:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.TypeInfo::AsType()
      IL_013b:  call       object [System.Runtime]System.Activator::CreateInstance(class [System.Runtime]System.Type)
      IL_0140:  castclass  [Survivalcraft]Game.VersionConverter
      IL_0145:  stloc.s    V_8
      IL_0147:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
      IL_014c:  ldloc.s    V_8
      IL_014e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::Add(!0)
      IL_0153:  nop
      IL_0154:  nop
      IL_0155:  nop
      IL_0156:  ldloc.s    V_5
      IL_0158:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_015d:  brtrue.s   IL_00f8

      IL_015f:  leave.s    IL_016e

    }  // end .try
    finally
    {
      IL_0161:  ldloc.s    V_5
      IL_0163:  brfalse.s  IL_016d

      IL_0165:  ldloc.s    V_5
      IL_0167:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_016c:  nop
      IL_016d:  endfinally
    }  // end handler
    IL_016e:  nop
    IL_016f:  ldloc.s    V_4
    IL_0171:  ldc.i4.1
    IL_0172:  add
    IL_0173:  stloc.s    V_4
    IL_0175:  ldloc.s    V_4
    IL_0177:  ldloc.3
    IL_0178:  ldlen
    IL_0179:  conv.i4
    IL_017a:  clt
    IL_017c:  stloc.s    V_9
    IL_017e:  ldloc.s    V_9
    IL_0180:  brtrue     IL_00e4

    IL_0185:  ret
  } // end of method VersionsManager::.cctor

  .method private hidebysig static class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> 
          FindTransform(string sourceVersion,
                        string targetVersion,
                        class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter> converters,
                        int32 depth) cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  5
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_0,
             int32 V_1,
             bool V_2,
             bool V_3,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_4,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.VersionConverter> V_5,
             class [Survivalcraft]Game.VersionConverter V_6,
             bool V_7,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_8,
             bool V_9)
    IL_0000:  nop
    IL_0001:  ldarg.3
    IL_0002:  ldc.i4.s   100
    IL_0004:  cgt
    IL_0006:  stloc.2
    IL_0007:  ldloc.2
    IL_0008:  brfalse.s  IL_0016

    IL_000a:  nop
    IL_000b:  ldstr      "Too deep recursion when searching for version conv"
    + "erters. Check for possible loops in transforms."
    IL_0010:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0015:  throw

    IL_0016:  ldarg.0
    IL_0017:  ldarg.1
    IL_0018:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_001d:  stloc.3
    IL_001e:  ldloc.3
    IL_001f:  brfalse.s  IL_002e

    IL_0021:  nop
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::.ctor()
    IL_0027:  stloc.s    V_4
    IL_0029:  br         IL_00c0

    IL_002e:  ldnull
    IL_002f:  stloc.0
    IL_0030:  ldc.i4     0x7fffffff
    IL_0035:  stloc.1
    IL_0036:  nop
    IL_0037:  ldarg.2
    IL_0038:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>::GetEnumerator()
    IL_003d:  stloc.s    V_5
    .try
    {
      IL_003f:  br.s       IL_00a3

      IL_0041:  ldloc.s    V_5
      IL_0043:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.VersionConverter>::get_Current()
      IL_0048:  stloc.s    V_6
      IL_004a:  nop
      IL_004b:  ldloc.s    V_6
      IL_004d:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_SourceVersion()
      IL_0052:  ldarg.0
      IL_0053:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0058:  stloc.s    V_7
      IL_005a:  ldloc.s    V_7
      IL_005c:  brfalse.s  IL_00a2

      IL_005e:  nop
      IL_005f:  ldloc.s    V_6
      IL_0061:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_TargetVersion()
      IL_0066:  ldarg.1
      IL_0067:  ldarg.2
      IL_0068:  ldarg.3
      IL_0069:  ldc.i4.1
      IL_006a:  add
      IL_006b:  call       class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                                       string,
                                                                                                                                                                       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>,
                                                                                                                                                                       int32)
      IL_0070:  stloc.s    V_8
      IL_0072:  ldloc.s    V_8
      IL_0074:  brfalse.s  IL_0082

      IL_0076:  ldloc.s    V_8
      IL_0078:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::get_Count()
      IL_007d:  ldloc.1
      IL_007e:  clt
      IL_0080:  br.s       IL_0083

      IL_0082:  ldc.i4.0
      IL_0083:  stloc.s    V_9
      IL_0085:  ldloc.s    V_9
      IL_0087:  brfalse.s  IL_00a1

      IL_0089:  nop
      IL_008a:  ldloc.s    V_8
      IL_008c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::get_Count()
      IL_0091:  stloc.1
      IL_0092:  ldloc.s    V_8
      IL_0094:  ldc.i4.0
      IL_0095:  ldloc.s    V_6
      IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::Insert(int32,
                                                                                                                                                         !0)
      IL_009c:  nop
      IL_009d:  ldloc.s    V_8
      IL_009f:  stloc.0
      IL_00a0:  nop
      IL_00a1:  nop
      IL_00a2:  nop
      IL_00a3:  ldloc.s    V_5
      IL_00a5:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_00aa:  brtrue.s   IL_0041

      IL_00ac:  leave.s    IL_00bb

    }  // end .try
    finally
    {
      IL_00ae:  ldloc.s    V_5
      IL_00b0:  brfalse.s  IL_00ba

      IL_00b2:  ldloc.s    V_5
      IL_00b4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b9:  nop
      IL_00ba:  endfinally
    }  // end handler
    IL_00bb:  ldloc.0
    IL_00bc:  stloc.s    V_4
    IL_00be:  br.s       IL_00c0

    IL_00c0:  ldloc.s    V_4
    IL_00c2:  ret
  } // end of method VersionsManager::FindTransform

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  5
    .locals init (bool V_0,
             valuetype [Survivalcraft]Game.AnalyticsParameter[] V_1)
    IL_0000:  nop
    IL_0001:  call       string [Survivalcraft]Game.SettingsManager::get_LastLaunchedVersion()
    IL_0006:  call       void Game.VersionsManager::set_LastLaunchedVersion(string)
    IL_000b:  nop
    IL_000c:  call       string Game.VersionsManager::get_Version()
    IL_0011:  call       void [Survivalcraft]Game.SettingsManager::set_LastLaunchedVersion(string)
    IL_0016:  nop
    IL_0017:  call       string Game.VersionsManager::get_Version()
    IL_001c:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_0021:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0026:  stloc.0
    IL_0027:  ldloc.0
    IL_0028:  brfalse.s  IL_006b

    IL_002a:  nop
    IL_002b:  ldc.i4.2
    IL_002c:  newarr     [Survivalcraft]Game.AnalyticsParameter
    IL_0031:  dup
    IL_0032:  ldc.i4.0
    IL_0033:  ldstr      "LastVersion"
    IL_0038:  call       string Game.VersionsManager::get_LastLaunchedVersion()
    IL_003d:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0042:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_0047:  dup
    IL_0048:  ldc.i4.1
    IL_0049:  ldstr      "CurrentVersion"
    IL_004e:  call       string Game.VersionsManager::get_Version()
    IL_0053:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0058:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_005d:  stloc.1
    IL_005e:  ldstr      "[VersionsManager] Upgrade game"
    IL_0063:  ldloc.1
    IL_0064:  call       void [Survivalcraft]Game.AnalyticsManager::LogEvent(string,
                                                                             valuetype [Survivalcraft]Game.AnalyticsParameter[])
    IL_0069:  nop
    IL_006a:  nop
    IL_006b:  ret
  } // end of method VersionsManager::Initialize

  .method public hidebysig static void  UpgradeWorld(string directoryName) cil managed
  {
    // 代码大小       435 (0x1b3)
    .maxstack  5
    .locals init (class [Survivalcraft]Game.WorldInfo V_0,
             bool V_1,
             object[] V_2,
             bool V_3,
             object[] V_4,
             class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> V_5,
             class [Survivalcraft]Game.WorldInfo V_6,
             valuetype [Survivalcraft]Game.AnalyticsParameter[] V_7,
             bool V_8,
             object[] V_9,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter> V_10,
             class [Survivalcraft]Game.VersionConverter V_11,
             object[] V_12,
             bool V_13,
             object[] V_14)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.WorldsManager::GetWorldInfo(string)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldnull
    IL_000a:  ceq
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  brfalse.s  IL_002d

    IL_0010:  nop
    IL_0011:  ldc.i4.1
    IL_0012:  newarr     [System.Runtime]System.Object
    IL_0017:  dup
    IL_0018:  ldc.i4.0
    IL_0019:  ldarg.0
    IL_001a:  stelem.ref
    IL_001b:  stloc.2
    IL_001c:  ldstr      "Cannot determine version of world at \"{0}\""
    IL_0021:  ldloc.2
    IL_0022:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0027:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_002c:  throw

    IL_002d:  ldloc.0
    IL_002e:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0033:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0038:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_003d:  stloc.3
    IL_003e:  ldloc.3
    IL_003f:  brfalse    IL_01b2

    IL_0044:  nop
    IL_0045:  ldc.i4.1
    IL_0046:  newarr     [System.Runtime]System.Object
    IL_004b:  dup
    IL_004c:  ldc.i4.0
    IL_004d:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0052:  stelem.ref
    IL_0053:  stloc.s    V_4
    IL_0055:  ldstr      "Upgrading World To {0}"
    IL_005a:  ldloc.s    V_4
    IL_005c:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0061:  ldc.r4     0.0
    IL_0066:  call       void [Survivalcraft]Game.ProgressManager::UpdateProgress(string,
                                                                                  float32)
    IL_006b:  nop
    IL_006c:  ldloc.0
    IL_006d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0072:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0077:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::m_versionConverters
    IL_007c:  ldc.i4.0
    IL_007d:  call       class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter> Game.VersionsManager::FindTransform(string,
                                                                                                                                                                     string,
                                                                                                                                                                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.VersionConverter>,
                                                                                                                                                                     int32)
    IL_0082:  stloc.s    V_5
    IL_0084:  ldloc.s    V_5
    IL_0086:  ldnull
    IL_0087:  ceq
    IL_0089:  stloc.s    V_8
    IL_008b:  ldloc.s    V_8
    IL_008d:  brfalse.s  IL_00bb

    IL_008f:  nop
    IL_0090:  ldc.i4.2
    IL_0091:  newarr     [System.Runtime]System.Object
    IL_0096:  dup
    IL_0097:  ldc.i4.0
    IL_0098:  ldloc.0
    IL_0099:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_009e:  stelem.ref
    IL_009f:  dup
    IL_00a0:  ldc.i4.1
    IL_00a1:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_00a6:  stelem.ref
    IL_00a7:  stloc.s    V_9
    IL_00a9:  ldstr      "Cannot find conversion path from version \"{0}\" to "
    + "version \"{1}\""
    IL_00ae:  ldloc.s    V_9
    IL_00b0:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00b5:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00ba:  throw

    IL_00bb:  nop
    IL_00bc:  ldloc.s    V_5
    IL_00be:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class [Survivalcraft]Game.VersionConverter>::GetEnumerator()
    IL_00c3:  stloc.s    V_10
    .try
    {
      IL_00c5:  br.s       IL_0109

      IL_00c7:  ldloca.s   V_10
      IL_00c9:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>::get_Current()
      IL_00ce:  stloc.s    V_11
      IL_00d0:  nop
      IL_00d1:  ldc.i4.2
      IL_00d2:  newarr     [System.Runtime]System.Object
      IL_00d7:  dup
      IL_00d8:  ldc.i4.0
      IL_00d9:  ldloc.s    V_11
      IL_00db:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_SourceVersion()
      IL_00e0:  stelem.ref
      IL_00e1:  dup
      IL_00e2:  ldc.i4.1
      IL_00e3:  ldloc.s    V_11
      IL_00e5:  callvirt   instance string [Survivalcraft]Game.VersionConverter::get_TargetVersion()
      IL_00ea:  stelem.ref
      IL_00eb:  stloc.s    V_12
      IL_00ed:  ldstr      "Upgrading world version \"{0}\" to \"{1}\"."
      IL_00f2:  ldloc.s    V_12
      IL_00f4:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00f9:  call       void [Engine]Engine.Log::Information(string)
      IL_00fe:  nop
      IL_00ff:  ldloc.s    V_11
      IL_0101:  ldarg.0
      IL_0102:  callvirt   instance void [Survivalcraft]Game.VersionConverter::ConvertWorld(string)
      IL_0107:  nop
      IL_0108:  nop
      IL_0109:  ldloca.s   V_10
      IL_010b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>::MoveNext()
      IL_0110:  brtrue.s   IL_00c7

      IL_0112:  leave.s    IL_0123

    }  // end .try
    finally
    {
      IL_0114:  ldloca.s   V_10
      IL_0116:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class [Survivalcraft]Game.VersionConverter>
      IL_011c:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0121:  nop
      IL_0122:  endfinally
    }  // end handler
    IL_0123:  ldarg.0
    IL_0124:  call       class [Survivalcraft]Game.WorldInfo [Survivalcraft]Game.WorldsManager::GetWorldInfo(string)
    IL_0129:  stloc.s    V_6
    IL_012b:  ldloc.s    V_6
    IL_012d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0132:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0137:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_013c:  stloc.s    V_13
    IL_013e:  ldloc.s    V_13
    IL_0140:  brfalse.s  IL_016f

    IL_0142:  nop
    IL_0143:  ldc.i4.2
    IL_0144:  newarr     [System.Runtime]System.Object
    IL_0149:  dup
    IL_014a:  ldc.i4.0
    IL_014b:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0150:  stelem.ref
    IL_0151:  dup
    IL_0152:  ldc.i4.1
    IL_0153:  ldloc.s    V_6
    IL_0155:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_015a:  stelem.ref
    IL_015b:  stloc.s    V_14
    IL_015d:  ldstr      "Upgrade produced invalid project version. Expected"
    + " \"{0}\", found \"{1}\"."
    IL_0162:  ldloc.s    V_14
    IL_0164:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0169:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_016e:  throw

    IL_016f:  ldc.i4.2
    IL_0170:  newarr     [Survivalcraft]Game.AnalyticsParameter
    IL_0175:  dup
    IL_0176:  ldc.i4.0
    IL_0177:  ldstr      "SourceVersion"
    IL_017c:  ldloc.0
    IL_017d:  ldfld      string [Survivalcraft]Game.WorldInfo::SerializationVersion
    IL_0182:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_0187:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_018c:  dup
    IL_018d:  ldc.i4.1
    IL_018e:  ldstr      "TargetVersion"
    IL_0193:  call       string Game.VersionsManager::get_SerializationVersion()
    IL_0198:  newobj     instance void [Survivalcraft]Game.AnalyticsParameter::.ctor(string,
                                                                                     string)
    IL_019d:  stelem     [Survivalcraft]Game.AnalyticsParameter
    IL_01a2:  stloc.s    V_7
    IL_01a4:  ldstr      "[VersionConverter] Upgrade world"
    IL_01a9:  ldloc.s    V_7
    IL_01ab:  call       void [Survivalcraft]Game.AnalyticsManager::LogEvent(string,
                                                                             valuetype [Survivalcraft]Game.AnalyticsParameter[])
    IL_01b0:  nop
    IL_01b1:  nop
    IL_01b2:  ret
  } // end of method VersionsManager::UpgradeWorld

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.BuildConfiguration 
          get_BuildConfiguration() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.BuildConfiguration V_0)
    IL_0000:  nop
    IL_0001:  call       valuetype [Survivalcraft]Game.BuildConfiguration GScience.ModAPI.Info::get_BuildConfiguration()
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method VersionsManager::get_BuildConfiguration

  .method public hidebysig specialname static 
          valuetype [Survivalcraft]Game.Platform 
          get_Platform() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (valuetype [Survivalcraft]Game.Platform V_0)
    IL_0000:  nop
    IL_0001:  call       valuetype [Survivalcraft]Game.Platform GScience.ModAPI.Info::get_Platform()
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method VersionsManager::get_Platform

  .method public hidebysig specialname static 
          string  get_LastLaunchedVersion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_LastLaunchedVersion

  .method private hidebysig specialname static 
          void  set_LastLaunchedVersion(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<LastLaunchedVersion>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_LastLaunchedVersion

  .method public hidebysig specialname static 
          string  get_SerializationVersion() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<SerializationVersion>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_SerializationVersion

  .method private hidebysig specialname static 
          void  set_SerializationVersion(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<SerializationVersion>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_SerializationVersion

  .method public hidebysig specialname static 
          string  get_Version() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.VersionsManager::'<Version>k__BackingField'
    IL_0005:  ret
  } // end of method VersionsManager::get_Version

  .method private hidebysig specialname static 
          void  set_Version(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.VersionsManager::'<Version>k__BackingField'
    IL_0006:  ret
  } // end of method VersionsManager::set_Version

  .property valuetype [Survivalcraft]Game.BuildConfiguration
          BuildConfiguration()
  {
    .get valuetype [Survivalcraft]Game.BuildConfiguration Game.VersionsManager::get_BuildConfiguration()
  } // end of property VersionsManager::BuildConfiguration
  .property valuetype [Survivalcraft]Game.Platform
          Platform()
  {
    .get valuetype [Survivalcraft]Game.Platform Game.VersionsManager::get_Platform()
  } // end of property VersionsManager::Platform
  .property string LastLaunchedVersion()
  {
    .get string Game.VersionsManager::get_LastLaunchedVersion()
    .set void Game.VersionsManager::set_LastLaunchedVersion(string)
  } // end of property VersionsManager::LastLaunchedVersion
  .property string SerializationVersion()
  {
    .get string Game.VersionsManager::get_SerializationVersion()
    .set void Game.VersionsManager::set_SerializationVersion(string)
  } // end of property VersionsManager::SerializationVersion
  .property string Version()
  {
    .get string Game.VersionsManager::get_Version()
    .set void Game.VersionsManager::set_Version(string)
  } // end of property VersionsManager::Version
} // end of class Game.VersionsManager


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 D:\编程\程序源码\游戏辅助工具\生存战争改版\SCCodeInstaller\Tmp\UserCode.res
