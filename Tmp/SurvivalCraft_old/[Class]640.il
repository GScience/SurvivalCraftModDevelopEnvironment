.class public auto ansi beforefieldinit Game.SubsystemStairsBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemStairsBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.Block,bool> '<>9__0_0'
    .field public static class [System.Runtime]System.Func`2<class Game.Block,int32> '<>9__0_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemStairsBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemStairsBlockBehavior/'<>c' Game.SubsystemStairsBlockBehavior/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance bool 
            '<.ctor>b__0_0'(class Game.Block b) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.StairsBlock
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<.ctor>b__0_0'

    .method assembly hidebysig instance int32 
            '<.ctor>b__0_1'(class Game.Block b) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      int32 Game.Block::BlockIndex
      IL_0006:  ret
    } // end of method '<>c'::'<.ctor>b__0_1'

  } // end of class '<>c'

  .field private int32[] m_handledBlocks
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0012:  ldsfld     class [System.Runtime]System.Func`2<class Game.Block,bool> Game.SubsystemStairsBlockBehavior/'<>c'::'<>9__0_0'
    IL_0017:  dup
    IL_0018:  brtrue.s   IL_0031

    IL_001a:  pop
    IL_001b:  ldsfld     class Game.SubsystemStairsBlockBehavior/'<>c' Game.SubsystemStairsBlockBehavior/'<>c'::'<>9'
    IL_0020:  ldftn      instance bool Game.SubsystemStairsBlockBehavior/'<>c'::'<.ctor>b__0_0'(class Game.Block)
    IL_0026:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,bool>::.ctor(object,
                                                                                                         native int)
    IL_002b:  dup
    IL_002c:  stsfld     class [System.Runtime]System.Func`2<class Game.Block,bool> Game.SubsystemStairsBlockBehavior/'<>c'::'<>9__0_0'
    IL_0031:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0036:  ldsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.SubsystemStairsBlockBehavior/'<>c'::'<>9__0_1'
    IL_003b:  dup
    IL_003c:  brtrue.s   IL_0055

    IL_003e:  pop
    IL_003f:  ldsfld     class Game.SubsystemStairsBlockBehavior/'<>c' Game.SubsystemStairsBlockBehavior/'<>c'::'<>9'
    IL_0044:  ldftn      instance int32 Game.SubsystemStairsBlockBehavior/'<>c'::'<.ctor>b__0_1'(class Game.Block)
    IL_004a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.Block,int32>::.ctor(object,
                                                                                                          native int)
    IL_004f:  dup
    IL_0050:  stsfld     class [System.Runtime]System.Func`2<class Game.Block,int32> Game.SubsystemStairsBlockBehavior/'<>c'::'<>9__0_1'
    IL_0055:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.Block,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                 class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_005a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_005f:  ldarg.0
    IL_0060:  ldloc.0
    IL_0061:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0066:  stfld      int32[] Game.SubsystemStairsBlockBehavior::m_handledBlocks
    IL_006b:  ret
  } // end of method SubsystemStairsBlockBehavior::.ctor

  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.SubsystemStairsBlockBehavior::m_handledBlocks
    IL_0006:  ret
  } // end of method SubsystemStairsBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  6
    .locals init (int32 V_0)
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
    IL_0014:  ldarg.0
    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  ldarg.2
    IL_0018:  ldarg.3
    IL_0019:  ldc.i4.1
    IL_001a:  call       instance void Game.SubsystemStairsBlockBehavior::UpdateIsCorner(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         bool)
    IL_001f:  ret
  } // end of method SubsystemStairsBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    z
    IL_0006:  ldc.i4.0
    IL_0007:  call       instance void Game.SubsystemStairsBlockBehavior::UpdateIsCorner(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         bool)
    IL_000c:  ret
  } // end of method SubsystemStairsBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  ldc.i4.1
    IL_0008:  call       instance void Game.SubsystemStairsBlockBehavior::UpdateIsCorner(int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         bool)
    IL_000d:  ret
  } // end of method SubsystemStairsBlockBehavior::OnBlockAdded

  .method private hidebysig instance void 
          UpdateIsCorner(int32 'value',
                         int32 x,
                         int32 y,
                         int32 z,
                         bool updateModificationCounter) cil managed
  {
    // 代码大小       797 (0x31d)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             valuetype [Engine]Engine.Point3 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             bool V_8,
             valuetype Game.StairsBlock/CornerType V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             bool V_15,
             valuetype Game.StairsBlock/CornerType V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19,
             int32 V_20)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance int32[] Game.SubsystemBlockBehavior::get_HandledBlocks()
    IL_000d:  ldloc.0
    IL_000e:  call       bool [System.Linq]System.Linq.Enumerable::Contains<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0013:  brfalse    IL_031c

    IL_0018:  ldarg.1
    IL_0019:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  call       valuetype Game.StairsBlock/CornerType Game.StairsBlock::GetCornerType(int32)
    IL_0025:  brtrue     IL_031c

    IL_002a:  ldloc.1
    IL_002b:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_0030:  stloc.2
    IL_0031:  ldloc.1
    IL_0032:  call       bool Game.StairsBlock::GetIsUpsideDown(int32)
    IL_0037:  stloc.3
    IL_0038:  ldloc.2
    IL_0039:  call       valuetype [Engine]Engine.Point3 Game.StairsBlock::RotationToDirection(int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  ldarg.0
    IL_0041:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0046:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_004b:  ldarg.2
    IL_004c:  ldloc.s    V_4
    IL_004e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0053:  add
    IL_0054:  ldarg.3
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_005c:  add
    IL_005d:  ldarg.s    z
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
    IL_0077:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_007c:  ldloc.s    V_6
    IL_007e:  ldelem.ref
    IL_007f:  isinst     Game.StairsBlock
    IL_0084:  brfalse    IL_0172

    IL_0089:  ldloc.s    V_5
    IL_008b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0090:  stloc.s    V_7
    IL_0092:  ldloc.s    V_7
    IL_0094:  call       bool Game.StairsBlock::GetIsUpsideDown(int32)
    IL_0099:  stloc.s    V_8
    IL_009b:  ldloc.s    V_7
    IL_009d:  call       valuetype Game.StairsBlock/CornerType Game.StairsBlock::GetCornerType(int32)
    IL_00a2:  stloc.s    V_9
    IL_00a4:  ldc.i4.m1
    IL_00a5:  stloc.s    V_10
    IL_00a7:  ldloc.s    V_8
    IL_00a9:  ldloc.3
    IL_00aa:  bne.un     IL_013c

    IL_00af:  ldloc.s    V_7
    IL_00b1:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_00b6:  stloc.s    V_11
    IL_00b8:  ldloc.2
    IL_00b9:  brtrue.s   IL_00c8

    IL_00bb:  ldloc.s    V_11
    IL_00bd:  ldc.i4.1
    IL_00be:  bne.un.s   IL_00c8

    IL_00c0:  ldloc.s    V_9
    IL_00c2:  ldc.i4.2
    IL_00c3:  beq.s      IL_00c8

    IL_00c5:  ldc.i4.1
    IL_00c6:  stloc.s    V_10
    IL_00c8:  ldloc.2
    IL_00c9:  brtrue.s   IL_00d8

    IL_00cb:  ldloc.s    V_11
    IL_00cd:  ldc.i4.3
    IL_00ce:  bne.un.s   IL_00d8

    IL_00d0:  ldloc.s    V_9
    IL_00d2:  ldc.i4.2
    IL_00d3:  beq.s      IL_00d8

    IL_00d5:  ldc.i4.0
    IL_00d6:  stloc.s    V_10
    IL_00d8:  ldloc.2
    IL_00d9:  ldc.i4.1
    IL_00da:  bne.un.s   IL_00e8

    IL_00dc:  ldloc.s    V_11
    IL_00de:  brtrue.s   IL_00e8

    IL_00e0:  ldloc.s    V_9
    IL_00e2:  ldc.i4.2
    IL_00e3:  beq.s      IL_00e8

    IL_00e5:  ldc.i4.1
    IL_00e6:  stloc.s    V_10
    IL_00e8:  ldloc.2
    IL_00e9:  ldc.i4.1
    IL_00ea:  bne.un.s   IL_00f9

    IL_00ec:  ldloc.s    V_11
    IL_00ee:  ldc.i4.2
    IL_00ef:  bne.un.s   IL_00f9

    IL_00f1:  ldloc.s    V_9
    IL_00f3:  ldc.i4.2
    IL_00f4:  beq.s      IL_00f9

    IL_00f6:  ldc.i4.2
    IL_00f7:  stloc.s    V_10
    IL_00f9:  ldloc.2
    IL_00fa:  ldc.i4.2
    IL_00fb:  bne.un.s   IL_010a

    IL_00fd:  ldloc.s    V_11
    IL_00ff:  ldc.i4.1
    IL_0100:  bne.un.s   IL_010a

    IL_0102:  ldloc.s    V_9
    IL_0104:  ldc.i4.2
    IL_0105:  beq.s      IL_010a

    IL_0107:  ldc.i4.2
    IL_0108:  stloc.s    V_10
    IL_010a:  ldloc.2
    IL_010b:  ldc.i4.2
    IL_010c:  bne.un.s   IL_011b

    IL_010e:  ldloc.s    V_11
    IL_0110:  ldc.i4.3
    IL_0111:  bne.un.s   IL_011b

    IL_0113:  ldloc.s    V_9
    IL_0115:  ldc.i4.2
    IL_0116:  beq.s      IL_011b

    IL_0118:  ldc.i4.3
    IL_0119:  stloc.s    V_10
    IL_011b:  ldloc.2
    IL_011c:  ldc.i4.3
    IL_011d:  bne.un.s   IL_012b

    IL_011f:  ldloc.s    V_11
    IL_0121:  brtrue.s   IL_012b

    IL_0123:  ldloc.s    V_9
    IL_0125:  ldc.i4.2
    IL_0126:  beq.s      IL_012b

    IL_0128:  ldc.i4.0
    IL_0129:  stloc.s    V_10
    IL_012b:  ldloc.2
    IL_012c:  ldc.i4.3
    IL_012d:  bne.un.s   IL_013c

    IL_012f:  ldloc.s    V_11
    IL_0131:  ldc.i4.2
    IL_0132:  bne.un.s   IL_013c

    IL_0134:  ldloc.s    V_9
    IL_0136:  ldc.i4.2
    IL_0137:  beq.s      IL_013c

    IL_0139:  ldc.i4.3
    IL_013a:  stloc.s    V_10
    IL_013c:  ldloc.s    V_10
    IL_013e:  ldc.i4.0
    IL_013f:  blt        IL_031c

    IL_0144:  ldloc.1
    IL_0145:  ldc.i4.1
    IL_0146:  call       int32 Game.StairsBlock::SetCornerType(int32,
                                                               valuetype Game.StairsBlock/CornerType)
    IL_014b:  ldloc.s    V_10
    IL_014d:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_0152:  stloc.s    V_12
    IL_0154:  ldarg.1
    IL_0155:  ldloc.s    V_12
    IL_0157:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_015c:  stloc.s    V_13
    IL_015e:  ldarg.0
    IL_015f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0164:  ldarg.2
    IL_0165:  ldarg.3
    IL_0166:  ldarg.s    z
    IL_0168:  ldloc.s    V_13
    IL_016a:  ldarg.s    updateModificationCounter
    IL_016c:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0171:  ret

    IL_0172:  ldarg.0
    IL_0173:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0178:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_017d:  ldarg.2
    IL_017e:  ldloc.s    V_4
    IL_0180:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0185:  sub
    IL_0186:  ldarg.3
    IL_0187:  ldloc.s    V_4
    IL_0189:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_018e:  sub
    IL_018f:  ldarg.s    z
    IL_0191:  ldloc.s    V_4
    IL_0193:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0198:  sub
    IL_0199:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_019e:  stloc.s    V_5
    IL_01a0:  ldloc.s    V_5
    IL_01a2:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01a7:  stloc.s    V_6
    IL_01a9:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01ae:  ldloc.s    V_6
    IL_01b0:  ldelem.ref
    IL_01b1:  isinst     Game.StairsBlock
    IL_01b6:  brfalse    IL_031c

    IL_01bb:  ldloc.s    V_5
    IL_01bd:  call       int32 Game.Terrain::ExtractData(int32)
    IL_01c2:  stloc.s    V_14
    IL_01c4:  ldloc.s    V_14
    IL_01c6:  call       bool Game.StairsBlock::GetIsUpsideDown(int32)
    IL_01cb:  stloc.s    V_15
    IL_01cd:  ldloc.s    V_14
    IL_01cf:  call       valuetype Game.StairsBlock/CornerType Game.StairsBlock::GetCornerType(int32)
    IL_01d4:  stloc.s    V_16
    IL_01d6:  ldc.i4.m1
    IL_01d7:  stloc.s    V_17
    IL_01d9:  ldloc.s    V_15
    IL_01db:  ldloc.3
    IL_01dc:  bne.un     IL_02ea

    IL_01e1:  ldloc.s    V_14
    IL_01e3:  call       int32 Game.StairsBlock::GetRotation(int32)
    IL_01e8:  stloc.s    V_18
    IL_01ea:  ldloc.2
    IL_01eb:  brtrue.s   IL_01f9

    IL_01ed:  ldloc.s    V_18
    IL_01ef:  ldc.i4.1
    IL_01f0:  bne.un.s   IL_01f9

    IL_01f2:  ldloc.s    V_16
    IL_01f4:  brtrue.s   IL_01f9

    IL_01f6:  ldc.i4.1
    IL_01f7:  stloc.s    V_17
    IL_01f9:  ldloc.2
    IL_01fa:  brtrue.s   IL_0208

    IL_01fc:  ldloc.s    V_18
    IL_01fe:  ldc.i4.3
    IL_01ff:  bne.un.s   IL_0208

    IL_0201:  ldloc.s    V_16
    IL_0203:  brtrue.s   IL_0208

    IL_0205:  ldc.i4.0
    IL_0206:  stloc.s    V_17
    IL_0208:  ldloc.2
    IL_0209:  brtrue.s   IL_0218

    IL_020b:  ldloc.s    V_18
    IL_020d:  ldc.i4.2
    IL_020e:  bne.un.s   IL_0218

    IL_0210:  ldloc.s    V_16
    IL_0212:  ldc.i4.2
    IL_0213:  bne.un.s   IL_0218

    IL_0215:  ldc.i4.1
    IL_0216:  stloc.s    V_17
    IL_0218:  ldloc.2
    IL_0219:  brtrue.s   IL_0228

    IL_021b:  ldloc.s    V_18
    IL_021d:  ldc.i4.3
    IL_021e:  bne.un.s   IL_0228

    IL_0220:  ldloc.s    V_16
    IL_0222:  ldc.i4.2
    IL_0223:  bne.un.s   IL_0228

    IL_0225:  ldc.i4.0
    IL_0226:  stloc.s    V_17
    IL_0228:  ldloc.2
    IL_0229:  ldc.i4.1
    IL_022a:  bne.un.s   IL_0237

    IL_022c:  ldloc.s    V_18
    IL_022e:  brtrue.s   IL_0237

    IL_0230:  ldloc.s    V_16
    IL_0232:  brtrue.s   IL_0237

    IL_0234:  ldc.i4.1
    IL_0235:  stloc.s    V_17
    IL_0237:  ldloc.2
    IL_0238:  ldc.i4.1
    IL_0239:  bne.un.s   IL_0247

    IL_023b:  ldloc.s    V_18
    IL_023d:  ldc.i4.2
    IL_023e:  bne.un.s   IL_0247

    IL_0240:  ldloc.s    V_16
    IL_0242:  brtrue.s   IL_0247

    IL_0244:  ldc.i4.2
    IL_0245:  stloc.s    V_17
    IL_0247:  ldloc.2
    IL_0248:  ldc.i4.1
    IL_0249:  bne.un.s   IL_0258

    IL_024b:  ldloc.s    V_18
    IL_024d:  ldc.i4.3
    IL_024e:  bne.un.s   IL_0258

    IL_0250:  ldloc.s    V_16
    IL_0252:  ldc.i4.2
    IL_0253:  bne.un.s   IL_0258

    IL_0255:  ldc.i4.2
    IL_0256:  stloc.s    V_17
    IL_0258:  ldloc.2
    IL_0259:  ldc.i4.1
    IL_025a:  bne.un.s   IL_0268

    IL_025c:  ldloc.s    V_18
    IL_025e:  brtrue.s   IL_0268

    IL_0260:  ldloc.s    V_16
    IL_0262:  ldc.i4.2
    IL_0263:  bne.un.s   IL_0268

    IL_0265:  ldc.i4.1
    IL_0266:  stloc.s    V_17
    IL_0268:  ldloc.2
    IL_0269:  ldc.i4.2
    IL_026a:  bne.un.s   IL_0278

    IL_026c:  ldloc.s    V_18
    IL_026e:  ldc.i4.1
    IL_026f:  bne.un.s   IL_0278

    IL_0271:  ldloc.s    V_16
    IL_0273:  brtrue.s   IL_0278

    IL_0275:  ldc.i4.2
    IL_0276:  stloc.s    V_17
    IL_0278:  ldloc.2
    IL_0279:  ldc.i4.2
    IL_027a:  bne.un.s   IL_0288

    IL_027c:  ldloc.s    V_18
    IL_027e:  ldc.i4.3
    IL_027f:  bne.un.s   IL_0288

    IL_0281:  ldloc.s    V_16
    IL_0283:  brtrue.s   IL_0288

    IL_0285:  ldc.i4.3
    IL_0286:  stloc.s    V_17
    IL_0288:  ldloc.2
    IL_0289:  ldc.i4.2
    IL_028a:  bne.un.s   IL_0298

    IL_028c:  ldloc.s    V_18
    IL_028e:  brtrue.s   IL_0298

    IL_0290:  ldloc.s    V_16
    IL_0292:  ldc.i4.2
    IL_0293:  bne.un.s   IL_0298

    IL_0295:  ldc.i4.3
    IL_0296:  stloc.s    V_17
    IL_0298:  ldloc.2
    IL_0299:  ldc.i4.2
    IL_029a:  bne.un.s   IL_02a9

    IL_029c:  ldloc.s    V_18
    IL_029e:  ldc.i4.1
    IL_029f:  bne.un.s   IL_02a9

    IL_02a1:  ldloc.s    V_16
    IL_02a3:  ldc.i4.2
    IL_02a4:  bne.un.s   IL_02a9

    IL_02a6:  ldc.i4.2
    IL_02a7:  stloc.s    V_17
    IL_02a9:  ldloc.2
    IL_02aa:  ldc.i4.3
    IL_02ab:  bne.un.s   IL_02b8

    IL_02ad:  ldloc.s    V_18
    IL_02af:  brtrue.s   IL_02b8

    IL_02b1:  ldloc.s    V_16
    IL_02b3:  brtrue.s   IL_02b8

    IL_02b5:  ldc.i4.0
    IL_02b6:  stloc.s    V_17
    IL_02b8:  ldloc.2
    IL_02b9:  ldc.i4.3
    IL_02ba:  bne.un.s   IL_02c8

    IL_02bc:  ldloc.s    V_18
    IL_02be:  ldc.i4.2
    IL_02bf:  bne.un.s   IL_02c8

    IL_02c1:  ldloc.s    V_16
    IL_02c3:  brtrue.s   IL_02c8

    IL_02c5:  ldc.i4.3
    IL_02c6:  stloc.s    V_17
    IL_02c8:  ldloc.2
    IL_02c9:  ldc.i4.3
    IL_02ca:  bne.un.s   IL_02d9

    IL_02cc:  ldloc.s    V_18
    IL_02ce:  ldc.i4.2
    IL_02cf:  bne.un.s   IL_02d9

    IL_02d1:  ldloc.s    V_16
    IL_02d3:  ldc.i4.2
    IL_02d4:  bne.un.s   IL_02d9

    IL_02d6:  ldc.i4.3
    IL_02d7:  stloc.s    V_17
    IL_02d9:  ldloc.2
    IL_02da:  ldc.i4.3
    IL_02db:  bne.un.s   IL_02ea

    IL_02dd:  ldloc.s    V_18
    IL_02df:  ldc.i4.1
    IL_02e0:  bne.un.s   IL_02ea

    IL_02e2:  ldloc.s    V_16
    IL_02e4:  ldc.i4.2
    IL_02e5:  bne.un.s   IL_02ea

    IL_02e7:  ldc.i4.0
    IL_02e8:  stloc.s    V_17
    IL_02ea:  ldloc.s    V_17
    IL_02ec:  ldc.i4.0
    IL_02ed:  blt.s      IL_031c

    IL_02ef:  ldloc.1
    IL_02f0:  ldc.i4.2
    IL_02f1:  call       int32 Game.StairsBlock::SetCornerType(int32,
                                                               valuetype Game.StairsBlock/CornerType)
    IL_02f6:  ldloc.s    V_17
    IL_02f8:  call       int32 Game.StairsBlock::SetRotation(int32,
                                                             int32)
    IL_02fd:  stloc.s    V_19
    IL_02ff:  ldarg.1
    IL_0300:  ldloc.s    V_19
    IL_0302:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_0307:  stloc.s    V_20
    IL_0309:  ldarg.0
    IL_030a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_030f:  ldarg.2
    IL_0310:  ldarg.3
    IL_0311:  ldarg.s    z
    IL_0313:  ldloc.s    V_20
    IL_0315:  ldarg.s    updateModificationCounter
    IL_0317:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_031c:  ret
  } // end of method SubsystemStairsBlockBehavior::UpdateIsCorner

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemStairsBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemStairsBlockBehavior::HandledBlocks
} // end of class Game.SubsystemStairsBlockBehavior