.class public auto ansi beforefieldinit Game.SubsystemSoilBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.Random m_random
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_toDegrade
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> m_toHydrate
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xa8
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemSoilBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       128 (0x80)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_0006:  ldc.r4     20.
    IL_000b:  ble.un.s   IL_007f

    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance bool Game.ComponentBody::get_IsSneaking()
    IL_0013:  brtrue.s   IL_007f

    IL_0015:  ldarg.3
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0022:  ldc.r4     -3.
    IL_0027:  blt.s      IL_006c

    IL_0029:  ldloc.0
    IL_002a:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_002f:  ldc.r4     0.0
    IL_0034:  bge.un.s   IL_007f

    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.Random Game.SubsystemSoilBlockBehavior::m_random
    IL_003c:  ldc.r4     0.0
    IL_0041:  ldc.r4     1.
    IL_0046:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004b:  ldc.r4     1.5
    IL_0050:  ldarg.0
    IL_0051:  ldfld      class Game.SubsystemTime Game.SubsystemSoilBlockBehavior::m_subsystemTime
    IL_0056:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_005b:  mul
    IL_005c:  bge.un.s   IL_007f

    IL_005e:  ldloca.s   V_0
    IL_0060:  call       instance float32 [Engine]Engine.Vector3::LengthSquared()
    IL_0065:  ldc.r4     1.
    IL_006a:  ble.un.s   IL_007f

    IL_006c:  ldarg.0
    IL_006d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toDegrade
    IL_0072:  ldarga.s   cellFace
    IL_0074:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0079:  ldc.i4.1
    IL_007a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_007f:  ret
  } // end of method SubsystemSoilBlockBehavior::OnCollide

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       75 (0x4b)
    .maxstack  5
    .locals init (bool V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  ldarg.s    z
    IL_0011:  ldc.i4.3
    IL_0012:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydration(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
    IL_0017:  brfalse.s  IL_0032

    IL_0019:  ldloc.0
    IL_001a:  brtrue.s   IL_004a

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toHydrate
    IL_0022:  ldarg.2
    IL_0023:  ldarg.3
    IL_0024:  ldarg.s    z
    IL_0026:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_0031:  ret

    IL_0032:  ldloc.0
    IL_0033:  brfalse.s  IL_004a

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toHydrate
    IL_003b:  ldarg.2
    IL_003c:  ldarg.3
    IL_003d:  ldarg.s    z
    IL_003f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0044:  ldc.i4.0
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::set_Item(!0,
                                                                                                                                                         !1)
    IL_004a:  ret
  } // end of method SubsystemSoilBlockBehavior::OnPoll

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       74 (0x4a)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  add
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0015:  stloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldloc.0
    IL_0018:  call       instance bool Game.SubsystemSoilBlockBehavior::DegradesSoilIfOnTopOfIt(int32)
    IL_001d:  brfalse.s  IL_0049

    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0025:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002a:  ldarg.1
    IL_002b:  ldarg.2
    IL_002c:  ldarg.3
    IL_002d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0032:  stloc.1
    IL_0033:  ldarg.0
    IL_0034:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0039:  ldarg.1
    IL_003a:  ldarg.2
    IL_003b:  ldarg.3
    IL_003c:  ldloc.1
    IL_003d:  ldc.i4.2
    IL_003e:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0049:  ret
  } // end of method SubsystemSoilBlockBehavior::OnNeighborBlockChanged

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemSoilBlockBehavior::m_subsystemTime
    IL_0019:  ret
  } // end of method SubsystemSoilBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemSoilBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       446 (0x1be)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool> V_0,
             valuetype [Engine]Engine.Point3 V_1,
             int32 V_2,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool> V_3,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool> V_4,
             valuetype [Engine]Engine.Point3 V_5,
             bool V_6,
             int32 V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemSoilBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     2.5
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_00d5

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toDegrade
    IL_0028:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::get_Keys()
    IL_002d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_0032:  stloc.0
    .try
    {
      IL_0033:  br.s       IL_00ae

      IL_0035:  ldloca.s   V_0
      IL_0037:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_003c:  stloc.1
      IL_003d:  ldarg.0
      IL_003e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0043:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0048:  ldloc.1
      IL_0049:  ldfld      int32 [Engine]Engine.Point3::X
      IL_004e:  ldloc.1
      IL_004f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0054:  ldloc.1
      IL_0055:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_005a:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_005f:  ldc.i4     0xa8
      IL_0064:  bne.un.s   IL_00ae

      IL_0066:  ldarg.0
      IL_0067:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_006c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0071:  ldloc.1
      IL_0072:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0077:  ldloc.1
      IL_0078:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_007d:  ldloc.1
      IL_007e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0083:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0088:  stloc.2
      IL_0089:  ldarg.0
      IL_008a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_008f:  ldloc.1
      IL_0090:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0095:  ldloc.1
      IL_0096:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_009b:  ldloc.1
      IL_009c:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00a1:  ldloc.2
      IL_00a2:  ldc.i4.2
      IL_00a3:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                               int32)
      IL_00a8:  ldc.i4.1
      IL_00a9:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_00ae:  ldloca.s   V_0
      IL_00b0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_00b5:  brtrue     IL_0035

      IL_00ba:  leave.s    IL_00ca

    }  // end .try
    finally
    {
      IL_00bc:  ldloca.s   V_0
      IL_00be:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_00c4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c9:  endfinally
    }  // end handler
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toDegrade
    IL_00d0:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SubsystemTime Game.SubsystemSoilBlockBehavior::m_subsystemTime
    IL_00db:  ldc.r8     10.
    IL_00e4:  ldc.r8     0.0
    IL_00ed:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_00f2:  brfalse    IL_01bd

    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toHydrate
    IL_00fd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::GetEnumerator()
    IL_0102:  stloc.3
    .try
    {
      IL_0103:  br         IL_0196

      IL_0108:  ldloca.s   V_3
      IL_010a:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>::get_Current()
      IL_010f:  stloc.s    V_4
      IL_0111:  ldloca.s   V_4
      IL_0113:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool>::get_Key()
      IL_0118:  stloc.s    V_5
      IL_011a:  ldloca.s   V_4
      IL_011c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,bool>::get_Value()
      IL_0121:  stloc.s    V_6
      IL_0123:  ldarg.0
      IL_0124:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0129:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_012e:  ldloc.s    V_5
      IL_0130:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0135:  ldloc.s    V_5
      IL_0137:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_013c:  ldloc.s    V_5
      IL_013e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0143:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_0148:  stloc.s    V_7
      IL_014a:  ldloc.s    V_7
      IL_014c:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0151:  ldc.i4     0xa8
      IL_0156:  bne.un.s   IL_0196

      IL_0158:  ldloc.s    V_7
      IL_015a:  call       int32 Game.Terrain::ExtractData(int32)
      IL_015f:  ldloc.s    V_6
      IL_0161:  call       int32 Game.SoilBlock::SetHydration(int32,
                                                              bool)
      IL_0166:  stloc.s    V_8
      IL_0168:  ldloc.s    V_7
      IL_016a:  ldloc.s    V_8
      IL_016c:  call       int32 Game.Terrain::ReplaceData(int32,
                                                           int32)
      IL_0171:  stloc.s    V_9
      IL_0173:  ldarg.0
      IL_0174:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0179:  ldloc.s    V_5
      IL_017b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0180:  ldloc.s    V_5
      IL_0182:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0187:  ldloc.s    V_5
      IL_0189:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_018e:  ldloc.s    V_9
      IL_0190:  ldc.i4.1
      IL_0191:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_0196:  ldloca.s   V_3
      IL_0198:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>::MoveNext()
      IL_019d:  brtrue     IL_0108

      IL_01a2:  leave.s    IL_01b2

    }  // end .try
    finally
    {
      IL_01a4:  ldloca.s   V_3
      IL_01a6:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,bool>
      IL_01ac:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b1:  endfinally
    }  // end handler
    IL_01b2:  ldarg.0
    IL_01b3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toHydrate
    IL_01b8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::Clear()
    IL_01bd:  ret
  } // end of method SubsystemSoilBlockBehavior::Update

  .method private hidebysig instance bool 
          DegradesSoilIfOnTopOfIt(int32 'value') cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  3
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.5
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_0017:  brtrue.s   IL_0020

    IL_0019:  ldloc.1
    IL_001a:  ldfld      bool Game.Block::IsCollidable
    IL_001f:  ret

    IL_0020:  ldc.i4.0
    IL_0021:  ret
  } // end of method SubsystemSoilBlockBehavior::DegradesSoilIfOnTopOfIt

  .method private hidebysig instance bool 
          DetermineHydration(int32 x,
                             int32 y,
                             int32 z,
                             int32 steps) cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  6
    IL_0000:  ldarg.s    steps
    IL_0002:  ldc.i4.0
    IL_0003:  ble        IL_0088

    IL_0008:  ldarg.2
    IL_0009:  ldc.i4.0
    IL_000a:  ble.s      IL_0088

    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.s   126
    IL_000f:  bge.s      IL_0088

    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldc.i4.1
    IL_0014:  sub
    IL_0015:  ldarg.2
    IL_0016:  ldarg.3
    IL_0017:  ldarg.s    steps
    IL_0019:  ldc.i4.1
    IL_001a:  sub
    IL_001b:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0020:  brfalse.s  IL_0024

    IL_0022:  ldc.i4.1
    IL_0023:  ret

    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  ldarg.2
    IL_0029:  ldarg.3
    IL_002a:  ldarg.s    steps
    IL_002c:  ldc.i4.1
    IL_002d:  sub
    IL_002e:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0033:  brfalse.s  IL_0037

    IL_0035:  ldc.i4.1
    IL_0036:  ret

    IL_0037:  ldarg.0
    IL_0038:  ldarg.1
    IL_0039:  ldarg.2
    IL_003a:  ldarg.3
    IL_003b:  ldc.i4.1
    IL_003c:  sub
    IL_003d:  ldarg.s    steps
    IL_003f:  ldc.i4.1
    IL_0040:  sub
    IL_0041:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0046:  brfalse.s  IL_004a

    IL_0048:  ldc.i4.1
    IL_0049:  ret

    IL_004a:  ldarg.0
    IL_004b:  ldarg.1
    IL_004c:  ldarg.2
    IL_004d:  ldarg.3
    IL_004e:  ldc.i4.1
    IL_004f:  add
    IL_0050:  ldarg.s    steps
    IL_0052:  ldc.i4.1
    IL_0053:  sub
    IL_0054:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0059:  brfalse.s  IL_005d

    IL_005b:  ldc.i4.1
    IL_005c:  ret

    IL_005d:  ldarg.s    steps
    IL_005f:  ldc.i4.2
    IL_0060:  blt.s      IL_0088

    IL_0062:  ldarg.0
    IL_0063:  ldarg.1
    IL_0064:  ldarg.2
    IL_0065:  ldc.i4.1
    IL_0066:  sub
    IL_0067:  ldarg.3
    IL_0068:  ldarg.s    steps
    IL_006a:  ldc.i4.2
    IL_006b:  sub
    IL_006c:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0071:  brfalse.s  IL_0075

    IL_0073:  ldc.i4.1
    IL_0074:  ret

    IL_0075:  ldarg.0
    IL_0076:  ldarg.1
    IL_0077:  ldarg.2
    IL_0078:  ldc.i4.1
    IL_0079:  add
    IL_007a:  ldarg.3
    IL_007b:  ldarg.s    steps
    IL_007d:  ldc.i4.2
    IL_007e:  sub
    IL_007f:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydrationHelper(int32,
                                                                                                 int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0084:  brfalse.s  IL_0088

    IL_0086:  ldc.i4.1
    IL_0087:  ret

    IL_0088:  ldc.i4.0
    IL_0089:  ret
  } // end of method SubsystemSoilBlockBehavior::DetermineHydration

  .method private hidebysig instance bool 
          DetermineHydrationHelper(int32 x,
                                   int32 y,
                                   int32 z,
                                   int32 steps) cil managed
  {
    // 代码大小       85 (0x55)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  dup
    IL_0014:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0019:  stloc.0
    IL_001a:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001f:  stloc.1
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.s   18
    IL_0023:  bne.un.s   IL_0027

    IL_0025:  ldc.i4.1
    IL_0026:  ret

    IL_0027:  ldloc.0
    IL_0028:  ldc.i4     0xa8
    IL_002d:  bne.un.s   IL_0043

    IL_002f:  ldloc.1
    IL_0030:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_0035:  brfalse.s  IL_0043

    IL_0037:  ldarg.0
    IL_0038:  ldarg.1
    IL_0039:  ldarg.2
    IL_003a:  ldarg.3
    IL_003b:  ldarg.s    steps
    IL_003d:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydration(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
    IL_0042:  ret

    IL_0043:  ldloc.0
    IL_0044:  ldc.i4.2
    IL_0045:  bne.un.s   IL_0053

    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldarg.2
    IL_004a:  ldarg.3
    IL_004b:  ldarg.s    steps
    IL_004d:  call       instance bool Game.SubsystemSoilBlockBehavior::DetermineHydration(int32,
                                                                                           int32,
                                                                                           int32,
                                                                                           int32)
    IL_0052:  ret

    IL_0053:  ldc.i4.0
    IL_0054:  ret
  } // end of method SubsystemSoilBlockBehavior::DetermineHydrationHelper

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemSoilBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toDegrade
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,bool> Game.SubsystemSoilBlockBehavior::m_toHydrate
    IL_0021:  ldarg.0
    IL_0022:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_0027:  ret
  } // end of method SubsystemSoilBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemSoilBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemSoilBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemSoilBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemSoilBlockBehavior::UpdateOrder
} // end of class Game.SubsystemSoilBlockBehavior