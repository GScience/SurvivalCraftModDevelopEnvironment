.class public auto ansi beforefieldinit Game.SubsystemTorchBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> m_particleSystemsByCell
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldc.i4.3
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=12' '<PrivateImplementationDetails>'::'36AAD14B1721A3FD9ABBFD13BB7924E6A2E2C745'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  ret
  } // end of method SubsystemTorchBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       195 (0xc3)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             valuetype [Engine]Engine.Point3 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldarg.3
    IL_000e:  callvirt   instance int32 Game.Terrain::GetCellValueFast(int32,
                                                                       int32,
                                                                       int32)
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.s   31
    IL_001e:  bne.un.s   IL_0082

    IL_0020:  ldloc.0
    IL_0021:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0026:  call       valuetype [Engine]Engine.Point3 Game.CellFace::FaceToPoint3(int32)
    IL_002b:  stloc.2
    IL_002c:  ldarg.1
    IL_002d:  ldloc.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0033:  sub
    IL_0034:  stloc.3
    IL_0035:  ldarg.2
    IL_0036:  ldloc.2
    IL_0037:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_003c:  sub
    IL_003d:  stloc.s    V_4
    IL_003f:  ldarg.3
    IL_0040:  ldloc.2
    IL_0041:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0046:  sub
    IL_0047:  stloc.s    V_5
    IL_0049:  ldarg.0
    IL_004a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0054:  ldloc.3
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldloc.s    V_5
    IL_0059:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_005e:  stloc.s    V_6
    IL_0060:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0065:  ldloc.s    V_6
    IL_0067:  ldelem.ref
    IL_0068:  ldfld      bool Game.Block::IsCollidable
    IL_006d:  brtrue.s   IL_00c2

    IL_006f:  ldarg.0
    IL_0070:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0075:  ldc.i4.0
    IL_0076:  ldarg.1
    IL_0077:  ldarg.2
    IL_0078:  ldarg.3
    IL_0079:  ldc.i4.0
    IL_007a:  ldc.i4.0
    IL_007b:  ldc.i4.0
    IL_007c:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0081:  ret

    IL_0082:  ldloc.1
    IL_0083:  ldc.i4     0x84
    IL_0088:  bne.un.s   IL_00c2

    IL_008a:  ldarg.0
    IL_008b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0090:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0095:  ldarg.1
    IL_0096:  ldarg.2
    IL_0097:  ldc.i4.1
    IL_0098:  sub
    IL_0099:  ldarg.3
    IL_009a:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_009f:  stloc.s    V_7
    IL_00a1:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00a6:  ldloc.s    V_7
    IL_00a8:  ldelem.ref
    IL_00a9:  ldfld      bool Game.Block::IsCollidable
    IL_00ae:  brtrue.s   IL_00c2

    IL_00b0:  ldarg.0
    IL_00b1:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_00b6:  ldc.i4.0
    IL_00b7:  ldarg.1
    IL_00b8:  ldarg.2
    IL_00b9:  ldarg.3
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_00c2:  ret
  } // end of method SubsystemTorchBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.3
    IL_0003:  ldarg.s    y
    IL_0005:  ldarg.s    z
    IL_0007:  call       instance void Game.SubsystemTorchBlockBehavior::AddTorch(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
    IL_000c:  ret
  } // end of method SubsystemTorchBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemTorchBlockBehavior::RemoveTorch(int32,
                                                                                     int32,
                                                                                     int32)
    IL_000b:  ret
  } // end of method SubsystemTorchBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
                          int32 oldValue,
                          int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.3
    IL_0002:  ldarg.s    y
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemTorchBlockBehavior::RemoveTorch(int32,
                                                                                     int32,
                                                                                     int32)
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.3
    IL_000e:  ldarg.s    y
    IL_0010:  ldarg.s    z
    IL_0012:  call       instance void Game.SubsystemTorchBlockBehavior::AddTorch(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
    IL_0017:  ret
  } // end of method SubsystemTorchBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    z
    IL_0006:  call       instance void Game.SubsystemTorchBlockBehavior::AddTorch(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32)
    IL_000b:  ret
  } // end of method SubsystemTorchBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemTorchBlockBehavior::m_particleSystemsByCell
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00c0

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ad:  ldloc.s    V_4
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b4:  ldloc.s    V_4
      IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00bb:  call       instance void Game.SubsystemTorchBlockBehavior::RemoveTorch(int32,
                                                                                       int32,
                                                                                       int32)
      IL_00c0:  ldloca.s   V_3
      IL_00c2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00c7:  brtrue.s   IL_009c

      IL_00c9:  leave.s    IL_00d9

    }  // end .try
    finally
    {
      IL_00cb:  ldloca.s   V_3
      IL_00cd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d8:  endfinally
    }  // end handler
    IL_00d9:  ret
  } // end of method SubsystemTorchBlockBehavior::OnChunkDiscarding

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
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0014:  stfld      class Game.SubsystemParticles Game.SubsystemTorchBlockBehavior::m_subsystemParticles
    IL_0019:  ret
  } // end of method SubsystemTorchBlockBehavior::Load

  .method private hidebysig instance void 
          AddTorch(int32 'value',
                   int32 x,
                   int32 y,
                   int32 z) cil managed
  {
    // 代码大小       298 (0x12a)
    .maxstack  4
    .locals init (int32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             class Game.FireParticleSystem V_3,
             int32 V_4)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   31
    IL_000a:  bne.un     IL_00a8

    IL_000f:  ldarg.1
    IL_0010:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0015:  stloc.s    V_4
    IL_0017:  ldloc.s    V_4
    IL_0019:  brtrue.s   IL_0033

    IL_001b:  ldloca.s   V_1
    IL_001d:  ldc.r4     0.5
    IL_0022:  ldc.r4     0.57999998
    IL_0027:  ldc.r4     0.27000001
    IL_002c:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0031:  br.s       IL_00a0

    IL_0033:  ldloc.s    V_4
    IL_0035:  ldc.i4.1
    IL_0036:  bne.un.s   IL_0050

    IL_0038:  ldloca.s   V_1
    IL_003a:  ldc.r4     0.27000001
    IL_003f:  ldc.r4     0.57999998
    IL_0044:  ldc.r4     0.5
    IL_0049:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_004e:  br.s       IL_00a0

    IL_0050:  ldloc.s    V_4
    IL_0052:  ldc.i4.2
    IL_0053:  bne.un.s   IL_006d

    IL_0055:  ldloca.s   V_1
    IL_0057:  ldc.r4     0.5
    IL_005c:  ldc.r4     0.57999998
    IL_0061:  ldc.r4     0.73000002
    IL_0066:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006b:  br.s       IL_00a0

    IL_006d:  ldloc.s    V_4
    IL_006f:  ldc.i4.3
    IL_0070:  bne.un.s   IL_008a

    IL_0072:  ldloca.s   V_1
    IL_0074:  ldc.r4     0.73000002
    IL_0079:  ldc.r4     0.57999998
    IL_007e:  ldc.r4     0.5
    IL_0083:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0088:  br.s       IL_00a0

    IL_008a:  ldloca.s   V_1
    IL_008c:  ldc.r4     0.5
    IL_0091:  ldc.r4     0.52999997
    IL_0096:  ldc.r4     0.5
    IL_009b:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00a0:  ldc.r4     0.15000001
    IL_00a5:  stloc.2
    IL_00a6:  br.s       IL_00ea

    IL_00a8:  ldloc.0
    IL_00a9:  ldc.i4     0x84
    IL_00ae:  bne.un.s   IL_00ce

    IL_00b0:  ldloca.s   V_1
    IL_00b2:  ldc.r4     0.5
    IL_00b7:  ldc.r4     0.1
    IL_00bc:  ldc.r4     0.5
    IL_00c1:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00c6:  ldc.r4     0.1
    IL_00cb:  stloc.2
    IL_00cc:  br.s       IL_00ea

    IL_00ce:  ldloca.s   V_1
    IL_00d0:  ldc.r4     0.5
    IL_00d5:  ldc.r4     0.2
    IL_00da:  ldc.r4     0.5
    IL_00df:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00e4:  ldc.r4     0.2
    IL_00e9:  stloc.2
    IL_00ea:  ldarg.2
    IL_00eb:  conv.r4
    IL_00ec:  ldarg.3
    IL_00ed:  conv.r4
    IL_00ee:  ldarg.s    z
    IL_00f0:  conv.r4
    IL_00f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f6:  ldloc.1
    IL_00f7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00fc:  ldloc.2
    IL_00fd:  ldc.r4     24.
    IL_0102:  newobj     instance void Game.FireParticleSystem::.ctor(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0107:  stloc.3
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class Game.SubsystemParticles Game.SubsystemTorchBlockBehavior::m_subsystemParticles
    IL_010e:  ldloc.3
    IL_010f:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0114:  ldarg.0
    IL_0115:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemTorchBlockBehavior::m_particleSystemsByCell
    IL_011a:  ldarg.2
    IL_011b:  ldarg.3
    IL_011c:  ldarg.s    z
    IL_011e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0123:  ldloc.3
    IL_0124:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::set_Item(!0,
                                                                                                                                                                                  !1)
    IL_0129:  ret
  } // end of method SubsystemTorchBlockBehavior::AddTorch

  .method private hidebysig instance void 
          RemoveTorch(int32 x,
                      int32 y,
                      int32 z) cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.FireParticleSystem V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemTorchBlockBehavior::m_particleSystemsByCell
    IL_0010:  ldloc.0
    IL_0011:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::get_Item(!0)
    IL_0016:  stloc.1
    IL_0017:  ldarg.0
    IL_0018:  ldfld      class Game.SubsystemParticles Game.SubsystemTorchBlockBehavior::m_subsystemParticles
    IL_001d:  ldloc.1
    IL_001e:  callvirt   instance void Game.SubsystemParticles::RemoveParticleSystem(class Game.ParticleSystemBase)
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemTorchBlockBehavior::m_particleSystemsByCell
    IL_0029:  ldloc.0
    IL_002a:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::Remove(!0)
    IL_002f:  pop
    IL_0030:  ret
  } // end of method SubsystemTorchBlockBehavior::RemoveTorch

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.FireParticleSystem> Game.SubsystemTorchBlockBehavior::m_particleSystemsByCell
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemTorchBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemTorchBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemTorchBlockBehavior::HandledBlocks
} // end of class Game.SubsystemTorchBlockBehavior