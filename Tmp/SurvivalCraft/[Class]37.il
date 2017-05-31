.class public auto ansi beforefieldinit Game.ComponentAutoJump
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentCreature m_componentCreature
  .field private float64 m_lastAutoJumpTime
  .field private bool m_alwaysEnabled
  .field private float32 m_jumpStrength
  .field private bool m_collidedWithBody
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentAutoJump::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       1113 (0x459)
    .maxstack  4
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             bool V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Matrix V_9,
             int32 V_10,
             int32 V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             class Game.Block V_16,
             class Game.Block V_17,
             class Game.Block V_18,
             class Game.Block V_19,
             class Game.Block V_20,
             class Game.Block V_21)
    IL_0000:  call       bool Game.SettingsManager::get_AutoJump()
    IL_0005:  brtrue.s   IL_0012

    IL_0007:  ldarg.0
    IL_0008:  ldfld      bool Game.ComponentAutoJump::m_alwaysEnabled
    IL_000d:  brfalse    IL_0451

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemTime Game.ComponentAutoJump::m_subsystemTime
    IL_0018:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_001d:  ldarg.0
    IL_001e:  ldfld      float64 Game.ComponentAutoJump::m_lastAutoJumpTime
    IL_0023:  sub
    IL_0024:  ldc.r8     0.25
    IL_002d:  ble.un     IL_0451

    IL_0032:  ldarg.0
    IL_0033:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_0038:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_003d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0042:  stloc.0
    IL_0043:  ldloca.s   V_0
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_004a:  brfalse    IL_0451

    IL_004f:  ldloca.s   V_1
    IL_0051:  ldarg.0
    IL_0052:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_0057:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_005c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0061:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_006c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0071:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_CollisionVelocityChange()
    IL_0076:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_007b:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0080:  ldloc.1
    IL_0081:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0086:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_008b:  brfalse    IL_0451

    IL_0090:  ldarg.0
    IL_0091:  ldfld      bool Game.ComponentAutoJump::m_collidedWithBody
    IL_0096:  brtrue     IL_0451

    IL_009b:  ldloc.1
    IL_009c:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_00a1:  stloc.2
    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_00a8:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00ad:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00b2:  stloc.s    V_9
    IL_00b4:  ldloca.s   V_9
    IL_00b6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00bb:  ldloca.s   V_0
    IL_00bd:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00c2:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_00d2:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00d7:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_00dc:  stloc.s    V_9
    IL_00de:  ldloca.s   V_9
    IL_00e0:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00e5:  ldloca.s   V_0
    IL_00e7:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_00ec:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00f1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fb:  stloc.3
    IL_00fc:  ldloc.3
    IL_00fd:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0102:  ldloc.3
    IL_0103:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0108:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_010d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Normalize(valuetype [Engine]Engine.Vector2)
    IL_0112:  stloc.s    V_4
    IL_0114:  ldc.i4.0
    IL_0115:  stloc.s    V_5
    IL_0117:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_011c:  stloc.s    V_6
    IL_011e:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0123:  stloc.s    V_7
    IL_0125:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_012a:  stloc.s    V_8
    IL_012c:  ldloc.s    V_4
    IL_012e:  ldloc.2
    IL_012f:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_0134:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_0139:  ldc.r4     0.60000002
    IL_013e:  ble.un     IL_0291

    IL_0143:  ldloc.s    V_4
    IL_0145:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitX
    IL_014a:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_014f:  ldc.r4     0.60000002
    IL_0154:  ble.un.s   IL_0196

    IL_0156:  ldarg.0
    IL_0157:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_015c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0161:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0166:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_016b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0170:  stloc.s    V_6
    IL_0172:  ldloc.s    V_6
    IL_0174:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_017e:  stloc.s    V_7
    IL_0180:  ldloc.s    V_6
    IL_0182:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0187:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_018c:  stloc.s    V_8
    IL_018e:  ldc.i4.1
    IL_018f:  stloc.s    V_5
    IL_0191:  br         IL_0291

    IL_0196:  ldloc.s    V_4
    IL_0198:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitX
    IL_019d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_01a2:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_01a7:  ldc.r4     0.60000002
    IL_01ac:  ble.un.s   IL_01ee

    IL_01ae:  ldarg.0
    IL_01af:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_01b4:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_01b9:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01be:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_01c3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01c8:  stloc.s    V_6
    IL_01ca:  ldloc.s    V_6
    IL_01cc:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_01d1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_01d6:  stloc.s    V_7
    IL_01d8:  ldloc.s    V_6
    IL_01da:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_01df:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e4:  stloc.s    V_8
    IL_01e6:  ldc.i4.1
    IL_01e7:  stloc.s    V_5
    IL_01e9:  br         IL_0291

    IL_01ee:  ldloc.s    V_4
    IL_01f0:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_01f5:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_01fa:  ldc.r4     0.60000002
    IL_01ff:  ble.un.s   IL_023e

    IL_0201:  ldarg.0
    IL_0202:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_0207:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_020c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0211:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_0216:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_021b:  stloc.s    V_6
    IL_021d:  ldloc.s    V_6
    IL_021f:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0224:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0229:  stloc.s    V_7
    IL_022b:  ldloc.s    V_6
    IL_022d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0232:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0237:  stloc.s    V_8
    IL_0239:  ldc.i4.1
    IL_023a:  stloc.s    V_5
    IL_023c:  br.s       IL_0291

    IL_023e:  ldloc.s    V_4
    IL_0240:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_0245:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_024a:  call       float32 [Engine]Engine.Vector2::Dot(valuetype [Engine]Engine.Vector2,
                                                             valuetype [Engine]Engine.Vector2)
    IL_024f:  ldc.r4     0.60000002
    IL_0254:  ble.un.s   IL_0291

    IL_0256:  ldarg.0
    IL_0257:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_025c:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0261:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0266:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitZ
    IL_026b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0270:  stloc.s    V_6
    IL_0272:  ldloc.s    V_6
    IL_0274:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0279:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_027e:  stloc.s    V_7
    IL_0280:  ldloc.s    V_6
    IL_0282:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_0287:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_028c:  stloc.s    V_8
    IL_028e:  ldc.i4.1
    IL_028f:  stloc.s    V_5
    IL_0291:  ldloc.s    V_5
    IL_0293:  brfalse    IL_0451

    IL_0298:  ldarg.0
    IL_0299:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_029e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02a3:  ldloc.s    V_6
    IL_02a5:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02aa:  conv.i4
    IL_02ab:  ldloc.s    V_6
    IL_02ad:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02b2:  conv.i4
    IL_02b3:  ldloc.s    V_6
    IL_02b5:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02ba:  conv.i4
    IL_02bb:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_02c0:  stloc.s    V_10
    IL_02c2:  ldarg.0
    IL_02c3:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_02c8:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02cd:  ldloc.s    V_7
    IL_02cf:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02d4:  conv.i4
    IL_02d5:  ldloc.s    V_7
    IL_02d7:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_02dc:  conv.i4
    IL_02dd:  ldloc.s    V_7
    IL_02df:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_02e4:  conv.i4
    IL_02e5:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_02ea:  stloc.s    V_11
    IL_02ec:  ldarg.0
    IL_02ed:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_02f2:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_02f7:  ldloc.s    V_8
    IL_02f9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_02fe:  conv.i4
    IL_02ff:  ldloc.s    V_8
    IL_0301:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0306:  conv.i4
    IL_0307:  ldloc.s    V_8
    IL_0309:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_030e:  conv.i4
    IL_030f:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0314:  stloc.s    V_12
    IL_0316:  ldarg.0
    IL_0317:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_031c:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0321:  ldloc.s    V_6
    IL_0323:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0328:  conv.i4
    IL_0329:  ldloc.s    V_6
    IL_032b:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0330:  conv.i4
    IL_0331:  ldc.i4.1
    IL_0332:  add
    IL_0333:  ldloc.s    V_6
    IL_0335:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_033a:  conv.i4
    IL_033b:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0340:  stloc.s    V_13
    IL_0342:  ldarg.0
    IL_0343:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_0348:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_034d:  ldloc.s    V_7
    IL_034f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0354:  conv.i4
    IL_0355:  ldloc.s    V_7
    IL_0357:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_035c:  conv.i4
    IL_035d:  ldc.i4.1
    IL_035e:  add
    IL_035f:  ldloc.s    V_7
    IL_0361:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0366:  conv.i4
    IL_0367:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_036c:  stloc.s    V_14
    IL_036e:  ldarg.0
    IL_036f:  ldfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_0374:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0379:  ldloc.s    V_8
    IL_037b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0380:  conv.i4
    IL_0381:  ldloc.s    V_8
    IL_0383:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0388:  conv.i4
    IL_0389:  ldc.i4.1
    IL_038a:  add
    IL_038b:  ldloc.s    V_8
    IL_038d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0392:  conv.i4
    IL_0393:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0398:  stloc.s    V_15
    IL_039a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_039f:  ldloc.s    V_10
    IL_03a1:  ldelem.ref
    IL_03a2:  stloc.s    V_16
    IL_03a4:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03a9:  ldloc.s    V_11
    IL_03ab:  ldelem.ref
    IL_03ac:  stloc.s    V_17
    IL_03ae:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03b3:  ldloc.s    V_12
    IL_03b5:  ldelem.ref
    IL_03b6:  stloc.s    V_18
    IL_03b8:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03bd:  ldloc.s    V_13
    IL_03bf:  ldelem.ref
    IL_03c0:  stloc.s    V_19
    IL_03c2:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03c7:  ldloc.s    V_14
    IL_03c9:  ldelem.ref
    IL_03ca:  stloc.s    V_20
    IL_03cc:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_03d1:  ldloc.s    V_15
    IL_03d3:  ldelem.ref
    IL_03d4:  stloc.s    V_21
    IL_03d6:  ldloc.s    V_16
    IL_03d8:  ldfld      bool Game.Block::NoAutoJump
    IL_03dd:  brtrue.s   IL_0451

    IL_03df:  ldloc.s    V_16
    IL_03e1:  ldfld      bool Game.Block::IsCollidable
    IL_03e6:  brfalse.s  IL_03f1

    IL_03e8:  ldloc.s    V_19
    IL_03ea:  ldfld      bool Game.Block::IsCollidable
    IL_03ef:  brfalse.s  IL_0415

    IL_03f1:  ldloc.s    V_17
    IL_03f3:  ldfld      bool Game.Block::IsCollidable
    IL_03f8:  brfalse.s  IL_0403

    IL_03fa:  ldloc.s    V_20
    IL_03fc:  ldfld      bool Game.Block::IsCollidable
    IL_0401:  brfalse.s  IL_0415

    IL_0403:  ldloc.s    V_18
    IL_0405:  ldfld      bool Game.Block::IsCollidable
    IL_040a:  brfalse.s  IL_0451

    IL_040c:  ldloc.s    V_21
    IL_040e:  ldfld      bool Game.Block::IsCollidable
    IL_0413:  brtrue.s   IL_0451

    IL_0415:  ldarg.0
    IL_0416:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_041b:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0420:  ldarg.0
    IL_0421:  ldfld      float32 Game.ComponentAutoJump::m_jumpStrength
    IL_0426:  ldarg.0
    IL_0427:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_042c:  callvirt   instance class Game.ComponentLocomotion Game.ComponentCreature::get_ComponentLocomotion()
    IL_0431:  callvirt   instance float32 Game.ComponentLocomotion::get_JumpOrder()
    IL_0436:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_043b:  callvirt   instance void Game.ComponentLocomotion::set_JumpOrder(float32)
    IL_0440:  ldarg.0
    IL_0441:  ldarg.0
    IL_0442:  ldfld      class Game.SubsystemTime Game.ComponentAutoJump::m_subsystemTime
    IL_0447:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_044c:  stfld      float64 Game.ComponentAutoJump::m_lastAutoJumpTime
    IL_0451:  ldarg.0
    IL_0452:  ldc.i4.0
    IL_0453:  stfld      bool Game.ComponentAutoJump::m_collidedWithBody
    IL_0458:  ret
  } // end of method ComponentAutoJump::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       117 (0x75)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentAutoJump::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_001f:  stfld      class Game.SubsystemTime Game.ComponentAutoJump::m_subsystemTime
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.1
    IL_0038:  ldstr      "AlwaysEnabled"
    IL_003d:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0042:  stfld      bool Game.ComponentAutoJump::m_alwaysEnabled
    IL_0047:  ldarg.0
    IL_0048:  ldarg.1
    IL_0049:  ldstr      "JumpStrength"
    IL_004e:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0053:  stfld      float32 Game.ComponentAutoJump::m_jumpStrength
    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.ComponentCreature Game.ComponentAutoJump::m_componentCreature
    IL_005e:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0063:  ldarg.0
    IL_0064:  ldftn      instance void Game.ComponentAutoJump::'<Load>b__10_0'(class Game.ComponentBody)
    IL_006a:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentBody>::.ctor(object,
                                                                                                              native int)
    IL_006f:  callvirt   instance void Game.ComponentBody::add_CollidedWithBody(class [System.Runtime]System.Action`1<class Game.ComponentBody>)
    IL_0074:  ret
  } // end of method ComponentAutoJump::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentAutoJump::.ctor

  .method private hidebysig instance void 
          '<Load>b__10_0'(class Game.ComponentBody '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.ComponentAutoJump::m_collidedWithBody
    IL_0007:  ret
  } // end of method ComponentAutoJump::'<Load>b__10_0'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentAutoJump::get_UpdateOrder()
  } // end of property ComponentAutoJump::UpdateOrder
} // end of class Game.ComponentAutoJump