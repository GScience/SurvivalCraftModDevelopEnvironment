.class public auto ansi beforefieldinit Game.SnowBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x0000003D)
  .field private valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance bool 
          IsFaceTransparent(int32 face,
                            int32 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.5
    IL_0002:  ceq
    IL_0004:  ldc.i4.0
    IL_0005:  ceq
    IL_0007:  ret
  } // end of method SnowBlock::IsFaceTransparent

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  16
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    x
    IL_0005:  ldarg.s    y
    IL_0007:  ldarg.s    z
    IL_0009:  ldc.r4     0.125
    IL_000e:  ldc.r4     0.125
    IL_0013:  ldc.r4     0.125
    IL_0018:  ldc.r4     0.125
    IL_001d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0022:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0027:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_002c:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0031:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0036:  ldarg.2
    IL_0037:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_003c:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         int32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         float32,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         valuetype [Engine]Engine.Color,
                                                                                         class Game.TerrainGeometrySubset[])
    IL_0041:  ret
  } // end of method SnowBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.BlockDropValue V_2)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_000c:  blt.s      IL_004e

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.Block::Random
    IL_0014:  ldc.i4.1
    IL_0015:  ldc.i4.3
    IL_0016:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_001b:  stloc.0
    IL_001c:  ldc.i4.0
    IL_001d:  stloc.1
    IL_001e:  br.s       IL_004a

    IL_0020:  ldarg.s    dropValues
    IL_0022:  ldloca.s   V_2
    IL_0024:  initobj    Game.BlockDropValue
    IL_002a:  ldloca.s   V_2
    IL_002c:  ldc.i4.s   85
    IL_002e:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0033:  stfld      int32 Game.BlockDropValue::Value
    IL_0038:  ldloca.s   V_2
    IL_003a:  ldc.i4.1
    IL_003b:  stfld      int32 Game.BlockDropValue::Count
    IL_0040:  ldloc.2
    IL_0041:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.1
    IL_0048:  add
    IL_0049:  stloc.1
    IL_004a:  ldloc.1
    IL_004b:  ldloc.0
    IL_004c:  blt.s      IL_0020

    IL_004e:  ret
  } // end of method SnowBlock::GetDropValues

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.BoundingBox[] Game.SnowBlock::m_collisionBoxes
    IL_0006:  ret
  } // end of method SnowBlock::GetCustomCollisionBoxes

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  newarr     [Engine]Engine.BoundingBox
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.r4     0.0
    IL_000e:  ldc.r4     0.0
    IL_0013:  ldc.r4     0.0
    IL_0018:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001d:  ldc.r4     1.
    IL_0022:  ldc.r4     0.125
    IL_0027:  ldc.r4     1.
    IL_002c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0031:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0036:  stelem     [Engine]Engine.BoundingBox
    IL_003b:  stfld      valuetype [Engine]Engine.BoundingBox[] Game.SnowBlock::m_collisionBoxes
    IL_0040:  ldarg.0
    IL_0041:  call       instance void Game.CubeBlock::.ctor()
    IL_0046:  ret
  } // end of method SnowBlock::.ctor

} // end of class Game.SnowBlock