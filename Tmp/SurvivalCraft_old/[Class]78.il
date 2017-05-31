.class public auto ansi beforefieldinit Game.ComponentFirstPersonModel
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.ComponentMiner m_componentMiner
  .field private class Game.ComponentCreature m_componentCreature
  .field private class Game.ComponentRider m_componentRider
  .field private int32 m_value
  .field private class [Engine]Engine.Graphics.Model m_handModel
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_lastYpr
  .field private valuetype [Engine]Engine.Vector2 m_lagAngles
  .field private float32 m_swapAnimationTime
  .field private float32 m_pokeAnimationTime
  .field private valuetype [Engine]Engine.Vector3 m_itemOffset
  .field private valuetype [Engine]Engine.Vector3 m_itemRotation
  .field private float64 m_nextHandLightTime
  .field private float32 m_handLight
  .field private int32 m_itemLight
  .field private class Game.DrawBlockEnvironmentData m_drawBlockEnvironmentData
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer3D m_primitivesRenderer
  .field private class [Engine]Engine.Graphics.LitUberShader m_uberShader
  .field private valuetype [Engine]Engine.Vector3 '<ItemOffsetOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Vector3 '<ItemRotationOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ItemOffsetOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::'<ItemOffsetOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFirstPersonModel::get_ItemOffsetOrder

  .method public hidebysig specialname instance void 
          set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::'<ItemOffsetOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFirstPersonModel::set_ItemOffsetOrder

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_ItemRotationOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::'<ItemRotationOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentFirstPersonModel::get_ItemRotationOrder

  .method public hidebysig specialname instance void 
          set_ItemRotationOrder(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::'<ItemRotationOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentFirstPersonModel::set_ItemRotationOrder

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentFirstPersonModel::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentFirstPersonModel::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       1915 (0x77b)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Graphics.Viewport V_0,
             valuetype [Engine]Engine.Graphics.Viewport V_1,
             valuetype [Engine]Engine.Matrix V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             valuetype [Engine]Engine.Matrix V_7,
             float32 V_8,
             float32 V_9,
             class Game.ComponentCreatureModel V_10,
             float32 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             float32 V_13,
             valuetype [Engine]Engine.Vector3 V_14,
             int32 V_15,
             class Game.Block V_16,
             valuetype [Engine]Engine.Vector3 V_17,
             valuetype [Engine]Engine.Vector3 V_18,
             valuetype [Engine]Engine.Matrix V_19,
             class Game.TerrainChunk V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             valuetype [Engine]Engine.Matrix V_22,
             class [Engine]Engine.Graphics.Shader V_23,
             valuetype [System.Runtime]System.Nullable`1<float32> V_24,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_25,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_26,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_27,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_28,
             class [Engine]Engine.Graphics.ModelMeshPart V_29)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0010:  ldc.r4     0.0
    IL_0015:  ble.un     IL_077a

    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.SubsystemCamera Game.ComponentFirstPersonModel::m_subsystemCamera
    IL_0020:  ldarg.0
    IL_0021:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0026:  callvirt   instance bool Game.SubsystemCamera::IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_002b:  brfalse    IL_077a

    IL_0030:  call       valuetype [Engine]Engine.Graphics.Viewport [Engine]Engine.Graphics.Display::get_Viewport()
    IL_0035:  stloc.0
    IL_0036:  ldloc.0
    IL_0037:  stloc.1
    IL_0038:  ldloca.s   V_1
    IL_003a:  ldloc.1
    IL_003b:  ldfld      float32 [Engine]Engine.Graphics.Viewport::MaxDepth
    IL_0040:  ldc.r4     0.1
    IL_0045:  mul
    IL_0046:  stfld      float32 [Engine]Engine.Graphics.Viewport::MaxDepth
    IL_004b:  ldloc.1
    IL_004c:  call       void [Engine]Engine.Graphics.Display::set_Viewport(valuetype [Engine]Engine.Graphics.Viewport)
    .try
    {
      IL_0051:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_0056:  stloc.2
      IL_0057:  ldarg.0
      IL_0058:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
      IL_005d:  ldc.r4     0.0
      IL_0062:  ble.un.s   IL_00a2

      IL_0064:  ldarg.0
      IL_0065:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
      IL_006a:  ldc.r4     3.1415927
      IL_006f:  mul
      IL_0070:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_0075:  ldc.r4     3.
      IL_007a:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_007f:  stloc.s    V_8
      IL_0081:  ldloc.2
      IL_0082:  ldc.r4     0.0
      IL_0087:  ldc.r4     -0.80000001
      IL_008c:  ldloc.s    V_8
      IL_008e:  mul
      IL_008f:  ldc.r4     0.2
      IL_0094:  ldloc.s    V_8
      IL_0096:  mul
      IL_0097:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_009c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_00a1:  stloc.2
      IL_00a2:  ldarg.0
      IL_00a3:  ldfld      float32 Game.ComponentFirstPersonModel::m_pokeAnimationTime
      IL_00a8:  ldc.r4     0.0
      IL_00ad:  ble.un     IL_0150

      IL_00b2:  ldarg.0
      IL_00b3:  ldfld      float32 Game.ComponentFirstPersonModel::m_pokeAnimationTime
      IL_00b8:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_00bd:  ldc.r4     3.1415927
      IL_00c2:  mul
      IL_00c3:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_00c8:  stloc.s    V_9
      IL_00ca:  ldarg.0
      IL_00cb:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_00d0:  brfalse.s  IL_0112

      IL_00d2:  ldloc.2
      IL_00d3:  ldc.r4     90.
      IL_00d8:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
      IL_00dd:  neg
      IL_00de:  ldloc.s    V_9
      IL_00e0:  mul
      IL_00e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
      IL_00e6:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_00eb:  stloc.2
      IL_00ec:  ldloc.2
      IL_00ed:  ldc.r4     -0.5
      IL_00f2:  ldloc.s    V_9
      IL_00f4:  mul
      IL_00f5:  ldc.r4     0.1
      IL_00fa:  ldloc.s    V_9
      IL_00fc:  mul
      IL_00fd:  ldc.r4     0.0
      IL_0102:  ldloc.s    V_9
      IL_0104:  mul
      IL_0105:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_010a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_010f:  stloc.2
      IL_0110:  br.s       IL_0150

      IL_0112:  ldloc.2
      IL_0113:  ldc.r4     45.
      IL_0118:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
      IL_011d:  neg
      IL_011e:  ldloc.s    V_9
      IL_0120:  mul
      IL_0121:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
      IL_0126:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_012b:  stloc.2
      IL_012c:  ldloc.2
      IL_012d:  ldc.r4     -0.1
      IL_0132:  ldloc.s    V_9
      IL_0134:  mul
      IL_0135:  ldc.r4     0.2
      IL_013a:  ldloc.s    V_9
      IL_013c:  mul
      IL_013d:  ldc.r4     -5.0000001e-002
      IL_0142:  ldloc.s    V_9
      IL_0144:  mul
      IL_0145:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(float32,
                                                                                                    float32,
                                                                                                    float32)
      IL_014a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_014f:  stloc.2
      IL_0150:  ldarg.0
      IL_0151:  ldfld      class Game.ComponentRider Game.ComponentFirstPersonModel::m_componentRider
      IL_0156:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
      IL_015b:  brfalse    IL_01f9

      IL_0160:  ldarg.0
      IL_0161:  ldfld      class Game.ComponentRider Game.ComponentFirstPersonModel::m_componentRider
      IL_0166:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
      IL_016b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0170:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreatureModel>()
      IL_0175:  stloc.s    V_10
      IL_0177:  ldloc.s    V_10
      IL_0179:  brfalse    IL_0292

      IL_017e:  ldloc.s    V_10
      IL_0180:  callvirt   instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
      IL_0185:  ldc.r4     3.1415927
      IL_018a:  mul
      IL_018b:  ldc.r4     2.
      IL_0190:  mul
      IL_0191:  ldc.r4     0.5
      IL_0196:  add
      IL_0197:  stloc.s    V_11
      IL_0199:  ldloca.s   V_12
      IL_019b:  initobj    [Engine]Engine.Vector3
      IL_01a1:  ldloca.s   V_12
      IL_01a3:  ldc.r4     2.e-002
      IL_01a8:  ldloc.s    V_11
      IL_01aa:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_01af:  mul
      IL_01b0:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_01b5:  ldloca.s   V_12
      IL_01b7:  ldc.r4     2.e-002
      IL_01bc:  ldloc.s    V_11
      IL_01be:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_01c3:  mul
      IL_01c4:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_01c9:  ldloc.2
      IL_01ca:  ldc.r4     5.0000001e-002
      IL_01cf:  ldloc.s    V_11
      IL_01d1:  ldc.r4     1.
      IL_01d6:  mul
      IL_01d7:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_01dc:  mul
      IL_01dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
      IL_01e2:  ldloc.s    V_12
      IL_01e4:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_01e9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_01ee:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_01f3:  stloc.2
      IL_01f4:  br         IL_0292

      IL_01f9:  ldarg.0
      IL_01fa:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_01ff:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_0204:  callvirt   instance float32 Game.ComponentCreatureModel::get_MovementAnimationPhase()
      IL_0209:  ldc.r4     3.1415927
      IL_020e:  mul
      IL_020f:  ldc.r4     2.
      IL_0214:  mul
      IL_0215:  stloc.s    V_13
      IL_0217:  ldloca.s   V_14
      IL_0219:  initobj    [Engine]Engine.Vector3
      IL_021f:  ldloca.s   V_14
      IL_0221:  ldc.r4     2.9999999e-002
      IL_0226:  ldloc.s    V_13
      IL_0228:  ldc.r4     1.
      IL_022d:  mul
      IL_022e:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_0233:  mul
      IL_0234:  stfld      float32 [Engine]Engine.Vector3::X
      IL_0239:  ldloca.s   V_14
      IL_023b:  ldc.r4     2.e-002
      IL_0240:  ldloc.s    V_13
      IL_0242:  ldc.r4     2.
      IL_0247:  mul
      IL_0248:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_024d:  mul
      IL_024e:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_0253:  ldloca.s   V_14
      IL_0255:  ldc.r4     2.e-002
      IL_025a:  ldloc.s    V_13
      IL_025c:  ldc.r4     1.
      IL_0261:  mul
      IL_0262:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
      IL_0267:  mul
      IL_0268:  stfld      float32 [Engine]Engine.Vector3::Z
      IL_026d:  ldloc.2
      IL_026e:  ldc.r4     1.
      IL_0273:  ldloc.s    V_14
      IL_0275:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_027a:  mul
      IL_027b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationZ(float32)
      IL_0280:  ldloc.s    V_14
      IL_0282:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_0287:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_028c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0291:  stloc.2
      IL_0292:  ldarg.0
      IL_0293:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_0298:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_029d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
      IL_02a2:  stloc.3
      IL_02a3:  ldloc.3
      IL_02a4:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_02a9:  conv.i4
      IL_02aa:  stloc.s    V_4
      IL_02ac:  ldloc.3
      IL_02ad:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_02b2:  conv.i4
      IL_02b3:  stloc.s    V_5
      IL_02b5:  ldloc.3
      IL_02b6:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_02bb:  conv.i4
      IL_02bc:  stloc.s    V_6
      IL_02be:  ldarg.0
      IL_02bf:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_02c4:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_02c9:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
      IL_02ce:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
      IL_02d3:  stloc.s    V_7
      IL_02d5:  ldloca.s   V_7
      IL_02d7:  ldarg.0
      IL_02d8:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_02dd:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_02e2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
      IL_02e7:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_02ec:  ldarg.0
      IL_02ed:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_02f2:  brfalse    IL_04c7

      IL_02f7:  ldloc.s    V_5
      IL_02f9:  ldc.i4.0
      IL_02fa:  blt.s      IL_033d

      IL_02fc:  ldloc.s    V_5
      IL_02fe:  ldc.i4.s   127
      IL_0300:  bgt.s      IL_033d

      IL_0302:  ldarg.0
      IL_0303:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0308:  ldloc.s    V_4
      IL_030a:  ldloc.s    V_6
      IL_030c:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                               int32)
      IL_0311:  stloc.s    V_20
      IL_0313:  ldloc.s    V_20
      IL_0315:  brfalse.s  IL_033d

      IL_0317:  ldloc.s    V_20
      IL_0319:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_031e:  ldc.i4.7
      IL_031f:  blt.s      IL_033d

      IL_0321:  ldarg.0
      IL_0322:  ldarg.0
      IL_0323:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0328:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_032d:  ldloc.s    V_4
      IL_032f:  ldloc.s    V_5
      IL_0331:  ldloc.s    V_6
      IL_0333:  callvirt   instance int32 Game.TerrainData::GetCellLightFast(int32,
                                                                             int32,
                                                                             int32)
      IL_0338:  stfld      int32 Game.ComponentFirstPersonModel::m_itemLight
      IL_033d:  ldarg.0
      IL_033e:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_0343:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0348:  stloc.s    V_15
      IL_034a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_034f:  ldloc.s    V_15
      IL_0351:  ldelem.ref
      IL_0352:  stloc.s    V_16
      IL_0354:  ldloc.s    V_16
      IL_0356:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonRotation
      IL_035b:  ldc.r4     1.7453292e-002
      IL_0360:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0365:  ldarg.0
      IL_0366:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemRotation
      IL_036b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0370:  stloc.s    V_17
      IL_0372:  ldloc.s    V_16
      IL_0374:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonOffset
      IL_0379:  ldarg.0
      IL_037a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
      IL_037f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0384:  stloc.s    V_18
      IL_0386:  ldloc.s    V_18
      IL_0388:  ldarg.0
      IL_0389:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
      IL_038e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0393:  stloc.s    V_18
      IL_0395:  ldloc.s    V_17
      IL_0397:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_039c:  ldloc.s    V_17
      IL_039e:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03a3:  ldloc.s    V_17
      IL_03a5:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_03aa:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_03af:  ldloc.2
      IL_03b0:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03b5:  ldloc.s    V_18
      IL_03b7:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_03bc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03c1:  ldarg.0
      IL_03c2:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_03c7:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_03cc:  ldarg.0
      IL_03cd:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_03d2:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_03d7:  ldc.r4     0.0
      IL_03dc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_03e1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03e6:  ldloc.s    V_7
      IL_03e8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03ed:  stloc.s    V_19
      IL_03ef:  ldarg.0
      IL_03f0:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_03f5:  ldarg.0
      IL_03f6:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_03fb:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
      IL_0400:  ldarg.0
      IL_0401:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0406:  ldloc.s    V_19
      IL_0408:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_040d:  ldarg.0
      IL_040e:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0413:  ldarg.0
      IL_0414:  ldfld      int32 Game.ComponentFirstPersonModel::m_itemLight
      IL_0419:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_041e:  ldarg.0
      IL_041f:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0424:  ldarg.0
      IL_0425:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_042a:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_042f:  ldloc.s    V_4
      IL_0431:  ldloc.s    V_6
      IL_0433:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                        int32)
      IL_0438:  brtrue.s   IL_043d

      IL_043a:  ldc.i4.8
      IL_043b:  br.s       IL_0451

      IL_043d:  ldarg.0
      IL_043e:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0443:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0448:  ldloc.s    V_4
      IL_044a:  ldloc.s    V_6
      IL_044c:  callvirt   instance int32 Game.TerrainData::GetHumidityFast(int32,
                                                                            int32)
      IL_0451:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_0456:  ldarg.0
      IL_0457:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_045c:  ldarg.0
      IL_045d:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0462:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0467:  ldloc.s    V_4
      IL_0469:  ldloc.s    V_6
      IL_046b:  callvirt   instance bool Game.TerrainData::IsShaftValid(int32,
                                                                        int32)
      IL_0470:  brtrue.s   IL_0475

      IL_0472:  ldc.i4.8
      IL_0473:  br.s       IL_0489

      IL_0475:  ldarg.0
      IL_0476:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_047b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0480:  ldloc.s    V_4
      IL_0482:  ldloc.s    V_6
      IL_0484:  callvirt   instance int32 Game.TerrainData::GetTemperatureFast(int32,
                                                                               int32)
      IL_0489:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_048e:  ldloc.s    V_16
      IL_0490:  ldarg.0
      IL_0491:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
      IL_0496:  ldarg.0
      IL_0497:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_049c:  ldloc.s    V_16
      IL_049e:  ldfld      float32 Game.Block::FirstPersonScale
      IL_04a3:  ldloca.s   V_19
      IL_04a5:  ldarg.0
      IL_04a6:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_04ab:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_04b0:  ldarg.0
      IL_04b1:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
      IL_04b6:  ldarg.1
      IL_04b7:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
      IL_04bc:  ldc.i4.1
      IL_04bd:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                          bool)
      IL_04c2:  leave      IL_077a

      IL_04c7:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_04cc:  ldarg.0
      IL_04cd:  ldfld      float64 Game.ComponentFirstPersonModel::m_nextHandLightTime
      IL_04d2:  blt.un.s   IL_050d

      IL_04d4:  ldarg.0
      IL_04d5:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_04da:  ldloc.3
      IL_04db:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.LightingManager::CalculateSmoothLight(class Game.SubsystemTerrain,
                                                                                                                           valuetype [Engine]Engine.Vector3)
      IL_04e0:  stloc.s    V_24
      IL_04e2:  ldloca.s   V_24
      IL_04e4:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_04e9:  brfalse.s  IL_050d

      IL_04eb:  ldarg.0
      IL_04ec:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_04f1:  ldc.r8     0.10000000000000001
      IL_04fa:  add
      IL_04fb:  stfld      float64 Game.ComponentFirstPersonModel::m_nextHandLightTime
      IL_0500:  ldarg.0
      IL_0501:  ldloca.s   V_24
      IL_0503:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_0508:  stfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_050d:  ldloca.s   V_21
      IL_050f:  ldc.r4     0.25
      IL_0514:  ldc.r4     -0.30000001
      IL_0519:  ldc.r4     -5.0000001e-002
      IL_051e:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0523:  ldc.r4     9.9999998e-003
      IL_0528:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
      IL_052d:  ldc.r4     0.80000001
      IL_0532:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
      IL_0537:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_053c:  ldc.r4     0.40000001
      IL_0541:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
      IL_0546:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_054b:  ldloc.2
      IL_054c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0551:  ldloc.s    V_21
      IL_0553:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_0558:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_055d:  ldarg.0
      IL_055e:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_0563:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0568:  ldarg.0
      IL_0569:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_056e:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_0573:  ldc.r4     0.0
      IL_0578:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_057d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0582:  ldloc.s    V_7
      IL_0584:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0589:  ldarg.1
      IL_058a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
      IL_058f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0594:  stloc.s    V_22
      IL_0596:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
      IL_059b:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
      IL_05a0:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
      IL_05a5:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
      IL_05aa:  ldarg.0
      IL_05ab:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_05b0:  ldarg.0
      IL_05b1:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_05b6:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_05bb:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_05c0:  stfld      class [Engine]Engine.Graphics.Texture2D [Engine]Engine.Graphics.LitUberShader::Texture
      IL_05c5:  ldarg.0
      IL_05c6:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_05cb:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_05d0:  stfld      class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.LitUberShader::SamplerState
      IL_05d5:  ldarg.0
      IL_05d6:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_05db:  ldc.i4.2
      IL_05dc:  stfld      int32 [Engine]Engine.Graphics.LitUberShader::LightsCount
      IL_05e1:  ldarg.0
      IL_05e2:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_05e7:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
      IL_05ec:  stfld      valuetype [Engine]Engine.Vector4 [Engine]Engine.Graphics.LitUberShader::MaterialColor
      IL_05f1:  ldarg.0
      IL_05f2:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_05f7:  ldarg.0
      IL_05f8:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_05fd:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_0602:  mul
      IL_0603:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0608:  stfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.Graphics.LitUberShader::AmbientLightColor
      IL_060d:  ldarg.0
      IL_060e:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_0613:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_0618:  ldc.i4.0
      IL_0619:  ldarg.0
      IL_061a:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_061f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0624:  stelem     [Engine]Engine.Vector3
      IL_0629:  ldarg.0
      IL_062a:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_062f:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::DiffuseLightColors
      IL_0634:  ldc.i4.1
      IL_0635:  ldarg.0
      IL_0636:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_063b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_0640:  stelem     [Engine]Engine.Vector3
      IL_0645:  ldarg.0
      IL_0646:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_064b:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
      IL_0650:  ldc.i4.0
      IL_0651:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
      IL_0656:  ldarg.1
      IL_0657:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
      IL_065c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_0661:  stelem     [Engine]Engine.Vector3
      IL_0666:  ldarg.0
      IL_0667:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_066c:  ldfld      valuetype [Engine]Engine.Vector3[] [Engine]Engine.Graphics.LitUberShader::LightDirections
      IL_0671:  ldc.i4.1
      IL_0672:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
      IL_0677:  ldarg.1
      IL_0678:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
      IL_067d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_0682:  stelem     [Engine]Engine.Vector3
      IL_0687:  ldarg.0
      IL_0688:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_068d:  ldc.i4.0
      IL_068e:  stfld      bool [Engine]Engine.Graphics.LitUberShader::UseFog
      IL_0693:  ldarg.0
      IL_0694:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_0699:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_069e:  callvirt   instance class [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.UberShaderTransforms::get_World()
      IL_06a3:  ldc.i4.0
      IL_06a4:  ldloc.s    V_22
      IL_06a6:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                                valuetype [Engine]Engine.Matrix)
      IL_06ab:  ldarg.0
      IL_06ac:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_06b1:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_06b6:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_06bb:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
      IL_06c0:  ldarg.0
      IL_06c1:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_06c6:  ldfld      class [Engine]Engine.Graphics.UberShaderTransforms [Engine]Engine.Graphics.LitUberShader::Transforms
      IL_06cb:  ldarg.1
      IL_06cc:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ProjectionMatrix()
      IL_06d1:  callvirt   instance void [Engine]Engine.Graphics.UberShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
      IL_06d6:  ldarg.0
      IL_06d7:  ldfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
      IL_06dc:  callvirt   instance class [Engine]Engine.Graphics.Shader [Engine]Engine.Graphics.LitUberShader::PrepareShader()
      IL_06e1:  stloc.s    V_23
      IL_06e3:  ldarg.0
      IL_06e4:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentFirstPersonModel::m_handModel
      IL_06e9:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
      IL_06ee:  stloc.s    V_26
      IL_06f0:  ldloca.s   V_26
      IL_06f2:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
      IL_06f7:  stloc.s    V_25
      .try
      {
        IL_06f9:  br.s       IL_075a

        IL_06fb:  ldloca.s   V_25
        IL_06fd:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
        IL_0702:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
        IL_0707:  stloc.s    V_28
        IL_0709:  ldloca.s   V_28
        IL_070b:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
        IL_0710:  stloc.s    V_27
        .try
        {
          IL_0712:  br.s       IL_0741

          IL_0714:  ldloca.s   V_27
          IL_0716:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
          IL_071b:  stloc.s    V_29
          IL_071d:  ldc.i4.2
          IL_071e:  ldloc.s    V_23
          IL_0720:  ldloc.s    V_29
          IL_0722:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
          IL_0727:  ldloc.s    V_29
          IL_0729:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
          IL_072e:  ldloc.s    V_29
          IL_0730:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
          IL_0735:  ldloc.s    V_29
          IL_0737:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
          IL_073c:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                                 class [Engine]Engine.Graphics.Shader,
                                                                                 class [Engine]Engine.Graphics.VertexBuffer,
                                                                                 class [Engine]Engine.Graphics.IndexBuffer,
                                                                                 int32,
                                                                                 int32)
          IL_0741:  ldloca.s   V_27
          IL_0743:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
          IL_0748:  brtrue.s   IL_0714

          IL_074a:  leave.s    IL_075a

        }  // end .try
        finally
        {
          IL_074c:  ldloca.s   V_27
          IL_074e:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
          IL_0754:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_0759:  endfinally
        }  // end handler
        IL_075a:  ldloca.s   V_25
        IL_075c:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
        IL_0761:  brtrue.s   IL_06fb

        IL_0763:  leave.s    IL_077a

      }  // end .try
      finally
      {
        IL_0765:  ldloca.s   V_25
        IL_0767:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
        IL_076d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0772:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0773:  ldloc.0
      IL_0774:  call       void [Engine]Engine.Graphics.Display::set_Viewport(valuetype [Engine]Engine.Graphics.Viewport)
      IL_0779:  endfinally
    }  // end handler
    IL_077a:  ret
  } // end of method ComponentFirstPersonModel::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       3 (0x3)
    .maxstack  8
    IL_0000:  ldc.i4.s   10
    IL_0002:  ret
  } // end of method ComponentFirstPersonModel::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       489 (0x1e9)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Quaternion V_2,
             valuetype [Engine]Engine.Vector3 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_000b:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0010:  stloc.2
    IL_0011:  ldloca.s   V_2
    IL_0013:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToYawPitchRoll()
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_0020:  ldc.r4     0.2
    IL_0025:  ldarg.1
    IL_0026:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_002b:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(valuetype [Engine]Engine.Vector2,
                                                                                              float32)
    IL_0030:  stfld      valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_0035:  ldarg.0
    IL_0036:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentFirstPersonModel::m_lastYpr
    IL_003b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0040:  brfalse    IL_00c5

    IL_0045:  ldloc.0
    IL_0046:  ldarg.0
    IL_0047:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentFirstPersonModel::m_lastYpr
    IL_004c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0051:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0056:  stloc.3
    IL_0057:  ldarg.0
    IL_0058:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_005d:  ldarg.0
    IL_005e:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_0063:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0068:  ldc.r4     7.9999998e-002
    IL_006d:  ldloc.3
    IL_006e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0073:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_0078:  mul
    IL_0079:  sub
    IL_007a:  ldc.r4     -0.1
    IL_007f:  ldc.r4     0.1
    IL_0084:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_0089:  stfld      float32 [Engine]Engine.Vector2::X
    IL_008e:  ldarg.0
    IL_008f:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_0094:  ldarg.0
    IL_0095:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
    IL_009a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_009f:  ldc.r4     7.9999998e-002
    IL_00a4:  ldloc.3
    IL_00a5:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00aa:  call       float32 [Engine]Engine.MathUtils::NormalizeAngle(float32)
    IL_00af:  mul
    IL_00b0:  sub
    IL_00b1:  ldc.r4     -0.1
    IL_00b6:  ldc.r4     0.1
    IL_00bb:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00c0:  stfld      float32 [Engine]Engine.Vector2::Y
    IL_00c5:  ldarg.0
    IL_00c6:  ldloc.0
    IL_00c7:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_00cc:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentFirstPersonModel::m_lastYpr
    IL_00d1:  ldarg.0
    IL_00d2:  ldfld      class Game.ComponentMiner Game.ComponentFirstPersonModel::m_componentMiner
    IL_00d7:  callvirt   instance int32 Game.ComponentMiner::get_ActiveBlockValue()
    IL_00dc:  stloc.1
    IL_00dd:  ldarg.0
    IL_00de:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_00e3:  ldc.r4     0.0
    IL_00e8:  bne.un.s   IL_0121

    IL_00ea:  ldloc.1
    IL_00eb:  ldarg.0
    IL_00ec:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
    IL_00f1:  beq.s      IL_0121

    IL_00f3:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00f8:  ldloc.1
    IL_00f9:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_00fe:  ldelem.ref
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
    IL_0105:  ldloc.1
    IL_0106:  callvirt   instance bool Game.Block::IsSwapAnimationNeeded(int32,
                                                                         int32)
    IL_010b:  brfalse.s  IL_011a

    IL_010d:  ldarg.0
    IL_010e:  ldc.r4     9.9999997e-005
    IL_0113:  stfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0118:  br.s       IL_0121

    IL_011a:  ldarg.0
    IL_011b:  ldloc.1
    IL_011c:  stfld      int32 Game.ComponentFirstPersonModel::m_value
    IL_0121:  ldarg.0
    IL_0122:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0127:  ldc.r4     0.0
    IL_012c:  ble.un.s   IL_017b

    IL_012e:  ldarg.0
    IL_012f:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0134:  ldarg.0
    IL_0135:  ldarg.0
    IL_0136:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_013b:  ldc.r4     2.
    IL_0140:  ldarg.1
    IL_0141:  mul
    IL_0142:  add
    IL_0143:  stfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0148:  ldc.r4     0.5
    IL_014d:  bge.un.s   IL_0163

    IL_014f:  ldarg.0
    IL_0150:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0155:  ldc.r4     0.5
    IL_015a:  blt.un.s   IL_0163

    IL_015c:  ldarg.0
    IL_015d:  ldloc.1
    IL_015e:  stfld      int32 Game.ComponentFirstPersonModel::m_value
    IL_0163:  ldarg.0
    IL_0164:  ldfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_0169:  ldc.r4     1.
    IL_016e:  ble.un.s   IL_017b

    IL_0170:  ldarg.0
    IL_0171:  ldc.r4     0.0
    IL_0176:  stfld      float32 Game.ComponentFirstPersonModel::m_swapAnimationTime
    IL_017b:  ldarg.0
    IL_017c:  ldarg.0
    IL_017d:  ldfld      class Game.ComponentMiner Game.ComponentFirstPersonModel::m_componentMiner
    IL_0182:  callvirt   instance float32 Game.ComponentMiner::get_PokingPhase()
    IL_0187:  stfld      float32 Game.ComponentFirstPersonModel::m_pokeAnimationTime
    IL_018c:  ldarg.0
    IL_018d:  ldarg.0
    IL_018e:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
    IL_0193:  ldarg.0
    IL_0194:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::get_ItemOffsetOrder()
    IL_0199:  ldc.r4     10.
    IL_019e:  ldarg.1
    IL_019f:  mul
    IL_01a0:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01a5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_01aa:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
    IL_01af:  ldarg.0
    IL_01b0:  ldarg.0
    IL_01b1:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemRotation
    IL_01b6:  ldarg.0
    IL_01b7:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::get_ItemRotationOrder()
    IL_01bc:  ldc.r4     10.
    IL_01c1:  ldarg.1
    IL_01c2:  mul
    IL_01c3:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_01c8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Lerp(valuetype [Engine]Engine.Vector3,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
    IL_01cd:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemRotation
    IL_01d2:  ldarg.0
    IL_01d3:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01d8:  call       instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
    IL_01dd:  ldarg.0
    IL_01de:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01e3:  call       instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
    IL_01e8:  ret
  } // end of method ComponentFirstPersonModel::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       113 (0x71)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_001f:  stfld      class Game.SubsystemCamera Game.ComponentFirstPersonModel::m_subsystemCamera
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_0031:  stfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>(bool)
    IL_0043:  stfld      class Game.ComponentRider Game.ComponentFirstPersonModel::m_componentRider
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_0055:  stfld      class Game.ComponentMiner Game.ComponentFirstPersonModel::m_componentMiner
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "HandModelName"
    IL_0061:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0066:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_006b:  stfld      class [Engine]Engine.Graphics.Model Game.ComponentFirstPersonModel::m_handModel
    IL_0070:  ret
  } // end of method ComponentFirstPersonModel::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0006:  stfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.1
    IL_0018:  newobj     instance void [Engine]Engine.Graphics.LitUberShader::.ctor(int32)
    IL_001d:  stfld      class [Engine]Engine.Graphics.LitUberShader Game.ComponentFirstPersonModel::m_uberShader
    IL_0022:  ldarg.0
    IL_0023:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0028:  ret
  } // end of method ComponentFirstPersonModel::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.1
    IL_0009:  stelem.i4
    IL_000a:  stsfld     int32[] Game.ComponentFirstPersonModel::m_drawOrders
    IL_000f:  ret
  } // end of method ComponentFirstPersonModel::.cctor

  .property instance valuetype [Engine]Engine.Vector3
          ItemOffsetOrder()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::get_ItemOffsetOrder()
    .set instance void Game.ComponentFirstPersonModel::set_ItemOffsetOrder(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentFirstPersonModel::ItemOffsetOrder
  .property instance valuetype [Engine]Engine.Vector3
          ItemRotationOrder()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::get_ItemRotationOrder()
    .set instance void Game.ComponentFirstPersonModel::set_ItemRotationOrder(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentFirstPersonModel::ItemRotationOrder
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentFirstPersonModel::get_DrawOrders()
  } // end of property ComponentFirstPersonModel::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentFirstPersonModel::get_UpdateOrder()
  } // end of property ComponentFirstPersonModel::UpdateOrder
} // end of class Game.ComponentFirstPersonModel