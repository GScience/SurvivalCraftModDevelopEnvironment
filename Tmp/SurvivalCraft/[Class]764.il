.class public auto ansi beforefieldinit Game.SubsystemPathfinding
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .class auto ansi nested private beforefieldinit Request
         extends [System.Runtime]System.Object
  {
    .field public valuetype [Engine]Engine.Vector3 Start
    .field public valuetype [Engine]Engine.Vector3 End
    .field public float32 MinDistance
    .field public valuetype [Engine]Engine.Vector3 BoxSize
    .field public int32 MaxPositionsToCheck
    .field public class Game.PathfindingResult PathfindingResult
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Request::.ctor

  } // end of class Request

  .class auto ansi nested private beforefieldinit Storage
         extends [System.Runtime]System.Object
         implements class Game.IAStarStorage`1<valuetype [Engine]Engine.Vector3>
  {
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Dictionary
    .method public hidebysig newslot virtual final 
            instance void  Clear() cil managed
    {
      // 代码大小       12 (0xc)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Game.SubsystemPathfinding/Storage::Dictionary
      IL_0006:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object>::Clear()
      IL_000b:  ret
    } // end of method Storage::Clear

    .method public hidebysig newslot virtual final 
            instance object  Get(valuetype [Engine]Engine.Vector3 p) cil managed
    {
      // 代码大小       17 (0x11)
      .maxstack  3
      .locals init (object V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Game.SubsystemPathfinding/Storage::Dictionary
      IL_0006:  ldarg.1
      IL_0007:  ldloca.s   V_0
      IL_0009:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object>::TryGetValue(!0,
                                                                                                                                                                 !1&)
      IL_000e:  pop
      IL_000f:  ldloc.0
      IL_0010:  ret
    } // end of method Storage::Get

    .method public hidebysig newslot virtual final 
            instance void  Set(valuetype [Engine]Engine.Vector3 p,
                               object data) cil managed
    {
      // 代码大小       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Game.SubsystemPathfinding/Storage::Dictionary
      IL_0006:  ldarg.1
      IL_0007:  ldarg.2
      IL_0008:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object>::set_Item(!0,
                                                                                                                                                              !1)
      IL_000d:  ret
    } // end of method Storage::Set

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object>::.ctor()
      IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Game.SubsystemPathfinding/Storage::Dictionary
      IL_000b:  ldarg.0
      IL_000c:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0011:  ret
    } // end of method Storage::.ctor

  } // end of class Storage

  .class auto ansi nested private beforefieldinit World
         extends [System.Runtime]System.Object
         implements class Game.IAStarWorld`1<valuetype [Engine]Engine.Vector3>
  {
    .field public class Game.SubsystemTerrain SubsystemTerrain
    .field public class Game.SubsystemPathfinding/Request Request
    .method public hidebysig newslot virtual final 
            instance float32  Cost(valuetype [Engine]Engine.Vector3 p1,
                                   valuetype [Engine]Engine.Vector3 p2) cil managed
    {
      // 代码大小       52 (0x34)
      .maxstack  8
      IL_0000:  ldc.r4     0.99900001
      IL_0005:  ldc.r4     0.1
      IL_000a:  ldarg.2
      IL_000b:  ldarg.1
      IL_000c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0011:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_0016:  ldarg.0
      IL_0017:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_001c:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::End
      IL_0021:  ldarg.1
      IL_0022:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_0027:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
      IL_002c:  call       float32 [Engine]Engine.Vector3::Dot(valuetype [Engine]Engine.Vector3,
                                                               valuetype [Engine]Engine.Vector3)
      IL_0031:  mul
      IL_0032:  sub
      IL_0033:  ret
    } // end of method World::Cost

    .method public hidebysig newslot virtual final 
            instance void  Neighbors(valuetype [Engine]Engine.Vector3 p,
                                     class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> neighbors) cil managed
    {
      // 代码大小       88 (0x58)
      .maxstack  5
      IL_0000:  ldarg.2
      IL_0001:  ldc.i4.0
      IL_0002:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::set_Count(int32)
      IL_0007:  ldarg.0
      IL_0008:  ldarg.2
      IL_0009:  ldarg.1
      IL_000a:  ldc.i4.1
      IL_000b:  ldc.i4.0
      IL_000c:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_0011:  ldarg.0
      IL_0012:  ldarg.2
      IL_0013:  ldarg.1
      IL_0014:  ldc.i4.m1
      IL_0015:  ldc.i4.0
      IL_0016:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_001b:  ldarg.0
      IL_001c:  ldarg.2
      IL_001d:  ldarg.1
      IL_001e:  ldc.i4.0
      IL_001f:  ldc.i4.m1
      IL_0020:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_0025:  ldarg.0
      IL_0026:  ldarg.2
      IL_0027:  ldarg.1
      IL_0028:  ldc.i4.0
      IL_0029:  ldc.i4.1
      IL_002a:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_002f:  ldarg.0
      IL_0030:  ldarg.2
      IL_0031:  ldarg.1
      IL_0032:  ldc.i4.m1
      IL_0033:  ldc.i4.m1
      IL_0034:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_0039:  ldarg.0
      IL_003a:  ldarg.2
      IL_003b:  ldarg.1
      IL_003c:  ldc.i4.1
      IL_003d:  ldc.i4.m1
      IL_003e:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_0043:  ldarg.0
      IL_0044:  ldarg.2
      IL_0045:  ldarg.1
      IL_0046:  ldc.i4.1
      IL_0047:  ldc.i4.1
      IL_0048:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_004d:  ldarg.0
      IL_004e:  ldarg.2
      IL_004f:  ldarg.1
      IL_0050:  ldc.i4.m1
      IL_0051:  ldc.i4.1
      IL_0052:  call       instance void Game.SubsystemPathfinding/World::AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                                      valuetype [Engine]Engine.Vector3,
                                                                                      int32,
                                                                                      int32)
      IL_0057:  ret
    } // end of method World::Neighbors

    .method public hidebysig newslot virtual final 
            instance float32  Heuristic(valuetype [Engine]Engine.Vector3 p1,
                                        valuetype [Engine]Engine.Vector3 p2) cil managed
    {
      // 代码大小       78 (0x4e)
      .maxstack  4
      .locals init (float32 V_0,
               float32 V_1)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0006:  ldarg.2
      IL_0007:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_000c:  sub
      IL_000d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0012:  stloc.0
      IL_0013:  ldarg.1
      IL_0014:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0019:  ldarg.2
      IL_001a:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_001f:  sub
      IL_0020:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
      IL_0025:  stloc.1
      IL_0026:  ldloc.0
      IL_0027:  ldloc.1
      IL_0028:  ble.un.s   IL_003c

      IL_002a:  ldc.r4     1.41
      IL_002f:  ldloc.1
      IL_0030:  mul
      IL_0031:  ldc.r4     1.
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  sub
      IL_0039:  mul
      IL_003a:  add
      IL_003b:  ret

      IL_003c:  ldc.r4     1.41
      IL_0041:  ldloc.0
      IL_0042:  mul
      IL_0043:  ldc.r4     1.
      IL_0048:  ldloc.1
      IL_0049:  ldloc.0
      IL_004a:  sub
      IL_004b:  mul
      IL_004c:  add
      IL_004d:  ret
    } // end of method World::Heuristic

    .method public hidebysig newslot virtual final 
            instance bool  IsGoal(valuetype [Engine]Engine.Vector3 p) cil managed
    {
      // 代码大小       46 (0x2e)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_0007:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::End
      IL_000c:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_0017:  ldfld      float32 Game.SubsystemPathfinding/Request::MinDistance
      IL_001c:  ldarg.0
      IL_001d:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_0022:  ldfld      float32 Game.SubsystemPathfinding/Request::MinDistance
      IL_0027:  mul
      IL_0028:  cgt.un
      IL_002a:  ldc.i4.0
      IL_002b:  ceq
      IL_002d:  ret
    } // end of method World::IsGoal

    .method private hidebysig instance void 
            AddNeighbor(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> neighbors,
                        valuetype [Engine]Engine.Vector3 p,
                        int32 dx,
                        int32 dz) cil managed
    {
      // 代码大小       617 (0x269)
      .maxstack  7
      .locals init (float32 V_0,
               float32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6,
               class Game.Block V_7,
               int32 V_8,
               valuetype [Engine]Engine.Vector3 V_9,
               valuetype [Engine]Engine.Vector3 V_10,
               valuetype [Engine]Engine.Vector3 V_11,
               valuetype [Engine]Engine.BoundingBox V_12,
               float32 V_13,
               bool V_14,
               int32 V_15,
               int32 V_16,
               int32 V_17,
               class Game.Block V_18,
               int32 V_19,
               valuetype [Engine]Engine.Vector3 V_20)
      IL_0000:  ldarg.2
      IL_0001:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0006:  stloc.0
      IL_0007:  ldarg.2
      IL_0008:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_000d:  stloc.1
      IL_000e:  ldarg.2
      IL_000f:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0014:  call       int32 Game.Terrain::ToCell(float32)
      IL_0019:  ldarg.3
      IL_001a:  add
      IL_001b:  stloc.2
      IL_001c:  ldarg.2
      IL_001d:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0022:  call       int32 Game.Terrain::ToCell(float32)
      IL_0027:  stloc.3
      IL_0028:  ldarg.2
      IL_0029:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_002e:  call       int32 Game.Terrain::ToCell(float32)
      IL_0033:  ldarg.s    dz
      IL_0035:  add
      IL_0036:  stloc.s    V_4
      IL_0038:  ldarg.0
      IL_0039:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_003e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0043:  ldloc.2
      IL_0044:  ldloc.3
      IL_0045:  ldloc.s    V_4
      IL_0047:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_004c:  stloc.s    V_5
      IL_004e:  ldloc.s    V_5
      IL_0050:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0055:  stloc.s    V_6
      IL_0057:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_005c:  ldloc.s    V_6
      IL_005e:  ldelem.ref
      IL_005f:  stloc.s    V_7
      IL_0061:  ldloc.s    V_7
      IL_0063:  ldloc.s    V_5
      IL_0065:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_006a:  brfalse.s  IL_006d

      IL_006c:  ret

      IL_006d:  ldloc.s    V_7
      IL_006f:  ldfld      bool Game.Block::IsCollidable
      IL_0074:  brfalse.s  IL_00ac

      IL_0076:  ldarg.0
      IL_0077:  ldloc.s    V_7
      IL_0079:  ldloc.s    V_5
      IL_007b:  call       instance float32 Game.SubsystemPathfinding/World::GetBlockWalkingHeight(class Game.Block,
                                                                                                   int32)
      IL_0080:  stloc.s    V_13
      IL_0082:  ldloc.s    V_13
      IL_0084:  ldc.r4     0.5
      IL_0089:  ble.un.s   IL_009e

      IL_008b:  ldloc.s    V_7
      IL_008d:  ldfld      bool Game.Block::NoAutoJump
      IL_0092:  brtrue.s   IL_009d

      IL_0094:  ldloc.s    V_7
      IL_0096:  ldfld      bool Game.Block::NoSmoothRise
      IL_009b:  brfalse.s  IL_009e

      IL_009d:  ret

      IL_009e:  ldloc.3
      IL_009f:  conv.r4
      IL_00a0:  ldloc.s    V_13
      IL_00a2:  add
      IL_00a3:  stloc.0
      IL_00a4:  ldloc.3
      IL_00a5:  conv.r4
      IL_00a6:  ldloc.s    V_13
      IL_00a8:  add
      IL_00a9:  stloc.1
      IL_00aa:  br.s       IL_0113

      IL_00ac:  ldc.i4.0
      IL_00ad:  stloc.s    V_14
      IL_00af:  ldc.i4.m1
      IL_00b0:  stloc.s    V_15
      IL_00b2:  br.s       IL_0108

      IL_00b4:  ldarg.0
      IL_00b5:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_00ba:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_00bf:  ldloc.2
      IL_00c0:  ldloc.3
      IL_00c1:  ldloc.s    V_15
      IL_00c3:  add
      IL_00c4:  ldloc.s    V_4
      IL_00c6:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                     int32,
                                                                     int32)
      IL_00cb:  stloc.s    V_16
      IL_00cd:  ldloc.s    V_16
      IL_00cf:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00d4:  stloc.s    V_17
      IL_00d6:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00db:  ldloc.s    V_17
      IL_00dd:  ldelem.ref
      IL_00de:  stloc.s    V_18
      IL_00e0:  ldloc.s    V_18
      IL_00e2:  ldloc.s    V_16
      IL_00e4:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_00e9:  brfalse.s  IL_00ec

      IL_00eb:  ret

      IL_00ec:  ldloc.s    V_18
      IL_00ee:  ldfld      bool Game.Block::IsCollidable
      IL_00f3:  brfalse.s  IL_0102

      IL_00f5:  ldloc.3
      IL_00f6:  ldloc.s    V_15
      IL_00f8:  add
      IL_00f9:  ldc.i4.1
      IL_00fa:  add
      IL_00fb:  conv.r4
      IL_00fc:  stloc.0
      IL_00fd:  ldc.i4.1
      IL_00fe:  stloc.s    V_14
      IL_0100:  br.s       IL_010e

      IL_0102:  ldloc.s    V_15
      IL_0104:  ldc.i4.1
      IL_0105:  sub
      IL_0106:  stloc.s    V_15
      IL_0108:  ldloc.s    V_15
      IL_010a:  ldc.i4.s   -4
      IL_010c:  bge.s      IL_00b4

      IL_010e:  ldloc.s    V_14
      IL_0110:  brtrue.s   IL_0113

      IL_0112:  ret

      IL_0113:  ldarg.3
      IL_0114:  brfalse.s  IL_011d

      IL_0116:  ldarg.s    dz
      IL_0118:  brfalse.s  IL_011d

      IL_011a:  ldc.i4.3
      IL_011b:  br.s       IL_011e

      IL_011d:  ldc.i4.2
      IL_011e:  stloc.s    V_8
      IL_0120:  ldloca.s   V_9
      IL_0122:  ldarg.2
      IL_0123:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0128:  ldloc.1
      IL_0129:  ldc.r4     9.9999998e-003
      IL_012e:  add
      IL_012f:  ldarg.2
      IL_0130:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0135:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_013a:  ldloca.s   V_10
      IL_013c:  ldloc.2
      IL_013d:  conv.r4
      IL_013e:  ldc.r4     0.5
      IL_0143:  add
      IL_0144:  ldloc.1
      IL_0145:  ldc.r4     9.9999998e-003
      IL_014a:  add
      IL_014b:  ldloc.s    V_4
      IL_014d:  conv.r4
      IL_014e:  ldc.r4     0.5
      IL_0153:  add
      IL_0154:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0159:  ldc.r4     1.
      IL_015e:  ldloc.s    V_8
      IL_0160:  conv.r4
      IL_0161:  div
      IL_0162:  ldloc.s    V_10
      IL_0164:  ldloc.s    V_9
      IL_0166:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_016b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0170:  stloc.s    V_11
      IL_0172:  ldc.i4.1
      IL_0173:  stloc.s    V_19
      IL_0175:  br         IL_0242

      IL_017a:  ldloc.s    V_9
      IL_017c:  ldloc.s    V_19
      IL_017e:  conv.r4
      IL_017f:  ldloc.s    V_11
      IL_0181:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0186:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_018b:  stloc.s    V_20
      IL_018d:  ldloca.s   V_12
      IL_018f:  ldloc.s    V_20
      IL_0191:  ldarg.0
      IL_0192:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_0197:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_019c:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_01a1:  ldc.r4     2.
      IL_01a6:  div
      IL_01a7:  ldc.r4     9.9999998e-003
      IL_01ac:  add
      IL_01ad:  ldc.r4     0.0
      IL_01b2:  ldarg.0
      IL_01b3:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01b8:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_01bd:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_01c2:  ldc.r4     2.
      IL_01c7:  div
      IL_01c8:  ldc.r4     9.9999998e-003
      IL_01cd:  add
      IL_01ce:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01d3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_01d8:  ldloc.s    V_20
      IL_01da:  ldarg.0
      IL_01db:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01e0:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_01e5:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_01ea:  ldc.r4     2.
      IL_01ef:  div
      IL_01f0:  ldc.r4     9.9999998e-003
      IL_01f5:  sub
      IL_01f6:  ldarg.0
      IL_01f7:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01fc:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_0201:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0206:  ldarg.0
      IL_0207:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_020c:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_0211:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0216:  ldc.r4     2.
      IL_021b:  div
      IL_021c:  ldc.r4     9.9999998e-003
      IL_0221:  sub
      IL_0222:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0227:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_022c:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0231:  ldarg.0
      IL_0232:  ldloc.s    V_12
      IL_0234:  call       instance bool Game.SubsystemPathfinding/World::IsBlocked(valuetype [Engine]Engine.BoundingBox)
      IL_0239:  brfalse.s  IL_023c

      IL_023b:  ret

      IL_023c:  ldloc.s    V_19
      IL_023e:  ldc.i4.1
      IL_023f:  add
      IL_0240:  stloc.s    V_19
      IL_0242:  ldloc.s    V_19
      IL_0244:  ldloc.s    V_8
      IL_0246:  ble        IL_017a

      IL_024b:  ldarg.1
      IL_024c:  ldloc.2
      IL_024d:  conv.r4
      IL_024e:  ldc.r4     0.5
      IL_0253:  add
      IL_0254:  ldloc.0
      IL_0255:  ldloc.s    V_4
      IL_0257:  conv.r4
      IL_0258:  ldc.r4     0.5
      IL_025d:  add
      IL_025e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0263:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::Add(!0)
      IL_0268:  ret
    } // end of method World::AddNeighbor

    .method private hidebysig instance float32 
            GetBlockWalkingHeight(class Game.Block block,
                                  int32 'value') cil managed
    {
      // 代码大小       84 (0x54)
      .maxstack  3
      .locals init (float32 V_0,
               valuetype [Engine]Engine.BoundingBox[] V_1,
               int32 V_2,
               valuetype [Engine]Engine.BoundingBox V_3)
      IL_0000:  ldarg.1
      IL_0001:  isinst     Game.DoorBlock
      IL_0006:  brtrue.s   IL_0010

      IL_0008:  ldarg.1
      IL_0009:  isinst     Game.FenceGateBlock
      IL_000e:  brfalse.s  IL_0016

      IL_0010:  ldc.r4     0.0
      IL_0015:  ret

      IL_0016:  ldc.r4     0.0
      IL_001b:  stloc.0
      IL_001c:  ldarg.1
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0023:  ldarg.2
      IL_0024:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
      IL_0029:  stloc.1
      IL_002a:  ldc.i4.0
      IL_002b:  stloc.2
      IL_002c:  br.s       IL_004c

      IL_002e:  ldloc.1
      IL_002f:  ldloc.2
      IL_0030:  ldelem     [Engine]Engine.BoundingBox
      IL_0035:  stloc.3
      IL_0036:  ldloc.0
      IL_0037:  ldloc.3
      IL_0038:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_003d:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0042:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0047:  stloc.0
      IL_0048:  ldloc.2
      IL_0049:  ldc.i4.1
      IL_004a:  add
      IL_004b:  stloc.2
      IL_004c:  ldloc.2
      IL_004d:  ldloc.1
      IL_004e:  ldlen
      IL_004f:  conv.i4
      IL_0050:  blt.s      IL_002e

      IL_0052:  ldloc.0
      IL_0053:  ret
    } // end of method World::GetBlockWalkingHeight

    .method private hidebysig instance bool 
            IsBlocked(valuetype [Engine]Engine.BoundingBox 'box') cil managed
    {
      // 代码大小       402 (0x192)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6,
               class Game.TerrainChunk V_7,
               int32 V_8,
               int32 V_9,
               int32 V_10,
               int32 V_11,
               class Game.Block V_12,
               valuetype [Engine]Engine.Vector3 V_13,
               valuetype [Engine]Engine.BoundingBox[] V_14,
               int32 V_15,
               valuetype [Engine]Engine.BoundingBox V_16)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_000b:  call       int32 Game.Terrain::ToCell(float32)
      IL_0010:  ldarg.1
      IL_0011:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0016:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_001b:  call       int32 Game.Terrain::ToCell(float32)
      IL_0020:  ldc.i4.0
      IL_0021:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0026:  stloc.0
      IL_0027:  ldarg.1
      IL_0028:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_002d:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0032:  call       int32 Game.Terrain::ToCell(float32)
      IL_0037:  stloc.1
      IL_0038:  ldarg.1
      IL_0039:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_003e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0043:  call       int32 Game.Terrain::ToCell(float32)
      IL_0048:  stloc.2
      IL_0049:  ldarg.1
      IL_004a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_004f:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0054:  call       int32 Game.Terrain::ToCell(float32)
      IL_0059:  ldc.i4.s   127
      IL_005b:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_0060:  stloc.3
      IL_0061:  ldarg.1
      IL_0062:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_0067:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_006c:  call       int32 Game.Terrain::ToCell(float32)
      IL_0071:  stloc.s    V_4
      IL_0073:  stloc.s    V_5
      IL_0075:  br         IL_0188

      IL_007a:  ldloc.1
      IL_007b:  stloc.s    V_6
      IL_007d:  br         IL_0179

      IL_0082:  ldarg.0
      IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0088:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_008d:  ldloc.s    V_5
      IL_008f:  ldloc.s    V_6
      IL_0091:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_0096:  stloc.s    V_7
      IL_0098:  ldloc.s    V_7
      IL_009a:  brfalse    IL_0173

      IL_009f:  ldloc.s    V_5
      IL_00a1:  ldc.i4.s   15
      IL_00a3:  and
      IL_00a4:  ldloc.0
      IL_00a5:  ldloc.s    V_6
      IL_00a7:  ldc.i4.s   15
      IL_00a9:  and
      IL_00aa:  call       int32 Game.TerrainChunk::CalculateCellIndex(int32,
                                                                       int32,
                                                                       int32)
      IL_00af:  stloc.s    V_8
      IL_00b1:  ldloc.0
      IL_00b2:  stloc.s    V_9
      IL_00b4:  br         IL_016b

      IL_00b9:  ldloc.s    V_7
      IL_00bb:  ldloc.s    V_8
      IL_00bd:  callvirt   instance int32 Game.TerrainChunk::GetCellValueFast(int32)
      IL_00c2:  stloc.s    V_10
      IL_00c4:  ldloc.s    V_10
      IL_00c6:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_00cb:  stloc.s    V_11
      IL_00cd:  ldloc.s    V_11
      IL_00cf:  brfalse    IL_015f

      IL_00d4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00d9:  ldloc.s    V_11
      IL_00db:  ldelem.ref
      IL_00dc:  stloc.s    V_12
      IL_00de:  ldloc.s    V_12
      IL_00e0:  ldloc.s    V_10
      IL_00e2:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_00e7:  brfalse.s  IL_00eb

      IL_00e9:  ldc.i4.1
      IL_00ea:  ret

      IL_00eb:  ldloc.s    V_12
      IL_00ed:  ldfld      bool Game.Block::IsCollidable
      IL_00f2:  brfalse.s  IL_015f

      IL_00f4:  ldloca.s   V_13
      IL_00f6:  ldloc.s    V_5
      IL_00f8:  conv.r4
      IL_00f9:  ldloc.s    V_9
      IL_00fb:  conv.r4
      IL_00fc:  ldloc.s    V_6
      IL_00fe:  conv.r4
      IL_00ff:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0104:  ldloc.s    V_12
      IL_0106:  ldarg.0
      IL_0107:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_010c:  ldloc.s    V_10
      IL_010e:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
      IL_0113:  stloc.s    V_14
      IL_0115:  ldc.i4.0
      IL_0116:  stloc.s    V_15
      IL_0118:  br.s       IL_0157

      IL_011a:  ldloc.s    V_14
      IL_011c:  ldloc.s    V_15
      IL_011e:  ldelem     [Engine]Engine.BoundingBox
      IL_0123:  stloc.s    V_16
      IL_0125:  ldarga.s   'box'
      IL_0127:  ldloc.s    V_13
      IL_0129:  ldloc.s    V_16
      IL_012b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0130:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0135:  ldloc.s    V_13
      IL_0137:  ldloc.s    V_16
      IL_0139:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_013e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0143:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0148:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
      IL_014d:  brfalse.s  IL_0151

      IL_014f:  ldc.i4.1
      IL_0150:  ret

      IL_0151:  ldloc.s    V_15
      IL_0153:  ldc.i4.1
      IL_0154:  add
      IL_0155:  stloc.s    V_15
      IL_0157:  ldloc.s    V_15
      IL_0159:  ldloc.s    V_14
      IL_015b:  ldlen
      IL_015c:  conv.i4
      IL_015d:  blt.s      IL_011a

      IL_015f:  ldloc.s    V_9
      IL_0161:  ldc.i4.1
      IL_0162:  add
      IL_0163:  stloc.s    V_9
      IL_0165:  ldloc.s    V_8
      IL_0167:  ldc.i4.1
      IL_0168:  add
      IL_0169:  stloc.s    V_8
      IL_016b:  ldloc.s    V_9
      IL_016d:  ldloc.3
      IL_016e:  ble        IL_00b9

      IL_0173:  ldloc.s    V_6
      IL_0175:  ldc.i4.1
      IL_0176:  add
      IL_0177:  stloc.s    V_6
      IL_0179:  ldloc.s    V_6
      IL_017b:  ldloc.s    V_4
      IL_017d:  ble        IL_0082

      IL_0182:  ldloc.s    V_5
      IL_0184:  ldc.i4.1
      IL_0185:  add
      IL_0186:  stloc.s    V_5
      IL_0188:  ldloc.s    V_5
      IL_018a:  ldloc.2
      IL_018b:  ble        IL_007a

      IL_0190:  ldc.i4.0
      IL_0191:  ret
    } // end of method World::IsBlocked

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method World::.ctor

  } // end of class World

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> m_requests
  .field private class Game.AStar`1<valuetype [Engine]Engine.Vector3> m_astar
  .method public hidebysig instance void 
          QueuePathSearch(valuetype [Engine]Engine.Vector3 start,
                          valuetype [Engine]Engine.Vector3 end,
                          float32 minDistance,
                          valuetype [Engine]Engine.Vector3 boxSize,
                          int32 maxPositionsToCheck,
                          class Game.PathfindingResult result) cil managed
  {
    // 代码大小       187 (0xbb)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> V_0,
             bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  ldloc.0
      IL_000a:  ldloca.s   V_1
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0017:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::get_Count()
      IL_001c:  ldc.i4.s   10
      IL_001e:  bge.s      IL_007c

      IL_0020:  ldarg.s    result
      IL_0022:  ldc.i4.0
      IL_0023:  volatile.
      IL_0025:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.PathfindingResult::IsCompleted
      IL_002a:  ldarg.s    result
      IL_002c:  ldc.i4.1
      IL_002d:  stfld      bool Game.PathfindingResult::IsInProgress
      IL_0032:  ldarg.0
      IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0038:  newobj     instance void Game.SubsystemPathfinding/Request::.ctor()
      IL_003d:  dup
      IL_003e:  ldarg.1
      IL_003f:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::Start
      IL_0044:  dup
      IL_0045:  ldarg.2
      IL_0046:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::End
      IL_004b:  dup
      IL_004c:  ldarg.3
      IL_004d:  stfld      float32 Game.SubsystemPathfinding/Request::MinDistance
      IL_0052:  dup
      IL_0053:  ldarg.s    boxSize
      IL_0055:  stfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_005a:  dup
      IL_005b:  ldarg.s    maxPositionsToCheck
      IL_005d:  stfld      int32 Game.SubsystemPathfinding/Request::MaxPositionsToCheck
      IL_0062:  dup
      IL_0063:  ldarg.s    result
      IL_0065:  stfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
      IL_006a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::Enqueue(!0)
      IL_006f:  ldarg.0
      IL_0070:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0075:  call       void [System.Threading]System.Threading.Monitor::Pulse(object)
      IL_007a:  leave.s    IL_00ba

      IL_007c:  ldarg.s    result
      IL_007e:  ldc.i4.1
      IL_007f:  volatile.
      IL_0081:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.PathfindingResult::IsCompleted
      IL_0086:  ldarg.s    result
      IL_0088:  ldc.i4.0
      IL_0089:  stfld      bool Game.PathfindingResult::IsInProgress
      IL_008e:  ldarg.s    result
      IL_0090:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
      IL_0095:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::Clear()
      IL_009a:  ldarg.s    result
      IL_009c:  ldc.r4     0.0
      IL_00a1:  stfld      float32 Game.PathfindingResult::PathCost
      IL_00a6:  ldarg.s    result
      IL_00a8:  ldc.i4.0
      IL_00a9:  stfld      int32 Game.PathfindingResult::PositionsChecked
      IL_00ae:  leave.s    IL_00ba

    }  // end .try
    finally
    {
      IL_00b0:  ldloc.1
      IL_00b1:  brfalse.s  IL_00b9

      IL_00b3:  ldloc.0
      IL_00b4:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_00b9:  endfinally
    }  // end handler
    IL_00ba:  ret
  } // end of method SubsystemPathfinding::QueuePathSearch

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       105 (0x69)
    .maxstack  3
    .locals init (class Game.SubsystemPathfinding/World V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_0012:  newobj     instance void Game.SubsystemPathfinding/World::.ctor()
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_001f:  ldc.i4.1
    IL_0020:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0025:  stfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0030:  newobj     instance void Game.SubsystemPathfinding/Storage::.ctor()
    IL_0035:  callvirt   instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::set_OpenStorage(class Game.IAStarStorage`1<!0>)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0040:  newobj     instance void Game.SubsystemPathfinding/Storage::.ctor()
    IL_0045:  callvirt   instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::set_ClosedStorage(class Game.IAStarStorage`1<!0>)
    IL_004a:  ldarg.0
    IL_004b:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0050:  ldloc.0
    IL_0051:  callvirt   instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::set_World(class Game.IAStarWorld`1<!0>)
    IL_0056:  ldarg.0
    IL_0057:  ldftn      instance void Game.SubsystemPathfinding::ThreadFunction()
    IL_005d:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0062:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Run(class [System.Runtime]System.Action)
    IL_0067:  pop
    IL_0068:  ret
  } // end of method SubsystemPathfinding::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  2
    .locals init (class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> V_0,
             bool V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    .try
    {
      IL_0009:  ldloc.0
      IL_000a:  ldloca.s   V_1
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  ldarg.0
      IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0017:  callvirt   instance void class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::Clear()
      IL_001c:  ldarg.0
      IL_001d:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0022:  ldnull
      IL_0023:  callvirt   instance void class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::Enqueue(!0)
      IL_0028:  ldarg.0
      IL_0029:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_002e:  call       void [System.Threading]System.Threading.Monitor::Pulse(object)
      IL_0033:  leave.s    IL_003f

    }  // end .try
    finally
    {
      IL_0035:  ldloc.1
      IL_0036:  brfalse.s  IL_003e

      IL_0038:  ldloc.0
      IL_0039:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_003e:  endfinally
    }  // end handler
    IL_003f:  ret
  } // end of method SubsystemPathfinding::Dispose

  .method private hidebysig instance void 
          ThreadFunction() cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  2
    .locals init (class Game.SubsystemPathfinding/Request V_0,
             class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> V_1,
             bool V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
    IL_0006:  stloc.1
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.2
    .try
    {
      IL_0009:  ldloc.1
      IL_000a:  ldloca.s   V_2
      IL_000c:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0011:  br.s       IL_001f

      IL_0013:  ldarg.0
      IL_0014:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0019:  call       bool [System.Threading]System.Threading.Monitor::Wait(object)
      IL_001e:  pop
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0025:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::get_Count()
      IL_002a:  brfalse.s  IL_0013

      IL_002c:  ldarg.0
      IL_002d:  ldfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
      IL_0032:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::Dequeue()
      IL_0037:  stloc.0
      IL_0038:  leave.s    IL_0044

    }  // end .try
    finally
    {
      IL_003a:  ldloc.2
      IL_003b:  brfalse.s  IL_0043

      IL_003d:  ldloc.1
      IL_003e:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_0043:  endfinally
    }  // end handler
    IL_0044:  ldloc.0
    IL_0045:  brtrue.s   IL_0048

    IL_0047:  ret

    IL_0048:  ldarg.0
    IL_0049:  ldloc.0
    IL_004a:  call       instance void Game.SubsystemPathfinding::ProcessRequest(class Game.SubsystemPathfinding/Request)
    IL_004f:  ldc.i4     0xfa
    IL_0054:  call       class [System.Threading.Tasks]System.Threading.Tasks.Task [System.Threading.Tasks]System.Threading.Tasks.Task::Delay(int32)
    IL_0059:  callvirt   instance void [System.Threading.Tasks]System.Threading.Tasks.Task::Wait()
    IL_005e:  br.s       IL_0000
  } // end of method SubsystemPathfinding::ThreadFunction

  .method private hidebysig instance void 
          ProcessRequest(class Game.SubsystemPathfinding/Request 'request') cil managed
  {
    // 代码大小       206 (0xce)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0006:  callvirt   instance class Game.IAStarWorld`1<!0> class Game.AStar`1<valuetype [Engine]Engine.Vector3>::get_World()
    IL_000b:  castclass  Game.SubsystemPathfinding/World
    IL_0010:  ldarg.1
    IL_0011:  stfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_001c:  ldarg.1
    IL_001d:  ldfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
    IL_0022:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> Game.PathfindingResult::Path
    IL_0027:  callvirt   instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::set_Path(class [Engine]Engine.DynamicArray`1<!0>)
    IL_002c:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0031:  pop
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0038:  ldarg.1
    IL_0039:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::Start
    IL_003e:  ldarg.1
    IL_003f:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::End
    IL_0044:  ldarg.1
    IL_0045:  ldfld      float32 Game.SubsystemPathfinding/Request::MinDistance
    IL_004a:  ldarg.1
    IL_004b:  ldfld      int32 Game.SubsystemPathfinding/Request::MaxPositionsToCheck
    IL_0050:  callvirt   instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::FindPath(!0,
                                                                                                      !0,
                                                                                                      float32,
                                                                                                      int32)
    IL_0055:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_005a:  pop
    IL_005b:  ldarg.0
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0062:  callvirt   instance class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<valuetype [Engine]Engine.Vector3>::get_Path()
    IL_0067:  ldarg.1
    IL_0068:  ldfld      valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
    IL_006d:  call       instance void Game.SubsystemPathfinding::SmoothPath(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>,
                                                                             valuetype [Engine]Engine.Vector3)
    IL_0072:  call       float64 [Engine]Engine.Time::get_RealTime()
    IL_0077:  pop
    IL_0078:  ldarg.1
    IL_0079:  ldfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0084:  callvirt   instance float32 class Game.AStar`1<valuetype [Engine]Engine.Vector3>::get_PathCost()
    IL_0089:  stfld      float32 Game.PathfindingResult::PathCost
    IL_008e:  ldarg.1
    IL_008f:  ldfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
    IL_0094:  ldarg.0
    IL_0095:  ldfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_009a:  callvirt   instance class Game.IAStarStorage`1<!0> class Game.AStar`1<valuetype [Engine]Engine.Vector3>::get_ClosedStorage()
    IL_009f:  castclass  Game.SubsystemPathfinding/Storage
    IL_00a4:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object> Game.SubsystemPathfinding/Storage::Dictionary
    IL_00a9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Vector3,object>::get_Count()
    IL_00ae:  stfld      int32 Game.PathfindingResult::PositionsChecked
    IL_00b3:  ldarg.1
    IL_00b4:  ldfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
    IL_00b9:  ldc.i4.0
    IL_00ba:  stfld      bool Game.PathfindingResult::IsInProgress
    IL_00bf:  ldarg.1
    IL_00c0:  ldfld      class Game.PathfindingResult Game.SubsystemPathfinding/Request::PathfindingResult
    IL_00c5:  ldc.i4.1
    IL_00c6:  volatile.
    IL_00c8:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.PathfindingResult::IsCompleted
    IL_00cd:  ret
  } // end of method SubsystemPathfinding::ProcessRequest

  .method private hidebysig instance void 
          SmoothPath(class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3> path,
                     valuetype [Engine]Engine.Vector3 boxSize) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  5
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Count()
    IL_0006:  ldc.i4.2
    IL_0007:  sub
    IL_0008:  stloc.0
    IL_0009:  br.s       IL_003b

    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Array()
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  ldelem     [Engine]Engine.Vector3
    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::get_Array()
    IL_0020:  ldloc.0
    IL_0021:  ldc.i4.1
    IL_0022:  sub
    IL_0023:  ldelem     [Engine]Engine.Vector3
    IL_0028:  ldarg.2
    IL_0029:  call       instance bool Game.SubsystemPathfinding::IsPassable(valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             valuetype [Engine]Engine.Vector3)
    IL_002e:  brfalse.s  IL_0037

    IL_0030:  ldarg.1
    IL_0031:  ldloc.0
    IL_0032:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::RemoveAt(int32)
    IL_0037:  ldloc.0
    IL_0038:  ldc.i4.1
    IL_0039:  sub
    IL_003a:  stloc.0
    IL_003b:  ldloc.0
    IL_003c:  ldc.i4.0
    IL_003d:  bgt.s      IL_000b

    IL_003f:  ret
  } // end of method SubsystemPathfinding::SmoothPath

  .method private hidebysig instance bool 
          IsPassable(valuetype [Engine]Engine.Vector3 p1,
                     valuetype [Engine]Engine.Vector3 p2,
                     valuetype [Engine]Engine.Vector3 boxSize) cil managed
  {
    // 代码大小       542 (0x21e)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_3)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0008:  ldarg.1
    IL_0009:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_000e:  ldc.r4     0.5
    IL_0013:  add
    IL_0014:  ldarg.1
    IL_0015:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_001a:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001f:  ldloca.s   V_1
    IL_0021:  ldarg.2
    IL_0022:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0027:  ldarg.2
    IL_0028:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_002d:  ldc.r4     0.5
    IL_0032:  add
    IL_0033:  ldarg.2
    IL_0034:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0039:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_003e:  ldc.r4     0.5
    IL_0043:  ldarg.3
    IL_0044:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0049:  mul
    IL_004a:  ldc.r4     0.1
    IL_004f:  add
    IL_0050:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0055:  ldloc.1
    IL_0056:  ldloc.0
    IL_0057:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_005c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0061:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0066:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_006b:  stloc.2
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_0072:  ldloc.0
    IL_0073:  ldloc.1
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.1
    IL_0076:  ldnull
    IL_0077:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Obstacle(int32,
                                                                                           float32)
    IL_007d:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0082:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0087:  stloc.3
    IL_0088:  ldloca.s   V_3
    IL_008a:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_008f:  brfalse.s  IL_0093

    IL_0091:  ldc.i4.0
    IL_0092:  ret

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_0099:  ldloc.0
    IL_009a:  ldloc.2
    IL_009b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00a0:  ldloc.1
    IL_00a1:  ldloc.2
    IL_00a2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00a7:  ldc.i4.0
    IL_00a8:  ldc.i4.1
    IL_00a9:  ldnull
    IL_00aa:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Obstacle(int32,
                                                                                           float32)
    IL_00b0:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00b5:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00ba:  stloc.3
    IL_00bb:  ldloca.s   V_3
    IL_00bd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00c2:  brfalse.s  IL_00c6

    IL_00c4:  ldc.i4.0
    IL_00c5:  ret

    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_00cc:  ldloc.0
    IL_00cd:  ldloc.2
    IL_00ce:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00d3:  ldloc.1
    IL_00d4:  ldloc.2
    IL_00d5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00da:  ldc.i4.0
    IL_00db:  ldc.i4.1
    IL_00dc:  ldnull
    IL_00dd:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Obstacle(int32,
                                                                                           float32)
    IL_00e3:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_00e8:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_00ed:  stloc.3
    IL_00ee:  ldloca.s   V_3
    IL_00f0:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_00f5:  brfalse.s  IL_00f9

    IL_00f7:  ldc.i4.0
    IL_00f8:  ret

    IL_00f9:  ldarg.0
    IL_00fa:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_00ff:  ldloc.0
    IL_0100:  ldc.r4     0.0
    IL_0105:  ldc.r4     -1.
    IL_010a:  ldc.r4     0.0
    IL_010f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0114:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0119:  ldloc.1
    IL_011a:  ldc.r4     0.0
    IL_011f:  ldc.r4     -1.
    IL_0124:  ldc.r4     0.0
    IL_0129:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_012e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0133:  ldc.i4.0
    IL_0134:  ldc.i4.0
    IL_0135:  ldnull
    IL_0136:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Support(int32,
                                                                                          float32)
    IL_013c:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_0141:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0146:  stloc.3
    IL_0147:  ldloca.s   V_3
    IL_0149:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_014e:  brfalse.s  IL_0152

    IL_0150:  ldc.i4.0
    IL_0151:  ret

    IL_0152:  ldarg.0
    IL_0153:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_0158:  ldloc.0
    IL_0159:  ldc.r4     0.0
    IL_015e:  ldc.r4     -1.
    IL_0163:  ldc.r4     0.0
    IL_0168:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_016d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0172:  ldloc.2
    IL_0173:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0178:  ldloc.1
    IL_0179:  ldc.r4     0.0
    IL_017e:  ldc.r4     -1.
    IL_0183:  ldc.r4     0.0
    IL_0188:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_018d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0192:  ldloc.2
    IL_0193:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0198:  ldc.i4.0
    IL_0199:  ldc.i4.0
    IL_019a:  ldnull
    IL_019b:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Support(int32,
                                                                                          float32)
    IL_01a1:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_01a6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_01ab:  stloc.3
    IL_01ac:  ldloca.s   V_3
    IL_01ae:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_01b3:  brfalse.s  IL_01b7

    IL_01b5:  ldc.i4.0
    IL_01b6:  ret

    IL_01b7:  ldarg.0
    IL_01b8:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding::m_subsystemTerrain
    IL_01bd:  ldloc.0
    IL_01be:  ldc.r4     0.0
    IL_01c3:  ldc.r4     -1.
    IL_01c8:  ldc.r4     0.0
    IL_01cd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01d2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01d7:  ldloc.2
    IL_01d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01dd:  ldloc.1
    IL_01de:  ldc.r4     0.0
    IL_01e3:  ldc.r4     -1.
    IL_01e8:  ldc.r4     0.0
    IL_01ed:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01f7:  ldloc.2
    IL_01f8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fd:  ldc.i4.0
    IL_01fe:  ldc.i4.0
    IL_01ff:  ldnull
    IL_0200:  ldftn      bool Game.SubsystemPathfinding::SmoothingRaycastFunction_Support(int32,
                                                                                          float32)
    IL_0206:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_020b:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0210:  stloc.3
    IL_0211:  ldloca.s   V_3
    IL_0213:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0218:  brfalse.s  IL_021c

    IL_021a:  ldc.i4.0
    IL_021b:  ret

    IL_021c:  ldc.i4.1
    IL_021d:  ret
  } // end of method SubsystemPathfinding::IsPassable

  .method private hidebysig static bool  SmoothingRaycastFunction_Obstacle(int32 'value',
                                                                           float32 distance) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_0016:  brfalse.s  IL_001a

    IL_0018:  ldc.i4.1
    IL_0019:  ret

    IL_001a:  ldloc.1
    IL_001b:  ldfld      bool Game.Block::IsCollidable
    IL_0020:  brfalse.s  IL_0024

    IL_0022:  ldc.i4.1
    IL_0023:  ret

    IL_0024:  ldc.i4.0
    IL_0025:  ret
  } // end of method SubsystemPathfinding::SmoothingRaycastFunction_Obstacle

  .method private hidebysig static bool  SmoothingRaycastFunction_Support(int32 'value',
                                                                          float32 distance) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.Block V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldarg.0
    IL_0011:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
    IL_0016:  brfalse.s  IL_001a

    IL_0018:  ldc.i4.1
    IL_0019:  ret

    IL_001a:  ldloc.1
    IL_001b:  ldfld      bool Game.Block::IsCollidable
    IL_0020:  brtrue.s   IL_0024

    IL_0022:  ldc.i4.1
    IL_0023:  ret

    IL_0024:  ldc.i4.0
    IL_0025:  ret
  } // end of method SubsystemPathfinding::SmoothingRaycastFunction_Support

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Queue`1<class Game.SubsystemPathfinding/Request> Game.SubsystemPathfinding::m_requests
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class Game.AStar`1<valuetype [Engine]Engine.Vector3>::.ctor()
    IL_0011:  stfld      class Game.AStar`1<valuetype [Engine]Engine.Vector3> Game.SubsystemPathfinding::m_astar
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_001c:  ret
  } // end of method SubsystemPathfinding::.ctor

} // end of class Game.SubsystemPathfinding