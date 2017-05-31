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
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
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
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
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
    IL_0057:  call       int32 Game.TerrainData::ExtractData(int32)
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
    // 代码大小       101 (0x65)
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
      IL_0025:  br.s       IL_004b

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
      IL_003a:  call       instance string [System.Runtime]System.Int32::ToString()
      IL_003f:  ldarg.0
      IL_0040:  ldloc.3
      IL_0041:  call       instance string Game.SubsystemSaplingBlockBehavior::SaveSaplingData(class Game.SubsystemSaplingBlockBehavior/SaplingData)
      IL_0046:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_004b:  ldloca.s   V_2
      IL_004d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>::MoveNext()
      IL_0052:  brtrue.s   IL_0027

      IL_0054:  leave.s    IL_0064

    }  // end .try
    finally
    {
      IL_0056:  ldloca.s   V_2
      IL_0058:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemSaplingBlockBehavior/SaplingData>
      IL_005e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0063:  endfinally
    }  // end handler
    IL_0064:  ret
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
    // 代码大小       698 (0x2ba)
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
    IL_0011:  blt.un     IL_02b9

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
    IL_0040:  ldloc.0
    IL_0041:  ldc.i4.6
    IL_0042:  sub
    IL_0043:  ldloc.2
    IL_0044:  ldc.i4.6
    IL_0045:  sub
    IL_0046:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_004b:  stloc.3
    IL_004c:  ldarg.0
    IL_004d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0052:  ldloc.0
    IL_0053:  ldc.i4.6
    IL_0054:  sub
    IL_0055:  ldloc.2
    IL_0056:  ldc.i4.6
    IL_0057:  add
    IL_0058:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_005d:  stloc.s    V_4
    IL_005f:  ldarg.0
    IL_0060:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0065:  ldloc.0
    IL_0066:  ldc.i4.6
    IL_0067:  add
    IL_0068:  ldloc.2
    IL_0069:  ldc.i4.6
    IL_006a:  sub
    IL_006b:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0070:  stloc.s    V_5
    IL_0072:  ldarg.0
    IL_0073:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0078:  ldloc.0
    IL_0079:  ldc.i4.6
    IL_007a:  add
    IL_007b:  ldloc.2
    IL_007c:  ldc.i4.6
    IL_007d:  add
    IL_007e:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0083:  stloc.s    V_6
    IL_0085:  ldloc.3
    IL_0086:  brfalse    IL_02a8

    IL_008b:  ldloc.3
    IL_008c:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0091:  ldc.i4.s   9
    IL_0093:  bne.un     IL_02a8

    IL_0098:  ldloc.s    V_4
    IL_009a:  brfalse    IL_02a8

    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00a6:  ldc.i4.s   9
    IL_00a8:  bne.un     IL_02a8

    IL_00ad:  ldloc.s    V_5
    IL_00af:  brfalse    IL_02a8

    IL_00b4:  ldloc.s    V_5
    IL_00b6:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00bb:  ldc.i4.s   9
    IL_00bd:  bne.un     IL_02a8

    IL_00c2:  ldloc.s    V_6
    IL_00c4:  brfalse    IL_02a8

    IL_00c9:  ldloc.s    V_6
    IL_00cb:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00d0:  ldc.i4.s   9
    IL_00d2:  bne.un     IL_02a8

    IL_00d7:  ldarg.0
    IL_00d8:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00dd:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00e2:  ldloc.0
    IL_00e3:  ldloc.1
    IL_00e4:  ldc.i4.1
    IL_00e5:  sub
    IL_00e6:  ldloc.2
    IL_00e7:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00ec:  stloc.s    V_7
    IL_00ee:  ldloc.s    V_7
    IL_00f0:  ldc.i4.2
    IL_00f1:  beq.s      IL_00fb

    IL_00f3:  ldloc.s    V_7
    IL_00f5:  ldc.i4.8
    IL_00f6:  bne.un     IL_028f

    IL_00fb:  ldarg.0
    IL_00fc:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0101:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0106:  ldloc.0
    IL_0107:  ldloc.1
    IL_0108:  ldc.i4.1
    IL_0109:  add
    IL_010a:  ldloc.2
    IL_010b:  callvirt   instance int32 Game.TerrainData::GetCellLight(int32,
                                                                       int32,
                                                                       int32)
    IL_0110:  ldc.i4.s   9
    IL_0112:  blt        IL_0259

    IL_0117:  ldc.i4.0
    IL_0118:  stloc.s    V_8
    IL_011a:  ldloc.0
    IL_011b:  ldc.i4.1
    IL_011c:  sub
    IL_011d:  stloc.s    V_10
    IL_011f:  br.s       IL_0168

    IL_0121:  ldloc.2
    IL_0122:  ldc.i4.1
    IL_0123:  sub
    IL_0124:  stloc.s    V_11
    IL_0126:  br.s       IL_015b

    IL_0128:  ldarg.0
    IL_0129:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_012e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0133:  ldloc.s    V_10
    IL_0135:  ldloc.1
    IL_0136:  ldc.i4.1
    IL_0137:  sub
    IL_0138:  ldloc.s    V_11
    IL_013a:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_013f:  stloc.s    V_12
    IL_0141:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0146:  ldloc.s    V_12
    IL_0148:  ldelem.ref
    IL_0149:  isinst     Game.WaterBlock
    IL_014e:  brfalse.s  IL_0155

    IL_0150:  ldc.i4.1
    IL_0151:  stloc.s    V_8
    IL_0153:  br.s       IL_0162

    IL_0155:  ldloc.s    V_11
    IL_0157:  ldc.i4.1
    IL_0158:  add
    IL_0159:  stloc.s    V_11
    IL_015b:  ldloc.s    V_11
    IL_015d:  ldloc.2
    IL_015e:  ldc.i4.1
    IL_015f:  add
    IL_0160:  ble.s      IL_0128

    IL_0162:  ldloc.s    V_10
    IL_0164:  ldc.i4.1
    IL_0165:  add
    IL_0166:  stloc.s    V_10
    IL_0168:  ldloc.s    V_10
    IL_016a:  ldloc.0
    IL_016b:  ldc.i4.1
    IL_016c:  add
    IL_016d:  ble.s      IL_0121

    IL_016f:  ldc.r4     0.0
    IL_0174:  stloc.s    V_9
    IL_0176:  ldarg.0
    IL_0177:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_017c:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0181:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0186:  brtrue.s   IL_0191

    IL_0188:  ldc.r4     1.
    IL_018d:  stloc.s    V_9
    IL_018f:  br.s       IL_01e3

    IL_0191:  ldarg.0
    IL_0192:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0197:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_019c:  ldloc.0
    IL_019d:  ldloc.2
    IL_019e:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                             int32)
    IL_01a3:  stloc.s    V_13
    IL_01a5:  ldarg.0
    IL_01a6:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_01ab:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01b0:  ldloc.0
    IL_01b1:  ldloc.2
    IL_01b2:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                          int32)
    IL_01b7:  stloc.s    V_14
    IL_01b9:  ldloc.s    V_8
    IL_01bb:  brfalse.s  IL_01d1

    IL_01bd:  ldloc.s    V_13
    IL_01bf:  ldc.i4.s   10
    IL_01c1:  add
    IL_01c2:  ldc.i4.2
    IL_01c3:  div
    IL_01c4:  stloc.s    V_13
    IL_01c6:  ldloc.s    V_14
    IL_01c8:  ldc.i4.s   12
    IL_01ca:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_01cf:  stloc.s    V_14
    IL_01d1:  ldarg.1
    IL_01d2:  ldfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_01d7:  ldloc.s    V_13
    IL_01d9:  ldloc.s    V_14
    IL_01db:  ldloc.1
    IL_01dc:  call       float32 Game.PlantsManager::CalculateTreeProbability(valuetype Game.TreeType,
                                                                              int32,
                                                                              int32,
                                                                              int32)
    IL_01e1:  stloc.s    V_9
    IL_01e3:  ldarg.0
    IL_01e4:  ldfld      class Game.Random Game.SubsystemSaplingBlockBehavior::m_random
    IL_01e9:  ldc.r4     0.0
    IL_01ee:  ldc.r4     1.
    IL_01f3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_01f8:  ldloc.s    V_9
    IL_01fa:  bge.un.s   IL_0240

    IL_01fc:  ldarg.0
    IL_01fd:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0202:  ldloc.0
    IL_0203:  ldloc.1
    IL_0204:  ldloc.2
    IL_0205:  ldc.i4.0
    IL_0206:  ldc.i4.0
    IL_0207:  ldc.i4.0
    IL_0208:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_020d:  ldc.i4.1
    IL_020e:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0213:  ldarg.0
    IL_0214:  ldloc.0
    IL_0215:  ldloc.1
    IL_0216:  ldloc.2
    IL_0217:  ldarg.1
    IL_0218:  ldfld      valuetype Game.TreeType Game.SubsystemSaplingBlockBehavior/SaplingData::Type
    IL_021d:  call       instance bool Game.SubsystemSaplingBlockBehavior::GrowTree(int32,
                                                                                    int32,
                                                                                    int32,
                                                                                    valuetype Game.TreeType)
    IL_0222:  brtrue     IL_02b9

    IL_0227:  ldarg.0
    IL_0228:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_022d:  ldloc.0
    IL_022e:  ldloc.1
    IL_022f:  ldloc.2
    IL_0230:  ldc.i4.s   28
    IL_0232:  ldc.i4.0
    IL_0233:  ldc.i4.0
    IL_0234:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0239:  ldc.i4.1
    IL_023a:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_023f:  ret

    IL_0240:  ldarg.0
    IL_0241:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0246:  ldloc.0
    IL_0247:  ldloc.1
    IL_0248:  ldloc.2
    IL_0249:  ldc.i4.s   28
    IL_024b:  ldc.i4.0
    IL_024c:  ldc.i4.0
    IL_024d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0252:  ldc.i4.1
    IL_0253:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0258:  ret

    IL_0259:  ldarg.0
    IL_025a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_025f:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0264:  ldarg.1
    IL_0265:  ldfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_026a:  ldc.r8     1200.
    IL_0273:  add
    IL_0274:  ble.un.s   IL_02b9

    IL_0276:  ldarg.0
    IL_0277:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_027c:  ldloc.0
    IL_027d:  ldloc.1
    IL_027e:  ldloc.2
    IL_027f:  ldc.i4.s   28
    IL_0281:  ldc.i4.0
    IL_0282:  ldc.i4.0
    IL_0283:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0288:  ldc.i4.1
    IL_0289:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_028e:  ret

    IL_028f:  ldarg.0
    IL_0290:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0295:  ldloc.0
    IL_0296:  ldloc.1
    IL_0297:  ldloc.2
    IL_0298:  ldc.i4.s   28
    IL_029a:  ldc.i4.0
    IL_029b:  ldc.i4.0
    IL_029c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_02a1:  ldc.i4.1
    IL_02a2:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_02a7:  ret

    IL_02a8:  ldarg.1
    IL_02a9:  ldarg.0
    IL_02aa:  ldfld      class Game.SubsystemGameInfo Game.SubsystemSaplingBlockBehavior::m_subsystemGameInfo
    IL_02af:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_02b4:  stfld      float64 Game.SubsystemSaplingBlockBehavior/SaplingData::MatureTime
    IL_02b9:  ret
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
    IL_0071:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
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
    IL_0091:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
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