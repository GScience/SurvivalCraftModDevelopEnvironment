.class public auto ansi beforefieldinit Game.SeedsBlock
       extends Game.FlatBlock
{
  .class auto ansi sealed nested public SeedType
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.SeedsBlock/SeedType TallGrass = int32(0x00000000)
    .field public static literal valuetype Game.SeedsBlock/SeedType RedFlower = int32(0x00000001)
    .field public static literal valuetype Game.SeedsBlock/SeedType PurpleFlower = int32(0x00000002)
    .field public static literal valuetype Game.SeedsBlock/SeedType WhiteFlower = int32(0x00000003)
    .field public static literal valuetype Game.SeedsBlock/SeedType WildRye = int32(0x00000004)
    .field public static literal valuetype Game.SeedsBlock/SeedType Rye = int32(0x00000005)
    .field public static literal valuetype Game.SeedsBlock/SeedType Cotton = int32(0x00000006)
    .field public static literal valuetype Game.SeedsBlock/SeedType Pumpkin = int32(0x00000007)
  } // end of class SeedType

  .field public static literal int32 Index = int32(0x000000AD)
  .method public hidebysig virtual instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> 
          GetCreativeValues() cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_1,
             int32 V_2)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldtoken    Game.SeedsBlock/SeedType
    IL_000b:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0010:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_0015:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_001a:  stloc.1
    .try
    {
      IL_001b:  br.s       IL_0036

      IL_001d:  ldloc.1
      IL_001e:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_0023:  stloc.2
      IL_0024:  ldloc.0
      IL_0025:  ldc.i4     0xad
      IL_002a:  ldc.i4.0
      IL_002b:  ldloc.2
      IL_002c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                  int32,
                                                                  int32)
      IL_0031:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
      IL_0036:  ldloc.1
      IL_0037:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_003c:  brtrue.s   IL_001d

      IL_003e:  leave.s    IL_004a

    }  // end .try
    finally
    {
      IL_0040:  ldloc.1
      IL_0041:  brfalse.s  IL_0049

      IL_0043:  ldloc.1
      IL_0044:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0049:  endfinally
    }  // end handler
    IL_004a:  ldloc.0
    IL_004b:  ret
  } // end of method SeedsBlock::GetCreativeValues

  .method public hidebysig virtual instance string 
          GetDisplayName(class Game.SubsystemTerrain subsystemTerrain,
                         int32 'value') cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brtrue.s   IL_0010

    IL_000a:  ldstr      "Tall Grass Seeds"
    IL_000f:  ret

    IL_0010:  ldloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  bne.un.s   IL_001a

    IL_0014:  ldstr      "Red Flower Seeds"
    IL_0019:  ret

    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.2
    IL_001c:  bne.un.s   IL_0024

    IL_001e:  ldstr      "Purple Flower Seeds"
    IL_0023:  ret

    IL_0024:  ldloc.0
    IL_0025:  ldc.i4.3
    IL_0026:  bne.un.s   IL_002e

    IL_0028:  ldstr      "White Flower Seeds"
    IL_002d:  ret

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.4
    IL_0030:  bne.un.s   IL_0038

    IL_0032:  ldstr      "Wild Rye Seeds"
    IL_0037:  ret

    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.5
    IL_003a:  bne.un.s   IL_0042

    IL_003c:  ldstr      "Rye Seeds"
    IL_0041:  ret

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.6
    IL_0044:  bne.un.s   IL_004c

    IL_0046:  ldstr      "Cotton Seeds"
    IL_004b:  ret

    IL_004c:  ldloc.0
    IL_004d:  ldc.i4.7
    IL_004e:  bne.un.s   IL_0056

    IL_0050:  ldstr      "Pumpkin Seeds"
    IL_0055:  ret

    IL_0056:  ldsfld     string [System.Runtime]System.String::Empty
    IL_005b:  ret
  } // end of method SeedsBlock::GetDisplayName

  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.5
    IL_0009:  beq.s      IL_000f

    IL_000b:  ldloc.0
    IL_000c:  ldc.i4.4
    IL_000d:  bne.un.s   IL_0012

    IL_000f:  ldc.i4.s   74
    IL_0011:  ret

    IL_0012:  ldc.i4.s   75
    IL_0014:  ret
  } // end of method SeedsBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance valuetype Game.BlockPlacementData 
          GetPlacementValue(class Game.SubsystemTerrain terrain,
                            class Game.ComponentMiner componentMiner,
                            int32 'value',
                            valuetype Game.TerrainRaycastResult raycastResult) cil managed
  {
    // 代码大小       330 (0x14a)
    .maxstack  5
    .locals init (valuetype Game.BlockPlacementData V_0,
             int32 V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.BlockPlacementData
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldarg.s    raycastResult
    IL_000c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0011:  stfld      valuetype Game.CellFace Game.BlockPlacementData::CellFace
    IL_0016:  ldarg.s    raycastResult
    IL_0018:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001d:  ldfld      int32 Game.CellFace::Face
    IL_0022:  ldc.i4.4
    IL_0023:  bne.un     IL_0148

    IL_0028:  ldarg.3
    IL_0029:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  switch     ( 
                          IL_005a,
                          IL_0075,
                          IL_0090,
                          IL_00ab,
                          IL_00c6,
                          IL_00e7,
                          IL_0108,
                          IL_0129)
    IL_0055:  br         IL_0148

    IL_005a:  ldloca.s   V_0
    IL_005c:  ldc.i4.s   19
    IL_005e:  ldc.i4.0
    IL_005f:  ldc.i4.0
    IL_0060:  ldc.i4.1
    IL_0061:  call       int32 Game.TallGrassBlock::SetIsSmall(int32,
                                                               bool)
    IL_0066:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_006b:  stfld      int32 Game.BlockPlacementData::Value
    IL_0070:  br         IL_0148

    IL_0075:  ldloca.s   V_0
    IL_0077:  ldc.i4.s   20
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.0
    IL_007b:  ldc.i4.1
    IL_007c:  call       int32 Game.FlowerBlock::SetIsSmall(int32,
                                                            bool)
    IL_0081:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0086:  stfld      int32 Game.BlockPlacementData::Value
    IL_008b:  br         IL_0148

    IL_0090:  ldloca.s   V_0
    IL_0092:  ldc.i4.s   24
    IL_0094:  ldc.i4.0
    IL_0095:  ldc.i4.0
    IL_0096:  ldc.i4.1
    IL_0097:  call       int32 Game.FlowerBlock::SetIsSmall(int32,
                                                            bool)
    IL_009c:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00a1:  stfld      int32 Game.BlockPlacementData::Value
    IL_00a6:  br         IL_0148

    IL_00ab:  ldloca.s   V_0
    IL_00ad:  ldc.i4.s   25
    IL_00af:  ldc.i4.0
    IL_00b0:  ldc.i4.0
    IL_00b1:  ldc.i4.1
    IL_00b2:  call       int32 Game.FlowerBlock::SetIsSmall(int32,
                                                            bool)
    IL_00b7:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00bc:  stfld      int32 Game.BlockPlacementData::Value
    IL_00c1:  br         IL_0148

    IL_00c6:  ldloca.s   V_0
    IL_00c8:  ldc.i4     0xae
    IL_00cd:  ldc.i4.0
    IL_00ce:  ldc.i4.0
    IL_00cf:  ldc.i4.0
    IL_00d0:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_00d5:  ldc.i4.0
    IL_00d6:  call       int32 Game.RyeBlock::SetSize(int32,
                                                      int32)
    IL_00db:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00e0:  stfld      int32 Game.BlockPlacementData::Value
    IL_00e5:  br.s       IL_0148

    IL_00e7:  ldloca.s   V_0
    IL_00e9:  ldc.i4     0xae
    IL_00ee:  ldc.i4.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  ldc.i4.0
    IL_00f1:  call       int32 Game.RyeBlock::SetIsWild(int32,
                                                        bool)
    IL_00f6:  ldc.i4.0
    IL_00f7:  call       int32 Game.RyeBlock::SetSize(int32,
                                                      int32)
    IL_00fc:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0101:  stfld      int32 Game.BlockPlacementData::Value
    IL_0106:  br.s       IL_0148

    IL_0108:  ldloca.s   V_0
    IL_010a:  ldc.i4     0xcc
    IL_010f:  ldc.i4.0
    IL_0110:  ldc.i4.0
    IL_0111:  ldc.i4.0
    IL_0112:  call       int32 Game.CottonBlock::SetIsWild(int32,
                                                           bool)
    IL_0117:  ldc.i4.0
    IL_0118:  call       int32 Game.CottonBlock::SetSize(int32,
                                                         int32)
    IL_011d:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0122:  stfld      int32 Game.BlockPlacementData::Value
    IL_0127:  br.s       IL_0148

    IL_0129:  ldloca.s   V_0
    IL_012b:  ldc.i4     0x83
    IL_0130:  ldc.i4.0
    IL_0131:  ldc.i4.0
    IL_0132:  ldc.i4.1
    IL_0133:  call       int32 Game.PumpkinBlock::SetIsLive(int32,
                                                            bool)
    IL_0138:  ldc.i4.0
    IL_0139:  call       int32 Game.PumpkinBlock::SetSize(int32,
                                                          int32)
    IL_013e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0143:  stfld      int32 Game.BlockPlacementData::Value
    IL_0148:  ldloc.0
    IL_0149:  ret
  } // end of method SeedsBlock::GetPlacementValue

  .method public hidebysig virtual instance void 
          DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                    int32 'value',
                    float32 size,
                    valuetype [Engine]Engine.Matrix& matrix,
                    class Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       238 (0xee)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Color V_0,
             int32 V_1)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0005:  stloc.0
    IL_0006:  ldarg.2
    IL_0007:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_000c:  stloc.1
    IL_000d:  ldloc.1
    IL_000e:  switch     ( 
                          IL_0038,
                          IL_0050,
                          IL_0068,
                          IL_0080,
                          IL_00a0,
                          IL_0098,
                          IL_00b2,
                          IL_00ca)
    IL_0033:  br         IL_00e0

    IL_0038:  ldloca.s   V_0
    IL_003a:  ldc.i4     0xa0
    IL_003f:  ldc.i4     0x96
    IL_0044:  ldc.i4.s   125
    IL_0046:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_004b:  br         IL_00e0

    IL_0050:  ldloca.s   V_0
    IL_0052:  ldc.i4     0xc0
    IL_0057:  ldc.i4     0xa0
    IL_005c:  ldc.i4     0xa0
    IL_0061:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0066:  br.s       IL_00e0

    IL_0068:  ldloca.s   V_0
    IL_006a:  ldc.i4     0xc0
    IL_006f:  ldc.i4     0xa0
    IL_0074:  ldc.i4     0xc0
    IL_0079:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_007e:  br.s       IL_00e0

    IL_0080:  ldloca.s   V_0
    IL_0082:  ldc.i4     0xc0
    IL_0087:  ldc.i4     0xc0
    IL_008c:  ldc.i4     0xc0
    IL_0091:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0096:  br.s       IL_00e0

    IL_0098:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_009d:  stloc.0
    IL_009e:  br.s       IL_00e0

    IL_00a0:  ldloca.s   V_0
    IL_00a2:  ldc.i4.s   60
    IL_00a4:  ldc.i4     0x8a
    IL_00a9:  ldc.i4.s   76
    IL_00ab:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00b0:  br.s       IL_00e0

    IL_00b2:  ldloca.s   V_0
    IL_00b4:  ldc.i4     0xff
    IL_00b9:  ldc.i4     0xff
    IL_00be:  ldc.i4     0xff
    IL_00c3:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00c8:  br.s       IL_00e0

    IL_00ca:  ldloca.s   V_0
    IL_00cc:  ldc.i4     0xf0
    IL_00d1:  ldc.i4     0xe1
    IL_00d6:  ldc.i4     0xbe
    IL_00db:  call       instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_00e0:  ldarg.1
    IL_00e1:  ldarg.2
    IL_00e2:  ldarg.3
    IL_00e3:  ldarg.s    matrix
    IL_00e5:  ldloc.0
    IL_00e6:  ldarg.s    environmentData
    IL_00e8:  call       void Game.BlocksManager::DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                int32,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Color,
                                                                class Game.DrawBlockEnvironmentData)
    IL_00ed:  ret
  } // end of method SeedsBlock::DrawBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.FlatBlock::.ctor()
    IL_0006:  ret
  } // end of method SeedsBlock::.ctor

} // end of class Game.SeedsBlock