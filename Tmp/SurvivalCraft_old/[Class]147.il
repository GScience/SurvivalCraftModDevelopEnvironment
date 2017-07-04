.class public auto ansi beforefieldinit Game.SoilBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x000000A8)
  .field private static valuetype [Engine]Engine.BoundingBox[] m_collisionBoxes
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       28 (0x1c)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       int32 Game.SoilBlock::GetNitrogen(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldc.i4.4
    IL_000e:  beq.s      IL_0012

    IL_0010:  ldc.i4.2
    IL_0011:  ret

    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  bgt.s      IL_0019

    IL_0016:  ldc.i4.s   37
    IL_0018:  ret

    IL_0019:  ldc.i4.s   53
    IL_001b:  ret
  } // end of method SoilBlock::GetFaceTextureSlot

  .method public hidebysig static bool  GetHydration(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method SoilBlock::GetHydration

  .method public hidebysig static int32  GetNitrogen(int32 data) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  shr
    IL_0003:  ldc.i4.3
    IL_0004:  and
    IL_0005:  ret
  } // end of method SoilBlock::GetNitrogen

  .method public hidebysig static int32  SetHydration(int32 data,
                                                      bool hydration) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -2
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  or
    IL_000b:  ret
  } // end of method SoilBlock::SetHydration

  .method public hidebysig static int32  SetNitrogen(int32 data,
                                                     int32 nitrogen) cil managed
  {
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.3
    IL_0003:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0008:  starg.s    nitrogen
    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.s   -7
    IL_000d:  and
    IL_000e:  ldarg.1
    IL_000f:  ldc.i4.3
    IL_0010:  and
    IL_0011:  ldc.i4.1
    IL_0012:  shl
    IL_0013:  or
    IL_0014:  ret
  } // end of method SoilBlock::SetNitrogen

  .method public hidebysig virtual instance void 
          GenerateTerrainVertices(class Game.BlockGeometryGenerator generator,
                                  class Game.TerrainGeometrySubsets geometry,
                                  int32 'value',
                                  int32 x,
                                  int32 y,
                                  int32 z) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  16
    .locals init (valuetype [Engine]Engine.Color V_0)
    IL_0000:  ldarg.3
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.SoilBlock::GetHydration(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0012:  br.s       IL_0028

    IL_0014:  ldc.i4     0xb4
    IL_0019:  ldc.i4     0xaa
    IL_001e:  ldc.i4     0x96
    IL_0023:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                   int32,
                                                                   int32)
    IL_0028:  stloc.0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.0
    IL_002b:  ldarg.3
    IL_002c:  ldarg.s    x
    IL_002e:  ldarg.s    y
    IL_0030:  ldarg.s    z
    IL_0032:  ldc.r4     0.9375
    IL_0037:  ldc.r4     0.9375
    IL_003c:  ldc.r4     0.9375
    IL_0041:  ldc.r4     0.9375
    IL_0046:  ldloc.0
    IL_0047:  ldloc.0
    IL_0048:  ldloc.0
    IL_0049:  ldloc.0
    IL_004a:  ldloc.0
    IL_004b:  ldarg.2
    IL_004c:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0051:  callvirt   instance void Game.BlockGeometryGenerator::GenerateCubeVertices(class Game.Block,
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
    IL_0056:  ret
  } // end of method SoilBlock::GenerateTerrainVertices

  .method public hidebysig virtual instance valuetype [Engine]Engine.BoundingBox[] 
          GetCustomCollisionBoxes(class Game.SubsystemTerrain terrain,
                                  int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     valuetype [Engine]Engine.BoundingBox[] Game.SoilBlock::m_collisionBoxes
    IL_0005:  ret
  } // end of method SoilBlock::GetCustomCollisionBoxes

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
  } // end of method SoilBlock::IsFaceTransparent

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method SoilBlock::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  7
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [Engine]Engine.BoundingBox
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.r4     0.0
    IL_000d:  ldc.r4     0.0
    IL_0012:  ldc.r4     0.0
    IL_0017:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_001c:  ldc.r4     1.
    IL_0021:  ldc.r4     0.9375
    IL_0026:  ldc.r4     1.
    IL_002b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0030:  newobj     instance void [Engine]Engine.BoundingBox::.ctor(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0035:  stelem     [Engine]Engine.BoundingBox
    IL_003a:  stsfld     valuetype [Engine]Engine.BoundingBox[] Game.SoilBlock::m_collisionBoxes
    IL_003f:  ret
  } // end of method SoilBlock::.cctor

} // end of class Game.SoilBlock