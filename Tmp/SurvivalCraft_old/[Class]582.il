.class public auto ansi beforefieldinit Game.SubsystemBottomSuckerBlockBehavior
       extends Game.SubsystemInWaterBlockBehavior
{
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemBottomSuckerBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  8
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Point3 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    neighborX
    IL_0006:  ldarg.s    neighborY
    IL_0008:  ldarg.s    neighborZ
    IL_000a:  call       instance void Game.SubsystemFluidBlockBehavior::OnNeighborBlockChanged(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_000f:  ldarg.0
    IL_0010:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0015:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001a:  ldarg.1
    IL_001b:  ldarg.2
    IL_001c:  ldarg.3
    IL_001d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0022:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0027:  call       int32 Game.BottomSuckerBlock::GetFace(int32)
    IL_002c:  stloc.0
    IL_002d:  ldloc.0
    IL_002e:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_0033:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_0038:  stloc.1
    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_003f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0044:  ldarg.1
    IL_0045:  ldloc.1
    IL_0046:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004b:  add
    IL_004c:  ldarg.2
    IL_004d:  ldloc.1
    IL_004e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0053:  add
    IL_0054:  ldarg.3
    IL_0055:  ldloc.1
    IL_0056:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005b:  add
    IL_005c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0061:  ldloc.0
    IL_0062:  call       bool Game.SubsystemBottomSuckerBlockBehavior::IsSupport(int32,
                                                                                 int32)
    IL_0067:  brtrue.s   IL_007b

    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_006f:  ldc.i4.0
    IL_0070:  ldarg.1
    IL_0071:  ldarg.2
    IL_0072:  ldarg.3
    IL_0073:  ldc.i4.0
    IL_0074:  ldc.i4.0
    IL_0075:  ldc.i4.0
    IL_0076:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_007b:  ret
  } // end of method SubsystemBottomSuckerBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  5
    .locals init (class Game.ComponentCreature V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      int32 Game.CellFace::X
    IL_0011:  ldarg.1
    IL_0012:  ldfld      int32 Game.CellFace::Y
    IL_0017:  ldarg.1
    IL_0018:  ldfld      int32 Game.CellFace::Z
    IL_001d:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0022:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0027:  ldc.i4     0xe2
    IL_002c:  bne.un.s   IL_005b

    IL_002e:  ldarg.3
    IL_002f:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0039:  stloc.0
    IL_003a:  ldloc.0
    IL_003b:  brfalse.s  IL_005b

    IL_003d:  ldloc.0
    IL_003e:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0043:  ldc.r4     9.9999998e-003
    IL_0048:  ldarg.2
    IL_0049:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_004e:  mul
    IL_004f:  ldnull
    IL_0050:  ldc.i4.0
    IL_0051:  ldstr      "Spiked by a sea creature"
    IL_0056:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_005b:  ret
  } // end of method SubsystemBottomSuckerBlockBehavior::OnCollide

  .method public hidebysig static bool  IsSupport(int32 'value',
                                                  int32 face) cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  3
    .locals init (class Game.Block V_0)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.0
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_000b:  ldelem.ref
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldfld      bool Game.Block::IsCollidable
    IL_0013:  brfalse.s  IL_0026

    IL_0015:  ldloc.0
    IL_0016:  ldarg.1
    IL_0017:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance bool Game.Block::IsFaceTransparent(int32,
                                                                     int32)
    IL_0022:  ldc.i4.0
    IL_0023:  ceq
    IL_0025:  ret

    IL_0026:  ldc.i4.0
    IL_0027:  ret
  } // end of method SubsystemBottomSuckerBlockBehavior::IsSupport

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemInWaterBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemBottomSuckerBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBottomSuckerBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBottomSuckerBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBottomSuckerBlockBehavior