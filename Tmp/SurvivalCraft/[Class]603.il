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
  .field private class Game.SubsystemViews m_subsystemViews
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
    IL_0011:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
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
    IL_002e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0033:  stloc.3
    IL_0034:  ldloc.3
    IL_0035:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_003a:  ldc.i4.s   104
    IL_003c:  bne.un.s   IL_0058

    IL_003e:  ldloc.3
    IL_003f:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_0066:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_006b:  ldarg.1
    IL_006c:  ldarg.2
    IL_006d:  ldc.i4.1
    IL_006e:  add
    IL_006f:  ldarg.3
    IL_0070:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0075:  stloc.0
    IL_0076:  ldloc.0
    IL_0077:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_007c:  ldc.i4.s   104
    IL_007e:  bne.un.s   IL_008a

    IL_0080:  ldloc.0
    IL_0081:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0047:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
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
    IL_0067:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_006c:  stloc.s    V_5
    IL_006e:  ldloc.s    V_5
    IL_0070:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0095:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_00b6:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_00bb:  ldloc.s    V_7
    IL_00bd:  call       int32 Game.Terrain::ReplaceData(int32,
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
    // 代码大小       2090 (0x82a)
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
             float32 V_18,
             int32 V_19,
             valuetype [Engine]Engine.Point3 V_20,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_21)
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
    IL_009e:  ble        IL_05e9

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
    IL_00ef:  br         IL_05a2

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
    IL_0117:  brfalse    IL_0594

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
    IL_0149:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_014e:  ldloc.s    V_4
    IL_0150:  ldloc.s    V_5
    IL_0152:  ldloc.s    V_6
    IL_0154:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0159:  call       int32 Game.Terrain::ExtractData(int32)
    IL_015e:  stloc.s    V_7
    IL_0160:  ldarg.0
    IL_0161:  ldarg.0
    IL_0162:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_0167:  ldc.r4     1.
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.SubsystemAudio Game.SubsystemFireBlockBehavior::m_subsystemAudio
    IL_0172:  ldloc.s    V_4
    IL_0174:  conv.r4
    IL_0175:  ldloc.s    V_5
    IL_0177:  conv.r4
    IL_0178:  ldloc.s    V_6
    IL_017a:  conv.r4
    IL_017b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0180:  callvirt   instance float32 Game.SubsystemAudio::CalculateListenerDistanceSquared(valuetype [Engine]Engine.Vector3)
    IL_0185:  ldc.r4     9.9999998e-003
    IL_018a:  add
    IL_018b:  div
    IL_018c:  add
    IL_018d:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_0192:  ldloc.s    V_7
    IL_0194:  ldc.i4.1
    IL_0195:  and
    IL_0196:  brfalse    IL_0283

    IL_019b:  ldloc.3
    IL_019c:  dup
    IL_019d:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01a2:  ldarg.0
    IL_01a3:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_01a8:  sub
    IL_01a9:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01ae:  ldloc.3
    IL_01af:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time0
    IL_01b4:  ldc.r4     0.0
    IL_01b9:  bgt.un.s   IL_01d5

    IL_01bb:  ldarg.0
    IL_01bc:  ldloc.s    V_4
    IL_01be:  ldloc.s    V_5
    IL_01c0:  ldloc.s    V_6
    IL_01c2:  ldc.i4.1
    IL_01c3:  add
    IL_01c4:  ldloc.3
    IL_01c5:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_01ca:  ldc.r4     0.85000002
    IL_01cf:  mul
    IL_01d0:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_01d5:  ldarg.0
    IL_01d6:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_01db:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_01e0:  stloc.s    V_8
    .try
    {
      IL_01e2:  br         IL_0267

      IL_01e7:  ldloca.s   V_8
      IL_01e9:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_01ee:  stloc.s    V_9
      IL_01f0:  ldarg.0
      IL_01f1:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_01f6:  ldc.r4     0.0
      IL_01fb:  ldc.r4     1.
      IL_0200:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0205:  ldloca.s   V_9
      IL_0207:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_020c:  ldarg.0
      IL_020d:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_0212:  mul
      IL_0213:  ldloc.3
      IL_0214:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_0219:  mul
      IL_021a:  bge.un.s   IL_0267

      IL_021c:  ldarg.0
      IL_021d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0222:  ldloc.s    V_4
      IL_0224:  ldloca.s   V_9
      IL_0226:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_022b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0230:  add
      IL_0231:  ldloc.s    V_5
      IL_0233:  ldloca.s   V_9
      IL_0235:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_023a:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_023f:  add
      IL_0240:  ldloc.s    V_6
      IL_0242:  ldc.i4.1
      IL_0243:  add
      IL_0244:  ldloca.s   V_9
      IL_0246:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_024b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0250:  add
      IL_0251:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_0256:  ldloc.3
      IL_0257:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_025c:  ldc.r4     0.85000002
      IL_0261:  mul
      IL_0262:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_0267:  ldloca.s   V_8
      IL_0269:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_026e:  brtrue     IL_01e7

      IL_0273:  leave.s    IL_0283

    }  // end .try
    finally
    {
      IL_0275:  ldloca.s   V_8
      IL_0277:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_027d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0282:  endfinally
    }  // end handler
    IL_0283:  ldloc.s    V_7
    IL_0285:  ldc.i4.2
    IL_0286:  and
    IL_0287:  brfalse    IL_0374

    IL_028c:  ldloc.3
    IL_028d:  dup
    IL_028e:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_0293:  ldarg.0
    IL_0294:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_0299:  sub
    IL_029a:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_029f:  ldloc.3
    IL_02a0:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time1
    IL_02a5:  ldc.r4     0.0
    IL_02aa:  bgt.un.s   IL_02c6

    IL_02ac:  ldarg.0
    IL_02ad:  ldloc.s    V_4
    IL_02af:  ldc.i4.1
    IL_02b0:  add
    IL_02b1:  ldloc.s    V_5
    IL_02b3:  ldloc.s    V_6
    IL_02b5:  ldloc.3
    IL_02b6:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_02bb:  ldc.r4     0.85000002
    IL_02c0:  mul
    IL_02c1:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_02c6:  ldarg.0
    IL_02c7:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_02cc:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_02d1:  stloc.s    V_8
    .try
    {
      IL_02d3:  br         IL_0358

      IL_02d8:  ldloca.s   V_8
      IL_02da:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_02df:  stloc.s    V_10
      IL_02e1:  ldarg.0
      IL_02e2:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_02e7:  ldc.r4     0.0
      IL_02ec:  ldc.r4     1.
      IL_02f1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_02f6:  ldloca.s   V_10
      IL_02f8:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_02fd:  ldarg.0
      IL_02fe:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_0303:  mul
      IL_0304:  ldloc.3
      IL_0305:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_030a:  mul
      IL_030b:  bge.un.s   IL_0358

      IL_030d:  ldarg.0
      IL_030e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0313:  ldloc.s    V_4
      IL_0315:  ldc.i4.1
      IL_0316:  add
      IL_0317:  ldloca.s   V_10
      IL_0319:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_031e:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0323:  add
      IL_0324:  ldloc.s    V_5
      IL_0326:  ldloca.s   V_10
      IL_0328:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_032d:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0332:  add
      IL_0333:  ldloc.s    V_6
      IL_0335:  ldloca.s   V_10
      IL_0337:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_033c:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0341:  add
      IL_0342:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_0347:  ldloc.3
      IL_0348:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_034d:  ldc.r4     0.85000002
      IL_0352:  mul
      IL_0353:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_0358:  ldloca.s   V_8
      IL_035a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_035f:  brtrue     IL_02d8

      IL_0364:  leave.s    IL_0374

    }  // end .try
    finally
    {
      IL_0366:  ldloca.s   V_8
      IL_0368:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_036e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0373:  endfinally
    }  // end handler
    IL_0374:  ldloc.s    V_7
    IL_0376:  ldc.i4.4
    IL_0377:  and
    IL_0378:  brfalse    IL_0465

    IL_037d:  ldloc.3
    IL_037e:  dup
    IL_037f:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_0384:  ldarg.0
    IL_0385:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_038a:  sub
    IL_038b:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_0390:  ldloc.3
    IL_0391:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time2
    IL_0396:  ldc.r4     0.0
    IL_039b:  bgt.un.s   IL_03b7

    IL_039d:  ldarg.0
    IL_039e:  ldloc.s    V_4
    IL_03a0:  ldloc.s    V_5
    IL_03a2:  ldloc.s    V_6
    IL_03a4:  ldc.i4.1
    IL_03a5:  sub
    IL_03a6:  ldloc.3
    IL_03a7:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_03ac:  ldc.r4     0.85000002
    IL_03b1:  mul
    IL_03b2:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_03b7:  ldarg.0
    IL_03b8:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_03bd:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_03c2:  stloc.s    V_8
    .try
    {
      IL_03c4:  br         IL_0449

      IL_03c9:  ldloca.s   V_8
      IL_03cb:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_03d0:  stloc.s    V_11
      IL_03d2:  ldarg.0
      IL_03d3:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_03d8:  ldc.r4     0.0
      IL_03dd:  ldc.r4     1.
      IL_03e2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_03e7:  ldloca.s   V_11
      IL_03e9:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_03ee:  ldarg.0
      IL_03ef:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_03f4:  mul
      IL_03f5:  ldloc.3
      IL_03f6:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_03fb:  mul
      IL_03fc:  bge.un.s   IL_0449

      IL_03fe:  ldarg.0
      IL_03ff:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_0404:  ldloc.s    V_4
      IL_0406:  ldloca.s   V_11
      IL_0408:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_040d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0412:  add
      IL_0413:  ldloc.s    V_5
      IL_0415:  ldloca.s   V_11
      IL_0417:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_041c:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0421:  add
      IL_0422:  ldloc.s    V_6
      IL_0424:  ldc.i4.1
      IL_0425:  sub
      IL_0426:  ldloca.s   V_11
      IL_0428:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_042d:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0432:  add
      IL_0433:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_0438:  ldloc.3
      IL_0439:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_043e:  ldc.r4     0.85000002
      IL_0443:  mul
      IL_0444:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_0449:  ldloca.s   V_8
      IL_044b:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0450:  brtrue     IL_03c9

      IL_0455:  leave.s    IL_0465

    }  // end .try
    finally
    {
      IL_0457:  ldloca.s   V_8
      IL_0459:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_045f:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0464:  endfinally
    }  // end handler
    IL_0465:  ldloc.s    V_7
    IL_0467:  ldc.i4.8
    IL_0468:  and
    IL_0469:  brfalse    IL_0556

    IL_046e:  ldloc.3
    IL_046f:  dup
    IL_0470:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_0475:  ldarg.0
    IL_0476:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_047b:  sub
    IL_047c:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_0481:  ldloc.3
    IL_0482:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time3
    IL_0487:  ldc.r4     0.0
    IL_048c:  bgt.un.s   IL_04a8

    IL_048e:  ldarg.0
    IL_048f:  ldloc.s    V_4
    IL_0491:  ldc.i4.1
    IL_0492:  sub
    IL_0493:  ldloc.s    V_5
    IL_0495:  ldloc.s    V_6
    IL_0497:  ldloc.3
    IL_0498:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_049d:  ldc.r4     0.85000002
    IL_04a2:  mul
    IL_04a3:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_04a8:  ldarg.0
    IL_04a9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_expansionProbabilities
    IL_04ae:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_04b3:  stloc.s    V_8
    .try
    {
      IL_04b5:  br         IL_053a

      IL_04ba:  ldloca.s   V_8
      IL_04bc:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_04c1:  stloc.s    V_12
      IL_04c3:  ldarg.0
      IL_04c4:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_04c9:  ldc.r4     0.0
      IL_04ce:  ldc.r4     1.
      IL_04d3:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_04d8:  ldloca.s   V_12
      IL_04da:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_04df:  ldarg.0
      IL_04e0:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
      IL_04e5:  mul
      IL_04e6:  ldloc.3
      IL_04e7:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_04ec:  mul
      IL_04ed:  bge.un.s   IL_053a

      IL_04ef:  ldarg.0
      IL_04f0:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
      IL_04f5:  ldloc.s    V_4
      IL_04f7:  ldc.i4.1
      IL_04f8:  sub
      IL_04f9:  ldloca.s   V_12
      IL_04fb:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0500:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0505:  add
      IL_0506:  ldloc.s    V_5
      IL_0508:  ldloca.s   V_12
      IL_050a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_050f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0514:  add
      IL_0515:  ldloc.s    V_6
      IL_0517:  ldloca.s   V_12
      IL_0519:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_051e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0523:  add
      IL_0524:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_0529:  ldloc.3
      IL_052a:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
      IL_052f:  ldc.r4     0.85000002
      IL_0534:  mul
      IL_0535:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::set_Item(!0,
                                                                                                                                                              !1)
      IL_053a:  ldloca.s   V_8
      IL_053c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0541:  brtrue     IL_04ba

      IL_0546:  leave.s    IL_0556

    }  // end .try
    finally
    {
      IL_0548:  ldloca.s   V_8
      IL_054a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0550:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0555:  endfinally
    }  // end handler
    IL_0556:  ldloc.s    V_7
    IL_0558:  brtrue.s   IL_0594

    IL_055a:  ldloc.3
    IL_055b:  dup
    IL_055c:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0561:  ldarg.0
    IL_0562:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_lastScanDuration
    IL_0567:  sub
    IL_0568:  stfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_056d:  ldloc.3
    IL_056e:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::Time5
    IL_0573:  ldc.r4     0.0
    IL_0578:  bgt.un.s   IL_0594

    IL_057a:  ldarg.0
    IL_057b:  ldloc.s    V_4
    IL_057d:  ldloc.s    V_5
    IL_057f:  ldc.i4.1
    IL_0580:  sub
    IL_0581:  ldloc.s    V_6
    IL_0583:  ldloc.3
    IL_0584:  ldfld      float32 Game.SubsystemFireBlockBehavior/FireData::FireExpandability
    IL_0589:  ldc.r4     0.85000002
    IL_058e:  mul
    IL_058f:  call       instance void Game.SubsystemFireBlockBehavior::QueueBurnAway(int32,
                                                                                      int32,
                                                                                      int32,
                                                                                      float32)
    IL_0594:  ldarg.0
    IL_0595:  ldarg.0
    IL_0596:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_059b:  ldc.i4.1
    IL_059c:  add
    IL_059d:  stfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05a2:  ldarg.0
    IL_05a3:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05a8:  ldloc.2
    IL_05a9:  blt        IL_00f4

    IL_05ae:  ldarg.0
    IL_05af:  ldfld      int32 Game.SubsystemFireBlockBehavior::m_copyIndex
    IL_05b4:  ldarg.0
    IL_05b5:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_05ba:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_05bf:  blt.s      IL_05e9

    IL_05c1:  ldarg.0
    IL_05c2:  ldc.r4     0.75
    IL_05c7:  ldarg.0
    IL_05c8:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_05cd:  mul
    IL_05ce:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundVolume
    IL_05d3:  ldarg.0
    IL_05d4:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3> Game.SubsystemFireBlockBehavior::m_firePointsCopy
    IL_05d9:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_05de:  ldarg.0
    IL_05df:  ldc.r4     0.0
    IL_05e4:  stfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundIntensity
    IL_05e9:  ldarg.0
    IL_05ea:  ldfld      class Game.SubsystemTime Game.SubsystemFireBlockBehavior::m_subsystemTime
    IL_05ef:  ldc.r8     5.
    IL_05f8:  ldc.r8     0.0
    IL_0601:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0606:  brfalse    IL_0808

    IL_060b:  ldc.i4.0
    IL_060c:  stloc.s    V_13
    IL_060e:  ldc.i4.0
    IL_060f:  stloc.s    V_14
    IL_0611:  ldarg.0
    IL_0612:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_0617:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_061c:  stloc.s    V_8
    .try
    {
      IL_061e:  br         IL_0773

      IL_0623:  ldloca.s   V_8
      IL_0625:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_062a:  stloc.s    V_15
      IL_062c:  ldloca.s   V_15
      IL_062e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0633:  stloc.s    V_16
      IL_0635:  ldloca.s   V_15
      IL_0637:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_063c:  stloc.s    V_17
      IL_063e:  ldarg.0
      IL_063f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0644:  ldloc.s    V_16
      IL_0646:  ldfld      int32 [Engine]Engine.Point3::X
      IL_064b:  ldloc.s    V_16
      IL_064d:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0652:  ldloc.s    V_16
      IL_0654:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0659:  ldc.i4.0
      IL_065a:  ldc.i4.0
      IL_065b:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                               int32)
      IL_0660:  ldc.i4.1
      IL_0661:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_0666:  ldloc.s    V_17
      IL_0668:  ldc.r4     0.25
      IL_066d:  ble.un.s   IL_06be

      IL_066f:  ldc.i4.0
      IL_0670:  stloc.s    V_19
      IL_0672:  br.s       IL_06b9

      IL_0674:  ldloc.s    V_19
      IL_0676:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
      IL_067b:  stloc.s    V_20
      IL_067d:  ldarg.0
      IL_067e:  ldloc.s    V_16
      IL_0680:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0685:  ldloc.s    V_20
      IL_0687:  ldfld      int32 [Engine]Engine.Point3::X
      IL_068c:  add
      IL_068d:  ldloc.s    V_16
      IL_068f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0694:  ldloc.s    V_20
      IL_0696:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_069b:  add
      IL_069c:  ldloc.s    V_16
      IL_069e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_06a3:  ldloc.s    V_20
      IL_06a5:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_06aa:  add
      IL_06ab:  ldloc.s    V_17
      IL_06ad:  call       instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_06b2:  pop
      IL_06b3:  ldloc.s    V_19
      IL_06b5:  ldc.i4.1
      IL_06b6:  add
      IL_06b7:  stloc.s    V_19
      IL_06b9:  ldloc.s    V_19
      IL_06bb:  ldc.i4.5
      IL_06bc:  blt.s      IL_0674

      IL_06be:  ldarg.0
      IL_06bf:  ldfld      class Game.SubsystemViews Game.SubsystemFireBlockBehavior::m_subsystemViews
      IL_06c4:  ldloc.s    V_16
      IL_06c6:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
      IL_06cb:  callvirt   instance float32 Game.SubsystemViews::CalculateDistanceFromNearestView(valuetype [Engine]Engine.Vector3)
      IL_06d0:  stloc.s    V_18
      IL_06d2:  ldloc.s    V_13
      IL_06d4:  ldc.i4.s   15
      IL_06d6:  bge.s      IL_0712

      IL_06d8:  ldloc.s    V_18
      IL_06da:  ldc.r4     24.
      IL_06df:  bge.un.s   IL_0712

      IL_06e1:  ldarg.0
      IL_06e2:  ldfld      class Game.SubsystemParticles Game.SubsystemFireBlockBehavior::m_subsystemParticles
      IL_06e7:  ldarg.0
      IL_06e8:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_06ed:  ldloc.s    V_16
      IL_06ef:  ldfld      int32 [Engine]Engine.Point3::X
      IL_06f4:  ldloc.s    V_16
      IL_06f6:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_06fb:  ldloc.s    V_16
      IL_06fd:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0702:  newobj     instance void Game.BurntDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               int32,
                                                                               int32,
                                                                               int32)
      IL_0707:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_070c:  ldloc.s    V_13
      IL_070e:  ldc.i4.1
      IL_070f:  add
      IL_0710:  stloc.s    V_13
      IL_0712:  ldloc.s    V_14
      IL_0714:  ldc.i4.4
      IL_0715:  bge.s      IL_0773

      IL_0717:  ldloc.s    V_18
      IL_0719:  ldc.r4     16.
      IL_071e:  bge.un.s   IL_0773

      IL_0720:  ldarg.0
      IL_0721:  ldfld      class Game.SubsystemAudio Game.SubsystemFireBlockBehavior::m_subsystemAudio
      IL_0726:  ldstr      "Audio/Sizzles"
      IL_072b:  ldc.r4     1.
      IL_0730:  ldarg.0
      IL_0731:  ldfld      class Game.Random Game.SubsystemFireBlockBehavior::m_random
      IL_0736:  ldc.r4     -0.25
      IL_073b:  ldc.r4     0.25
      IL_0740:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0745:  ldloc.s    V_16
      IL_0747:  ldfld      int32 [Engine]Engine.Point3::X
      IL_074c:  conv.r4
      IL_074d:  ldloc.s    V_16
      IL_074f:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0754:  conv.r4
      IL_0755:  ldloc.s    V_16
      IL_0757:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_075c:  conv.r4
      IL_075d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0762:  ldc.r4     3.
      IL_0767:  ldc.i4.1
      IL_0768:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Vector3,
                                                                              float32,
                                                                              bool)
      IL_076d:  ldloc.s    V_14
      IL_076f:  ldc.i4.1
      IL_0770:  add
      IL_0771:  stloc.s    V_14
      IL_0773:  ldloca.s   V_8
      IL_0775:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_077a:  brtrue     IL_0623

      IL_077f:  leave.s    IL_078f

    }  // end .try
    finally
    {
      IL_0781:  ldloca.s   V_8
      IL_0783:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0789:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_078e:  endfinally
    }  // end handler
    IL_078f:  ldarg.0
    IL_0790:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
    IL_0795:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_079a:  stloc.s    V_8
    .try
    {
      IL_079c:  br.s       IL_07d9

      IL_079e:  ldloca.s   V_8
      IL_07a0:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_07a5:  stloc.s    V_21
      IL_07a7:  ldarg.0
      IL_07a8:  ldloca.s   V_21
      IL_07aa:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_07af:  ldfld      int32 [Engine]Engine.Point3::X
      IL_07b4:  ldloca.s   V_21
      IL_07b6:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_07bb:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_07c0:  ldloca.s   V_21
      IL_07c2:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_07c7:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_07cc:  ldloca.s   V_21
      IL_07ce:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_07d3:  call       instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_07d8:  pop
      IL_07d9:  ldloca.s   V_8
      IL_07db:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_07e0:  brtrue.s   IL_079e

      IL_07e2:  leave.s    IL_07f2

    }  // end .try
    finally
    {
      IL_07e4:  ldloca.s   V_8
      IL_07e6:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_07ec:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_07f1:  endfinally
    }  // end handler
    IL_07f2:  ldarg.0
    IL_07f3:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toBurnAway
    IL_07f8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Clear()
    IL_07fd:  ldarg.0
    IL_07fe:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32> Game.SubsystemFireBlockBehavior::m_toExpand
    IL_0803:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::Clear()
    IL_0808:  ldarg.0
    IL_0809:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemFireBlockBehavior::m_subsystemAmbientSounds
    IL_080e:  ldarg.0
    IL_080f:  ldfld      class Game.SubsystemAmbientSounds Game.SubsystemFireBlockBehavior::m_subsystemAmbientSounds
    IL_0814:  callvirt   instance float32 Game.SubsystemAmbientSounds::get_FireSoundVolume()
    IL_0819:  ldarg.0
    IL_081a:  ldfld      float32 Game.SubsystemFireBlockBehavior::m_fireSoundVolume
    IL_081f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0824:  callvirt   instance void Game.SubsystemAmbientSounds::set_FireSoundVolume(float32)
    IL_0829:  ret
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
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0013:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.1
    IL_001b:  and
    IL_001c:  brfalse.s  IL_004a

    IL_001e:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0023:  ldarg.0
    IL_0024:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0029:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002e:  ldarg.1
    IL_002f:  ldarg.2
    IL_0030:  ldarg.3
    IL_0031:  ldc.i4.1
    IL_0032:  add
    IL_0033:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    IL_005a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_005f:  ldarg.1
    IL_0060:  ldc.i4.1
    IL_0061:  add
    IL_0062:  ldarg.2
    IL_0063:  ldarg.3
    IL_0064:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    IL_008b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0090:  ldarg.1
    IL_0091:  ldarg.2
    IL_0092:  ldarg.3
    IL_0093:  ldc.i4.1
    IL_0094:  sub
    IL_0095:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    IL_00bc:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_00c1:  ldarg.1
    IL_00c2:  ldc.i4.1
    IL_00c3:  sub
    IL_00c4:  ldarg.2
    IL_00c5:  ldarg.3
    IL_00c6:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    IL_019c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_01a1:  ldarg.1
    IL_01a2:  ldarg.2
    IL_01a3:  ldc.i4.1
    IL_01a4:  sub
    IL_01a5:  ldarg.3
    IL_01a6:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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
    IL_01bc:  call       int32 Game.Terrain::ReplaceContents(int32,
                                                             int32)
    IL_01c1:  ldloc.0
    IL_01c2:  call       int32 Game.Terrain::ReplaceData(int32,
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
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemViews>(bool)
    IL_0038:  stfld      class Game.SubsystemViews Game.SubsystemFireBlockBehavior::m_subsystemViews
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
    IL_0046:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_004b:  ldloc.1
    IL_004c:  ldloc.2
    IL_004d:  ldloc.3
    IL_004e:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
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