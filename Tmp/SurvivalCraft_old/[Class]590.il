.class public auto ansi beforefieldinit Game.SubsystemCollapsingBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private static literal string IdString = "CollapsingBlock"
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.SubsystemMovingBlocks m_subsystemMovingBlocks
  .field private static int32[] m_handledBlocks
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemCollapsingBlockBehavior::m_handledBlocks
    IL_0005:  ret
  } // end of method SubsystemCollapsingBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemCollapsingBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldSettings::EnvironmentBehaviorMode
    IL_0010:  brfalse.s  IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  ldarg.2
    IL_0016:  ldarg.3
    IL_0017:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_001c:  call       instance void Game.SubsystemCollapsingBlockBehavior::TryCollapseColumn(valuetype [Engine]Engine.Point3)
    IL_0021:  ret
  } // end of method SubsystemCollapsingBlockBehavior::OnNeighborBlockChanged

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0014:  stfld      class Game.SubsystemGameInfo Game.SubsystemCollapsingBlockBehavior::m_subsystemGameInfo
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_0026:  stfld      class Game.SubsystemSoundMaterials Game.SubsystemCollapsingBlockBehavior::m_subsystemSoundMaterials
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemMovingBlocks>(bool)
    IL_0038:  stfld      class Game.SubsystemMovingBlocks Game.SubsystemCollapsingBlockBehavior::m_subsystemMovingBlocks
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemCollapsingBlockBehavior::m_subsystemMovingBlocks
    IL_0043:  ldarg.0
    IL_0044:  ldftn      instance void Game.SubsystemCollapsingBlockBehavior::MovingBlocksStopped(class Game.IMovingBlockSet)
    IL_004a:  newobj     instance void class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>::.ctor(object,
                                                                                                                native int)
    IL_004f:  callvirt   instance void Game.SubsystemMovingBlocks::add_Stopped(class [System.Runtime]System.Action`1<class Game.IMovingBlockSet>)
    IL_0054:  ldarg.0
    IL_0055:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemCollapsingBlockBehavior::m_subsystemMovingBlocks
    IL_005a:  ldarg.0
    IL_005b:  ldftn      instance void Game.SubsystemCollapsingBlockBehavior::MovingBlocksCollidedWithTerrain(class Game.IMovingBlockSet,
                                                                                                              valuetype [Engine]Engine.Point3)
    IL_0061:  newobj     instance void class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>::.ctor(object,
                                                                                                                                                native int)
    IL_0066:  callvirt   instance void Game.SubsystemMovingBlocks::add_CollidedWithTerrain(class [System.Runtime]System.Action`2<class Game.IMovingBlockSet,valuetype [Engine]Engine.Point3>)
    IL_006b:  ret
  } // end of method SubsystemCollapsingBlockBehavior::Load

  .method private hidebysig instance void 
          MovingBlocksCollidedWithTerrain(class Game.IMovingBlockSet movingBlockSet,
                                          valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       111 (0x6f)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance string Game.IMovingBlockSet::get_Id()
    IL_0006:  ldstr      "CollapsingBlock"
    IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0010:  brfalse.s  IL_006e

    IL_0012:  ldarg.0
    IL_0013:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0018:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001d:  ldarg.2
    IL_001e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0023:  ldarg.2
    IL_0024:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0029:  ldarg.2
    IL_002a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_002f:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  ldloc.0
    IL_0037:  call       instance bool Game.SubsystemCollapsingBlockBehavior::IsCollapseSupportBlock(int32)
    IL_003c:  brfalse.s  IL_0045

    IL_003e:  ldarg.1
    IL_003f:  callvirt   instance void Game.IMovingBlockSet::Stop()
    IL_0044:  ret

    IL_0045:  ldloc.0
    IL_0046:  call       bool Game.SubsystemCollapsingBlockBehavior::IsCollapseDestructibleBlock(int32)
    IL_004b:  brfalse.s  IL_006e

    IL_004d:  ldarg.0
    IL_004e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0053:  ldc.i4.0
    IL_0054:  ldarg.2
    IL_0055:  ldfld      int32 [Engine]Engine.Point3::X
    IL_005a:  ldarg.2
    IL_005b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0060:  ldarg.2
    IL_0061:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0066:  ldc.i4.0
    IL_0067:  ldc.i4.0
    IL_0068:  ldc.i4.0
    IL_0069:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_006e:  ret
  } // end of method SubsystemCollapsingBlockBehavior::MovingBlocksCollidedWithTerrain

  .method private hidebysig instance void 
          MovingBlocksStopped(class Game.IMovingBlockSet movingBlockSet) cil managed
  {
    // 代码大小       252 (0xfc)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock> V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> V_2,
             valuetype Game.MovingBlock V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance string Game.IMovingBlockSet::get_Id()
    IL_0006:  ldstr      "CollapsingBlock"
    IL_000b:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0010:  brfalse    IL_00fb

    IL_0015:  ldarg.1
    IL_0016:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
    IL_001b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0020:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0025:  ldarg.1
    IL_0026:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
    IL_002b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0030:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
    IL_003b:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0040:  call       float32 [Engine]Engine.MathUtils::Round(float32)
    IL_0045:  call       valuetype [Engine]Engine.Point3 Game.Terrain::ToCell(float32,
                                                                              float32,
                                                                              float32)
    IL_004a:  stloc.0
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_0051:  stloc.2
    IL_0052:  ldloca.s   V_2
    IL_0054:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::GetEnumerator()
    IL_0059:  stloc.1
    .try
    {
      IL_005a:  br.s       IL_009b

      IL_005c:  ldloca.s   V_1
      IL_005e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
      IL_0063:  stloc.3
      IL_0064:  ldloc.0
      IL_0065:  ldloc.3
      IL_0066:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_006b:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                              valuetype [Engine]Engine.Point3)
      IL_0070:  stloc.s    V_4
      IL_0072:  ldarg.0
      IL_0073:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0078:  ldc.i4.0
      IL_0079:  ldloc.s    V_4
      IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0080:  ldloc.s    V_4
      IL_0082:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0087:  ldloc.s    V_4
      IL_0089:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_008e:  ldloc.3
      IL_008f:  ldfld      int32 Game.MovingBlock::Value
      IL_0094:  ldc.i4.0
      IL_0095:  ldc.i4.0
      IL_0096:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_009b:  ldloca.s   V_1
      IL_009d:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
      IL_00a2:  brtrue.s   IL_005c

      IL_00a4:  leave.s    IL_00b4

    }  // end .try
    finally
    {
      IL_00a6:  ldloca.s   V_1
      IL_00a8:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.MovingBlock>
      IL_00ae:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00b3:  endfinally
    }  // end handler
    IL_00b4:  ldarg.0
    IL_00b5:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemCollapsingBlockBehavior::m_subsystemMovingBlocks
    IL_00ba:  ldarg.1
    IL_00bb:  callvirt   instance void Game.SubsystemMovingBlocks::RemoveMovingBlockSet(class Game.IMovingBlockSet)
    IL_00c0:  ldarg.1
    IL_00c1:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_00c6:  stloc.2
    IL_00c7:  ldloca.s   V_2
    IL_00c9:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::get_Count()
    IL_00ce:  ldc.i4.0
    IL_00cf:  ble.s      IL_00fb

    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemCollapsingBlockBehavior::m_subsystemSoundMaterials
    IL_00d7:  ldarg.1
    IL_00d8:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock> Game.IMovingBlockSet::get_Blocks()
    IL_00dd:  stloc.2
    IL_00de:  ldloca.s   V_2
    IL_00e0:  ldc.i4.0
    IL_00e1:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.MovingBlock>::get_Item(int32)
    IL_00e6:  ldfld      int32 Game.MovingBlock::Value
    IL_00eb:  ldarg.1
    IL_00ec:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IMovingBlockSet::get_Position()
    IL_00f1:  ldc.r4     1.
    IL_00f6:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                     valuetype [Engine]Engine.Vector3,
                                                                                     float32)
    IL_00fb:  ret
  } // end of method SubsystemCollapsingBlockBehavior::MovingBlocksStopped

  .method private hidebysig instance void 
          TryCollapseColumn(valuetype [Engine]Engine.Point3 p) cil managed
  {
    // 代码大小       353 (0x161)
    .maxstack  11
    .locals init (int32 V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock> V_1,
             int32 V_2,
             int32 V_3,
             valuetype Game.MovingBlock V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock> V_5,
             valuetype Game.MovingBlock V_6,
             valuetype [Engine]Engine.Point3 V_7)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0006:  ldc.i4.0
    IL_0007:  bgt.s      IL_000a

    IL_0009:  ret

    IL_000a:  ldarg.0
    IL_000b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0010:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0015:  ldarg.1
    IL_0016:  ldfld      int32 [Engine]Engine.Point3::X
    IL_001b:  ldarg.1
    IL_001c:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0021:  ldc.i4.1
    IL_0022:  sub
    IL_0023:  ldarg.1
    IL_0024:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0029:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_002e:  stloc.0
    IL_002f:  ldarg.0
    IL_0030:  ldloc.0
    IL_0031:  call       instance bool Game.SubsystemCollapsingBlockBehavior::IsCollapseSupportBlock(int32)
    IL_0036:  brfalse.s  IL_0039

    IL_0038:  ret

    IL_0039:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::.ctor()
    IL_003e:  stloc.1
    IL_003f:  ldarg.1
    IL_0040:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0045:  stloc.2
    IL_0046:  br.s       IL_00a0

    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0053:  ldarg.1
    IL_0054:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0059:  ldloc.2
    IL_005a:  ldarg.1
    IL_005b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0060:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0065:  stloc.3
    IL_0066:  ldloc.3
    IL_0067:  call       bool Game.SubsystemCollapsingBlockBehavior::IsCollapsibleBlock(int32)
    IL_006c:  brfalse.s  IL_00a8

    IL_006e:  ldloc.1
    IL_006f:  ldloca.s   V_4
    IL_0071:  initobj    Game.MovingBlock
    IL_0077:  ldloca.s   V_4
    IL_0079:  ldloc.3
    IL_007a:  stfld      int32 Game.MovingBlock::Value
    IL_007f:  ldloca.s   V_4
    IL_0081:  ldc.i4.0
    IL_0082:  ldloc.2
    IL_0083:  ldarg.1
    IL_0084:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0089:  sub
    IL_008a:  ldc.i4.0
    IL_008b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0090:  stfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
    IL_0095:  ldloc.s    V_4
    IL_0097:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::Add(!0)
    IL_009c:  ldloc.2
    IL_009d:  ldc.i4.1
    IL_009e:  add
    IL_009f:  stloc.2
    IL_00a0:  ldloc.2
    IL_00a1:  ldc.i4     0x80
    IL_00a6:  blt.s      IL_0048

    IL_00a8:  ldloc.1
    IL_00a9:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::get_Count()
    IL_00ae:  brtrue.s   IL_00b1

    IL_00b0:  ret

    IL_00b1:  ldarg.0
    IL_00b2:  ldfld      class Game.SubsystemMovingBlocks Game.SubsystemCollapsingBlockBehavior::m_subsystemMovingBlocks
    IL_00b7:  ldarg.1
    IL_00b8:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
    IL_00bd:  ldarg.1
    IL_00be:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00c3:  conv.r4
    IL_00c4:  ldloc.1
    IL_00c5:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::get_Count()
    IL_00ca:  neg
    IL_00cb:  ldc.i4.1
    IL_00cc:  sub
    IL_00cd:  conv.r4
    IL_00ce:  ldarg.1
    IL_00cf:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00d4:  conv.r4
    IL_00d5:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00da:  ldc.r4     0.0
    IL_00df:  ldc.r4     10.
    IL_00e4:  ldc.r4     0.69999999
    IL_00e9:  ldc.r4     0.0
    IL_00ee:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32)
    IL_00f3:  ldloc.1
    IL_00f4:  ldstr      "CollapsingBlock"
    IL_00f9:  ldnull
    IL_00fa:  ldc.i4.1
    IL_00fb:  callvirt   instance class Game.IMovingBlockSet Game.SubsystemMovingBlocks::AddMovingBlockSet(valuetype [Engine]Engine.Vector3,
                                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           float32,
                                                                                                           valuetype [Engine]Engine.Vector2,
                                                                                                           class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.MovingBlock>,
                                                                                                           string,
                                                                                                           object,
                                                                                                           bool)
    IL_0100:  brtrue.s   IL_0103

    IL_0102:  ret

    IL_0103:  ldloc.1
    IL_0104:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.MovingBlock>::GetEnumerator()
    IL_0109:  stloc.s    V_5
    .try
    {
      IL_010b:  br.s       IL_0147

      IL_010d:  ldloca.s   V_5
      IL_010f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::get_Current()
      IL_0114:  stloc.s    V_6
      IL_0116:  ldarg.1
      IL_0117:  ldloc.s    V_6
      IL_0119:  ldfld      valuetype [Engine]Engine.Point3 Game.MovingBlock::Offset
      IL_011e:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                              valuetype [Engine]Engine.Point3)
      IL_0123:  stloc.s    V_7
      IL_0125:  ldarg.0
      IL_0126:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_012b:  ldloc.s    V_7
      IL_012d:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0132:  ldloc.s    V_7
      IL_0134:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0139:  ldloc.s    V_7
      IL_013b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0140:  ldc.i4.0
      IL_0141:  ldc.i4.1
      IL_0142:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_0147:  ldloca.s   V_5
      IL_0149:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>::MoveNext()
      IL_014e:  brtrue.s   IL_010d

      IL_0150:  leave.s    IL_0160

    }  // end .try
    finally
    {
      IL_0152:  ldloca.s   V_5
      IL_0154:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.MovingBlock>
      IL_015a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_015f:  endfinally
    }  // end handler
    IL_0160:  ret
  } // end of method SubsystemCollapsingBlockBehavior::TryCollapseColumn

  .method private hidebysig static bool  IsCollapsibleBlock(int32 'value') cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemCollapsingBlockBehavior::m_handledBlocks
    IL_0005:  ldarg.0
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  call       bool [System.Linq]System.Linq.Enumerable::Contains<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                   !!0)
    IL_0010:  ret
  } // end of method SubsystemCollapsingBlockBehavior::IsCollapsibleBlock

  .method private hidebysig instance bool 
          IsCollapseSupportBlock(int32 'value') cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             class Game.Block V_2)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_005a

    IL_000a:  ldarg.1
    IL_000b:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0010:  stloc.1
    IL_0011:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0016:  ldloc.0
    IL_0017:  ldelem.ref
    IL_0018:  stloc.2
    IL_0019:  ldloc.2
    IL_001a:  isinst     Game.TrapdoorBlock
    IL_001f:  brfalse.s  IL_0035

    IL_0021:  ldloc.1
    IL_0022:  call       bool Game.TrapdoorBlock::GetUpsideDown(int32)
    IL_0027:  brfalse.s  IL_0033

    IL_0029:  ldloc.1
    IL_002a:  call       bool Game.TrapdoorBlock::GetOpen(int32)
    IL_002f:  ldc.i4.0
    IL_0030:  ceq
    IL_0032:  ret

    IL_0033:  ldc.i4.0
    IL_0034:  ret

    IL_0035:  ldloc.2
    IL_0036:  ldfld      int32 Game.Block::BlockIndex
    IL_003b:  ldc.i4     0xee
    IL_0040:  bne.un.s   IL_0044

    IL_0042:  ldc.i4.1
    IL_0043:  ret

    IL_0044:  ldloc.2
    IL_0045:  ldc.i4.4
    IL_0046:  ldarg.1
    IL_0047:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_004c:  brfalse.s  IL_0058

    IL_004e:  ldloc.2
    IL_004f:  isinst     Game.SoilBlock
    IL_0054:  ldnull
    IL_0055:  cgt.un
    IL_0057:  ret

    IL_0058:  ldc.i4.1
    IL_0059:  ret

    IL_005a:  ldc.i4.0
    IL_005b:  ret
  } // end of method SubsystemCollapsingBlockBehavior::IsCollapseSupportBlock

  .method private hidebysig static bool  IsCollapseDestructibleBlock(int32 'value') cil managed
  {
    // 代码大小       60 (0x3c)
    .maxstack  2
    .locals init (int32 V_0,
             class Game.Block V_1,
             int32 V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000c:  ldloc.0
    IL_000d:  ldelem.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  isinst     Game.TrapdoorBlock
    IL_0015:  brfalse.s  IL_0030

    IL_0017:  ldarg.0
    IL_0018:  call       int32 Game.Terrain::ExtractData(int32)
    IL_001d:  stloc.2
    IL_001e:  ldloc.2
    IL_001f:  call       bool Game.TrapdoorBlock::GetUpsideDown(int32)
    IL_0024:  brfalse.s  IL_003a

    IL_0026:  ldloc.2
    IL_0027:  call       bool Game.TrapdoorBlock::GetOpen(int32)
    IL_002c:  brfalse.s  IL_003a

    IL_002e:  ldc.i4.0
    IL_002f:  ret

    IL_0030:  ldloc.1
    IL_0031:  isinst     Game.FluidBlock
    IL_0036:  brfalse.s  IL_003a

    IL_0038:  ldc.i4.0
    IL_0039:  ret

    IL_003a:  ldc.i4.1
    IL_003b:  ret
  } // end of method SubsystemCollapsingBlockBehavior::IsCollapseDestructibleBlock

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemCollapsingBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.7
    IL_0009:  stelem.i4
    IL_000a:  dup
    IL_000b:  ldc.i4.1
    IL_000c:  ldc.i4.6
    IL_000d:  stelem.i4
    IL_000e:  stsfld     int32[] Game.SubsystemCollapsingBlockBehavior::m_handledBlocks
    IL_0013:  ret
  } // end of method SubsystemCollapsingBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCollapsingBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCollapsingBlockBehavior::HandledBlocks
} // end of class Game.SubsystemCollapsingBlockBehavior