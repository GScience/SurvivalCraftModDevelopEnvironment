.class public auto ansi beforefieldinit Game.SubsystemSaplingBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit SaplingData
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Point3 Point
    .field public valuetype Game.TreeType Type
    .field public float64 MatureTime
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method SaplingData::.ctor

  } // end of class SaplingData

  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> m_saplings
  .field private valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> m_enumerator
  .field private class Game.Random m_random
  .field private class [System.Runtime]System.Text.StringBuilder m_stringBuilder
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   119
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemSaplingBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0015:  stloc.0
    IL_0016:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_001b:  ldloc.0
    IL_001c:  ldelem.ref
    IL_001d:  ldfld      bool Game.Block::IsTransparent
    IL_0022:  brfalse.s  IL_0036

    IL_0024:  ldarg.0
    IL_0025:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_002a:  ldc.i4.0
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldc.i4.0
    IL_002f:  ldc.i4.0
    IL_0030:  ldc.i4.0
    IL_0031:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0036:  ret
  } // end of method SubsystemSaplingBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  6
    .locals init (float32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse.s  IL_0029

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_0018:  ldc.r4     480.
    IL_001d:  ldc.r4     600.
    IL_0022:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0027:  br.s       IL_003e

    IL_0029:  ldarg.0
    IL_002a:  ldfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_002f:  ldc.r4     8.
    IL_0034:  ldc.r4     12.
    IL_0039:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_003e:  stloc.0
    IL_003f:  ldarg.0
    IL_0040:  newobj     instance void Game.SubsystemSaplingBlockBehavior/SaplingData::.ctor()
    IL_0045:  dup
    IL_0046:  ldarg.3
    IL_0047:  ldarg.s    y
    IL_0049:  ldarg.s    z
    IL_004b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0050:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_0055:  dup
    IL_0056:  ldarg.1
    IL_0057:  call       int32 Game.Terrain::ExtractData(int32)
    IL_005c:  stfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_0061:  dup
    IL_0062:  ldarg.0
    IL_0063:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0068:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_006d:  ldloc.0
    IL_006e:  conv.r8
    IL_006f:  add
    IL_0070:  stfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_0075:  call       instance void Game.SubsystemSaplingBlockBehavior::AddSapling(class Game.SubsystemSaplingBlockBehavior/SaplingData)
    IL_007a:  ret
  } // end of method SubsystemSaplingBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000b:  call       instance void Game.SubsystemSaplingBlockBehavior::RemoveSapling(valuetype [Engine]Engine.Point3)
    IL_0010:  ret
  } // end of method SubsystemSaplingBlockBehavior::OnBlockRemoved

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_0,
             string V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0020:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Values()
    IL_0025:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::GetEnumerator()
    IL_002a:  stfld      valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_002f:  ldarg.1
    IL_0030:  ldstr      "Saplings"
    IL_0035:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_003a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_003f:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_0044:  stloc.0
    .try
    {
      IL_0045:  br.s       IL_0060

      IL_0047:  ldloc.0
      IL_0048:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_004d:  castclass  [System.Runtime]System.String
      IL_0052:  stloc.1
      IL_0053:  ldarg.0
      IL_0054:  ldarg.0
      IL_0055:  ldloc.1
      IL_0056:  call       instance class Game.SubsystemSaplingBlockBehavior/SaplingData Game.SubsystemSaplingBlockBehavior::LoadSaplingData(string)
      IL_005b:  call       instance void Game.SubsystemSaplingBlockBehavior::AddSapling(class Game.SubsystemSaplingBlockBehavior/SaplingData)
      IL_0060:  ldloc.0
      IL_0061:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0066:  brtrue.s   IL_0047

      IL_0068:  leave.s    IL_0074

    }  // end .try
    finally
    {
      IL_006a:  ldloc.0
      IL_006b:  brfalse.s  IL_0073

      IL_006d:  ldloc.0
      IL_006e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0073:  endfinally
    }  // end handler
    IL_0074:  ret
  } // end of method SubsystemSaplingBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> V_2,
             class Game.SubsystemSaplingBlockBehavior/SaplingData V_3,
             int32 V_4)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Saplings"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_001a:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Values()
    IL_001f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::GetEnumerator()
    IL_0024:  stloc.2
    .try
    {
      IL_0025:  br.s       IL_0050

      IL_0027:  ldloca.s   V_2
      IL_0029:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Current()
      IL_002e:  stloc.3
      IL_002f:  ldloc.0
      IL_0030:  ldloc.1
      IL_0031:  stloc.s    V_4
      IL_0033:  ldloc.s    V_4
      IL_0035:  ldc.i4.1
      IL_0036:  add
      IL_0037:  stloc.1
      IL_0038:  ldloca.s   V_4
      IL_003a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_003f:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0044:  ldarg.0
      IL_0045:  ldloc.3
      IL_0046:  call       instance string Game.SubsystemSaplingBlockBehavior::SaveSaplingData(class Game.SubsystemSaplingBlockBehavior/SaplingData)
      IL_004b:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0050:  ldloca.s   V_2
      IL_0052:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::MoveNext()
      IL_0057:  brtrue.s   IL_0027

      IL_0059:  leave.s    IL_0069

    }  // end .try
    finally
    {
      IL_005b:  ldloca.s   V_2
      IL_005d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>
      IL_0063:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0068:  endfinally
    }  // end handler
    IL_0069:  ret
  } // end of method SubsystemSaplingBlockBehavior::Save

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSaplingBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_003d

    IL_0004:  ldarg.0
    IL_0005:  ldflda     valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_000a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::MoveNext()
    IL_000f:  brtrue.s   IL_0028

    IL_0011:  ldarg.0
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0018:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Values()
    IL_001d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::GetEnumerator()
    IL_0022:  stfld      valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_0027:  ret

    IL_0028:  ldarg.0
    IL_0029:  ldarg.0
    IL_002a:  ldflda     valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_002f:  call       instance !1 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Current()
    IL_0034:  call       instance void Game.SubsystemSaplingBlockBehavior::MatureSapling(class Game.SubsystemSaplingBlockBehavior/SaplingData)
    IL_0039:  ldloc.0
    IL_003a:  ldc.i4.1
    IL_003b:  add
    IL_003c:  stloc.0
    IL_003d:  ldloc.0
    IL_003e:  ldc.i4.s   10
    IL_0040:  blt.s      IL_0004

    IL_0042:  ret
  } // end of method SubsystemSaplingBlockBehavior::Update

  .method private hidebysig instance class Game.SubsystemSaplingBlockBehavior/SaplingData 
          LoadSaplingData(string data) cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  5
    .locals init (string[] V_0)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [System.Runtime]System.Char
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.s   59
    IL_000b:  stelem.i2
    IL_000c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldlen
    IL_0014:  conv.i4
    IL_0015:  ldc.i4.3
    IL_0016:  beq.s      IL_0023

    IL_0018:  ldstr      "Invalid sapling data string."
    IL_001d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0022:  throw

    IL_0023:  newobj     instance void Game.SubsystemSaplingBlockBehavior/SaplingData::.ctor()
    IL_0028:  dup
    IL_0029:  ldloc.0
    IL_002a:  ldc.i4.0
    IL_002b:  ldelem.ref
    IL_002c:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype [Engine]Engine.Point3>(string)
    IL_0031:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_0036:  dup
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.1
    IL_0039:  ldelem.ref
    IL_003a:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<valuetype Game.TreeType>(string)
    IL_003f:  stfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_0044:  dup
    IL_0045:  ldloc.0
    IL_0046:  ldc.i4.2
    IL_0047:  ldelem.ref
    IL_0048:  call       !!0 [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString<float64>(string)
    IL_004d:  stfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_0052:  ret
  } // end of method SubsystemSaplingBlockBehavior::LoadSaplingData

  .method private hidebysig instance string 
          SaveSaplingData(class Game.SubsystemSaplingBlockBehavior/SaplingData saplingData) cil managed
  {
    // 代码大小       136 (0x88)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0006:  ldc.i4.0
    IL_0007:  callvirt   instance void [System.Runtime]System.Text.StringBuilder::set_Length(int32)
    IL_000c:  ldarg.0
    IL_000d:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0012:  ldarg.1
    IL_0013:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_0018:  box        [Engine]Engine.Point3
    IL_001d:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
    IL_0022:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0027:  pop
    IL_0028:  ldarg.0
    IL_0029:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_002e:  ldc.i4.s   59
    IL_0030:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_0035:  pop
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_003c:  ldarg.1
    IL_003d:  ldfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_0042:  box        Game.TreeType
    IL_0047:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
    IL_004c:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_0051:  pop
    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0058:  ldc.i4.s   59
    IL_005a:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(char)
    IL_005f:  pop
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0066:  ldarg.1
    IL_0067:  ldfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_006c:  box        [System.Runtime]System.Double
    IL_0071:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ConvertToString(object)
    IL_0076:  callvirt   instance class [System.Runtime]System.Text.StringBuilder [System.Runtime]System.Text.StringBuilder::Append(string)
    IL_007b:  pop
    IL_007c:  ldarg.0
    IL_007d:  ldfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0082:  callvirt   instance string [System.Runtime]System.Object::ToString()
    IL_0087:  ret
  } // end of method SubsystemSaplingBlockBehavior::SaveSaplingData

  .method private hidebysig instance void 
          MatureSapling(class Game.SubsystemSaplingBlockBehavior/SaplingData saplingData) cil managed
  {
    // 代码大小       718 (0x2ce)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             class Game.TerrainChunk V_4,
             class Game.TerrainChunk V_5,
             class Game.TerrainChunk V_6,
             int32 V_7,
             bool V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_0011:  blt.un     IL_02cd

    IL_0016:  ldarg.1
    IL_0017:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_001c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0021:  stloc.0
    IL_0022:  ldarg.1
    IL_0023:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_002d:  stloc.1
    IL_002e:  ldarg.1
    IL_002f:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_0034:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0039:  stloc.2
    IL_003a:  ldarg.0
    IL_003b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0040:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0045:  ldloc.0
    IL_0046:  ldc.i4.6
    IL_0047:  sub
    IL_0048:  ldloc.2
    IL_0049:  ldc.i4.6
    IL_004a:  sub
    IL_004b:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0050:  stloc.3
    IL_0051:  ldarg.0
    IL_0052:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0057:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005c:  ldloc.0
    IL_005d:  ldc.i4.6
    IL_005e:  sub
    IL_005f:  ldloc.2
    IL_0060:  ldc.i4.6
    IL_0061:  add
    IL_0062:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0067:  stloc.s    V_4
    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_006f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0074:  ldloc.0
    IL_0075:  ldc.i4.6
    IL_0076:  add
    IL_0077:  ldloc.2
    IL_0078:  ldc.i4.6
    IL_0079:  sub
    IL_007a:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_007f:  stloc.s    V_5
    IL_0081:  ldarg.0
    IL_0082:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0087:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_008c:  ldloc.0
    IL_008d:  ldc.i4.6
    IL_008e:  add
    IL_008f:  ldloc.2
    IL_0090:  ldc.i4.6
    IL_0091:  add
    IL_0092:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0097:  stloc.s    V_6
    IL_0099:  ldloc.3
    IL_009a:  brfalse    IL_02bc

    IL_009f:  ldloc.3
    IL_00a0:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00a5:  ldc.i4.s   9
    IL_00a7:  bne.un     IL_02bc

    IL_00ac:  ldloc.s    V_4
    IL_00ae:  brfalse    IL_02bc

    IL_00b3:  ldloc.s    V_4
    IL_00b5:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00ba:  ldc.i4.s   9
    IL_00bc:  bne.un     IL_02bc

    IL_00c1:  ldloc.s    V_5
    IL_00c3:  brfalse    IL_02bc

    IL_00c8:  ldloc.s    V_5
    IL_00ca:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00cf:  ldc.i4.s   9
    IL_00d1:  bne.un     IL_02bc

    IL_00d6:  ldloc.s    V_6
    IL_00d8:  brfalse    IL_02bc

    IL_00dd:  ldloc.s    V_6
    IL_00df:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00e4:  ldc.i4.s   9
    IL_00e6:  bne.un     IL_02bc

    IL_00eb:  ldarg.0
    IL_00ec:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00f1:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00f6:  ldloc.0
    IL_00f7:  ldloc.1
    IL_00f8:  ldc.i4.1
    IL_00f9:  sub
    IL_00fa:  ldloc.2
    IL_00fb:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0100:  stloc.s    V_7
    IL_0102:  ldloc.s    V_7
    IL_0104:  ldc.i4.2
    IL_0105:  beq.s      IL_010f

    IL_0107:  ldloc.s    V_7
    IL_0109:  ldc.i4.8
    IL_010a:  bne.un     IL_02a3

    IL_010f:  ldarg.0
    IL_0110:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0115:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_011a:  ldloc.0
    IL_011b:  ldloc.1
    IL_011c:  ldc.i4.1
    IL_011d:  add
    IL_011e:  ldloc.2
    IL_011f:  callvirt   instance int32 Game.Terrain::GetCellLight(int32,
                                                                   int32,
                                                                   int32)
    IL_0124:  ldc.i4.s   9
    IL_0126:  blt        IL_026d

    IL_012b:  ldc.i4.0
    IL_012c:  stloc.s    V_8
    IL_012e:  ldloc.0
    IL_012f:  ldc.i4.1
    IL_0130:  sub
    IL_0131:  stloc.s    V_10
    IL_0133:  br.s       IL_017c

    IL_0135:  ldloc.2
    IL_0136:  ldc.i4.1
    IL_0137:  sub
    IL_0138:  stloc.s    V_11
    IL_013a:  br.s       IL_016f

    IL_013c:  ldarg.0
    IL_013d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0142:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0147:  ldloc.s    V_10
    IL_0149:  ldloc.1
    IL_014a:  ldc.i4.1
    IL_014b:  sub
    IL_014c:  ldloc.s    V_11
    IL_014e:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0153:  stloc.s    V_12
    IL_0155:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_015a:  ldloc.s    V_12
    IL_015c:  ldelem.ref
    IL_015d:  isinst     Game.WaterBlock
    IL_0162:  brfalse.s  IL_0169

    IL_0164:  ldc.i4.1
    IL_0165:  stloc.s    V_8
    IL_0167:  br.s       IL_0176

    IL_0169:  ldloc.s    V_11
    IL_016b:  ldc.i4.1
    IL_016c:  add
    IL_016d:  stloc.s    V_11
    IL_016f:  ldloc.s    V_11
    IL_0171:  ldloc.2
    IL_0172:  ldc.i4.1
    IL_0173:  add
    IL_0174:  ble.s      IL_013c

    IL_0176:  ldloc.s    V_10
    IL_0178:  ldc.i4.1
    IL_0179:  add
    IL_017a:  stloc.s    V_10
    IL_017c:  ldloc.s    V_10
    IL_017e:  ldloc.0
    IL_017f:  ldc.i4.1
    IL_0180:  add
    IL_0181:  ble.s      IL_0135

    IL_0183:  ldc.r4     0.0
    IL_0188:  stloc.s    V_9
    IL_018a:  ldarg.0
    IL_018b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0190:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0195:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_019a:  brtrue.s   IL_01a5

    IL_019c:  ldc.r4     1.
    IL_01a1:  stloc.s    V_9
    IL_01a3:  br.s       IL_01f7

    IL_01a5:  ldarg.0
    IL_01a6:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_01ab:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01b0:  ldloc.0
    IL_01b1:  ldloc.2
    IL_01b2:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                     int32)
    IL_01b7:  stloc.s    V_13
    IL_01b9:  ldarg.0
    IL_01ba:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_01bf:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01c4:  ldloc.0
    IL_01c5:  ldloc.2
    IL_01c6:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                  int32)
    IL_01cb:  stloc.s    V_14
    IL_01cd:  ldloc.s    V_8
    IL_01cf:  brfalse.s  IL_01e5

    IL_01d1:  ldloc.s    V_13
    IL_01d3:  ldc.i4.s   10
    IL_01d5:  add
    IL_01d6:  ldc.i4.2
    IL_01d7:  div
    IL_01d8:  stloc.s    V_13
    IL_01da:  ldloc.s    V_14
    IL_01dc:  ldc.i4.s   12
    IL_01de:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01e3:  stloc.s    V_14
    IL_01e5:  ldarg.1
    IL_01e6:  ldfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_01eb:  ldloc.s    V_13
    IL_01ed:  ldloc.s    V_14
    IL_01ef:  ldloc.1
    IL_01f0:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_01f5:  stloc.s    V_9
    IL_01f7:  ldarg.0
    IL_01f8:  ldfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_01fd:  ldc.r4     0.0
    IL_0202:  ldc.r4     1.
    IL_0207:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_020c:  ldloc.s    V_9
    IL_020e:  bge.un.s   IL_0254

    IL_0210:  ldarg.0
    IL_0211:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0216:  ldloc.0
    IL_0217:  ldloc.1
    IL_0218:  ldloc.2
    IL_0219:  ldc.i4.0
    IL_021a:  ldc.i4.0
    IL_021b:  ldc.i4.0
    IL_021c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0221:  ldc.i4.1
    IL_0222:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0227:  ldarg.0
    IL_0228:  ldloc.0
    IL_0229:  ldloc.1
    IL_022a:  ldloc.2
    IL_022b:  ldarg.1
    IL_022c:  ldfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_0231:  call       instance bool Game.SubsystemSaplingBlockBehavior::GrowTree(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    valuetype Game.TreeType)
    IL_0236:  brtrue     IL_02cd

    IL_023b:  ldarg.0
    IL_023c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0241:  ldloc.0
    IL_0242:  ldloc.1
    IL_0243:  ldloc.2
    IL_0244:  ldc.i4.s   28
    IL_0246:  ldc.i4.0
    IL_0247:  ldc.i4.0
    IL_0248:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_024d:  ldc.i4.1
    IL_024e:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0253:  ret

    IL_0254:  ldarg.0
    IL_0255:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_025a:  ldloc.0
    IL_025b:  ldloc.1
    IL_025c:  ldloc.2
    IL_025d:  ldc.i4.s   28
    IL_025f:  ldc.i4.0
    IL_0260:  ldc.i4.0
    IL_0261:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0266:  ldc.i4.1
    IL_0267:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_026c:  ret

    IL_026d:  ldarg.0
    IL_026e:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_0273:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0278:  ldarg.1
    IL_0279:  ldfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_027e:  ldc.r8     1200.
    IL_0287:  add
    IL_0288:  ble.un.s   IL_02cd

    IL_028a:  ldarg.0
    IL_028b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0290:  ldloc.0
    IL_0291:  ldloc.1
    IL_0292:  ldloc.2
    IL_0293:  ldc.i4.s   28
    IL_0295:  ldc.i4.0
    IL_0296:  ldc.i4.0
    IL_0297:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_029c:  ldc.i4.1
    IL_029d:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_02a2:  ret

    IL_02a3:  ldarg.0
    IL_02a4:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_02a9:  ldloc.0
    IL_02aa:  ldloc.1
    IL_02ab:  ldloc.2
    IL_02ac:  ldc.i4.s   28
    IL_02ae:  ldc.i4.0
    IL_02af:  ldc.i4.0
    IL_02b0:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_02b5:  ldc.i4.1
    IL_02b6:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_02bb:  ret

    IL_02bc:  ldarg.1
    IL_02bd:  ldarg.0
    IL_02be:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_02c3:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_02c8:  stfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_02cd:  ret
  } // end of method SubsystemSaplingBlockBehavior::MatureSapling

  .method private hidebysig instance bool 
          GrowTree(int32 x,
                   int32 y,
                   int32 z,
                   valuetype Game.TreeType treeType) cil managed
  {
    // 代码大小       226 (0xe2)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> V_0,
             int32 V_1,
             class Game.TerrainBrush V_2,
             bool V_3,
             valuetype Game.TerrainBrush/Cell[] V_4,
             int32 V_5,
             valuetype Game.TerrainBrush/Cell V_6,
             int32 V_7)
    IL_0000:  ldarg.s    treeType
    IL_0002:  call       valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush> Game.PlantsManager::GetTreeBrushes(valuetype Game.TreeType)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br         IL_00d8

    IL_000f:  ldloca.s   V_0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_0017:  ldc.i4.0
    IL_0018:  ldloca.s   V_0
    IL_001a:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Count()
    IL_001f:  ldc.i4.1
    IL_0020:  sub
    IL_0021:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0026:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<class Game.TerrainBrush>::get_Item(int32)
    IL_002b:  stloc.2
    IL_002c:  ldc.i4.1
    IL_002d:  stloc.3
    IL_002e:  ldloc.2
    IL_002f:  callvirt   instance valuetype Game.TerrainBrush/Cell[] Game.TerrainBrush::get_Cells()
    IL_0034:  stloc.s    V_4
    IL_0036:  ldc.i4.0
    IL_0037:  stloc.s    V_5
    IL_0039:  br.s       IL_00b5

    IL_003b:  ldloc.s    V_4
    IL_003d:  ldloc.s    V_5
    IL_003f:  ldelem     Game.TerrainBrush/Cell
    IL_0044:  stloc.s    V_6
    IL_0046:  ldloc.s    V_6
    IL_0048:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_004d:  ldc.i4.0
    IL_004e:  blt.s      IL_00af

    IL_0050:  ldloc.s    V_6
    IL_0052:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_0057:  brtrue.s   IL_006b

    IL_0059:  ldloc.s    V_6
    IL_005b:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0060:  brtrue.s   IL_006b

    IL_0062:  ldloc.s    V_6
    IL_0064:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_0069:  brfalse.s  IL_00af

    IL_006b:  ldarg.0
    IL_006c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0071:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0076:  ldloc.s    V_6
    IL_0078:  ldfld      int8 Game.TerrainBrush/Cell::X
    IL_007d:  ldarg.1
    IL_007e:  add
    IL_007f:  ldloc.s    V_6
    IL_0081:  ldfld      int8 Game.TerrainBrush/Cell::Y
    IL_0086:  ldarg.2
    IL_0087:  add
    IL_0088:  ldloc.s    V_6
    IL_008a:  ldfld      int8 Game.TerrainBrush/Cell::Z
    IL_008f:  ldarg.3
    IL_0090:  add
    IL_0091:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0096:  stloc.s    V_7
    IL_0098:  ldloc.s    V_7
    IL_009a:  brfalse.s  IL_00af

    IL_009c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a1:  ldloc.s    V_7
    IL_00a3:  ldelem.ref
    IL_00a4:  isinst     Game.LeavesBlock
    IL_00a9:  brtrue.s   IL_00af

    IL_00ab:  ldc.i4.0
    IL_00ac:  stloc.3
    IL_00ad:  br.s       IL_00c0

    IL_00af:  ldloc.s    V_5
    IL_00b1:  ldc.i4.1
    IL_00b2:  add
    IL_00b3:  stloc.s    V_5
    IL_00b5:  ldloc.s    V_5
    IL_00b7:  ldloc.s    V_4
    IL_00b9:  ldlen
    IL_00ba:  conv.i4
    IL_00bb:  blt        IL_003b

    IL_00c0:  ldloc.3
    IL_00c1:  brfalse.s  IL_00d4

    IL_00c3:  ldloc.2
    IL_00c4:  ldarg.0
    IL_00c5:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ca:  ldarg.1
    IL_00cb:  ldarg.2
    IL_00cc:  ldarg.3
    IL_00cd:  callvirt   instance void Game.TerrainBrush::Paint(class Game.SubsystemTerrain,
                                                                int32,
                                                                int32,
                                                                int32)
    IL_00d2:  ldc.i4.1
    IL_00d3:  ret

    IL_00d4:  ldloc.1
    IL_00d5:  ldc.i4.1
    IL_00d6:  add
    IL_00d7:  stloc.1
    IL_00d8:  ldloc.1
    IL_00d9:  ldc.i4.s   20
    IL_00db:  blt        IL_000f

    IL_00e0:  ldc.i4.0
    IL_00e1:  ret
  } // end of method SubsystemSaplingBlockBehavior::GrowTree

  .method private hidebysig instance void 
          AddSapling(class Game.SubsystemSaplingBlockBehavior/SaplingData saplingData) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0006:  ldarg.1
    IL_0007:  ldfld      valuetype [Engine]Engine.Point3 Game.SubsystemSaplingBlockBehavior/SaplingData::Point
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::set_Item(!0,
                                                                                                                                                                                                         !1)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0019:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Values()
    IL_001e:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::GetEnumerator()
    IL_0023:  stfld      valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_0028:  ret
  } // end of method SubsystemSaplingBlockBehavior::AddSapling

  .method private hidebysig instance void 
          RemoveSapling(valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ldarg.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_0014:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::get_Values()
    IL_0019:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::GetEnumerator()
    IL_001e:  stfld      valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_enumerator
    IL_0023:  ret
  } // end of method SubsystemSaplingBlockBehavior::RemoveSapling

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData> Game.SubsystemSaplingBlockBehavior::m_saplings
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void [System.Runtime]System.Text.StringBuilder::.ctor()
    IL_001c:  stfld      class [System.Runtime]System.Text.StringBuilder Game.SubsystemSaplingBlockBehavior::m_stringBuilder
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0027:  ret
  } // end of method SubsystemSaplingBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSaplingBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSaplingBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSaplingBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemSaplingBlockBehavior::UpdateOrder
} // end of class Game.SubsystemSaplingBlockBehavior