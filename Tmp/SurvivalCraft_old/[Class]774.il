.class public auto ansi beforefieldinit Game.TerrainRenderer
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi nested private beforefieldinit ChunkDistanceComparer
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IComparer`1<class Game.TerrainChunk>
  {
    .method public hidebysig newslot virtual final 
            instance int32  Compare(class Game.TerrainChunk c1,
                                    class Game.TerrainChunk c2) cil managed
    {
      // 代码大小       34 (0x22)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      float32 Game.TerrainChunk::DistanceSquared
      IL_0006:  ldarg.2
      IL_0007:  ldfld      float32 Game.TerrainChunk::DistanceSquared
      IL_000c:  blt.s      IL_0020

      IL_000e:  ldarg.1
      IL_000f:  ldfld      float32 Game.TerrainChunk::DistanceSquared
      IL_0014:  ldarg.2
      IL_0015:  ldfld      float32 Game.TerrainChunk::DistanceSquared
      IL_001a:  bgt.s      IL_001e

      IL_001c:  ldc.i4.0
      IL_001d:  ret

      IL_001e:  ldc.i4.1
      IL_001f:  ret

      IL_0020:  ldc.i4.m1
      IL_0021:  ret
    } // end of method ChunkDistanceComparer::Compare

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ChunkDistanceComparer::.ctor

  } // end of class ChunkDistanceComparer

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemAnimatedTextures m_subsystemAnimatedTextures
  .field private class [Engine]Engine.Graphics.Shader m_opaqueShader
  .field private class [Engine]Engine.Graphics.Shader m_alphaTestedShader
  .field private class [Engine]Engine.Graphics.Shader m_transparentShader
  .field private class Game.TerrainRenderer/ChunkDistanceComparer m_chunksDistanceComparer
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> m_chunksToDraw
  .field private class Game.VertexBufferCache m_vertexBufferCache
  .field private class Game.IndexBufferCache m_indexBufferCache
  .field public bool DrawChunksMap
  .field public int32 ChunksDrawn
  .field public int32 ChunkDrawCalls
  .field public int32 ChunkTrianglesDrawn
  .method public hidebysig specialname instance string 
          get_ChunksGpuBuffersStats() cil managed
  {
    // 代码大小       156 (0x9c)
    .maxstack  6
    .locals init (int64 V_0,
             int64 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0006:  brfalse    IL_0096

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0011:  brfalse    IL_0096

    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_001c:  callvirt   instance int64 Game.VertexBufferCache::get_UsedVertexBuffersBytes()
    IL_0021:  ldarg.0
    IL_0022:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0027:  callvirt   instance int64 Game.IndexBufferCache::get_UsedIndexBuffersBytes()
    IL_002c:  add
    IL_002d:  ldc.i4     0x400
    IL_0032:  conv.i8
    IL_0033:  div
    IL_0034:  stloc.0
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_003b:  callvirt   instance int64 Game.VertexBufferCache::get_FreeVertexBuffersBytes()
    IL_0040:  ldarg.0
    IL_0041:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0046:  callvirt   instance int64 Game.IndexBufferCache::get_FreeIndexBuffersBytes()
    IL_004b:  add
    IL_004c:  ldc.i4     0x400
    IL_0051:  conv.i8
    IL_0052:  div
    IL_0053:  stloc.1
    IL_0054:  ldstr      "{0}/{1}kb used/free, {2} allocs"
    IL_0059:  ldc.i4.3
    IL_005a:  newarr     [System.Runtime]System.Object
    IL_005f:  dup
    IL_0060:  ldc.i4.0
    IL_0061:  ldloc.0
    IL_0062:  box        [System.Runtime]System.Int64
    IL_0067:  stelem.ref
    IL_0068:  dup
    IL_0069:  ldc.i4.1
    IL_006a:  ldloc.1
    IL_006b:  box        [System.Runtime]System.Int64
    IL_0070:  stelem.ref
    IL_0071:  dup
    IL_0072:  ldc.i4.2
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0079:  callvirt   instance int64 Game.VertexBufferCache::get_VertexBufferAllocations()
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0084:  callvirt   instance int64 Game.IndexBufferCache::get_IndexBufferAllocations()
    IL_0089:  add
    IL_008a:  box        [System.Runtime]System.Int64
    IL_008f:  stelem.ref
    IL_0090:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0095:  ret

    IL_0096:  ldsfld     string [System.Runtime]System.String::Empty
    IL_009b:  ret
  } // end of method TerrainRenderer::get_ChunksGpuBuffersStats

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemTerrain subsystemTerrain) cil managed
  {
    // 代码大小       164 (0xa4)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.TerrainRenderer/ChunkDistanceComparer::.ctor()
    IL_0006:  stfld      class Game.TerrainRenderer/ChunkDistanceComparer Game.TerrainRenderer::m_chunksDistanceComparer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0016:  ldarg.0
    IL_0017:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_001c:  ldarg.0
    IL_001d:  ldarg.1
    IL_001e:  stfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_0023:  ldarg.0
    IL_0024:  ldarg.1
    IL_0025:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002a:  ldc.i4.1
    IL_002b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0030:  stfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0035:  ldarg.0
    IL_0036:  ldarg.1
    IL_0037:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003c:  ldc.i4.1
    IL_003d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAnimatedTextures>(bool)
    IL_0042:  stfld      class Game.SubsystemAnimatedTextures Game.TerrainRenderer::m_subsystemAnimatedTextures
    IL_0047:  ldarg.0
    IL_0048:  ldstr      "Shaders/Opaque"
    IL_004d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_0052:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0057:  ldarg.0
    IL_0058:  ldstr      "Shaders/AlphaTested"
    IL_005d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_0062:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0067:  ldarg.0
    IL_0068:  ldstr      "Shaders/Transparent"
    IL_006d:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_0072:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0077:  ldarg.0
    IL_0078:  ldsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.TerrainVertex::VertexDeclaration
    IL_007d:  newobj     instance void Game.VertexBufferCache::.ctor(class [Engine]Engine.Graphics.VertexDeclaration)
    IL_0082:  stfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0087:  ldarg.0
    IL_0088:  newobj     instance void Game.IndexBufferCache::.ctor()
    IL_008d:  stfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0092:  ldarg.0
    IL_0093:  ldftn      instance void Game.TerrainRenderer::Display_DeviceReset()
    IL_0099:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_009e:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_00a3:  ret
  } // end of method TerrainRenderer::.ctor

  .method public hidebysig instance void 
          ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry geometry) cil managed
  {
    // 代码大小       73 (0x49)
    .maxstack  2
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  conv.i8
    IL_0003:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_0008:  ldarg.1
    IL_0009:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_000e:  brfalse.s  IL_0028

    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0016:  ldarg.1
    IL_0017:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_001c:  callvirt   instance void Game.VertexBufferCache::ReturnVertexBuffer(class [Engine]Engine.Graphics.VertexBuffer)
    IL_0021:  ldarg.1
    IL_0022:  ldnull
    IL_0023:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_0028:  ldarg.1
    IL_0029:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_002e:  brfalse.s  IL_0048

    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0036:  ldarg.1
    IL_0037:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_003c:  callvirt   instance void Game.IndexBufferCache::ReturnIndexBuffer(class [Engine]Engine.Graphics.IndexBuffer)
    IL_0041:  ldarg.1
    IL_0042:  ldnull
    IL_0043:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_0048:  ret
  } // end of method TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers

  .method public hidebysig instance void 
          DetermineChunksVisibility(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             class [Engine]Engine.BoundingFrustum V_2,
             class Game.TerrainChunk[] V_3,
             int32 V_4,
             class Game.TerrainChunk V_5)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_000d:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0017:  stloc.1
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::get_ViewFrustum()
    IL_001e:  stloc.2
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_002a:  stloc.3
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.s    V_4
    IL_002e:  br         IL_00ec

    IL_0033:  ldloc.3
    IL_0034:  ldloc.s    V_4
    IL_0036:  ldelem.ref
    IL_0037:  stloc.s    V_5
    IL_0039:  ldloc.s    V_5
    IL_003b:  ldloc.0
    IL_003c:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0041:  ldloc.0
    IL_0042:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0047:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_004c:  ldloc.s    V_5
    IL_004e:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainChunk::Center
    IL_0053:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0058:  ldloc.s    V_5
    IL_005a:  ldflda     valuetype [Engine]Engine.Vector3 Game.TerrainChunk::Center
    IL_005f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0064:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0069:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_006e:  stfld      float32 Game.TerrainChunk::DistanceSquared
    IL_0073:  ldloc.s    V_5
    IL_0075:  ldfld      float32 Game.TerrainChunk::DistanceSquared
    IL_007a:  ldloc.1
    IL_007b:  bgt.un.s   IL_00c2

    IL_007d:  ldloc.s    V_5
    IL_007f:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_0084:  ldc.r4     0.0
    IL_0089:  bne.un.s   IL_009f

    IL_008b:  ldloc.s    V_5
    IL_008d:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0092:  ldc.i4.s   9
    IL_0094:  bne.un.s   IL_009f

    IL_0096:  ldarg.0
    IL_0097:  ldloc.0
    IL_0098:  ldloc.s    V_5
    IL_009a:  call       instance void Game.TerrainRenderer::StartChunkFadeIn(valuetype [Engine]Engine.Vector3,
                                                                              class Game.TerrainChunk)
    IL_009f:  ldloc.s    V_5
    IL_00a1:  ldc.i4.1
    IL_00a2:  stfld      bool Game.TerrainChunk::IsInVisibilityRange
    IL_00a7:  ldloc.s    V_5
    IL_00a9:  ldloc.2
    IL_00aa:  ldloc.s    V_5
    IL_00ac:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_00b1:  ldfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
    IL_00b6:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_00bb:  stfld      bool Game.TerrainChunk::IsVisible
    IL_00c0:  br.s       IL_00e6

    IL_00c2:  ldloc.s    V_5
    IL_00c4:  ldc.i4.0
    IL_00c5:  stfld      bool Game.TerrainChunk::IsInVisibilityRange
    IL_00ca:  ldloc.s    V_5
    IL_00cc:  ldc.i4.0
    IL_00cd:  stfld      bool Game.TerrainChunk::IsVisible
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  ldc.r4     0.0
    IL_00d9:  stfld      float32 Game.TerrainChunk::FogEnd
    IL_00de:  ldloc.s    V_5
    IL_00e0:  ldc.i4.0
    IL_00e1:  stfld      bool Game.TerrainChunk::IsFogFading
    IL_00e6:  ldloc.s    V_4
    IL_00e8:  ldc.i4.1
    IL_00e9:  add
    IL_00ea:  stloc.s    V_4
    IL_00ec:  ldloc.s    V_4
    IL_00ee:  ldloc.3
    IL_00ef:  ldlen
    IL_00f0:  conv.i4
    IL_00f1:  blt        IL_0033

    IL_00f6:  ret
  } // end of method TerrainRenderer::DetermineChunksVisibility

  .method public hidebysig instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       430 (0x1ae)
    .maxstack  4
    .locals init (class Game.TerrainChunk[] V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             class Game.TerrainChunkGeometry V_3,
             bool V_4,
             class Game.TerrainChunk V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_000b:  stloc.0
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.1
    IL_000e:  br         IL_00ae

    IL_0013:  ldloc.0
    IL_0014:  ldloc.1
    IL_0015:  ldelem.ref
    IL_0016:  stloc.2
    IL_0017:  ldloc.2
    IL_0018:  volatile.
    IL_001a:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
    IL_001f:  brfalse    IL_00aa

    IL_0024:  ldloc.2
    IL_0025:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_002a:  stloc.3
    IL_002b:  ldc.i4.0
    IL_002c:  stloc.s    V_4
    .try
    {
      IL_002e:  ldloc.3
      IL_002f:  ldloca.s   V_4
      IL_0031:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_0036:  ldloc.2
      IL_0037:  volatile.
      IL_0039:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_003e:  brfalse.s  IL_009d

      IL_0040:  ldloc.2
      IL_0041:  ldc.i4.0
      IL_0042:  volatile.
      IL_0044:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_0049:  ldloc.2
      IL_004a:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_004f:  ldloc.2
      IL_0050:  ldfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
      IL_0055:  stfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_005a:  ldloc.2
      IL_005b:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0060:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_0065:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_006a:  ldloc.2
      IL_006b:  ldfld      float32 Game.TerrainChunk::GeometryMinY
      IL_0070:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_0075:  ldloc.2
      IL_0076:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_007b:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_0080:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_0085:  ldloc.2
      IL_0086:  ldfld      float32 Game.TerrainChunk::GeometryMaxY
      IL_008b:  ldc.r4     1.
      IL_0090:  add
      IL_0091:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_0096:  ldarg.0
      IL_0097:  ldloc.2
      IL_0098:  call       instance void Game.TerrainRenderer::SetupTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunk)
      IL_009d:  leave.s    IL_00aa

    }  // end .try
    finally
    {
      IL_009f:  ldloc.s    V_4
      IL_00a1:  brfalse.s  IL_00a9

      IL_00a3:  ldloc.3
      IL_00a4:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_00a9:  endfinally
    }  // end handler
    IL_00aa:  ldloc.1
    IL_00ab:  ldc.i4.1
    IL_00ac:  add
    IL_00ad:  stloc.1
    IL_00ae:  ldloc.1
    IL_00af:  ldloc.0
    IL_00b0:  ldlen
    IL_00b1:  conv.i4
    IL_00b2:  blt        IL_0013

    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_00bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Clear()
    IL_00c2:  ldarg.0
    IL_00c3:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_00c8:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_00cd:  stloc.0
    IL_00ce:  ldc.i4.0
    IL_00cf:  stloc.1
    IL_00d0:  br         IL_017e

    IL_00d5:  ldloc.0
    IL_00d6:  ldloc.1
    IL_00d7:  ldelem.ref
    IL_00d8:  stloc.s    V_5
    IL_00da:  ldloc.s    V_5
    IL_00dc:  ldfld      bool Game.TerrainChunk::IsInVisibilityRange
    IL_00e1:  brfalse    IL_017a

    IL_00e6:  ldloc.s    V_5
    IL_00e8:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_00ed:  ldc.i4.s   9
    IL_00ef:  bne.un.s   IL_0164

    IL_00f1:  ldloc.s    V_5
    IL_00f3:  ldfld      bool Game.TerrainChunk::IsFogFading
    IL_00f8:  brfalse.s  IL_014d

    IL_00fa:  ldloc.s    V_5
    IL_00fc:  dup
    IL_00fd:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_0102:  ldc.r4     32.
    IL_0107:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_010c:  mul
    IL_010d:  add
    IL_010e:  stfld      float32 Game.TerrainChunk::FogEnd
    IL_0113:  ldloc.s    V_5
    IL_0115:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_011a:  ldarg.0
    IL_011b:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0120:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0125:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_012a:  blt.un.s   IL_0164

    IL_012c:  ldloc.s    V_5
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0134:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0139:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_013e:  stfld      float32 Game.TerrainChunk::FogEnd
    IL_0143:  ldloc.s    V_5
    IL_0145:  ldc.i4.0
    IL_0146:  stfld      bool Game.TerrainChunk::IsFogFading
    IL_014b:  br.s       IL_0164

    IL_014d:  ldloc.s    V_5
    IL_014f:  ldarg.0
    IL_0150:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0155:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_015a:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_015f:  stfld      float32 Game.TerrainChunk::FogEnd
    IL_0164:  ldloc.s    V_5
    IL_0166:  ldfld      bool Game.TerrainChunk::IsVisible
    IL_016b:  brfalse.s  IL_017a

    IL_016d:  ldarg.0
    IL_016e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0173:  ldloc.s    V_5
    IL_0175:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Add(!0)
    IL_017a:  ldloc.1
    IL_017b:  ldc.i4.1
    IL_017c:  add
    IL_017d:  stloc.1
    IL_017e:  ldloc.1
    IL_017f:  ldloc.0
    IL_0180:  ldlen
    IL_0181:  conv.i4
    IL_0182:  blt        IL_00d5

    IL_0187:  ldarg.0
    IL_0188:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_018d:  ldarg.0
    IL_018e:  ldfld      class Game.TerrainRenderer/ChunkDistanceComparer Game.TerrainRenderer::m_chunksDistanceComparer
    IL_0193:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Sort(class [System.Runtime]System.Collections.Generic.IComparer`1<!0>)
    IL_0198:  ldarg.0
    IL_0199:  ldc.i4.0
    IL_019a:  stfld      int32 Game.TerrainRenderer::ChunksDrawn
    IL_019f:  ldarg.0
    IL_01a0:  ldc.i4.0
    IL_01a1:  stfld      int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_01a6:  ldarg.0
    IL_01a7:  ldc.i4.0
    IL_01a8:  stfld      int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_01ad:  ret
  } // end of method TerrainRenderer::PrepareForDrawing

  .method public hidebysig instance void 
          DrawOpaque(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       564 (0x234)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             float32 V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0019:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0024:  ldstr      "u_worldViewProjectionMatrix"
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0035:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0040:  ldstr      "u_viewPosition"
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0051:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_005c:  ldstr      "u_texture"
    IL_0061:  ldc.i4.0
    IL_0062:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemAnimatedTextures Game.TerrainRenderer::m_subsystemAnimatedTextures
    IL_006d:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_0072:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.Texture2D)
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_007d:  ldstr      "u_samplerState"
    IL_0082:  ldc.i4.0
    IL_0083:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0088:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_008d:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.SamplerState)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0098:  ldstr      "u_fogColor"
    IL_009d:  ldc.i4.0
    IL_009e:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00a9:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_00ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_00b3:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_00be:  ldstr      "u_fogStartInvLength"
    IL_00c3:  ldc.i4.0
    IL_00c4:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00c9:  stloc.0
    IL_00ca:  ldarg.1
    IL_00cb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_00d0:  stloc.1
    IL_00d1:  ldc.i4.0
    IL_00d2:  stloc.2
    IL_00d3:  br         IL_0222

    IL_00d8:  ldarg.0
    IL_00d9:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_00de:  ldloc.2
    IL_00df:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_00e4:  stloc.3
    IL_00e5:  ldarg.0
    IL_00e6:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00eb:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_00f0:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00f5:  ldloc.3
    IL_00f6:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_00fb:  ldc.r4     1.
    IL_0100:  sub
    IL_0101:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0106:  stloc.s    V_4
    IL_0108:  ldloc.3
    IL_0109:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_010e:  stloc.s    V_5
    IL_0110:  ldloc.0
    IL_0111:  ldloc.s    V_4
    IL_0113:  ldc.r4     1.
    IL_0118:  ldloc.s    V_5
    IL_011a:  ldloc.s    V_4
    IL_011c:  sub
    IL_011d:  div
    IL_011e:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0123:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_0128:  ldc.i4.0
    IL_0129:  stloc.s    V_6
    IL_012b:  ldloc.1
    IL_012c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0131:  ldloc.3
    IL_0132:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0137:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_013c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0141:  ble.un.s   IL_015a

    IL_0143:  ldloc.s    V_6
    IL_0145:  ldloc.3
    IL_0146:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_014b:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0150:  ldc.i4.0
    IL_0151:  ldelem.ref
    IL_0152:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_0157:  or
    IL_0158:  stloc.s    V_6
    IL_015a:  ldloc.1
    IL_015b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0160:  ldloc.3
    IL_0161:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0166:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_016b:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0170:  ble.un.s   IL_0189

    IL_0172:  ldloc.s    V_6
    IL_0174:  ldloc.3
    IL_0175:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_017a:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_017f:  ldc.i4.1
    IL_0180:  ldelem.ref
    IL_0181:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_0186:  or
    IL_0187:  stloc.s    V_6
    IL_0189:  ldloc.1
    IL_018a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_018f:  ldloc.3
    IL_0190:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0195:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_019a:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_019f:  bge.un.s   IL_01b8

    IL_01a1:  ldloc.s    V_6
    IL_01a3:  ldloc.3
    IL_01a4:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_01a9:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_01ae:  ldc.i4.2
    IL_01af:  ldelem.ref
    IL_01b0:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_01b5:  or
    IL_01b6:  stloc.s    V_6
    IL_01b8:  ldloc.1
    IL_01b9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01be:  ldloc.3
    IL_01bf:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_01c4:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01c9:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01ce:  bge.un.s   IL_01e7

    IL_01d0:  ldloc.s    V_6
    IL_01d2:  ldloc.3
    IL_01d3:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_01d8:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_01dd:  ldc.i4.3
    IL_01de:  ldelem.ref
    IL_01df:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_01e4:  or
    IL_01e5:  stloc.s    V_6
    IL_01e7:  ldloc.s    V_6
    IL_01e9:  ldloc.3
    IL_01ea:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_01ef:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_01f4:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_01f9:  or
    IL_01fa:  stloc.s    V_6
    IL_01fc:  ldarg.0
    IL_01fd:  ldarg.0
    IL_01fe:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0203:  ldloc.3
    IL_0204:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0209:  ldloc.s    V_6
    IL_020b:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_0210:  ldarg.0
    IL_0211:  ldarg.0
    IL_0212:  ldfld      int32 Game.TerrainRenderer::ChunksDrawn
    IL_0217:  ldc.i4.1
    IL_0218:  add
    IL_0219:  stfld      int32 Game.TerrainRenderer::ChunksDrawn
    IL_021e:  ldloc.2
    IL_021f:  ldc.i4.1
    IL_0220:  add
    IL_0221:  stloc.2
    IL_0222:  ldloc.2
    IL_0223:  ldarg.0
    IL_0224:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0229:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_022e:  blt        IL_00d8

    IL_0233:  ret
  } // end of method TerrainRenderer::DrawOpaque

  .method public hidebysig instance void 
          DrawAlphaTested(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       343 (0x157)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_0019:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0024:  ldstr      "u_worldViewProjectionMatrix"
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_0035:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0040:  ldstr      "u_viewPosition"
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0051:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_005c:  ldstr      "u_texture"
    IL_0061:  ldc.i4.0
    IL_0062:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.SubsystemAnimatedTextures Game.TerrainRenderer::m_subsystemAnimatedTextures
    IL_006d:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_0072:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.Texture2D)
    IL_0077:  ldarg.0
    IL_0078:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_007d:  ldstr      "u_samplerState"
    IL_0082:  ldc.i4.0
    IL_0083:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0088:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_008d:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.SamplerState)
    IL_0092:  ldarg.0
    IL_0093:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0098:  ldstr      "u_fogColor"
    IL_009d:  ldc.i4.0
    IL_009e:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00a9:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_00ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_00b3:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_00be:  ldstr      "u_fogStartInvLength"
    IL_00c3:  ldc.i4.0
    IL_00c4:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00c9:  stloc.0
    IL_00ca:  ldc.i4.0
    IL_00cb:  stloc.1
    IL_00cc:  br.s       IL_0145

    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_00d4:  ldloc.1
    IL_00d5:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_00da:  stloc.2
    IL_00db:  ldarg.0
    IL_00dc:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00e1:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_00e6:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00eb:  ldloc.2
    IL_00ec:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_00f1:  ldc.r4     1.
    IL_00f6:  sub
    IL_00f7:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00fc:  stloc.3
    IL_00fd:  ldloc.2
    IL_00fe:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_0103:  stloc.s    V_4
    IL_0105:  ldloc.0
    IL_0106:  ldloc.3
    IL_0107:  ldc.r4     1.
    IL_010c:  ldloc.s    V_4
    IL_010e:  ldloc.3
    IL_010f:  sub
    IL_0110:  div
    IL_0111:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0116:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_011b:  ldloc.2
    IL_011c:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0121:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_0126:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_012b:  stloc.s    V_5
    IL_012d:  ldarg.0
    IL_012e:  ldarg.0
    IL_012f:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0134:  ldloc.2
    IL_0135:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_013a:  ldloc.s    V_5
    IL_013c:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_0141:  ldloc.1
    IL_0142:  ldc.i4.1
    IL_0143:  add
    IL_0144:  stloc.1
    IL_0145:  ldloc.1
    IL_0146:  ldarg.0
    IL_0147:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_014c:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0151:  blt        IL_00ce

    IL_0156:  ret
  } // end of method TerrainRenderer::DrawAlphaTested

  .method public hidebysig instance void 
          DrawTransparent(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       392 (0x188)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             int32 V_1,
             class Game.TerrainChunk V_2,
             float32 V_3,
             float32 V_4,
             int32 V_5)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_001a:  callvirt   instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_001f:  ldc.r4     0.0
    IL_0024:  bgt.s      IL_002d

    IL_0026:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwise
    IL_002b:  br.s       IL_0032

    IL_002d:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullClockwise
    IL_0032:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_003d:  ldstr      "u_worldViewProjectionMatrix"
    IL_0042:  ldc.i4.0
    IL_0043:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0048:  ldarg.1
    IL_0049:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewProjectionMatrix()
    IL_004e:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0059:  ldstr      "u_viewPosition"
    IL_005e:  ldc.i4.0
    IL_005f:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0064:  ldarg.1
    IL_0065:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_006a:  ldc.r4     0.0
    IL_006f:  ldc.r4     0.2
    IL_0074:  ldc.r4     0.0
    IL_0079:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_007e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0083:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_0088:  ldarg.0
    IL_0089:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_008e:  ldstr      "u_texture"
    IL_0093:  ldc.i4.0
    IL_0094:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0099:  ldarg.0
    IL_009a:  ldfld      class Game.SubsystemAnimatedTextures Game.TerrainRenderer::m_subsystemAnimatedTextures
    IL_009f:  callvirt   instance class [Engine]Engine.Graphics.Texture2D Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_00a4:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.Texture2D)
    IL_00a9:  ldarg.0
    IL_00aa:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_00af:  ldstr      "u_samplerState"
    IL_00b4:  ldc.i4.0
    IL_00b5:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00ba:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_00bf:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(class [Engine]Engine.Graphics.SamplerState)
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_00ca:  ldstr      "u_fogColor"
    IL_00cf:  ldc.i4.0
    IL_00d0:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00d5:  ldarg.0
    IL_00d6:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00db:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_FogColor()
    IL_00e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_00e5:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_00f0:  ldstr      "u_fogStartInvLength"
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00fb:  stloc.0
    IL_00fc:  ldarg.0
    IL_00fd:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0102:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0107:  ldc.i4.1
    IL_0108:  sub
    IL_0109:  stloc.1
    IL_010a:  br.s       IL_0183

    IL_010c:  ldarg.0
    IL_010d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0112:  ldloc.1
    IL_0113:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_0118:  stloc.2
    IL_0119:  ldarg.0
    IL_011a:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_011f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_FogRange()
    IL_0124:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0129:  ldloc.2
    IL_012a:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_012f:  ldc.r4     1.
    IL_0134:  sub
    IL_0135:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_013a:  stloc.3
    IL_013b:  ldloc.2
    IL_013c:  ldfld      float32 Game.TerrainChunk::FogEnd
    IL_0141:  stloc.s    V_4
    IL_0143:  ldloc.0
    IL_0144:  ldloc.3
    IL_0145:  ldc.r4     1.
    IL_014a:  ldloc.s    V_4
    IL_014c:  ldloc.3
    IL_014d:  sub
    IL_014e:  div
    IL_014f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0154:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_0159:  ldloc.2
    IL_015a:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_015f:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetTransparent
    IL_0164:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_0169:  stloc.s    V_5
    IL_016b:  ldarg.0
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0172:  ldloc.2
    IL_0173:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0178:  ldloc.s    V_5
    IL_017a:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_017f:  ldloc.1
    IL_0180:  ldc.i4.1
    IL_0181:  sub
    IL_0182:  stloc.1
    IL_0183:  ldloc.1
    IL_0184:  ldc.i4.0
    IL_0185:  bge.s      IL_010c

    IL_0187:  ret
  } // end of method TerrainRenderer::DrawTransparent

  .method public hidebysig newslot virtual final 
          instance void  Dispose() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldftn      instance void Game.TerrainRenderer::Display_DeviceReset()
    IL_0007:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_000c:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0011:  ldarg.0
    IL_0012:  ldflda     class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0017:  call       void [Engine]Engine.Utilities::Dispose<class Game.VertexBufferCache>(!!0&)
    IL_001c:  ldarg.0
    IL_001d:  ldflda     class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0022:  call       void [Engine]Engine.Utilities::Dispose<class Game.IndexBufferCache>(!!0&)
    IL_0027:  ret
  } // end of method TerrainRenderer::Dispose

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       83 (0x53)
    .maxstack  3
    .locals init (class Game.TerrainChunk[] V_0,
             int32 V_1,
             class Game.TerrainChunk V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_0006:  callvirt   instance class Game.TerrainUpdater Game.SubsystemTerrain::get_TerrainUpdater()
    IL_000b:  ldc.i4.7
    IL_000c:  ldc.i4.0
    IL_000d:  callvirt   instance void Game.TerrainUpdater::DowngradeAllChunksState(valuetype Game.TerrainChunkState,
                                                                                    bool)
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_0018:  callvirt   instance class Game.TerrainChunk[] Game.SubsystemTerrain::get_Chunks()
    IL_001d:  stloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  stloc.1
    IL_0020:  br.s       IL_0036

    IL_0022:  ldloc.0
    IL_0023:  ldloc.1
    IL_0024:  ldelem.ref
    IL_0025:  stloc.2
    IL_0026:  ldarg.0
    IL_0027:  ldloc.2
    IL_0028:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_002d:  call       instance void Game.TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry)
    IL_0032:  ldloc.1
    IL_0033:  ldc.i4.1
    IL_0034:  add
    IL_0035:  stloc.1
    IL_0036:  ldloc.1
    IL_0037:  ldloc.0
    IL_0038:  ldlen
    IL_0039:  conv.i4
    IL_003a:  blt.s      IL_0022

    IL_003c:  ldarg.0
    IL_003d:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0042:  callvirt   instance void Game.VertexBufferCache::Clear()
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_004d:  callvirt   instance void Game.IndexBufferCache::Clear()
    IL_0052:  ret
  } // end of method TerrainRenderer::Display_DeviceReset

  .method private hidebysig instance void 
          SetupTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       557 (0x22d)
    .maxstack  5
    .locals init (uint16 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainGeometrySubset[] V_3,
             int32 V_4,
             class Game.TerrainGeometrySubset V_5,
             int32 V_6,
             uint16[] V_7,
             int32 V_8,
             class [Engine]Engine.Graphics.VertexBuffer V_9,
             class [Engine]Engine.Graphics.IndexBuffer V_10,
             int32 V_11,
             int32 V_12,
             class Game.TerrainGeometrySubset V_13)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  ldc.i4.0
    IL_0005:  stloc.2
    IL_0006:  ldarg.1
    IL_0007:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_000c:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0011:  stloc.3
    IL_0012:  ldc.i4.0
    IL_0013:  stloc.s    V_4
    IL_0015:  br.s       IL_0092

    IL_0017:  ldloc.3
    IL_0018:  ldloc.s    V_4
    IL_001a:  ldelem.ref
    IL_001b:  stloc.s    V_5
    IL_001d:  ldloc.0
    IL_001e:  ldc.i4.0
    IL_001f:  ble.s      IL_005d

    IL_0021:  ldloc.s    V_5
    IL_0023:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0028:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_002d:  stloc.s    V_6
    IL_002f:  ldloc.s    V_5
    IL_0031:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0036:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_003b:  stloc.s    V_7
    IL_003d:  ldc.i4.0
    IL_003e:  stloc.s    V_8
    IL_0040:  br.s       IL_0057

    IL_0042:  ldloc.s    V_7
    IL_0044:  ldloc.s    V_8
    IL_0046:  ldelema    [System.Runtime]System.UInt16
    IL_004b:  dup
    IL_004c:  ldind.u2
    IL_004d:  ldloc.0
    IL_004e:  add
    IL_004f:  conv.u2
    IL_0050:  stind.i2
    IL_0051:  ldloc.s    V_8
    IL_0053:  ldc.i4.1
    IL_0054:  add
    IL_0055:  stloc.s    V_8
    IL_0057:  ldloc.s    V_8
    IL_0059:  ldloc.s    V_6
    IL_005b:  blt.s      IL_0042

    IL_005d:  ldloc.0
    IL_005e:  ldloc.s    V_5
    IL_0060:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0065:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_006a:  conv.u2
    IL_006b:  add
    IL_006c:  conv.u2
    IL_006d:  stloc.0
    IL_006e:  ldloc.1
    IL_006f:  ldloc.s    V_5
    IL_0071:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_0076:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_007b:  add
    IL_007c:  stloc.1
    IL_007d:  ldloc.2
    IL_007e:  ldloc.s    V_5
    IL_0080:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0085:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_008a:  add
    IL_008b:  stloc.2
    IL_008c:  ldloc.s    V_4
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  stloc.s    V_4
    IL_0092:  ldloc.s    V_4
    IL_0094:  ldloc.3
    IL_0095:  ldlen
    IL_0096:  conv.i4
    IL_0097:  blt        IL_0017

    IL_009c:  ldloc.1
    IL_009d:  ldc.i4.0
    IL_009e:  ble        IL_021b

    IL_00a3:  ldloc.2
    IL_00a4:  ldc.i4.0
    IL_00a5:  ble        IL_021b

    IL_00aa:  ldarg.0
    IL_00ab:  ldarg.1
    IL_00ac:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_00b1:  call       instance void Game.TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry)
    IL_00b6:  ldarg.0
    IL_00b7:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_00bc:  ldloc.1
    IL_00bd:  callvirt   instance class [Engine]Engine.Graphics.VertexBuffer Game.VertexBufferCache::GetVertexBuffer(int32)
    IL_00c2:  stloc.s    V_9
    IL_00c4:  ldarg.0
    IL_00c5:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_00ca:  ldloc.2
    IL_00cb:  callvirt   instance class [Engine]Engine.Graphics.IndexBuffer Game.IndexBufferCache::GetIndexBuffer(int32)
    IL_00d0:  stloc.s    V_10
    IL_00d2:  ldarg.1
    IL_00d3:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_00d8:  ldloc.s    V_9
    IL_00da:  stfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_00df:  ldarg.1
    IL_00e0:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_00e5:  ldloc.s    V_10
    IL_00e7:  stfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_00ec:  ldc.i4.0
    IL_00ed:  stloc.s    V_11
    IL_00ef:  ldc.i4.0
    IL_00f0:  stloc.s    V_12
    IL_00f2:  ldarg.1
    IL_00f3:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_00f8:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_00fd:  stloc.3
    IL_00fe:  ldc.i4.0
    IL_00ff:  stloc.s    V_4
    IL_0101:  br         IL_01c2

    IL_0106:  ldloc.3
    IL_0107:  ldloc.s    V_4
    IL_0109:  ldelem.ref
    IL_010a:  stloc.s    V_13
    IL_010c:  ldloc.s    V_13
    IL_010e:  ldloc.s    V_11
    IL_0110:  stfld      int32 Game.TerrainGeometrySubset::VertexOffset
    IL_0115:  ldloc.s    V_13
    IL_0117:  ldloc.s    V_13
    IL_0119:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_011e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Count()
    IL_0123:  stfld      int32 Game.TerrainGeometrySubset::VerticesCount
    IL_0128:  ldloc.s    V_13
    IL_012a:  ldloc.s    V_12
    IL_012c:  stfld      int32 Game.TerrainGeometrySubset::IndexOffset
    IL_0131:  ldloc.s    V_13
    IL_0133:  ldloc.s    V_13
    IL_0135:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_013a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_013f:  stfld      int32 Game.TerrainGeometrySubset::IndicesCount
    IL_0144:  ldloc.s    V_13
    IL_0146:  ldfld      int32 Game.TerrainGeometrySubset::VerticesCount
    IL_014b:  ldc.i4.0
    IL_014c:  ble.s      IL_01bc

    IL_014e:  ldloc.s    V_13
    IL_0150:  ldfld      int32 Game.TerrainGeometrySubset::IndicesCount
    IL_0155:  ldc.i4.0
    IL_0156:  ble.s      IL_01bc

    IL_0158:  ldarg.1
    IL_0159:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_015e:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_0163:  ldloc.s    V_13
    IL_0165:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_016a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::get_Array()
    IL_016f:  ldc.i4.0
    IL_0170:  ldloc.s    V_13
    IL_0172:  ldfld      int32 Game.TerrainGeometrySubset::VerticesCount
    IL_0177:  ldloc.s    V_11
    IL_0179:  callvirt   instance void [Engine]Engine.Graphics.VertexBuffer::SetData<valuetype Game.TerrainVertex>(!!0[],
                                                                                                                   int32,
                                                                                                                   int32,
                                                                                                                   int32)
    IL_017e:  ldarg.1
    IL_017f:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0184:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_0189:  ldloc.s    V_13
    IL_018b:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0190:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0195:  ldc.i4.0
    IL_0196:  ldloc.s    V_13
    IL_0198:  ldfld      int32 Game.TerrainGeometrySubset::IndicesCount
    IL_019d:  ldloc.s    V_12
    IL_019f:  callvirt   instance void [Engine]Engine.Graphics.IndexBuffer::SetData<uint16>(!!0[],
                                                                                            int32,
                                                                                            int32,
                                                                                            int32)
    IL_01a4:  ldloc.s    V_11
    IL_01a6:  ldloc.s    V_13
    IL_01a8:  ldfld      int32 Game.TerrainGeometrySubset::VerticesCount
    IL_01ad:  add
    IL_01ae:  stloc.s    V_11
    IL_01b0:  ldloc.s    V_12
    IL_01b2:  ldloc.s    V_13
    IL_01b4:  ldfld      int32 Game.TerrainGeometrySubset::IndicesCount
    IL_01b9:  add
    IL_01ba:  stloc.s    V_12
    IL_01bc:  ldloc.s    V_4
    IL_01be:  ldc.i4.1
    IL_01bf:  add
    IL_01c0:  stloc.s    V_4
    IL_01c2:  ldloc.s    V_4
    IL_01c4:  ldloc.3
    IL_01c5:  ldlen
    IL_01c6:  conv.i4
    IL_01c7:  blt        IL_0106

    IL_01cc:  ldarg.1
    IL_01cd:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_01d2:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_01d7:  stloc.3
    IL_01d8:  ldc.i4.0
    IL_01d9:  stloc.s    V_4
    IL_01db:  br.s       IL_0214

    IL_01dd:  ldloc.3
    IL_01de:  ldloc.s    V_4
    IL_01e0:  ldelem.ref
    IL_01e1:  dup
    IL_01e2:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01e7:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::Clear()
    IL_01ec:  dup
    IL_01ed:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_01f2:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::Clear()
    IL_01f7:  dup
    IL_01f8:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex> Game.TerrainGeometrySubset::Vertices
    IL_01fd:  ldc.i4.0
    IL_01fe:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype Game.TerrainVertex>::set_Capacity(int32)
    IL_0203:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> Game.TerrainGeometrySubset::Indices
    IL_0208:  ldc.i4.0
    IL_0209:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Capacity(int32)
    IL_020e:  ldloc.s    V_4
    IL_0210:  ldc.i4.1
    IL_0211:  add
    IL_0212:  stloc.s    V_4
    IL_0214:  ldloc.s    V_4
    IL_0216:  ldloc.3
    IL_0217:  ldlen
    IL_0218:  conv.i4
    IL_0219:  blt.s      IL_01dd

    IL_021b:  ldarg.1
    IL_021c:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0221:  ldarg.1
    IL_0222:  ldfld      int64 Game.TerrainChunk::ContentsHash
    IL_0227:  stfld      int64 Game.TerrainChunkGeometry::GeometryHash
    IL_022c:  ret
  } // end of method TerrainRenderer::SetupTerrainChunkGeometryVertexIndexBuffers

  .method private hidebysig instance void 
          DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader shader,
                                          class Game.TerrainChunkGeometry geometry,
                                          int32 subsetsMask) cil managed
  {
    // 代码大小       159 (0x9f)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainGeometrySubset V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_0006:  brfalse    IL_009e

    IL_000b:  ldarg.2
    IL_000c:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_0011:  brfalse    IL_009e

    IL_0016:  ldc.i4.m1
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  br.s       IL_0091

    IL_001e:  ldloc.2
    IL_001f:  ldarg.2
    IL_0020:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0025:  ldlen
    IL_0026:  conv.i4
    IL_0027:  bge.s      IL_0052

    IL_0029:  ldarg.3
    IL_002a:  ldc.i4.1
    IL_002b:  ldloc.2
    IL_002c:  ldc.i4.s   31
    IL_002e:  and
    IL_002f:  shl
    IL_0030:  and
    IL_0031:  brfalse.s  IL_0052

    IL_0033:  ldarg.2
    IL_0034:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0039:  ldloc.2
    IL_003a:  ldelem.ref
    IL_003b:  stloc.3
    IL_003c:  ldloc.0
    IL_003d:  ldc.i4.0
    IL_003e:  bge.s      IL_0047

    IL_0040:  ldloc.3
    IL_0041:  ldfld      int32 Game.TerrainGeometrySubset::IndexOffset
    IL_0046:  stloc.0
    IL_0047:  ldloc.1
    IL_0048:  ldloc.3
    IL_0049:  ldfld      int32 Game.TerrainGeometrySubset::IndicesCount
    IL_004e:  add
    IL_004f:  stloc.1
    IL_0050:  br.s       IL_008d

    IL_0052:  ldloc.1
    IL_0053:  ldc.i4.0
    IL_0054:  ble.s      IL_0089

    IL_0056:  ldc.i4.2
    IL_0057:  ldarg.1
    IL_0058:  ldarg.2
    IL_0059:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_005e:  ldarg.2
    IL_005f:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_0064:  ldloc.0
    IL_0065:  ldloc.1
    IL_0066:  call       void [Engine]Engine.Graphics.Display::DrawIndexed(valuetype [Engine]Engine.Graphics.PrimitiveType,
                                                                           class [Engine]Engine.Graphics.Shader,
                                                                           class [Engine]Engine.Graphics.VertexBuffer,
                                                                           class [Engine]Engine.Graphics.IndexBuffer,
                                                                           int32,
                                                                           int32)
    IL_006b:  ldarg.0
    IL_006c:  ldarg.0
    IL_006d:  ldfld      int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.3
    IL_0074:  div
    IL_0075:  add
    IL_0076:  stfld      int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_007b:  ldarg.0
    IL_007c:  ldarg.0
    IL_007d:  ldfld      int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_0082:  ldc.i4.1
    IL_0083:  add
    IL_0084:  stfld      int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_0089:  ldc.i4.m1
    IL_008a:  stloc.0
    IL_008b:  ldc.i4.0
    IL_008c:  stloc.1
    IL_008d:  ldloc.2
    IL_008e:  ldc.i4.1
    IL_008f:  add
    IL_0090:  stloc.2
    IL_0091:  ldloc.2
    IL_0092:  ldarg.2
    IL_0093:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0098:  ldlen
    IL_0099:  conv.i4
    IL_009a:  ldc.i4.1
    IL_009b:  add
    IL_009c:  blt.s      IL_001e

    IL_009e:  ret
  } // end of method TerrainRenderer::DrawTerrainChunkGeometrySubsets

  .method private hidebysig instance void 
          StartChunkFadeIn(valuetype [Engine]Engine.Vector3 viewPosition,
                           class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       263 (0x107)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector2 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7)
    IL_0000:  ldloca.s   V_0
    IL_0002:  ldarg.2
    IL_0003:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0008:  ldfld      int32 [Engine]Engine.Point2::X
    IL_000d:  conv.r4
    IL_000e:  ldarg.2
    IL_000f:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0014:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0019:  conv.r4
    IL_001a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_001f:  ldloca.s   V_1
    IL_0021:  ldarg.2
    IL_0022:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0027:  ldfld      int32 [Engine]Engine.Point2::X
    IL_002c:  ldc.i4.s   16
    IL_002e:  add
    IL_002f:  conv.r4
    IL_0030:  ldarg.2
    IL_0031:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0036:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_003b:  conv.r4
    IL_003c:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0041:  ldloca.s   V_2
    IL_0043:  ldarg.2
    IL_0044:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0049:  ldfld      int32 [Engine]Engine.Point2::X
    IL_004e:  conv.r4
    IL_004f:  ldarg.2
    IL_0050:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0055:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_005a:  ldc.i4.s   16
    IL_005c:  add
    IL_005d:  conv.r4
    IL_005e:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0063:  ldloca.s   V_3
    IL_0065:  ldarg.2
    IL_0066:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_006b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0070:  ldc.i4.s   16
    IL_0072:  add
    IL_0073:  conv.r4
    IL_0074:  ldarg.2
    IL_0075:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_007a:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_007f:  ldc.i4.s   16
    IL_0081:  add
    IL_0082:  conv.r4
    IL_0083:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0088:  ldarg.1
    IL_0089:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_008e:  ldarg.1
    IL_008f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0094:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0099:  ldloc.0
    IL_009a:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_009f:  stloc.s    V_4
    IL_00a1:  ldarg.1
    IL_00a2:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00a7:  ldarg.1
    IL_00a8:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00ad:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00b2:  ldloc.1
    IL_00b3:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00b8:  stloc.s    V_5
    IL_00ba:  ldarg.1
    IL_00bb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c0:  ldarg.1
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00c6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00cb:  ldloc.2
    IL_00cc:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00d1:  stloc.s    V_6
    IL_00d3:  ldarg.1
    IL_00d4:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00d9:  ldarg.1
    IL_00da:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00df:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00e4:  ldloc.3
    IL_00e5:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00ea:  stloc.s    V_7
    IL_00ec:  ldarg.2
    IL_00ed:  ldloc.s    V_4
    IL_00ef:  ldloc.s    V_5
    IL_00f1:  ldloc.s    V_6
    IL_00f3:  ldloc.s    V_7
    IL_00f5:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00fa:  stfld      float32 Game.TerrainChunk::FogEnd
    IL_00ff:  ldarg.2
    IL_0100:  ldc.i4.1
    IL_0101:  stfld      bool Game.TerrainChunk::IsFogFading
    IL_0106:  ret
  } // end of method TerrainRenderer::StartChunkFadeIn

  .property instance string ChunksGpuBuffersStats()
  {
    .get instance string Game.TerrainRenderer::get_ChunksGpuBuffersStats()
  } // end of property TerrainRenderer::ChunksGpuBuffersStats
} // end of class Game.TerrainRenderer