.class public auto ansi Game.SubsystemPalette
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private static initonly valuetype [Engine]Engine.Color[] m_defaultFabricColors
  .field private string[] m_names
  .field private valuetype [Engine]Engine.Color[] m_colors
  .field private valuetype [Engine]Engine.Color[] m_fabricColors
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  stsfld     valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_defaultFabricColors
    IL_000c:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_0011:  call       valuetype [Engine]Engine.Color[] Game.SubsystemPalette::CreateFabricColors(valuetype [Engine]Engine.Color[])
    IL_0016:  stsfld     valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_defaultFabricColors
    IL_001b:  ret
  } // end of method SubsystemPalette::.cctor

  .method public hidebysig instance valuetype [Engine]Engine.Color 
          GetColor(int32 index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_colors
    IL_0006:  ldarg.1
    IL_0007:  ldelem     [Engine]Engine.Color
    IL_000c:  ret
  } // end of method SubsystemPalette::GetColor

  .method public hidebysig instance string 
          GetName(int32 index) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string[] Game.SubsystemPalette::m_names
    IL_0006:  ldarg.1
    IL_0007:  ldelem.ref
    IL_0008:  ret
  } // end of method SubsystemPalette::GetName

  .method public hidebysig instance valuetype [Engine]Engine.Color 
          GetFabricColor(int32 index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_fabricColors
    IL_0006:  ldarg.1
    IL_0007:  ldelem     [Engine]Engine.Color
    IL_000c:  ret
  } // end of method SubsystemPalette::GetFabricColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetColor(class Game.BlockGeometryGenerator generator,
                   valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarga.s   index
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0036

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemPalette Game.BlockGeometryGenerator::SubsystemPalette
    IL_000f:  brfalse.s  IL_0024

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemPalette Game.BlockGeometryGenerator::SubsystemPalette
    IL_0017:  ldarga.s   index
    IL_0019:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(int32)
    IL_0023:  ret

    IL_0024:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_0029:  ldarga.s   index
    IL_002b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0030:  ldelem     [Engine]Engine.Color
    IL_0035:  ret

    IL_0036:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003b:  ret
  } // end of method SubsystemPalette::GetColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetColor(class Game.DrawBlockEnvironmentData environmentData,
                   valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0006:  ldarg.1
    IL_0007:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(class Game.SubsystemTerrain,
                                                                                        valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000c:  ret
  } // end of method SubsystemPalette::GetColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetColor(class Game.SubsystemTerrain subsystemTerrain,
                   valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarga.s   index
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0039

    IL_0009:  ldarg.0
    IL_000a:  brfalse.s  IL_0027

    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.0
    IL_0015:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_001a:  ldarga.s   index
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemPalette::GetColor(int32)
    IL_0026:  ret

    IL_0027:  ldsfld     valuetype [Engine]Engine.Color[] Game.WorldPalette::DefaultColors
    IL_002c:  ldarga.s   index
    IL_002e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0033:  ldelem     [Engine]Engine.Color
    IL_0038:  ret

    IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003e:  ret
  } // end of method SubsystemPalette::GetColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetFabricColor(class Game.BlockGeometryGenerator generator,
                         valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  8
    IL_0000:  ldarga.s   index
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0036

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class Game.SubsystemPalette Game.BlockGeometryGenerator::SubsystemPalette
    IL_000f:  brfalse.s  IL_0024

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.SubsystemPalette Game.BlockGeometryGenerator::SubsystemPalette
    IL_0017:  ldarga.s   index
    IL_0019:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_001e:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(int32)
    IL_0023:  ret

    IL_0024:  ldsfld     valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_defaultFabricColors
    IL_0029:  ldarga.s   index
    IL_002b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0030:  ldelem     [Engine]Engine.Color
    IL_0035:  ret

    IL_0036:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003b:  ret
  } // end of method SubsystemPalette::GetFabricColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetFabricColor(class Game.DrawBlockEnvironmentData environmentData,
                         valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0006:  ldarg.1
    IL_0007:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.SubsystemTerrain,
                                                                                              valuetype [System.Runtime]System.Nullable`1<int32>)
    IL_000c:  ret
  } // end of method SubsystemPalette::GetFabricColor

  .method public hidebysig static valuetype [Engine]Engine.Color 
          GetFabricColor(class Game.SubsystemTerrain subsystemTerrain,
                         valuetype [System.Runtime]System.Nullable`1<int32> index) cil managed
  {
    // 代码大小       63 (0x3f)
    .maxstack  8
    IL_0000:  ldarga.s   index
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_0039

    IL_0009:  ldarg.0
    IL_000a:  brfalse.s  IL_0027

    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_0012:  brfalse.s  IL_0027

    IL_0014:  ldarg.0
    IL_0015:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_001a:  ldarga.s   index
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(int32)
    IL_0026:  ret

    IL_0027:  ldsfld     valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_defaultFabricColors
    IL_002c:  ldarga.s   index
    IL_002e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0033:  ldelem     [Engine]Engine.Color
    IL_0038:  ret

    IL_0039:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_003e:  ret
  } // end of method SubsystemPalette::GetFabricColor

  .method public hidebysig static string 
          GetName(class Game.SubsystemTerrain subsystemTerrain,
                  valuetype [System.Runtime]System.Nullable`1<int32> index,
                  string suffix) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (string V_0)
    IL_0000:  ldarga.s   index
    IL_0002:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_0007:  brfalse.s  IL_004e

    IL_0009:  ldarg.0
    IL_000a:  brfalse.s  IL_0029

    IL_000c:  ldarg.0
    IL_000d:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_0012:  brfalse.s  IL_0029

    IL_0014:  ldarg.0
    IL_0015:  callvirt   instance class Game.SubsystemPalette Game.SubsystemTerrain::get_SubsystemPalette()
    IL_001a:  ldarga.s   index
    IL_001c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0021:  callvirt   instance string Game.SubsystemPalette::GetName(int32)
    IL_0026:  stloc.0
    IL_0027:  br.s       IL_0037

    IL_0029:  ldsfld     string[] Game.WorldPalette::DefaultNames
    IL_002e:  ldarga.s   index
    IL_0030:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<int32>::get_Value()
    IL_0035:  ldelem.ref
    IL_0036:  stloc.0
    IL_0037:  ldarg.2
    IL_0038:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_003d:  brtrue.s   IL_004c

    IL_003f:  ldloc.0
    IL_0040:  ldstr      " "
    IL_0045:  ldarg.2
    IL_0046:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string,
                                                                      string)
    IL_004b:  ret

    IL_004c:  ldloc.0
    IL_004d:  ret

    IL_004e:  ldarg.2
    IL_004f:  dup
    IL_0050:  brtrue.s   IL_0058

    IL_0052:  pop
    IL_0053:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0058:  ret
  } // end of method SubsystemPalette::GetName

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  2
    .locals init (class Game.SubsystemGameInfo V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0014:  ldfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_0019:  ldfld      valuetype [Engine]Engine.Color[] Game.WorldPalette::Colors
    IL_001e:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<valuetype [Engine]Engine.Color>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0023:  stfld      valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_colors
    IL_0028:  ldarg.0
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_002f:  ldfld      class Game.WorldPalette Game.WorldSettings::Palette
    IL_0034:  ldfld      string[] Game.WorldPalette::Names
    IL_0039:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<string>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_003e:  stfld      string[] Game.SubsystemPalette::m_names
    IL_0043:  ldarg.0
    IL_0044:  ldarg.0
    IL_0045:  ldfld      valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_colors
    IL_004a:  call       valuetype [Engine]Engine.Color[] Game.SubsystemPalette::CreateFabricColors(valuetype [Engine]Engine.Color[])
    IL_004f:  stfld      valuetype [Engine]Engine.Color[] Game.SubsystemPalette::m_fabricColors
    IL_0054:  ret
  } // end of method SubsystemPalette::Load

  .method private hidebysig static valuetype [Engine]Engine.Color[] 
          CreateFabricColors(valuetype [Engine]Engine.Color[] colors) cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Color[] V_0,
             int32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3)
    IL_0000:  ldc.i4.s   16
    IL_0002:  newarr     [Engine]Engine.Color
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br.s       IL_0049

    IL_000c:  ldloca.s   V_2
    IL_000e:  ldarg.0
    IL_000f:  ldloc.1
    IL_0010:  ldelem     [Engine]Engine.Color
    IL_0015:  call       instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_001a:  ldloc.2
    IL_001b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Color::RgbToHsv(valuetype [Engine]Engine.Vector3)
    IL_0020:  stloc.3
    IL_0021:  ldloca.s   V_3
    IL_0023:  ldflda     float32 [Engine]Engine.Vector3::Y
    IL_0028:  dup
    IL_0029:  ldind.r4
    IL_002a:  ldc.r4     0.85000002
    IL_002f:  mul
    IL_0030:  stind.r4
    IL_0031:  ldloc.3
    IL_0032:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Color::HsvToRgb(valuetype [Engine]Engine.Vector3)
    IL_0037:  stloc.2
    IL_0038:  ldloc.0
    IL_0039:  ldloc.1
    IL_003a:  ldloc.2
    IL_003b:  newobj     instance void [Engine]Engine.Color::.ctor(valuetype [Engine]Engine.Vector3)
    IL_0040:  stelem     [Engine]Engine.Color
    IL_0045:  ldloc.1
    IL_0046:  ldc.i4.1
    IL_0047:  add
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.s   16
    IL_004c:  blt.s      IL_000c

    IL_004e:  ldloc.0
    IL_004f:  ret
  } // end of method SubsystemPalette::CreateFabricColors

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemPalette::.ctor

} // end of class Game.SubsystemPalette