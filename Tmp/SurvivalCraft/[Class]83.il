.class public auto ansi beforefieldinit Game.ComponentFirstPersonModel
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable,
                  Game.IUpdateable
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
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
  .field private static class [Engine]Engine.Graphics.LitShader m_shader
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
          instance void  Draw(class Game.Camera camera,
                              int32 drawOrder) cil managed
  {
    // 代码大小       1823 (0x71f)
    .maxstack  7
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
             valuetype [System.Runtime]System.Nullable`1<float32> V_23,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh> V_24,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_25,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart> V_26,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> V_27,
             class [Engine]Engine.Graphics.ModelMeshPart V_28)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
    IL_0006:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_000b:  callvirt   instance float32 Game.ComponentHealth::get_Health()
    IL_0010:  ldc.r4     0.0
    IL_0015:  ble.un     IL_071e

    IL_001a:  ldarg.1
    IL_001b:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0020:  ldarg.0
    IL_0021:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0026:  callvirt   instance bool Game.View::IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_002b:  brfalse    IL_071e

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
      IL_02a9:  call       int32 Game.Terrain::ToCell(float32)
      IL_02ae:  stloc.s    V_4
      IL_02b0:  ldloc.3
      IL_02b1:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_02b6:  call       int32 Game.Terrain::ToCell(float32)
      IL_02bb:  stloc.s    V_5
      IL_02bd:  ldloc.3
      IL_02be:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_02c3:  call       int32 Game.Terrain::ToCell(float32)
      IL_02c8:  stloc.s    V_6
      IL_02ca:  ldarg.0
      IL_02cb:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_02d0:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_02d5:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
      IL_02da:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
      IL_02df:  stloc.s    V_7
      IL_02e1:  ldloca.s   V_7
      IL_02e3:  ldarg.0
      IL_02e4:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_02e9:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_02ee:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
      IL_02f3:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
      IL_02f8:  ldarg.0
      IL_02f9:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_02fe:  brfalse    IL_04b0

      IL_0303:  ldloc.s    V_5
      IL_0305:  ldc.i4.0
      IL_0306:  blt.s      IL_034e

      IL_0308:  ldloc.s    V_5
      IL_030a:  ldc.i4.s   127
      IL_030c:  bgt.s      IL_034e

      IL_030e:  ldarg.0
      IL_030f:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0314:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0319:  ldloc.s    V_4
      IL_031b:  ldloc.s    V_6
      IL_031d:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                         int32)
      IL_0322:  stloc.s    V_20
      IL_0324:  ldloc.s    V_20
      IL_0326:  brfalse.s  IL_034e

      IL_0328:  ldloc.s    V_20
      IL_032a:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
      IL_032f:  ldc.i4.7
      IL_0330:  blt.s      IL_034e

      IL_0332:  ldarg.0
      IL_0333:  ldarg.0
      IL_0334:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_0339:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_033e:  ldloc.s    V_4
      IL_0340:  ldloc.s    V_5
      IL_0342:  ldloc.s    V_6
      IL_0344:  callvirt   instance int32 Game.Terrain::GetCellLightFast(int32,
                                                                         int32,
                                                                         int32)
      IL_0349:  stfld      int32 Game.ComponentFirstPersonModel::m_itemLight
      IL_034e:  ldarg.0
      IL_034f:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_0354:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0359:  stloc.s    V_15
      IL_035b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0360:  ldloc.s    V_15
      IL_0362:  ldelem.ref
      IL_0363:  stloc.s    V_16
      IL_0365:  ldloc.s    V_16
      IL_0367:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonRotation
      IL_036c:  ldc.r4     1.7453292e-002
      IL_0371:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0376:  ldarg.0
      IL_0377:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemRotation
      IL_037c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0381:  stloc.s    V_17
      IL_0383:  ldloc.s    V_16
      IL_0385:  ldfld      valuetype [Engine]Engine.Vector3 Game.Block::FirstPersonOffset
      IL_038a:  ldarg.0
      IL_038b:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
      IL_0390:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0395:  stloc.s    V_18
      IL_0397:  ldloc.s    V_18
      IL_0399:  ldarg.0
      IL_039a:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFirstPersonModel::m_itemOffset
      IL_039f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03a4:  stloc.s    V_18
      IL_03a6:  ldloc.s    V_17
      IL_03a8:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_03ad:  ldloc.s    V_17
      IL_03af:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_03b4:  ldloc.s    V_17
      IL_03b6:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_03bb:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_03c0:  ldloc.2
      IL_03c1:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03c6:  ldloc.s    V_18
      IL_03c8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_03cd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03d2:  ldarg.0
      IL_03d3:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_03d8:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_03dd:  ldarg.0
      IL_03de:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_03e3:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_03e8:  ldc.r4     0.0
      IL_03ed:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_03f2:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03f7:  ldloc.s    V_7
      IL_03f9:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_03fe:  stloc.s    V_19
      IL_0400:  ldarg.0
      IL_0401:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0406:  ldarg.0
      IL_0407:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_040c:  stfld      class Game.SubsystemTerrain Game.DrawBlockEnvironmentData::SubsystemTerrain
      IL_0411:  ldarg.0
      IL_0412:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0417:  ldloc.s    V_19
      IL_0419:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
      IL_041e:  ldarg.0
      IL_041f:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0424:  ldarg.0
      IL_0425:  ldfld      int32 Game.ComponentFirstPersonModel::m_itemLight
      IL_042a:  stfld      int32 Game.DrawBlockEnvironmentData::Light
      IL_042f:  ldarg.0
      IL_0430:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0435:  ldarg.0
      IL_0436:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_043b:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0440:  ldloc.s    V_4
      IL_0442:  ldloc.s    V_6
      IL_0444:  callvirt   instance int32 Game.Terrain::GetHumidity(int32,
                                                                    int32)
      IL_0449:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
      IL_044e:  ldarg.0
      IL_044f:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_0454:  ldarg.0
      IL_0455:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_045a:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_045f:  ldloc.s    V_4
      IL_0461:  ldloc.s    V_6
      IL_0463:  callvirt   instance int32 Game.Terrain::GetTemperature(int32,
                                                                       int32)
      IL_0468:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
      IL_046d:  ldloc.s    V_16
      IL_046f:  ldarg.0
      IL_0470:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
      IL_0475:  ldarg.0
      IL_0476:  ldfld      int32 Game.ComponentFirstPersonModel::m_value
      IL_047b:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0480:  ldloc.s    V_16
      IL_0482:  ldfld      float32 Game.Block::FirstPersonScale
      IL_0487:  ldloca.s   V_19
      IL_0489:  ldarg.0
      IL_048a:  ldfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
      IL_048f:  callvirt   instance void Game.Block::DrawBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                               int32,
                                                               valuetype [Engine]Engine.Color,
                                                               float32,
                                                               valuetype [Engine]Engine.Matrix&,
                                                               class Game.DrawBlockEnvironmentData)
      IL_0494:  ldarg.0
      IL_0495:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
      IL_049a:  ldarg.1
      IL_049b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
      IL_04a0:  ldc.i4.1
      IL_04a1:  ldc.i4     0x7fffffff
      IL_04a6:  callvirt   instance void class [Engine]Engine.Graphics.BasePrimitivesRenderer`3<class [Engine]Engine.Graphics.FlatBatch3D,class [Engine]Engine.Graphics.TexturedBatch3D,class [Engine]Engine.Graphics.FontBatch3D>::Flush(valuetype [Engine]Engine.Matrix,
                                                                                                                                                                                                                                          bool,
                                                                                                                                                                                                                                          int32)
      IL_04ab:  leave      IL_071e

      IL_04b0:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_04b5:  ldarg.0
      IL_04b6:  ldfld      float64 Game.ComponentFirstPersonModel::m_nextHandLightTime
      IL_04bb:  blt.un.s   IL_04f6

      IL_04bd:  ldarg.0
      IL_04be:  ldfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
      IL_04c3:  ldloc.3
      IL_04c4:  call       valuetype [System.Runtime]System.Nullable`1<float32> Game.LightingManager::CalculateSmoothLight(class Game.SubsystemTerrain,
                                                                                                                           valuetype [Engine]Engine.Vector3)
      IL_04c9:  stloc.s    V_23
      IL_04cb:  ldloca.s   V_23
      IL_04cd:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
      IL_04d2:  brfalse.s  IL_04f6

      IL_04d4:  ldarg.0
      IL_04d5:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_04da:  ldc.r8     0.10000000000000001
      IL_04e3:  add
      IL_04e4:  stfld      float64 Game.ComponentFirstPersonModel::m_nextHandLightTime
      IL_04e9:  ldarg.0
      IL_04ea:  ldloca.s   V_23
      IL_04ec:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
      IL_04f1:  stfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_04f6:  ldloca.s   V_21
      IL_04f8:  ldc.r4     0.25
      IL_04fd:  ldc.r4     -0.30000001
      IL_0502:  ldc.r4     -5.0000001e-002
      IL_0507:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_050c:  ldc.r4     9.9999998e-003
      IL_0511:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
      IL_0516:  ldc.r4     0.80000001
      IL_051b:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationX(float32)
      IL_0520:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0525:  ldc.r4     0.40000001
      IL_052a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateRotationY(float32)
      IL_052f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0534:  ldloc.2
      IL_0535:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_053a:  ldloc.s    V_21
      IL_053c:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
      IL_0541:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0546:  ldarg.0
      IL_0547:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_054c:  ldfld      float32 [Engine]Engine.Vector2::X
      IL_0551:  ldarg.0
      IL_0552:  ldflda     valuetype [Engine]Engine.Vector2 Game.ComponentFirstPersonModel::m_lagAngles
      IL_0557:  ldfld      float32 [Engine]Engine.Vector2::Y
      IL_055c:  ldc.r4     0.0
      IL_0561:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                         float32,
                                                                                                         float32)
      IL_0566:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_056b:  ldloc.s    V_7
      IL_056d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_0572:  ldarg.1
      IL_0573:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
      IL_0578:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                              valuetype [Engine]Engine.Matrix)
      IL_057d:  stloc.s    V_22
      IL_057f:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
      IL_0584:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
      IL_0589:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
      IL_058e:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
      IL_0593:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0598:  ldarg.0
      IL_0599:  ldfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
      IL_059e:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
      IL_05a3:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
      IL_05a8:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_Texture(class [Engine]Engine.Graphics.Texture2D)
      IL_05ad:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_05b2:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_05b7:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_SamplerState(class [Engine]Engine.Graphics.SamplerState)
      IL_05bc:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_05c1:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
      IL_05c6:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_MaterialColor(valuetype [Engine]Engine.Vector4)
      IL_05cb:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_05d0:  ldarg.0
      IL_05d1:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_05d6:  ldsfld     float32 Game.LightingManager::LightAmbient
      IL_05db:  mul
      IL_05dc:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_05e1:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_AmbientLightColor(valuetype [Engine]Engine.Vector3)
      IL_05e6:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_05eb:  ldarg.0
      IL_05ec:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_05f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_05f6:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor1(valuetype [Engine]Engine.Vector3)
      IL_05fb:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0600:  ldarg.0
      IL_0601:  ldfld      float32 Game.ComponentFirstPersonModel::m_handLight
      IL_0606:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
      IL_060b:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_DiffuseLightColor2(valuetype [Engine]Engine.Vector3)
      IL_0610:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0615:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection1
      IL_061a:  ldarg.1
      IL_061b:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
      IL_0620:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_0625:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection1(valuetype [Engine]Engine.Vector3)
      IL_062a:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_062f:  ldsfld     valuetype [Engine]Engine.Vector3 Game.LightingManager::LightDirection2
      IL_0634:  ldarg.1
      IL_0635:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewMatrix()
      IL_063a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::TransformNormal(valuetype [Engine]Engine.Vector3,
                                                                                                    valuetype [Engine]Engine.Matrix)
      IL_063f:  callvirt   instance void [Engine]Engine.Graphics.LitShader::set_LightDirection2(valuetype [Engine]Engine.Vector3)
      IL_0644:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0649:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_064e:  callvirt   instance class [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList [Engine]Engine.Graphics.ShaderTransforms::get_World()
      IL_0653:  ldc.i4.0
      IL_0654:  ldloc.s    V_22
      IL_0656:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms/WorldMatrixList::set_Item(int32,
                                                                                                            valuetype [Engine]Engine.Matrix)
      IL_065b:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0660:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_0665:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
      IL_066a:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_View(valuetype [Engine]Engine.Matrix)
      IL_066f:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
      IL_0674:  ldfld      class [Engine]Engine.Graphics.ShaderTransforms [Engine]Engine.Graphics.LitShader::Transforms
      IL_0679:  ldarg.1
      IL_067a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ProjectionMatrix()
      IL_067f:  callvirt   instance void [Engine]Engine.Graphics.ShaderTransforms::set_Projection(valuetype [Engine]Engine.Matrix)
      IL_0684:  ldarg.0
      IL_0685:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentFirstPersonModel::m_handModel
      IL_068a:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
      IL_068f:  stloc.s    V_25
      IL_0691:  ldloca.s   V_25
      IL_0693:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::GetEnumerator()
      IL_0698:  stloc.s    V_24
      .try
      {
        IL_069a:  br.s       IL_06fe

        IL_069c:  ldloca.s   V_24
        IL_069e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::get_Current()
        IL_06a3:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart> [Engine]Engine.Graphics.ModelMesh::get_MeshParts()
        IL_06a8:  stloc.s    V_27
        IL_06aa:  ldloca.s   V_27
        IL_06ac:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMeshPart>::GetEnumerator()
        IL_06b1:  stloc.s    V_26
        .try
        {
          IL_06b3:  br.s       IL_06e5

          IL_06b5:  ldloca.s   V_26
          IL_06b7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::get_Current()
          IL_06bc:  stloc.s    V_28
          IL_06be:  ldc.i4.2
          IL_06bf:  ldsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
          IL_06c4:  ldloc.s    V_28
          IL_06c6:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_VertexBuffer()
          IL_06cb:  ldloc.s    V_28
          IL_06cd:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer [Engine]Engine.Graphics.ModelMeshPart::get_IndexBuffer()
          IL_06d2:  ldloc.s    V_28
          IL_06d4:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_StartIndex()
          IL_06d9:  ldloc.s    V_28
          IL_06db:  callvirt   instance int32 [Engine]Engine.Graphics.ModelMeshPart::get_IndicesCount()
          IL_06e0:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                                 class [Engine]Engine.Graphics.Shader,
                                                                                 class [Engine]Engine.Graphics.VertexBuffer,
                                                                                 class [Engine]Engine.Graphics.IndexBuffer,
                                                                                 int32,
                                                                                 int32)
          IL_06e5:  ldloca.s   V_26
          IL_06e7:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>::MoveNext()
          IL_06ec:  brtrue.s   IL_06b5

          IL_06ee:  leave.s    IL_06fe

        }  // end .try
        finally
        {
          IL_06f0:  ldloca.s   V_26
          IL_06f2:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMeshPart>
          IL_06f8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
          IL_06fd:  endfinally
        }  // end handler
        IL_06fe:  ldloca.s   V_24
        IL_0700:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>::MoveNext()
        IL_0705:  brtrue.s   IL_069c

        IL_0707:  leave.s    IL_071e

      }  // end .try
      finally
      {
        IL_0709:  ldloca.s   V_24
        IL_070b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelMesh>
        IL_0711:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0716:  endfinally
      }  // end handler
    }  // end .try
    finally
    {
      IL_0717:  ldloc.0
      IL_0718:  call       void [Engine]Engine.Graphics.Display::set_Viewport(valuetype [Engine]Engine.Graphics.Viewport)
      IL_071d:  endfinally
    }  // end handler
    IL_071e:  ret
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
    IL_00f9:  call       int32 Game.Terrain::ExtractContents(int32)
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
    // 代码大小       95 (0x5f)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_000d:  stfld      class Game.SubsystemTerrain Game.ComponentFirstPersonModel::m_subsystemTerrain
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_001f:  stfld      class Game.ComponentCreature Game.ComponentFirstPersonModel::m_componentCreature
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentRider>(bool)
    IL_0031:  stfld      class Game.ComponentRider Game.ComponentFirstPersonModel::m_componentRider
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMiner>(bool)
    IL_0043:  stfld      class Game.ComponentMiner Game.ComponentFirstPersonModel::m_componentMiner
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "HandModelName"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0054:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0059:  stfld      class [Engine]Engine.Graphics.Model Game.ComponentFirstPersonModel::m_handModel
    IL_005e:  ret
  } // end of method ComponentFirstPersonModel::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.DrawBlockEnvironmentData::.ctor()
    IL_0006:  stfld      class Game.DrawBlockEnvironmentData Game.ComponentFirstPersonModel::m_drawBlockEnvironmentData
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer3D::.ctor()
    IL_0011:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer3D Game.ComponentFirstPersonModel::m_primitivesRenderer
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_001c:  ret
  } // end of method ComponentFirstPersonModel::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldc.i4.2
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.0
    IL_0004:  ldc.i4.0
    IL_0005:  ldc.i4.1
    IL_0006:  newobj     instance void [Engine]Engine.Graphics.LitShader::.ctor(int32,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                bool,
                                                                                int32)
    IL_000b:  stsfld     class [Engine]Engine.Graphics.LitShader Game.ComponentFirstPersonModel::m_shader
    IL_0010:  ldc.i4.1
    IL_0011:  newarr     [System.Runtime]System.Int32
    IL_0016:  dup
    IL_0017:  ldc.i4.0
    IL_0018:  ldc.i4.1
    IL_0019:  stelem.i4
    IL_001a:  stsfld     int32[] Game.ComponentFirstPersonModel::m_drawOrders
    IL_001f:  ret
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