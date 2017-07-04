.class public auto ansi beforefieldinit Game.SubsystemElectricBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemElectricity m_subsystemElectricity
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldc.i4.s   61
    IL_0002:  newarr     [System.Runtime]System.Int32
    IL_0007:  dup
    IL_0008:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=244' '<PrivateImplementationDetails>'::'5BA7A89AB588337F356E5B0DFE0C1636F388BE4C'
    IL_000d:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0012:  ret
  } // end of method SubsystemElectricBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0006:  ldarg.2
    IL_0007:  ldarg.3
    IL_0008:  ldarg.s    z
    IL_000a:  callvirt   instance void Game.SubsystemElectricity::OnElectricElementBlockGenerated(int32,
                                                                                                  int32,
                                                                                                  int32)
    IL_000f:  ret
  } // end of method SubsystemElectricBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance void Game.SubsystemElectricity::OnElectricElementBlockAdded(int32,
                                                                                              int32,
                                                                                              int32)
    IL_0010:  ret
  } // end of method SubsystemElectricBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance void Game.SubsystemElectricity::OnElectricElementBlockRemoved(int32,
                                                                                                int32,
                                                                                                int32)
    IL_0010:  ret
  } // end of method SubsystemElectricBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
                          int32 oldValue,
                          int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0006:  ldarg.3
    IL_0007:  ldarg.s    y
    IL_0009:  ldarg.s    z
    IL_000b:  callvirt   instance void Game.SubsystemElectricity::OnElectricElementBlockModified(int32,
                                                                                                 int32,
                                                                                                 int32)
    IL_0010:  ret
  } // end of method SubsystemElectricBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void Game.SubsystemElectricity::OnChunkDiscarding(class Game.TerrainChunk)
    IL_000c:  ret
  } // end of method SubsystemElectricBlockBehavior::OnChunkDiscarding

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  5
    .locals init (int32 V_0,
             class Game.ElectricElement V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0030

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_000a:  ldarg.1
    IL_000b:  ldarg.2
    IL_000c:  ldarg.3
    IL_000d:  ldloc.0
    IL_000e:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0013:  stloc.1
    IL_0014:  ldloc.1
    IL_0015:  brfalse.s  IL_002c

    IL_0017:  ldloc.1
    IL_0018:  ldarg.1
    IL_0019:  ldarg.2
    IL_001a:  ldarg.3
    IL_001b:  ldloc.0
    IL_001c:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0021:  ldarg.s    neighborX
    IL_0023:  ldarg.s    neighborY
    IL_0025:  ldarg.s    neighborZ
    IL_0027:  callvirt   instance void Game.ElectricElement::OnNeighborBlockChanged(valuetype Game.CellFace,
                                                                                    int32,
                                                                                    int32,
                                                                                    int32)
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.1
    IL_002e:  add
    IL_002f:  stloc.0
    IL_0030:  ldloc.0
    IL_0031:  ldc.i4.6
    IL_0032:  blt.s      IL_0004

    IL_0034:  ret
  } // end of method SubsystemElectricBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.ElectricElement V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0006:  ldfld      int32 Game.CellFace::X
    IL_000b:  stloc.0
    IL_000c:  ldarg.1
    IL_000d:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0012:  ldfld      int32 Game.CellFace::Y
    IL_0017:  stloc.1
    IL_0018:  ldarg.1
    IL_0019:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001e:  ldfld      int32 Game.CellFace::Z
    IL_0023:  stloc.2
    IL_0024:  ldc.i4.0
    IL_0025:  stloc.3
    IL_0026:  br.s       IL_004b

    IL_0028:  ldarg.0
    IL_0029:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_002e:  ldloc.0
    IL_002f:  ldloc.1
    IL_0030:  ldloc.2
    IL_0031:  ldloc.3
    IL_0032:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0037:  stloc.s    V_4
    IL_0039:  ldloc.s    V_4
    IL_003b:  brfalse.s  IL_0047

    IL_003d:  ldloc.s    V_4
    IL_003f:  ldarg.1
    IL_0040:  ldarg.2
    IL_0041:  callvirt   instance bool Game.ElectricElement::OnInteract(valuetype Game.TerrainRaycastResult,
                                                                        class Game.ComponentMiner)
    IL_0046:  ret

    IL_0047:  ldloc.3
    IL_0048:  ldc.i4.1
    IL_0049:  add
    IL_004a:  stloc.3
    IL_004b:  ldloc.3
    IL_004c:  ldc.i4.6
    IL_004d:  blt.s      IL_0028

    IL_004f:  ldc.i4.0
    IL_0050:  ret
  } // end of method SubsystemElectricBlockBehavior::OnInteract

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       66 (0x42)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.ElectricElement V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.CellFace::X
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 Game.CellFace::Y
    IL_000d:  stloc.1
    IL_000e:  ldarg.1
    IL_000f:  ldfld      int32 Game.CellFace::Z
    IL_0014:  stloc.2
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.3
    IL_0017:  br.s       IL_003d

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_001f:  ldloc.0
    IL_0020:  ldloc.1
    IL_0021:  ldloc.2
    IL_0022:  ldloc.3
    IL_0023:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0028:  stloc.s    V_4
    IL_002a:  ldloc.s    V_4
    IL_002c:  brfalse.s  IL_0039

    IL_002e:  ldloc.s    V_4
    IL_0030:  ldarg.1
    IL_0031:  ldarg.2
    IL_0032:  ldarg.3
    IL_0033:  callvirt   instance void Game.ElectricElement::OnCollide(valuetype Game.CellFace,
                                                                       float32,
                                                                       class Game.ComponentBody)
    IL_0038:  ret

    IL_0039:  ldloc.3
    IL_003a:  ldc.i4.1
    IL_003b:  add
    IL_003c:  stloc.3
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.6
    IL_003f:  blt.s      IL_0019

    IL_0041:  ret
  } // end of method SubsystemElectricBlockBehavior::OnCollide

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             class Game.ElectricElement V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.CellFace::X
    IL_0006:  stloc.0
    IL_0007:  ldarg.1
    IL_0008:  ldfld      int32 Game.CellFace::Y
    IL_000d:  stloc.1
    IL_000e:  ldarg.1
    IL_000f:  ldfld      int32 Game.CellFace::Z
    IL_0014:  stloc.2
    IL_0015:  ldc.i4.0
    IL_0016:  stloc.3
    IL_0017:  br.s       IL_003c

    IL_0019:  ldarg.0
    IL_001a:  ldfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_001f:  ldloc.0
    IL_0020:  ldloc.1
    IL_0021:  ldloc.2
    IL_0022:  ldloc.3
    IL_0023:  callvirt   instance class Game.ElectricElement Game.SubsystemElectricity::GetElectricElement(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           int32)
    IL_0028:  stloc.s    V_4
    IL_002a:  ldloc.s    V_4
    IL_002c:  brfalse.s  IL_0038

    IL_002e:  ldloc.s    V_4
    IL_0030:  ldarg.1
    IL_0031:  ldarg.2
    IL_0032:  callvirt   instance void Game.ElectricElement::OnHitByProjectile(valuetype Game.CellFace,
                                                                               class Game.WorldItem)
    IL_0037:  ret

    IL_0038:  ldloc.3
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  ldc.i4.6
    IL_003e:  blt.s      IL_0019

    IL_0040:  ret
  } // end of method SubsystemElectricBlockBehavior::OnHitByProjectile

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemElectricity>(bool)
    IL_0014:  stfld      class Game.SubsystemElectricity Game.SubsystemElectricBlockBehavior::m_subsystemElectricity
    IL_0019:  ret
  } // end of method SubsystemElectricBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0006:  ret
  } // end of method SubsystemElectricBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemElectricBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemElectricBlockBehavior::HandledBlocks
} // end of class Game.SubsystemElectricBlockBehavior