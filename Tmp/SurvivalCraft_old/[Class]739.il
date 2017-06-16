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
      // 代码大小       605 (0x25d)
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
      IL_0014:  conv.i4
      IL_0015:  ldarg.3
      IL_0016:  add
      IL_0017:  stloc.2
      IL_0018:  ldarg.2
      IL_0019:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_001e:  conv.i4
      IL_001f:  stloc.3
      IL_0020:  ldarg.2
      IL_0021:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0026:  conv.i4
      IL_0027:  ldarg.s    dz
      IL_0029:  add
      IL_002a:  stloc.s    V_4
      IL_002c:  ldarg.0
      IL_002d:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0032:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0037:  ldloc.2
      IL_0038:  ldloc.3
      IL_0039:  ldloc.s    V_4
      IL_003b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_0040:  stloc.s    V_5
      IL_0042:  ldloc.s    V_5
      IL_0044:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0049:  stloc.s    V_6
      IL_004b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0050:  ldloc.s    V_6
      IL_0052:  ldelem.ref
      IL_0053:  stloc.s    V_7
      IL_0055:  ldloc.s    V_7
      IL_0057:  ldloc.s    V_5
      IL_0059:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_005e:  brfalse.s  IL_0061

      IL_0060:  ret

      IL_0061:  ldloc.s    V_7
      IL_0063:  ldfld      bool Game.Block::IsCollidable
      IL_0068:  brfalse.s  IL_00a0

      IL_006a:  ldarg.0
      IL_006b:  ldloc.s    V_7
      IL_006d:  ldloc.s    V_5
      IL_006f:  call       instance float32 Game.SubsystemPathfinding/World::GetBlockWalkingHeight(class Game.Block,
                                                                                                   int32)
      IL_0074:  stloc.s    V_13
      IL_0076:  ldloc.s    V_13
      IL_0078:  ldc.r4     0.5
      IL_007d:  ble.un.s   IL_0092

      IL_007f:  ldloc.s    V_7
      IL_0081:  ldfld      bool Game.Block::NoAutoJump
      IL_0086:  brtrue.s   IL_0091

      IL_0088:  ldloc.s    V_7
      IL_008a:  ldfld      bool Game.Block::NoSmoothRise
      IL_008f:  brfalse.s  IL_0092

      IL_0091:  ret

      IL_0092:  ldloc.3
      IL_0093:  conv.r4
      IL_0094:  ldloc.s    V_13
      IL_0096:  add
      IL_0097:  stloc.0
      IL_0098:  ldloc.3
      IL_0099:  conv.r4
      IL_009a:  ldloc.s    V_13
      IL_009c:  add
      IL_009d:  stloc.1
      IL_009e:  br.s       IL_0107

      IL_00a0:  ldc.i4.0
      IL_00a1:  stloc.s    V_14
      IL_00a3:  ldc.i4.m1
      IL_00a4:  stloc.s    V_15
      IL_00a6:  br.s       IL_00fc

      IL_00a8:  ldarg.0
      IL_00a9:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_00ae:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00b3:  ldloc.2
      IL_00b4:  ldloc.3
      IL_00b5:  ldloc.s    V_15
      IL_00b7:  add
      IL_00b8:  ldloc.s    V_4
      IL_00ba:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_00bf:  stloc.s    V_16
      IL_00c1:  ldloc.s    V_16
      IL_00c3:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_00c8:  stloc.s    V_17
      IL_00ca:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_00cf:  ldloc.s    V_17
      IL_00d1:  ldelem.ref
      IL_00d2:  stloc.s    V_18
      IL_00d4:  ldloc.s    V_18
      IL_00d6:  ldloc.s    V_16
      IL_00d8:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_00dd:  brfalse.s  IL_00e0

      IL_00df:  ret

      IL_00e0:  ldloc.s    V_18
      IL_00e2:  ldfld      bool Game.Block::IsCollidable
      IL_00e7:  brfalse.s  IL_00f6

      IL_00e9:  ldloc.3
      IL_00ea:  ldloc.s    V_15
      IL_00ec:  add
      IL_00ed:  ldc.i4.1
      IL_00ee:  add
      IL_00ef:  conv.r4
      IL_00f0:  stloc.0
      IL_00f1:  ldc.i4.1
      IL_00f2:  stloc.s    V_14
      IL_00f4:  br.s       IL_0102

      IL_00f6:  ldloc.s    V_15
      IL_00f8:  ldc.i4.1
      IL_00f9:  sub
      IL_00fa:  stloc.s    V_15
      IL_00fc:  ldloc.s    V_15
      IL_00fe:  ldc.i4.s   -4
      IL_0100:  bge.s      IL_00a8

      IL_0102:  ldloc.s    V_14
      IL_0104:  brtrue.s   IL_0107

      IL_0106:  ret

      IL_0107:  ldarg.3
      IL_0108:  brfalse.s  IL_0111

      IL_010a:  ldarg.s    dz
      IL_010c:  brfalse.s  IL_0111

      IL_010e:  ldc.i4.3
      IL_010f:  br.s       IL_0112

      IL_0111:  ldc.i4.2
      IL_0112:  stloc.s    V_8
      IL_0114:  ldloca.s   V_9
      IL_0116:  ldarg.2
      IL_0117:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_011c:  ldloc.1
      IL_011d:  ldc.r4     9.9999998e-003
      IL_0122:  add
      IL_0123:  ldarg.2
      IL_0124:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0129:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_012e:  ldloca.s   V_10
      IL_0130:  ldloc.2
      IL_0131:  conv.r4
      IL_0132:  ldc.r4     0.5
      IL_0137:  add
      IL_0138:  ldloc.1
      IL_0139:  ldc.r4     9.9999998e-003
      IL_013e:  add
      IL_013f:  ldloc.s    V_4
      IL_0141:  conv.r4
      IL_0142:  ldc.r4     0.5
      IL_0147:  add
      IL_0148:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_014d:  ldc.r4     1.
      IL_0152:  ldloc.s    V_8
      IL_0154:  conv.r4
      IL_0155:  div
      IL_0156:  ldloc.s    V_10
      IL_0158:  ldloc.s    V_9
      IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_015f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0164:  stloc.s    V_11
      IL_0166:  ldc.i4.1
      IL_0167:  stloc.s    V_19
      IL_0169:  br         IL_0236

      IL_016e:  ldloc.s    V_9
      IL_0170:  ldloc.s    V_19
      IL_0172:  conv.r4
      IL_0173:  ldloc.s    V_11
      IL_0175:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_017a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_017f:  stloc.s    V_20
      IL_0181:  ldloca.s   V_12
      IL_0183:  ldloc.s    V_20
      IL_0185:  ldarg.0
      IL_0186:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_018b:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_0190:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0195:  ldc.r4     2.
      IL_019a:  div
      IL_019b:  ldc.r4     9.9999998e-003
      IL_01a0:  add
      IL_01a1:  ldc.r4     0.0
      IL_01a6:  ldarg.0
      IL_01a7:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01ac:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_01b1:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_01b6:  ldc.r4     2.
      IL_01bb:  div
      IL_01bc:  ldc.r4     9.9999998e-003
      IL_01c1:  add
      IL_01c2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_01c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3)
      IL_01cc:  ldloc.s    V_20
      IL_01ce:  ldarg.0
      IL_01cf:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01d4:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_01d9:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_01de:  ldc.r4     2.
      IL_01e3:  div
      IL_01e4:  ldc.r4     9.9999998e-003
      IL_01e9:  sub
      IL_01ea:  ldarg.0
      IL_01eb:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_01f0:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_01f5:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_01fa:  ldarg.0
      IL_01fb:  ldfld      class Game.SubsystemPathfinding/Request Game.SubsystemPathfinding/World::Request
      IL_0200:  ldflda     valuetype [Engine]Engine.Vector3 Game.SubsystemPathfinding/Request::BoxSize
      IL_0205:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_020a:  ldc.r4     2.
      IL_020f:  div
      IL_0210:  ldc.r4     9.9999998e-003
      IL_0215:  sub
      IL_0216:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_021b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0220:  call       instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_0225:  ldarg.0
      IL_0226:  ldloc.s    V_12
      IL_0228:  call       instance bool Game.SubsystemPathfinding/World::IsBlocked(valuetype [Engine]Engine.BoundingBox)
      IL_022d:  brfalse.s  IL_0230

      IL_022f:  ret

      IL_0230:  ldloc.s    V_19
      IL_0232:  ldc.i4.1
      IL_0233:  add
      IL_0234:  stloc.s    V_19
      IL_0236:  ldloc.s    V_19
      IL_0238:  ldloc.s    V_8
      IL_023a:  ble        IL_016e

      IL_023f:  ldarg.1
      IL_0240:  ldloc.2
      IL_0241:  conv.r4
      IL_0242:  ldc.r4     0.5
      IL_0247:  add
      IL_0248:  ldloc.0
      IL_0249:  ldloc.s    V_4
      IL_024b:  conv.r4
      IL_024c:  ldc.r4     0.5
      IL_0251:  add
      IL_0252:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0257:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Vector3>::Add(!0)
      IL_025c:  ret
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
      // 代码大小       521 (0x209)
      .maxstack  4
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6,
               int32 V_7,
               int32 V_8,
               int32 V_9,
               int32 V_10,
               class Game.Block V_11,
               valuetype [Engine]Engine.Vector3 V_12,
               valuetype [Engine]Engine.BoundingBox[] V_13,
               int32 V_14,
               valuetype [Engine]Engine.BoundingBox V_15)
      IL_0000:  ldarg.1
      IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_0006:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_000b:  conv.i4
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0012:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0017:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
      IL_001c:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0021:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0026:  ldarg.1
      IL_0027:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_002c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0031:  conv.i4
      IL_0032:  ldc.i4.0
      IL_0033:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_0038:  stloc.0
      IL_0039:  ldarg.1
      IL_003a:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_003f:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_0044:  conv.i4
      IL_0045:  ldarg.0
      IL_0046:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_004b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0050:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
      IL_0055:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005a:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                               int32)
      IL_005f:  stloc.1
      IL_0060:  ldarg.1
      IL_0061:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_0066:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_006b:  conv.i4
      IL_006c:  ldarg.0
      IL_006d:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0072:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0077:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
      IL_007c:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0081:  ldarg.0
      IL_0082:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0087:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_008c:  callvirt   instance int32 Game.TerrainData::get_SizeX()
      IL_0091:  add
      IL_0092:  ldc.i4.1
      IL_0093:  sub
      IL_0094:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_0099:  stloc.2
      IL_009a:  ldarg.1
      IL_009b:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_00a0:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_00a5:  conv.i4
      IL_00a6:  ldarg.0
      IL_00a7:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_00ac:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00b1:  callvirt   instance int32 Game.TerrainData::get_SizeY()
      IL_00b6:  ldc.i4.1
      IL_00b7:  sub
      IL_00b8:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_00bd:  stloc.3
      IL_00be:  ldarg.1
      IL_00bf:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_00c4:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00c9:  conv.i4
      IL_00ca:  ldarg.0
      IL_00cb:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_00d0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00d5:  callvirt   instance valuetype [Engine]Engine.Point2 Game.TerrainData::get_Origin()
      IL_00da:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_00df:  ldarg.0
      IL_00e0:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_00e5:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_00ea:  callvirt   instance int32 Game.TerrainData::get_SizeZ()
      IL_00ef:  add
      IL_00f0:  ldc.i4.1
      IL_00f1:  sub
      IL_00f2:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                               int32)
      IL_00f7:  stloc.s    V_4
      IL_00f9:  stloc.s    V_5
      IL_00fb:  br         IL_01ff

      IL_0100:  ldloc.1
      IL_0101:  stloc.s    V_6
      IL_0103:  br         IL_01f0

      IL_0108:  ldarg.0
      IL_0109:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_010e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0113:  ldloc.s    V_5
      IL_0115:  ldloc.0
      IL_0116:  ldloc.s    V_6
      IL_0118:  callvirt   instance int32 Game.TerrainData::CalculateCellIndex(int32,
                                                                               int32,
                                                                               int32)
      IL_011d:  stloc.s    V_7
      IL_011f:  ldloc.0
      IL_0120:  stloc.s    V_8
      IL_0122:  br         IL_01e2

      IL_0127:  ldarg.0
      IL_0128:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_012d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0132:  ldloc.s    V_7
      IL_0134:  callvirt   instance int32 Game.TerrainData::GetCellValueFast(int32)
      IL_0139:  stloc.s    V_9
      IL_013b:  ldloc.s    V_9
      IL_013d:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0142:  stloc.s    V_10
      IL_0144:  ldloc.s    V_10
      IL_0146:  brfalse    IL_01d6

      IL_014b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0150:  ldloc.s    V_10
      IL_0152:  ldelem.ref
      IL_0153:  stloc.s    V_11
      IL_0155:  ldloc.s    V_11
      IL_0157:  ldloc.s    V_9
      IL_0159:  callvirt   instance bool Game.Block::ShouldAvoid(int32)
      IL_015e:  brfalse.s  IL_0162

      IL_0160:  ldc.i4.1
      IL_0161:  ret

      IL_0162:  ldloc.s    V_11
      IL_0164:  ldfld      bool Game.Block::IsCollidable
      IL_0169:  brfalse.s  IL_01d6

      IL_016b:  ldloca.s   V_12
      IL_016d:  ldloc.s    V_5
      IL_016f:  conv.r4
      IL_0170:  ldloc.s    V_8
      IL_0172:  conv.r4
      IL_0173:  ldloc.s    V_6
      IL_0175:  conv.r4
      IL_0176:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_017b:  ldloc.s    V_11
      IL_017d:  ldarg.0
      IL_017e:  ldfld      class Game.SubsystemTerrain Game.SubsystemPathfinding/World::SubsystemTerrain
      IL_0183:  ldloc.s    V_9
      IL_0185:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.Block::GetCustomCollisionBoxes(class Game.SubsystemTerrain,
                                                                                                               int32)
      IL_018a:  stloc.s    V_13
      IL_018c:  ldc.i4.0
      IL_018d:  stloc.s    V_14
      IL_018f:  br.s       IL_01ce

      IL_0191:  ldloc.s    V_13
      IL_0193:  ldloc.s    V_14
      IL_0195:  ldelem     [Engine]Engine.BoundingBox
      IL_019a:  stloc.s    V_15
      IL_019c:  ldarga.s   'box'
      IL_019e:  ldloc.s    V_12
      IL_01a0:  ldloc.s    V_15
      IL_01a2:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_01a7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01ac:  ldloc.s    V_12
      IL_01ae:  ldloc.s    V_15
      IL_01b0:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_01b5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_01ba:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_01bf:  call       instance bool [Engine]Engine.BoundingBox::Intersection(valuetype [Engine]Engine.BoundingBox)
      IL_01c4:  brfalse.s  IL_01c8

      IL_01c6:  ldc.i4.1
      IL_01c7:  ret

      IL_01c8:  ldloc.s    V_14
      IL_01ca:  ldc.i4.1
      IL_01cb:  add
      IL_01cc:  stloc.s    V_14
      IL_01ce:  ldloc.s    V_14
      IL_01d0:  ldloc.s    V_13
      IL_01d2:  ldlen
      IL_01d3:  conv.i4
      IL_01d4:  blt.s      IL_0191

      IL_01d6:  ldloc.s    V_8
      IL_01d8:  ldc.i4.1
      IL_01d9:  add
      IL_01da:  stloc.s    V_8
      IL_01dc:  ldloc.s    V_7
      IL_01de:  ldc.i4.1
      IL_01df:  add
      IL_01e0:  stloc.s    V_7
      IL_01e2:  ldloc.s    V_8
      IL_01e4:  ldloc.3
      IL_01e5:  ble        IL_0127

      IL_01ea:  ldloc.s    V_6
      IL_01ec:  ldc.i4.1
      IL_01ed:  add
      IL_01ee:  stloc.s    V_6
      IL_01f0:  ldloc.s    V_6
      IL_01f2:  ldloc.s    V_4
      IL_01f4:  ble        IL_0108

      IL_01f9:  ldloc.s    V_5
      IL_01fb:  ldc.i4.1
      IL_01fc:  add
      IL_01fd:  stloc.s    V_5
      IL_01ff:  ldloc.s    V_5
      IL_0201:  ldloc.2
      IL_0202:  ble        IL_0100

      IL_0207:  ldc.i4.0
      IL_0208:  ret
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
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
    IL_0001:  call       int32 Game.TerrainData::ExtractContents(int32)
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