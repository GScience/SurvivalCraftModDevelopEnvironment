.class public auto ansi beforefieldinit Game.SubsystemFireBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit FireData
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Point3 Point
    .field public float32 Time0
    .field public float32 Time1
    .field public float32 Time2
    .field public float32 Time3
    .field public float32 Time5
    .field public float32 FireExpandability
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method FireData::.ctor

  } // end of class FireData

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemDrawing m_subsystemDrawing
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemAmbientSounds m_subsystemAmbientSounds
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> m_expansionProbabilities
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> m_fireData
  .field private class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> m_firePointsCopy
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> m_toBurnAway
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> m_toExpand
  .field private int32 m_copyIndex
  .field private float32 m_remainderToScan
  .field private float64 m_lastScanTime
  .field private float32 m_lastScanDuration
  .field private class Game.Random m_random
  .field private float32 m_fireSoundVolume
  .field private float32 m_fireSoundIntensity
  .method public hidebysig instance bool 
          IsCellOnFire(int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.1
    IL_0002:  br.s       IL_005c

    IL_0004:  ldloc.1
    IL_0005:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_000a:  stloc.2
    IL_000b:  ldarg.0
    IL_000c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0011:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0016:  ldarg.1
    IL_0017:  ldloc.2
    IL_0018:  ldfld      int32 [Engine]Engine.Point3::X
    IL_001d:  add
    IL_001e:  ldarg.2
    IL_001f:  ldloc.2
    IL_0020:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0025:  add
    IL_0026:  ldarg.3
    IL_0027:  ldloc.2
    IL_0028:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002d:  add
    IL_002e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_003a:  ldc.i4.s   104
    IL_003c:  bne.un.s   IL_0058

    IL_003e:  ldloc.3
    IL_003f:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0044:  ldloc.1
    IL_0045:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_004a:  stloc.s    V_4
    IL_004c:  ldc.i4.1
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldc.i4.s   31
    IL_0051:  and
    IL_0052:  shl
    IL_0053:  and
    IL_0054:  brfalse.s  IL_0058

    IL_0056:  ldc.i4.1
    IL_0057:  ret

    IL_0058:  ldloc.1
    IL_0059:  ldc.i4.1
    IL_005a:  add
    IL_005b:  stloc.1
    IL_005c:  ldloc.1
    IL_005d:  ldc.i4.4
    IL_005e:  blt.s      IL_0004

    IL_0060:  ldarg.0
    IL_0061:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0066:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_006b:  ldarg.1
    IL_006c:  ldarg.2
    IL_006d:  ldc.i4.1
    IL_006e:  add
    IL_006f:  ldarg.3
    IL_0070:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0075:  stloc.0
    IL_0076:  ldloc.0
    IL_0077:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_007c:  ldc.i4.s   104
    IL_007e:  bne.un.s   IL_008a

    IL_0080:  ldloc.0
    IL_0081:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0086:  brtrue.s   IL_008a

    IL_0088:  ldc.i4.1
    IL_0089:  ret

    IL_008a:  ldc.i4.0
    IL_008b:  ret
  } // end of method SubsystemFireBlockBehavior::IsCellOnFire

  .method public hidebysig instance bool 
          SetCellOnFire(int32 x,
                        int32 y,
                        int32 z,
                        float32 fireExpandability) cil managed
  {
    // 代码大小       285 (0x11d)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             bool V_2,
             int32 V_3,
             valuetype [Engine]Engine.Point3 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0020:  ldloc.1
    IL_0021:  ldelem.ref
    IL_0022:  ldfld      float32 Game.Block::FireDuration
    IL_0027:  ldc.r4     0.0
    IL_002c:  bne.un.s   IL_0030

    IL_002e:  ldc.i4.0
    IL_002f:  ret

    IL_0030:  ldc.i4.0
    IL_0031:  stloc.2
    IL_0032:  ldc.i4.0
    IL_0033:  stloc.3
    IL_0034:  br         IL_0114

    IL_0039:  ldloc.3
    IL_003a:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_003f:  stloc.s    V_4
    IL_0041:  ldarg.0
    IL_0042:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0047:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_004c:  ldarg.1
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0054:  add
    IL_0055:  ldarg.2
    IL_0056:  ldloc.s    V_4
    IL_0058:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_005d:  add
    IL_005e:  ldarg.3
    IL_005f:  ldloc.s    V_4
    IL_0061:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0066:  add
    IL_0067:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_006c:  stloc.s    V_5
    IL_006e:  ldloc.s    V_5
    IL_0070:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0075:  stloc.s    V_6
    IL_0077:  ldloc.s    V_6
    IL_0079:  brfalse.s  IL_008a

    IL_007b:  ldloc.s    V_6
    IL_007d:  ldc.i4.s   104
    IL_007f:  beq.s      IL_008a

    IL_0081:  ldloc.s    V_6
    IL_0083:  ldc.i4.s   61
    IL_0085:  bne.un     IL_0110

    IL_008a:  ldloc.s    V_6
    IL_008c:  ldc.i4.s   104
    IL_008e:  beq.s      IL_0093

    IL_0090:  ldc.i4.0
    IL_0091:  br.s       IL_009a

    IL_0093:  ldloc.s    V_5
    IL_0095:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_009a:  stloc.s    V_7
    IL_009c:  ldloc.3
    IL_009d:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_00a2:  stloc.s    V_8
    IL_00a4:  ldloc.s    V_7
    IL_00a6:  ldc.i4.1
    IL_00a7:  ldloc.s    V_8
    IL_00a9:  ldc.i4.s   31
    IL_00ab:  and
    IL_00ac:  shl
    IL_00ad:  ldc.i4.s   15
    IL_00af:  and
    IL_00b0:  or
    IL_00b1:  stloc.s    V_7
    IL_00b3:  ldc.i4.0
    IL_00b4:  ldc.i4.s   104
    IL_00b6:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_00bb:  ldloc.s    V_7
    IL_00bd:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_00c2:  stloc.0
    IL_00c3:  ldarg.0
    IL_00c4:  ldarg.1
    IL_00c5:  ldloc.s    V_4
    IL_00c7:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00cc:  add
    IL_00cd:  ldarg.2
    IL_00ce:  ldloc.s    V_4
    IL_00d0:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00d5:  add
    IL_00d6:  ldarg.3
    IL_00d7:  ldloc.s    V_4
    IL_00d9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00de:  add
    IL_00df:  ldarg.s    fireExpandability
    IL_00e1:  call       instance void Game.SubsystemFireBlockBehavior::AddFire(int32,
                                                                                int32,
                                                                                int32,
                                                                                float32)
    IL_00e6:  ldarg.0
    IL_00e7:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00ec:  ldarg.1
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00f4:  add
    IL_00f5:  ldarg.2
    IL_00f6:  ldloc.s    V_4
    IL_00f8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00fd:  add
    IL_00fe:  ldarg.3
    IL_00ff:  ldloc.s    V_4
    IL_0101:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0106:  add
    IL_0107:  ldloc.0
    IL_0108:  ldc.i4.1
    IL_0109:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_010e:  ldc.i4.1
    IL_010f:  stloc.2
    IL_0110:  ldloc.3
    IL_0111:  ldc.i4.1
    IL_0112:  add
    IL_0113:  stloc.3
    IL_0114:  ldloc.3
    IL_0115:  ldc.i4.5
    IL_0116:  blt        IL_0039

    IL_011b:  ldloc.2
    IL_011c:  ret
  } // end of method SubsystemFireBlockBehavior::SetCellOnFire

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemFireBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       2164 (0x874)
    .maxstack  7
    .locals init (float32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.SubsystemFireBlockBehavior/FireData V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32> V_8,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_9,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_10,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_11,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_12,
             int32 V_13,
             int32 V_14,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_15,
             valuetype [Engine]Engine.Point3 V_16,
             float32 V_17,
             int32 V_18,
             valuetype [Engine]Engine.Point3 V_19,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_20)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0006:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_000b:  brtrue     IL_0092

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0016:  dup
    IL_0017:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_0022:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::get_Count()
    IL_0027:  add
    IL_0028:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::set_Count(int32)
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_0033:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::get_Keys()
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_003e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Array()
    IL_0043:  ldc.i4.0
    IL_0044:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::CopyTo(!0[],
                                                                                                                                                                                                               int32)
    IL_0049:  ldarg.0
    IL_004a:  ldc.i4.0
    IL_004b:  stfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_0050:  ldarg.0
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.SubsystemTime Game.SubsystemFireBlockBehavior::m_subsystemTime
    IL_0057:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_005c:  ldarg.0
    IL_005d:  ldfld      float64 Game.SubsystemFireBlockBehavior::m_lastScanTime
    IL_0062:  sub
    IL_0063:  conv.r4
    IL_0064:  stfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_0069:  ldarg.0
    IL_006a:  ldarg.0
    IL_006b:  ldfld      class Game.SubsystemTime Game.SubsystemFireBlockBehavior::m_subsystemTime
    IL_0070:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0075:  stfld      float64 Game.SubsystemFireBlockBehavior::m_lastScanTime
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0080:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_0085:  brtrue.s   IL_0092

    IL_0087:  ldarg.0
    IL_0088:  ldc.r4     0.0
    IL_008d:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundVolume
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0098:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_009d:  ldc.i4.0
    IL_009e:  ble        IL_05ee

    IL_00a3:  ldc.r4     1.
    IL_00a8:  ldarg.1
    IL_00a9:  mul
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_00b0:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_00b5:  conv.r4
    IL_00b6:  mul
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_remainderToScan
    IL_00bd:  add
    IL_00be:  ldc.r4     50.
    IL_00c3:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00c8:  stloc.0
    IL_00c9:  ldloc.0
    IL_00ca:  conv.i4
    IL_00cb:  stloc.1
    IL_00cc:  ldarg.0
    IL_00cd:  ldloc.0
    IL_00ce:  ldloc.1
    IL_00cf:  conv.r4
    IL_00d0:  sub
    IL_00d1:  stfld      float32 Game.SubsystemFireBlockBehavior::m_remainderToScan
    IL_00d6:  ldarg.0
    IL_00d7:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_00dc:  ldloc.1
    IL_00dd:  add
    IL_00de:  ldarg.0
    IL_00df:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_00e4:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_00e9:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_00ee:  stloc.2
    IL_00ef:  br         IL_05a7

    IL_00f4:  ldarg.0
    IL_00f5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_00fa:  ldarg.0
    IL_00fb:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0100:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Array()
    IL_0105:  ldarg.0
    IL_0106:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_010b:  ldelem     [Engine]Engine.Point3
    IL_0110:  ldloca.s   V_3
    IL_0112:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::TryGetValue(!0,
                                                                                                                                                                                                      !1&)
    IL_0117:  brfalse    IL_0599

    IL_011c:  ldloc.3
    IL_011d:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_0122:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0127:  stloc.s    V_4
    IL_0129:  ldloc.3
    IL_012a:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_012f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0134:  stloc.s    V_5
    IL_0136:  ldloc.3
    IL_0137:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_013c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0141:  stloc.s    V_6
    IL_0143:  ldarg.0
    IL_0144:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0149:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldloc.s    V_5
    IL_0152:  ldloc.s    V_6
    IL_0154:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0159:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_015e:  stloc.s    V_7
    IL_0160:  ldarg.0
    IL_0161:  ldarg.0
    IL_0162:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_0167:  ldc.r4     1.
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.SubsystemAudio Game.SubsystemFireBlockBehavior::m_subsystemAudio
    IL_0172:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
    IL_0177:  ldloc.s    V_4
    IL_0179:  conv.r4
    IL_017a:  ldloc.s    V_5
    IL_017c:  conv.r4
    IL_017d:  ldloc.s    V_6
    IL_017f:  conv.r4
    IL_0180:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0185:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_018a:  ldc.r4     9.9999998e-003
    IL_018f:  add
    IL_0190:  div
    IL_0191:  add
    IL_0192:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_0197:  ldloc.s    V_7
    IL_0199:  ldc.i4.1
    IL_019a:  and
    IL_019b:  brfalse    IL_0288

    IL_01a0:  ldloc.3
    IL_01a1:  dup
    IL_01a2:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01a7:  ldarg.0
    IL_01a8:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_01ad:  sub
    IL_01ae:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01b3:  ldloc.3
    IL_01b4:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01b9:  ldc.r4     0.0
    IL_01be:  bgt.un.s   IL_01da

    IL_01c0:  ldarg.0
    IL_01c1:  ldloc.s    V_4
    IL_01c3:  ldloc.s    V_5
    IL_01c5:  ldloc.s    V_6
    IL_01c7:  ldc.i4.1
    IL_01c8:  add
    IL_01c9:  ldloc.3
    IL_01ca:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_01cf:  ldc.r4     0.85000002
    IL_01d4:  mul
    IL_01d5:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_01da:  ldarg.0
    IL_01db:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_01e0:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_01e5:  stloc.s    V_8
    .try
    {
      IL_01e7:  br         IL_026c

      IL_01ec:  ldloca.s   V_8
      IL_01ee:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_01f3:  stloc.s    V_9
      IL_01f5:  ldarg.0
      IL_01f6:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_01fb:  ldc.r4     0.0
      IL_0200:  ldc.r4     1.
      IL_0205:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_020a:  ldloca.s   V_9
      IL_020c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_0211:  ldarg.0
      IL_0212:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_0217:  mul
      IL_0218:  ldloc.3
      IL_0219:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_021e:  mul
      IL_021f:  bge.un.s   IL_026c

      IL_0221:  ldarg.0
      IL_0222:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0227:  ldloc.s    V_4
      IL_0229:  ldloca.s   V_9
      IL_022b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0230:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0235:  add
      IL_0236:  ldloc.s    V_5
      IL_0238:  ldloca.s   V_9
      IL_023a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_023f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0244:  add
      IL_0245:  ldloc.s    V_6
      IL_0247:  ldc.i4.1
      IL_0248:  add
      IL_0249:  ldloca.s   V_9
      IL_024b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0250:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0255:  add
      IL_0256:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_025b:  ldloc.3
      IL_025c:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0261:  ldc.r4     0.85000002
      IL_0266:  mul
      IL_0267:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_026c:  ldloca.s   V_8
      IL_026e:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0273:  brtrue     IL_01ec

      IL_0278:  leave.s    IL_0288

    }  // end .try
    finally
    {
      IL_027a:  ldloca.s   V_8
      IL_027c:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0282:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0287:  endfinally
    }  // end handler
    IL_0288:  ldloc.s    V_7
    IL_028a:  ldc.i4.2
    IL_028b:  and
    IL_028c:  brfalse    IL_0379

    IL_0291:  ldloc.3
    IL_0292:  dup
    IL_0293:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_0298:  ldarg.0
    IL_0299:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_029e:  sub
    IL_029f:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_02a4:  ldloc.3
    IL_02a5:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_02aa:  ldc.r4     0.0
    IL_02af:  bgt.un.s   IL_02cb

    IL_02b1:  ldarg.0
    IL_02b2:  ldloc.s    V_4
    IL_02b4:  ldc.i4.1
    IL_02b5:  add
    IL_02b6:  ldloc.s    V_5
    IL_02b8:  ldloc.s    V_6
    IL_02ba:  ldloc.3
    IL_02bb:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_02c0:  ldc.r4     0.85000002
    IL_02c5:  mul
    IL_02c6:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_02cb:  ldarg.0
    IL_02cc:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_02d1:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_02d6:  stloc.s    V_8
    .try
    {
      IL_02d8:  br         IL_035d

      IL_02dd:  ldloca.s   V_8
      IL_02df:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_02e4:  stloc.s    V_10
      IL_02e6:  ldarg.0
      IL_02e7:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_02ec:  ldc.r4     0.0
      IL_02f1:  ldc.r4     1.
      IL_02f6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_02fb:  ldloca.s   V_10
      IL_02fd:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_0302:  ldarg.0
      IL_0303:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_0308:  mul
      IL_0309:  ldloc.3
      IL_030a:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_030f:  mul
      IL_0310:  bge.un.s   IL_035d

      IL_0312:  ldarg.0
      IL_0313:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0318:  ldloc.s    V_4
      IL_031a:  ldc.i4.1
      IL_031b:  add
      IL_031c:  ldloca.s   V_10
      IL_031e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0323:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0328:  add
      IL_0329:  ldloc.s    V_5
      IL_032b:  ldloca.s   V_10
      IL_032d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0332:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0337:  add
      IL_0338:  ldloc.s    V_6
      IL_033a:  ldloca.s   V_10
      IL_033c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0341:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0346:  add
      IL_0347:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_034c:  ldloc.3
      IL_034d:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0352:  ldc.r4     0.85000002
      IL_0357:  mul
      IL_0358:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_035d:  ldloca.s   V_8
      IL_035f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0364:  brtrue     IL_02dd

      IL_0369:  leave.s    IL_0379

    }  // end .try
    finally
    {
      IL_036b:  ldloca.s   V_8
      IL_036d:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0373:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0378:  endfinally
    }  // end handler
    IL_0379:  ldloc.s    V_7
    IL_037b:  ldc.i4.4
    IL_037c:  and
    IL_037d:  brfalse    IL_046a

    IL_0382:  ldloc.3
    IL_0383:  dup
    IL_0384:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_0389:  ldarg.0
    IL_038a:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_038f:  sub
    IL_0390:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_0395:  ldloc.3
    IL_0396:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_039b:  ldc.r4     0.0
    IL_03a0:  bgt.un.s   IL_03bc

    IL_03a2:  ldarg.0
    IL_03a3:  ldloc.s    V_4
    IL_03a5:  ldloc.s    V_5
    IL_03a7:  ldloc.s    V_6
    IL_03a9:  ldc.i4.1
    IL_03aa:  sub
    IL_03ab:  ldloc.3
    IL_03ac:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_03b1:  ldc.r4     0.85000002
    IL_03b6:  mul
    IL_03b7:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_03bc:  ldarg.0
    IL_03bd:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_03c2:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_03c7:  stloc.s    V_8
    .try
    {
      IL_03c9:  br         IL_044e

      IL_03ce:  ldloca.s   V_8
      IL_03d0:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_03d5:  stloc.s    V_11
      IL_03d7:  ldarg.0
      IL_03d8:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_03dd:  ldc.r4     0.0
      IL_03e2:  ldc.r4     1.
      IL_03e7:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_03ec:  ldloca.s   V_11
      IL_03ee:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_03f3:  ldarg.0
      IL_03f4:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_03f9:  mul
      IL_03fa:  ldloc.3
      IL_03fb:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0400:  mul
      IL_0401:  bge.un.s   IL_044e

      IL_0403:  ldarg.0
      IL_0404:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0409:  ldloc.s    V_4
      IL_040b:  ldloca.s   V_11
      IL_040d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0412:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0417:  add
      IL_0418:  ldloc.s    V_5
      IL_041a:  ldloca.s   V_11
      IL_041c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0421:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0426:  add
      IL_0427:  ldloc.s    V_6
      IL_0429:  ldc.i4.1
      IL_042a:  sub
      IL_042b:  ldloca.s   V_11
      IL_042d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0432:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0437:  add
      IL_0438:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_043d:  ldloc.3
      IL_043e:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0443:  ldc.r4     0.85000002
      IL_0448:  mul
      IL_0449:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_044e:  ldloca.s   V_8
      IL_0450:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0455:  brtrue     IL_03ce

      IL_045a:  leave.s    IL_046a

    }  // end .try
    finally
    {
      IL_045c:  ldloca.s   V_8
      IL_045e:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0464:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0469:  endfinally
    }  // end handler
    IL_046a:  ldloc.s    V_7
    IL_046c:  ldc.i4.8
    IL_046d:  and
    IL_046e:  brfalse    IL_055b

    IL_0473:  ldloc.3
    IL_0474:  dup
    IL_0475:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_047a:  ldarg.0
    IL_047b:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_0480:  sub
    IL_0481:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_0486:  ldloc.3
    IL_0487:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_048c:  ldc.r4     0.0
    IL_0491:  bgt.un.s   IL_04ad

    IL_0493:  ldarg.0
    IL_0494:  ldloc.s    V_4
    IL_0496:  ldc.i4.1
    IL_0497:  sub
    IL_0498:  ldloc.s    V_5
    IL_049a:  ldloc.s    V_6
    IL_049c:  ldloc.3
    IL_049d:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_04a2:  ldc.r4     0.85000002
    IL_04a7:  mul
    IL_04a8:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_04ad:  ldarg.0
    IL_04ae:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_04b3:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_04b8:  stloc.s    V_8
    .try
    {
      IL_04ba:  br         IL_053f

      IL_04bf:  ldloca.s   V_8
      IL_04c1:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_04c6:  stloc.s    V_12
      IL_04c8:  ldarg.0
      IL_04c9:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_04ce:  ldc.r4     0.0
      IL_04d3:  ldc.r4     1.
      IL_04d8:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_04dd:  ldloca.s   V_12
      IL_04df:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_04e4:  ldarg.0
      IL_04e5:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_04ea:  mul
      IL_04eb:  ldloc.3
      IL_04ec:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_04f1:  mul
      IL_04f2:  bge.un.s   IL_053f

      IL_04f4:  ldarg.0
      IL_04f5:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_04fa:  ldloc.s    V_4
      IL_04fc:  ldc.i4.1
      IL_04fd:  sub
      IL_04fe:  ldloca.s   V_12
      IL_0500:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0505:  ldfld      int32 [Engine]Engine.Point3::X
      IL_050a:  add
      IL_050b:  ldloc.s    V_5
      IL_050d:  ldloca.s   V_12
      IL_050f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0514:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0519:  add
      IL_051a:  ldloc.s    V_6
      IL_051c:  ldloca.s   V_12
      IL_051e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0523:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0528:  add
      IL_0529:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_052e:  ldloc.3
      IL_052f:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0534:  ldc.r4     0.85000002
      IL_0539:  mul
      IL_053a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_053f:  ldloca.s   V_8
      IL_0541:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0546:  brtrue     IL_04bf

      IL_054b:  leave.s    IL_055b

    }  // end .try
    finally
    {
      IL_054d:  ldloca.s   V_8
      IL_054f:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0555:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_055a:  endfinally
    }  // end handler
    IL_055b:  ldloc.s    V_7
    IL_055d:  brtrue.s   IL_0599

    IL_055f:  ldloc.3
    IL_0560:  dup
    IL_0561:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0566:  ldarg.0
    IL_0567:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_056c:  sub
    IL_056d:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0572:  ldloc.3
    IL_0573:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0578:  ldc.r4     0.0
    IL_057d:  bgt.un.s   IL_0599

    IL_057f:  ldarg.0
    IL_0580:  ldloc.s    V_4
    IL_0582:  ldloc.s    V_5
    IL_0584:  ldc.i4.1
    IL_0585:  sub
    IL_0586:  ldloc.s    V_6
    IL_0588:  ldloc.3
    IL_0589:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_058e:  ldc.r4     0.85000002
    IL_0593:  mul
    IL_0594:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_0599:  ldarg.0
    IL_059a:  ldarg.0
    IL_059b:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05a0:  ldc.i4.1
    IL_05a1:  add
    IL_05a2:  stfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05a7:  ldarg.0
    IL_05a8:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05ad:  ldloc.2
    IL_05ae:  blt        IL_00f4

    IL_05b3:  ldarg.0
    IL_05b4:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05b9:  ldarg.0
    IL_05ba:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_05bf:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_05c4:  blt.s      IL_05ee

    IL_05c6:  ldarg.0
    IL_05c7:  ldc.r4     0.75
    IL_05cc:  ldarg.0
    IL_05cd:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_05d2:  mul
    IL_05d3:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundVolume
    IL_05d8:  ldarg.0
    IL_05d9:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_05de:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_05e3:  ldarg.0
    IL_05e4:  ldc.r4     0.0
    IL_05e9:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_05ee:  ldarg.0
    IL_05ef:  ldfld      class Game.SubsystemTime Game.SubsystemFireBlockBehavior::m_subsystemTime
    IL_05f4:  ldc.r8     5.
    IL_05fd:  ldc.r8     0.0
    IL_0606:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_060b:  brfalse    IL_0852

    IL_0610:  ldc.i4.0
    IL_0611:  stloc.s    V_13
    IL_0613:  ldc.i4.0
    IL_0614:  stloc.s    V_14
    IL_0616:  ldarg.0
    IL_0617:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_061c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_0621:  stloc.s    V_8
    .try
    {
      IL_0623:  br         IL_07bd

      IL_0628:  ldloca.s   V_8
      IL_062a:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_062f:  stloc.s    V_15
      IL_0631:  ldloca.s   V_15
      IL_0633:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0638:  stloc.s    V_16
      IL_063a:  ldloca.s   V_15
      IL_063c:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_0641:  stloc.s    V_17
      IL_0643:  ldarg.0
      IL_0644:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0649:  ldloc.s    V_16
      IL_064b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0650:  ldloc.s    V_16
      IL_0652:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0657:  ldloc.s    V_16
      IL_0659:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_065e:  ldc.i4.0
      IL_065f:  ldc.i4.0
      IL_0660:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                   int32)
      IL_0665:  ldc.i4.1
      IL_0666:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_066b:  ldloc.s    V_17
      IL_066d:  ldc.r4     0.25
      IL_0672:  ble.un.s   IL_06c3

      IL_0674:  ldc.i4.0
      IL_0675:  stloc.s    V_18
      IL_0677:  br.s       IL_06be

      IL_0679:  ldloc.s    V_18
      IL_067b:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
      IL_0680:  stloc.s    V_19
      IL_0682:  ldarg.0
      IL_0683:  ldloc.s    V_16
      IL_0685:  ldfld      int32 [Engine]Engine.Point3::X
      IL_068a:  ldloc.s    V_19
      IL_068c:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0691:  add
      IL_0692:  ldloc.s    V_16
      IL_0694:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0699:  ldloc.s    V_19
      IL_069b:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_06a0:  add
      IL_06a1:  ldloc.s    V_16
      IL_06a3:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_06a8:  ldloc.s    V_19
      IL_06aa:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_06af:  add
      IL_06b0:  ldloc.s    V_17
      IL_06b2:  call       instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_06b7:  pop
      IL_06b8:  ldloc.s    V_18
      IL_06ba:  ldc.i4.1
      IL_06bb:  add
      IL_06bc:  stloc.s    V_18
      IL_06be:  ldloc.s    V_18
      IL_06c0:  ldc.i4.5
      IL_06c1:  blt.s      IL_0679

      IL_06c3:  ldloc.s    V_13
      IL_06c5:  ldc.i4.s   15
      IL_06c7:  bge.s      IL_072e

      IL_06c9:  ldarg.0
      IL_06ca:  ldfld      class Game.SubsystemDrawing Game.SubsystemFireBlockBehavior::m_subsystemDrawing
      IL_06cf:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_06d4:  ldloc.s    V_16
      IL_06d6:  ldfld      int32 [Engine]Engine.Point3::X
      IL_06db:  conv.r4
      IL_06dc:  ldloc.s    V_16
      IL_06de:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_06e3:  conv.r4
      IL_06e4:  ldloc.s    V_16
      IL_06e6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_06eb:  conv.r4
      IL_06ec:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_06f1:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_06f6:  ldc.r4     24.
      IL_06fb:  bge.un.s   IL_072e

      IL_06fd:  ldarg.0
      IL_06fe:  ldfld      class Game.SubsystemParticles Game.SubsystemFireBlockBehavior::m_subsystemParticles
      IL_0703:  ldarg.0
      IL_0704:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0709:  ldloc.s    V_16
      IL_070b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0710:  ldloc.s    V_16
      IL_0712:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0717:  ldloc.s    V_16
      IL_0719:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_071e:  newobj     instance void Game.BurntDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_0723:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_0728:  ldloc.s    V_13
      IL_072a:  ldc.i4.1
      IL_072b:  add
      IL_072c:  stloc.s    V_13
      IL_072e:  ldloc.s    V_14
      IL_0730:  ldc.i4.4
      IL_0731:  bge        IL_07bd

      IL_0736:  ldarg.0
      IL_0737:  ldfld      class Game.SubsystemDrawing Game.SubsystemFireBlockBehavior::m_subsystemDrawing
      IL_073c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
      IL_0741:  ldloc.s    V_16
      IL_0743:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0748:  conv.r4
      IL_0749:  ldloc.s    V_16
      IL_074b:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0750:  conv.r4
      IL_0751:  ldloc.s    V_16
      IL_0753:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0758:  conv.r4
      IL_0759:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_075e:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0763:  ldc.r4     16.
      IL_0768:  bge.un.s   IL_07bd

      IL_076a:  ldarg.0
      IL_076b:  ldfld      class Game.SubsystemAudio Game.SubsystemFireBlockBehavior::m_subsystemAudio
      IL_0770:  ldstr      "Audio/Sizzles"
      IL_0775:  ldc.r4     1.
      IL_077a:  ldarg.0
      IL_077b:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_0780:  ldc.r4     -0.25
      IL_0785:  ldc.r4     0.25
      IL_078a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_078f:  ldloc.s    V_16
      IL_0791:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0796:  conv.r4
      IL_0797:  ldloc.s    V_16
      IL_0799:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_079e:  conv.r4
      IL_079f:  ldloc.s    V_16
      IL_07a1:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_07a6:  conv.r4
      IL_07a7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_07ac:  ldc.r4     3.
      IL_07b1:  ldc.i4.1
      IL_07b2:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_07b7:  ldloc.s    V_14
      IL_07b9:  ldc.i4.1
      IL_07ba:  add
      IL_07bb:  stloc.s    V_14
      IL_07bd:  ldloca.s   V_8
      IL_07bf:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_07c4:  brtrue     IL_0628

      IL_07c9:  leave.s    IL_07d9

    }  // end .try
    finally
    {
      IL_07cb:  ldloca.s   V_8
      IL_07cd:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_07d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_07d8:  endfinally
    }  // end handler
    IL_07d9:  ldarg.0
    IL_07da:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
    IL_07df:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_07e4:  stloc.s    V_8
    .try
    {
      IL_07e6:  br.s       IL_0823

      IL_07e8:  ldloca.s   V_8
      IL_07ea:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_07ef:  stloc.s    V_20
      IL_07f1:  ldarg.0
      IL_07f2:  ldloca.s   V_20
      IL_07f4:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_07f9:  ldfld      int32 [Engine]Engine.Point3::X
      IL_07fe:  ldloca.s   V_20
      IL_0800:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0805:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_080a:  ldloca.s   V_20
      IL_080c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0811:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0816:  ldloca.s   V_20
      IL_0818:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_081d:  call       instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_0822:  pop
      IL_0823:  ldloca.s   V_8
      IL_0825:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_082a:  brtrue.s   IL_07e8

      IL_082c:  leave.s    IL_083c

    }  // end .try
    finally
    {
      IL_082e:  ldloca.s   V_8
      IL_0830:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0836:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_083b:  endfinally
    }  // end handler
    IL_083c:  ldarg.0
    IL_083d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_0842:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Clear()
    IL_0847:  ldarg.0
    IL_0848:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
    IL_084d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Clear()
    IL_0852:  ldarg.0
    IL_0853:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemFireBlockBehavior::m_subsystemAmbientSounds
    IL_0858:  ldarg.0
    IL_0859:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemFireBlockBehavior::m_subsystemAmbientSounds
    IL_085e:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_0863:  ldarg.0
    IL_0864:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundVolume
    IL_0869:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_086e:  callvirt   instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_0873:  ret
  } // end of method SubsystemFireBlockBehavior::Update

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   104
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemFireBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       473 (0x1d9)
    .maxstack  6
    .locals init (int32 V_0,
             class Game.SubsystemFireBlockBehavior/FireData V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.1
    IL_001b:  and
    IL_001c:  brfalse.s  IL_004a

    IL_001e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0023:  ldarg.0
    IL_0024:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0029:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_002e:  ldarg.1
    IL_002f:  ldarg.2
    IL_0030:  ldarg.3
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0038:  ldelem.ref
    IL_0039:  ldfld      float32 Game.Block::FireDuration
    IL_003e:  ldc.r4     0.0
    IL_0043:  bne.un.s   IL_004a

    IL_0045:  ldloc.0
    IL_0046:  ldc.i4.s   -2
    IL_0048:  and
    IL_0049:  stloc.0
    IL_004a:  ldloc.0
    IL_004b:  ldc.i4.2
    IL_004c:  and
    IL_004d:  brfalse.s  IL_007b

    IL_004f:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0054:  ldarg.0
    IL_0055:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_005a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005f:  ldarg.1
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  ldarg.2
    IL_0063:  ldarg.3
    IL_0064:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0069:  ldelem.ref
    IL_006a:  ldfld      float32 Game.Block::FireDuration
    IL_006f:  ldc.r4     0.0
    IL_0074:  bne.un.s   IL_007b

    IL_0076:  ldloc.0
    IL_0077:  ldc.i4.s   -3
    IL_0079:  and
    IL_007a:  stloc.0
    IL_007b:  ldloc.0
    IL_007c:  ldc.i4.4
    IL_007d:  and
    IL_007e:  brfalse.s  IL_00ac

    IL_0080:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0085:  ldarg.0
    IL_0086:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_008b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0090:  ldarg.1
    IL_0091:  ldarg.2
    IL_0092:  ldarg.3
    IL_0093:  ldc.i4.1
    IL_0094:  sub
    IL_0095:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_009a:  ldelem.ref
    IL_009b:  ldfld      float32 Game.Block::FireDuration
    IL_00a0:  ldc.r4     0.0
    IL_00a5:  bne.un.s   IL_00ac

    IL_00a7:  ldloc.0
    IL_00a8:  ldc.i4.s   -5
    IL_00aa:  and
    IL_00ab:  stloc.0
    IL_00ac:  ldloc.0
    IL_00ad:  ldc.i4.8
    IL_00ae:  and
    IL_00af:  brfalse.s  IL_00dd

    IL_00b1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00b6:  ldarg.0
    IL_00b7:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00bc:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00c1:  ldarg.1
    IL_00c2:  ldc.i4.1
    IL_00c3:  sub
    IL_00c4:  ldarg.2
    IL_00c5:  ldarg.3
    IL_00c6:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00cb:  ldelem.ref
    IL_00cc:  ldfld      float32 Game.Block::FireDuration
    IL_00d1:  ldc.r4     0.0
    IL_00d6:  bne.un.s   IL_00dd

    IL_00d8:  ldloc.0
    IL_00d9:  ldc.i4.s   -9
    IL_00db:  and
    IL_00dc:  stloc.0
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_00e3:  ldarg.1
    IL_00e4:  ldarg.2
    IL_00e5:  ldarg.3
    IL_00e6:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00eb:  ldloca.s   V_1
    IL_00ed:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::TryGetValue(!0,
                                                                                                                                                                                                      !1&)
    IL_00f2:  brfalse    IL_018b

    IL_00f7:  ldloc.0
    IL_00f8:  ldc.i4.1
    IL_00f9:  and
    IL_00fa:  brfalse.s  IL_0115

    IL_00fc:  ldarg.s    neighborX
    IL_00fe:  ldarg.1
    IL_00ff:  bne.un.s   IL_0115

    IL_0101:  ldarg.s    neighborY
    IL_0103:  ldarg.2
    IL_0104:  bne.un.s   IL_0115

    IL_0106:  ldarg.s    neighborZ
    IL_0108:  ldarg.3
    IL_0109:  ldc.i4.1
    IL_010a:  add
    IL_010b:  bne.un.s   IL_0115

    IL_010d:  ldarg.0
    IL_010e:  ldloc.1
    IL_010f:  ldc.i4.0
    IL_0110:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0115:  ldloc.0
    IL_0116:  ldc.i4.2
    IL_0117:  and
    IL_0118:  brfalse.s  IL_0133

    IL_011a:  ldarg.s    neighborX
    IL_011c:  ldarg.1
    IL_011d:  ldc.i4.1
    IL_011e:  add
    IL_011f:  bne.un.s   IL_0133

    IL_0121:  ldarg.s    neighborY
    IL_0123:  ldarg.2
    IL_0124:  bne.un.s   IL_0133

    IL_0126:  ldarg.s    neighborZ
    IL_0128:  ldarg.3
    IL_0129:  bne.un.s   IL_0133

    IL_012b:  ldarg.0
    IL_012c:  ldloc.1
    IL_012d:  ldc.i4.1
    IL_012e:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0133:  ldloc.0
    IL_0134:  ldc.i4.4
    IL_0135:  and
    IL_0136:  brfalse.s  IL_0151

    IL_0138:  ldarg.s    neighborX
    IL_013a:  ldarg.1
    IL_013b:  bne.un.s   IL_0151

    IL_013d:  ldarg.s    neighborY
    IL_013f:  ldarg.2
    IL_0140:  bne.un.s   IL_0151

    IL_0142:  ldarg.s    neighborZ
    IL_0144:  ldarg.3
    IL_0145:  ldc.i4.1
    IL_0146:  sub
    IL_0147:  bne.un.s   IL_0151

    IL_0149:  ldarg.0
    IL_014a:  ldloc.1
    IL_014b:  ldc.i4.2
    IL_014c:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0151:  ldloc.0
    IL_0152:  ldc.i4.8
    IL_0153:  and
    IL_0154:  brfalse.s  IL_016f

    IL_0156:  ldarg.s    neighborX
    IL_0158:  ldarg.1
    IL_0159:  ldc.i4.1
    IL_015a:  sub
    IL_015b:  bne.un.s   IL_016f

    IL_015d:  ldarg.s    neighborY
    IL_015f:  ldarg.2
    IL_0160:  bne.un.s   IL_016f

    IL_0162:  ldarg.s    neighborZ
    IL_0164:  ldarg.3
    IL_0165:  bne.un.s   IL_016f

    IL_0167:  ldarg.0
    IL_0168:  ldloc.1
    IL_0169:  ldc.i4.3
    IL_016a:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_016f:  ldloc.0
    IL_0170:  brtrue.s   IL_018b

    IL_0172:  ldarg.s    neighborX
    IL_0174:  ldarg.1
    IL_0175:  bne.un.s   IL_018b

    IL_0177:  ldarg.s    neighborY
    IL_0179:  ldarg.2
    IL_017a:  ldc.i4.1
    IL_017b:  sub
    IL_017c:  bne.un.s   IL_018b

    IL_017e:  ldarg.s    neighborZ
    IL_0180:  ldarg.3
    IL_0181:  bne.un.s   IL_018b

    IL_0183:  ldarg.0
    IL_0184:  ldloc.1
    IL_0185:  ldc.i4.5
    IL_0186:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_018b:  ldc.i4.s   104
    IL_018d:  stloc.2
    IL_018e:  ldloc.0
    IL_018f:  brtrue.s   IL_01ba

    IL_0191:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0196:  ldarg.0
    IL_0197:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_019c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_01a1:  ldarg.1
    IL_01a2:  ldarg.2
    IL_01a3:  ldc.i4.1
    IL_01a4:  sub
    IL_01a5:  ldarg.3
    IL_01a6:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_01ab:  ldelem.ref
    IL_01ac:  ldfld      float32 Game.Block::FireDuration
    IL_01b1:  ldc.r4     0.0
    IL_01b6:  bne.un.s   IL_01ba

    IL_01b8:  ldc.i4.0
    IL_01b9:  stloc.2
    IL_01ba:  ldc.i4.0
    IL_01bb:  ldloc.2
    IL_01bc:  call       int32 Game.TerrainData::ReplaceContents(int32,
                                                                 int32)
    IL_01c1:  ldloc.0
    IL_01c2:  call       int32 Game.TerrainData::ReplaceData(int32,
                                                             int32)
    IL_01c7:  stloc.3
    IL_01c8:  ldarg.0
    IL_01c9:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_01ce:  ldarg.1
    IL_01cf:  ldarg.2
    IL_01d0:  ldarg.3
    IL_01d1:  ldloc.3
    IL_01d2:  ldc.i4.1
    IL_01d3:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_01d8:  ret
  } // end of method SubsystemFireBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
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
    IL_0006:  ldc.r4     1.
    IL_000b:  call       instance void Game.SubsystemFireBlockBehavior::AddFire(int32,
                                                                                int32,
                                                                                int32,
                                                                                float32)
    IL_0010:  ret
  } // end of method SubsystemFireBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemFireBlockBehavior::RemoveFire(int32,
                                                                                   int32,
                                                                                   int32)
    IL_000b:  ret
  } // end of method SubsystemFireBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    z
    IL_0005:  ldc.r4     1.
    IL_000a:  call       instance void Game.SubsystemFireBlockBehavior::AddFire(int32,
                                                                                int32,
                                                                                int32,
                                                                                float32)
    IL_000f:  ret
  } // end of method SubsystemFireBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00c0

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ad:  ldloc.s    V_4
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b4:  ldloc.s    V_4
      IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00bb:  call       instance void Game.SubsystemFireBlockBehavior::RemoveFire(int32,
                                                                                     int32,
                                                                                     int32)
      IL_00c0:  ldloca.s   V_3
      IL_00c2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00c7:  brtrue.s   IL_009c

      IL_00c9:  leave.s    IL_00d9

    }  // end .try
    finally
    {
      IL_00cb:  ldloca.s   V_3
      IL_00cd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d8:  endfinally
    }  // end handler
    IL_00d9:  ret
  } // end of method SubsystemFireBlockBehavior::OnChunkDiscarding

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       255 (0xff)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0014:  stfld      class Game.SubsystemTime Game.SubsystemFireBlockBehavior::m_subsystemTime
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0026:  stfld      class Game.SubsystemParticles Game.SubsystemFireBlockBehavior::m_subsystemParticles
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0038:  stfld      class Game.SubsystemDrawing Game.SubsystemFireBlockBehavior::m_subsystemDrawing
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_004a:  stfld      class Game.SubsystemAudio Game.SubsystemFireBlockBehavior::m_subsystemAudio
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAmbientSounds>(bool)
    IL_005c:  stfld      class Game.SubsystemAmbientSounds Game.SubsystemFireBlockBehavior::m_subsystemAmbientSounds
    IL_0061:  ldc.i4.s   -2
    IL_0063:  stloc.0
    IL_0064:  br         IL_00f7

    IL_0069:  ldc.i4.m1
    IL_006a:  stloc.1
    IL_006b:  br.s       IL_00ec

    IL_006d:  ldc.i4.s   -2
    IL_006f:  stloc.2
    IL_0070:  br.s       IL_00e4

    IL_0072:  ldloc.0
    IL_0073:  brtrue.s   IL_007b

    IL_0075:  ldloc.1
    IL_0076:  brtrue.s   IL_007b

    IL_0078:  ldloc.2
    IL_0079:  brfalse.s  IL_00e0

    IL_007b:  ldloc.1
    IL_007c:  ldc.i4.0
    IL_007d:  blt.s      IL_0086

    IL_007f:  ldc.r4     2.5
    IL_0084:  br.s       IL_008b

    IL_0086:  ldc.r4     1.5
    IL_008b:  stloc.3
    IL_008c:  ldloc.0
    IL_008d:  ldloc.0
    IL_008e:  mul
    IL_008f:  ldloc.1
    IL_0090:  ldloc.1
    IL_0091:  mul
    IL_0092:  add
    IL_0093:  ldloc.2
    IL_0094:  ldloc.2
    IL_0095:  mul
    IL_0096:  add
    IL_0097:  conv.r4
    IL_0098:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_009d:  ldloc.3
    IL_009e:  bgt.un.s   IL_00e0

    IL_00a0:  ldloc.0
    IL_00a1:  ldloc.0
    IL_00a2:  mul
    IL_00a3:  ldloc.2
    IL_00a4:  ldloc.2
    IL_00a5:  mul
    IL_00a6:  add
    IL_00a7:  conv.r4
    IL_00a8:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_00ad:  stloc.s    V_4
    IL_00af:  ldloc.1
    IL_00b0:  ldc.i4.0
    IL_00b1:  bgt.s      IL_00b8

    IL_00b3:  ldloc.1
    IL_00b4:  neg
    IL_00b5:  conv.r4
    IL_00b6:  br.s       IL_00c0

    IL_00b8:  ldc.r4     0.5
    IL_00bd:  ldloc.1
    IL_00be:  conv.r4
    IL_00bf:  mul
    IL_00c0:  stloc.s    V_5
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_00c8:  ldloc.0
    IL_00c9:  ldloc.1
    IL_00ca:  ldloc.2
    IL_00cb:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_00d0:  ldc.r4     2.e-002
    IL_00d5:  ldloc.s    V_4
    IL_00d7:  ldloc.s    V_5
    IL_00d9:  add
    IL_00da:  div
    IL_00db:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                            !1)
    IL_00e0:  ldloc.2
    IL_00e1:  ldc.i4.1
    IL_00e2:  add
    IL_00e3:  stloc.2
    IL_00e4:  ldloc.2
    IL_00e5:  ldc.i4.2
    IL_00e6:  ble.s      IL_0072

    IL_00e8:  ldloc.1
    IL_00e9:  ldc.i4.1
    IL_00ea:  add
    IL_00eb:  stloc.1
    IL_00ec:  ldloc.1
    IL_00ed:  ldc.i4.2
    IL_00ee:  ble        IL_006d

    IL_00f3:  ldloc.0
    IL_00f4:  ldc.i4.1
    IL_00f5:  add
    IL_00f6:  stloc.0
    IL_00f7:  ldloc.0
    IL_00f8:  ldc.i4.2
    IL_00f9:  ble        IL_0069

    IL_00fe:  ret
  } // end of method SubsystemFireBlockBehavior::Load

  .method private hidebysig instance void 
          AddFire(int32 x,
                  int32 y,
                  int32 z,
                  float32 expandability) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.SubsystemFireBlockBehavior/FireData V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::ContainsKey(!0)
    IL_0016:  brtrue.s   IL_0041

    IL_0018:  newobj     instance void Game.SubsystemFireBlockBehavior/FireData::.ctor()
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  ldloc.0
    IL_0020:  stfld      valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_0025:  ldloc.1
    IL_0026:  ldarg.s    expandability
    IL_0028:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_002d:  ldarg.0
    IL_002e:  ldloc.1
    IL_002f:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTimes(class Game.SubsystemFireBlockBehavior/FireData)
    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_003a:  ldloc.0
    IL_003b:  ldloc.1
    IL_003c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::set_Item(!0,
                                                                                                                                                                                                   !1)
    IL_0041:  ret
  } // end of method SubsystemFireBlockBehavior::AddFire

  .method private hidebysig instance void 
          RemoveFire(int32 x,
                     int32 y,
                     int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::Remove(!0)
    IL_0016:  pop
    IL_0017:  ret
  } // end of method SubsystemFireBlockBehavior::RemoveFire

  .method private hidebysig instance void 
          InitializeFireDataTimes(class Game.SubsystemFireBlockBehavior/FireData fireData) cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldc.i4.0
    IL_0003:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  ldc.i4.1
    IL_000b:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0010:  ldarg.0
    IL_0011:  ldarg.1
    IL_0012:  ldc.i4.2
    IL_0013:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0018:  ldarg.0
    IL_0019:  ldarg.1
    IL_001a:  ldc.i4.3
    IL_001b:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0020:  ldarg.0
    IL_0021:  ldarg.1
    IL_0022:  ldc.i4.5
    IL_0023:  call       instance void Game.SubsystemFireBlockBehavior::InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData,
                                                                                               int32)
    IL_0028:  ret
  } // end of method SubsystemFireBlockBehavior::InitializeFireDataTimes

  .method private hidebysig instance void 
          InitializeFireDataTime(class Game.SubsystemFireBlockBehavior/FireData fireData,
                                 int32 face) cil managed
  {
    // 代码大小       306 (0x132)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class Game.Block V_5)
    IL_0000:  ldarg.2
    IL_0001:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_000d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0012:  ldloc.0
    IL_0013:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0018:  add
    IL_0019:  stloc.1
    IL_001a:  ldarg.1
    IL_001b:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_0020:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0025:  ldloc.0
    IL_0026:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_002b:  add
    IL_002c:  stloc.2
    IL_002d:  ldarg.1
    IL_002e:  ldflda     valuetype [Engine]Engine.Point3 Game.SubsystemFireBlockBehavior/FireData::Point
    IL_0033:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003e:  add
    IL_003f:  stloc.3
    IL_0040:  ldarg.0
    IL_0041:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0046:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_004b:  ldloc.1
    IL_004c:  ldloc.2
    IL_004d:  ldloc.3
    IL_004e:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0053:  stloc.s    V_4
    IL_0055:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_005a:  ldloc.s    V_4
    IL_005c:  ldelem.ref
    IL_005d:  stloc.s    V_5
    IL_005f:  ldarg.2
    IL_0060:  switch     ( 
                          IL_007e,
                          IL_00a2,
                          IL_00c6,
                          IL_00ea,
                          IL_0131,
                          IL_010e)
    IL_007d:  ret

    IL_007e:  ldarg.1
    IL_007f:  ldloc.s    V_5
    IL_0081:  ldfld      float32 Game.Block::FireDuration
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_008c:  ldc.r4     0.75
    IL_0091:  ldc.r4     1.25
    IL_0096:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_009b:  mul
    IL_009c:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_00a1:  ret

    IL_00a2:  ldarg.1
    IL_00a3:  ldloc.s    V_5
    IL_00a5:  ldfld      float32 Game.Block::FireDuration
    IL_00aa:  ldarg.0
    IL_00ab:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_00b0:  ldc.r4     0.75
    IL_00b5:  ldc.r4     1.25
    IL_00ba:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00bf:  mul
    IL_00c0:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_00c5:  ret

    IL_00c6:  ldarg.1
    IL_00c7:  ldloc.s    V_5
    IL_00c9:  ldfld      float32 Game.Block::FireDuration
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_00d4:  ldc.r4     0.75
    IL_00d9:  ldc.r4     1.25
    IL_00de:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00e3:  mul
    IL_00e4:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_00e9:  ret

    IL_00ea:  ldarg.1
    IL_00eb:  ldloc.s    V_5
    IL_00ed:  ldfld      float32 Game.Block::FireDuration
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_00f8:  ldc.r4     0.75
    IL_00fd:  ldc.r4     1.25
    IL_0102:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0107:  mul
    IL_0108:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_010d:  ret

    IL_010e:  ldarg.1
    IL_010f:  ldloc.s    V_5
    IL_0111:  ldfld      float32 Game.Block::FireDuration
    IL_0116:  ldarg.0
    IL_0117:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_011c:  ldc.r4     0.75
    IL_0121:  ldc.r4     1.25
    IL_0126:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_012b:  mul
    IL_012c:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0131:  ret
  } // end of method SubsystemFireBlockBehavior::InitializeFireDataTime

  .method private hidebysig instance void 
          QueueBurnAway(int32 x,
                        int32 y,
                        int32 z,
                        float32 expandability) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::ContainsKey(!0)
    IL_0016:  brtrue.s   IL_0026

    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_001e:  ldloc.0
    IL_001f:  ldarg.s    expandability
    IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Add(!0,
                                                                                                                                                       !1)
    IL_0026:  ret
  } // end of method SubsystemFireBlockBehavior::QueueBurnAway

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemFireBlockBehavior/FireData> Game.SubsystemFireBlockBehavior::m_fireData
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_002c:  ldarg.0
    IL_002d:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::.ctor()
    IL_0032:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
    IL_0037:  ldarg.0
    IL_0038:  newobj     instance void Game.Random::.ctor()
    IL_003d:  stfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
    IL_0042:  ldarg.0
    IL_0043:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0048:  ret
  } // end of method SubsystemFireBlockBehavior::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemFireBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemFireBlockBehavior::UpdateOrder
  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFireBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFireBlockBehavior::HandledBlocks
} // end of class Game.SubsystemFireBlockBehavior