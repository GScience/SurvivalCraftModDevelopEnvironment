.class public auto ansi beforefieldinit Game.TerrainRenderer
       extends [System.Runtime]System.Object
       implements [System.Runtime]System.IDisposable
{
  .class auto ansi nested private beforefieldinit ChunkDrawDistanceComparer
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
      IL_0001:  ldfld      float32 Game.TerrainChunk::DrawDistanceSquared
      IL_0006:  ldarg.2
      IL_0007:  ldfld      float32 Game.TerrainChunk::DrawDistanceSquared
      IL_000c:  blt.s      IL_0020

      IL_000e:  ldarg.1
      IL_000f:  ldfld      float32 Game.TerrainChunk::DrawDistanceSquared
      IL_0014:  ldarg.2
      IL_0015:  ldfld      float32 Game.TerrainChunk::DrawDistanceSquared
      IL_001a:  bgt.s      IL_001e

      IL_001c:  ldc.i4.0
      IL_001d:  ret

      IL_001e:  ldc.i4.1
      IL_001f:  ret

      IL_0020:  ldc.i4.m1
      IL_0021:  ret
    } // end of method ChunkDrawDistanceComparer::Compare

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method ChunkDrawDistanceComparer::.ctor

  } // end of class ChunkDrawDistanceComparer

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.SubsystemAnimatedTextures m_subsystemAnimatedTextures
  .field private class [Engine]Engine.Graphics.Shader m_opaqueShader
  .field private class [Engine]Engine.Graphics.Shader m_alphaTestedShader
  .field private class [Engine]Engine.Graphics.Shader m_transparentShader
  .field private class Game.TerrainRenderer/ChunkDrawDistanceComparer m_chunksDistanceComparer
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> m_chunksToDraw
  .field private class Game.VertexBufferCache m_vertexBufferCache
  .field private class Game.IndexBufferCache m_indexBufferCache
  .field public static bool DrawChunksMap
  .field public static int32 ChunksDrawn
  .field public static int32 ChunkDrawCalls
  .field public static int32 ChunkTrianglesDrawn
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
    // 代码大小       158 (0x9e)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.TerrainRenderer/ChunkDrawDistanceComparer::.ctor()
    IL_0006:  stfld      class Game.TerrainRenderer/ChunkDrawDistanceComparer Game.TerrainRenderer::m_chunksDistanceComparer
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
    IL_0037:  callvirt   instance class Game.SubsystemAnimatedTextures Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_003c:  stfld      class Game.SubsystemAnimatedTextures Game.TerrainRenderer::m_subsystemAnimatedTextures
    IL_0041:  ldarg.0
    IL_0042:  ldstr      "Shaders/Opaque"
    IL_0047:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_004c:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0051:  ldarg.0
    IL_0052:  ldstr      "Shaders/AlphaTested"
    IL_0057:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_005c:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0061:  ldarg.0
    IL_0062:  ldstr      "Shaders/Transparent"
    IL_0067:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Shader>(string)
    IL_006c:  stfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0071:  ldarg.0
    IL_0072:  ldsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.TerrainVertex::VertexDeclaration
    IL_0077:  newobj     instance void Game.VertexBufferCache::.ctor(class [Engine]Engine.Graphics.VertexDeclaration)
    IL_007c:  stfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0081:  ldarg.0
    IL_0082:  newobj     instance void Game.IndexBufferCache::.ctor()
    IL_0087:  stfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_008c:  ldarg.0
    IL_008d:  ldftn      instance void Game.TerrainRenderer::Display_DeviceReset()
    IL_0093:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0098:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_009d:  ret
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
          PrepareForDrawing(class Game.Camera camera) cil managed
  {
    // 代码大小       446 (0x1be)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             float32 V_1,
             class [Engine]Engine.BoundingFrustum V_2,
             int32 V_3,
             class Game.TerrainChunk[] V_4,
             int32 V_5,
             class Game.TerrainChunk V_6,
             class Game.TerrainChunkGeometry V_7,
             bool V_8,
             float32 V_9)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_000d:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_0012:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0017:  stloc.1
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.Camera::get_ViewFrustum()
    IL_001e:  stloc.2
    IL_001f:  ldarg.1
    IL_0020:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0025:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_002a:  stloc.3
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0031:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Clear()
    IL_0036:  ldarg.0
    IL_0037:  ldfld      class Game.SubsystemTerrain Game.TerrainRenderer::m_subsystemTerrain
    IL_003c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0041:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_0046:  stloc.s    V_4
    IL_0048:  ldc.i4.0
    IL_0049:  stloc.s    V_5
    IL_004b:  br         IL_018f

    IL_0050:  ldloc.s    V_4
    IL_0052:  ldloc.s    V_5
    IL_0054:  ldelem.ref
    IL_0055:  stloc.s    V_6
    IL_0057:  ldloc.s    V_6
    IL_0059:  volatile.
    IL_005b:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
    IL_0060:  brfalse    IL_00f8

    IL_0065:  ldloc.s    V_6
    IL_0067:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_006c:  stloc.s    V_7
    IL_006e:  ldc.i4.0
    IL_006f:  stloc.s    V_8
    .try
    {
      IL_0071:  ldloc.s    V_7
      IL_0073:  ldloca.s   V_8
      IL_0075:  call       void [System.Threading]System.Threading.Monitor::Enter(object,
                                                                                  bool&)
      IL_007a:  ldloc.s    V_6
      IL_007c:  volatile.
      IL_007e:  ldfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_0083:  brfalse.s  IL_00ea

      IL_0085:  ldloc.s    V_6
      IL_0087:  ldc.i4.0
      IL_0088:  volatile.
      IL_008a:  stfld      bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) Game.TerrainChunk::NewGeometryData
      IL_008f:  ldloc.s    V_6
      IL_0091:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_0096:  ldloc.s    V_6
      IL_0098:  ldfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
      IL_009d:  stfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_00a2:  ldloc.s    V_6
      IL_00a4:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_00a9:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_00ae:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
      IL_00b3:  ldloc.s    V_6
      IL_00b5:  ldfld      float32 Game.TerrainChunk::GeometryMinY
      IL_00ba:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_00bf:  ldloc.s    V_6
      IL_00c1:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
      IL_00c6:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
      IL_00cb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
      IL_00d0:  ldloc.s    V_6
      IL_00d2:  ldfld      float32 Game.TerrainChunk::GeometryMaxY
      IL_00d7:  ldc.r4     1.
      IL_00dc:  add
      IL_00dd:  stfld      float32 [Engine]Engine.Vector3::Y
      IL_00e2:  ldarg.0
      IL_00e3:  ldloc.s    V_6
      IL_00e5:  call       instance void Game.TerrainRenderer::SetupTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunk)
      IL_00ea:  leave.s    IL_00f8

    }  // end .try
    finally
    {
      IL_00ec:  ldloc.s    V_8
      IL_00ee:  brfalse.s  IL_00f7

      IL_00f0:  ldloc.s    V_7
      IL_00f2:  call       void [System.Threading]System.Threading.Monitor::Exit(object)
      IL_00f7:  endfinally
    }  // end handler
    IL_00f8:  ldloc.s    V_6
    IL_00fa:  ldloca.s   V_0
    IL_00fc:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0101:  ldloc.s    V_6
    IL_0103:  ldfld      valuetype [Engine]Engine.Vector2 Game.TerrainChunk::Center
    IL_0108:  call       float32 [Engine]Engine.Vector2::DistanceSquared(valuetype [Engine]Engine.Vector2,
                                                                         valuetype [Engine]Engine.Vector2)
    IL_010d:  stfld      float32 Game.TerrainChunk::DrawDistanceSquared
    IL_0112:  ldloc.s    V_6
    IL_0114:  ldfld      float32 Game.TerrainChunk::DrawDistanceSquared
    IL_0119:  ldloc.1
    IL_011a:  bgt.un.s   IL_017b

    IL_011c:  ldloc.2
    IL_011d:  ldloc.s    V_6
    IL_011f:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0124:  ldfld      valuetype [Engine]Engine.BoundingBox Game.TerrainChunkGeometry::GeometryBoundingBox
    IL_0129:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_012e:  brfalse.s  IL_013d

    IL_0130:  ldarg.0
    IL_0131:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0136:  ldloc.s    V_6
    IL_0138:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Add(!0)
    IL_013d:  ldloc.s    V_6
    IL_013f:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0144:  ldc.i4.s   9
    IL_0146:  bne.un.s   IL_0189

    IL_0148:  ldloc.s    V_6
    IL_014a:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_014f:  ldloc.3
    IL_0150:  ldelem.r4
    IL_0151:  stloc.s    V_9
    IL_0153:  ldloc.s    V_9
    IL_0155:  ldc.r4     3.4028235e+038
    IL_015a:  beq.s      IL_0189

    IL_015c:  ldloc.s    V_9
    IL_015e:  ldc.r4     0.0
    IL_0163:  bne.un.s   IL_0170

    IL_0165:  ldarg.0
    IL_0166:  ldarg.1
    IL_0167:  ldloc.s    V_6
    IL_0169:  call       instance void Game.TerrainRenderer::StartChunkFadeIn(class Game.Camera,
                                                                              class Game.TerrainChunk)
    IL_016e:  br.s       IL_0189

    IL_0170:  ldarg.0
    IL_0171:  ldarg.1
    IL_0172:  ldloc.s    V_6
    IL_0174:  call       instance void Game.TerrainRenderer::RunChunkFadeIn(class Game.Camera,
                                                                            class Game.TerrainChunk)
    IL_0179:  br.s       IL_0189

    IL_017b:  ldloc.s    V_6
    IL_017d:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_0182:  ldloc.3
    IL_0183:  ldc.r4     0.0
    IL_0188:  stelem.r4
    IL_0189:  ldloc.s    V_5
    IL_018b:  ldc.i4.1
    IL_018c:  add
    IL_018d:  stloc.s    V_5
    IL_018f:  ldloc.s    V_5
    IL_0191:  ldloc.s    V_4
    IL_0193:  ldlen
    IL_0194:  conv.i4
    IL_0195:  blt        IL_0050

    IL_019a:  ldarg.0
    IL_019b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_01a0:  ldarg.0
    IL_01a1:  ldfld      class Game.TerrainRenderer/ChunkDrawDistanceComparer Game.TerrainRenderer::m_chunksDistanceComparer
    IL_01a6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::Sort(class [System.Runtime]System.Collections.Generic.IComparer`1<!0>)
    IL_01ab:  ldc.i4.0
    IL_01ac:  stsfld     int32 Game.TerrainRenderer::ChunksDrawn
    IL_01b1:  ldc.i4.0
    IL_01b2:  stsfld     int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_01b7:  ldc.i4.0
    IL_01b8:  stsfld     int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_01bd:  ret
  } // end of method TerrainRenderer::PrepareForDrawing

  .method public hidebysig instance void 
          DrawOpaque(class Game.Camera camera) cil managed
  {
    // 代码大小       605 (0x25d)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             int32 V_3,
             class Game.TerrainChunk V_4,
             float32 V_5,
             float32 V_6,
             int32 V_7)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0019:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0024:  ldstr      "u_worldViewProjectionMatrix"
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0035:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_0040:  ldstr      "u_viewPosition"
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_00a9:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
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
    IL_00cb:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_00d0:  stloc.1
    IL_00d1:  ldarg.1
    IL_00d2:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_00d7:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_00dc:  stloc.2
    IL_00dd:  ldc.i4.0
    IL_00de:  stloc.3
    IL_00df:  br         IL_024b

    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_00ea:  ldloc.3
    IL_00eb:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_00f0:  stloc.s    V_4
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_00f9:  ldloc.2
    IL_00fa:  ldelem.r4
    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0101:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0106:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_010b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0110:  stloc.s    V_5
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0118:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_011d:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0122:  ldloc.s    V_5
    IL_0124:  ldc.r4     1.
    IL_0129:  sub
    IL_012a:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_012f:  stloc.s    V_6
    IL_0131:  ldloc.0
    IL_0132:  ldloc.s    V_6
    IL_0134:  ldc.r4     1.
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldloc.s    V_6
    IL_013d:  sub
    IL_013e:  div
    IL_013f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0144:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_0149:  ldc.i4.0
    IL_014a:  stloc.s    V_7
    IL_014c:  ldloc.1
    IL_014d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0152:  ldloc.s    V_4
    IL_0154:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_0159:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_015e:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0163:  ble.un.s   IL_017d

    IL_0165:  ldloc.s    V_7
    IL_0167:  ldloc.s    V_4
    IL_0169:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_016e:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0173:  ldc.i4.0
    IL_0174:  ldelem.ref
    IL_0175:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_017a:  or
    IL_017b:  stloc.s    V_7
    IL_017d:  ldloc.1
    IL_017e:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0183:  ldloc.s    V_4
    IL_0185:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_018a:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_018f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0194:  ble.un.s   IL_01ae

    IL_0196:  ldloc.s    V_7
    IL_0198:  ldloc.s    V_4
    IL_019a:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_019f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_01a4:  ldc.i4.1
    IL_01a5:  ldelem.ref
    IL_01a6:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_01ab:  or
    IL_01ac:  stloc.s    V_7
    IL_01ae:  ldloc.1
    IL_01af:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01b4:  ldloc.s    V_4
    IL_01b6:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_01bb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01c0:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_01c5:  bge.un.s   IL_01df

    IL_01c7:  ldloc.s    V_7
    IL_01c9:  ldloc.s    V_4
    IL_01cb:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_01d0:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_01d5:  ldc.i4.2
    IL_01d6:  ldelem.ref
    IL_01d7:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_01dc:  or
    IL_01dd:  stloc.s    V_7
    IL_01df:  ldloc.1
    IL_01e0:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01e5:  ldloc.s    V_4
    IL_01e7:  ldflda     valuetype [Engine]Engine.BoundingBox Game.TerrainChunk::BoundingBox
    IL_01ec:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_01f1:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_01f6:  bge.un.s   IL_0210

    IL_01f8:  ldloc.s    V_7
    IL_01fa:  ldloc.s    V_4
    IL_01fc:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0201:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainGeometrySubsets::OpaqueSubsetsByFace
    IL_0206:  ldc.i4.3
    IL_0207:  ldelem.ref
    IL_0208:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_020d:  or
    IL_020e:  stloc.s    V_7
    IL_0210:  ldloc.s    V_7
    IL_0212:  ldloc.s    V_4
    IL_0214:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0219:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetOpaque
    IL_021e:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_0223:  or
    IL_0224:  stloc.s    V_7
    IL_0226:  ldarg.0
    IL_0227:  ldarg.0
    IL_0228:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_opaqueShader
    IL_022d:  ldloc.s    V_4
    IL_022f:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0234:  ldloc.s    V_7
    IL_0236:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_023b:  ldsfld     int32 Game.TerrainRenderer::ChunksDrawn
    IL_0240:  ldc.i4.1
    IL_0241:  add
    IL_0242:  stsfld     int32 Game.TerrainRenderer::ChunksDrawn
    IL_0247:  ldloc.3
    IL_0248:  ldc.i4.1
    IL_0249:  add
    IL_024a:  stloc.3
    IL_024b:  ldloc.3
    IL_024c:  ldarg.0
    IL_024d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0252:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0257:  blt        IL_00e4

    IL_025c:  ret
  } // end of method TerrainRenderer::DrawOpaque

  .method public hidebysig instance void 
          DrawAlphaTested(class Game.Camera camera) cil managed
  {
    // 代码大小       380 (0x17c)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             float32 V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::Opaque
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_0019:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0024:  ldstr      "u_worldViewProjectionMatrix"
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_002f:  ldarg.1
    IL_0030:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_0035:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_003a:  ldarg.0
    IL_003b:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0040:  ldstr      "u_viewPosition"
    IL_0045:  ldc.i4.0
    IL_0046:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_004b:  ldarg.1
    IL_004c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_00a9:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
    IL_00ae:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_00b3:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_00b8:  ldarg.0
    IL_00b9:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_00be:  ldstr      "u_fogStartInvLength"
    IL_00c3:  ldc.i4.0
    IL_00c4:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00c9:  stloc.0
    IL_00ca:  ldarg.1
    IL_00cb:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_00d0:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_00d5:  stloc.1
    IL_00d6:  ldc.i4.0
    IL_00d7:  stloc.2
    IL_00d8:  br         IL_016a

    IL_00dd:  ldarg.0
    IL_00de:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_00e3:  ldloc.2
    IL_00e4:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_00e9:  stloc.3
    IL_00ea:  ldloc.3
    IL_00eb:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_00f0:  ldloc.1
    IL_00f1:  ldelem.r4
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_00f8:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_00fd:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0102:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0107:  stloc.s    V_4
    IL_0109:  ldarg.0
    IL_010a:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_010f:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0114:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0119:  ldloc.s    V_4
    IL_011b:  ldc.r4     1.
    IL_0120:  sub
    IL_0121:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0126:  stloc.s    V_5
    IL_0128:  ldloc.0
    IL_0129:  ldloc.s    V_5
    IL_012b:  ldc.r4     1.
    IL_0130:  ldloc.s    V_4
    IL_0132:  ldloc.s    V_5
    IL_0134:  sub
    IL_0135:  div
    IL_0136:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_013b:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_0140:  ldloc.3
    IL_0141:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0146:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetAlphaTest
    IL_014b:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_0150:  stloc.s    V_6
    IL_0152:  ldarg.0
    IL_0153:  ldarg.0
    IL_0154:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_alphaTestedShader
    IL_0159:  ldloc.3
    IL_015a:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_015f:  ldloc.s    V_6
    IL_0161:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_0166:  ldloc.2
    IL_0167:  ldc.i4.1
    IL_0168:  add
    IL_0169:  stloc.2
    IL_016a:  ldloc.2
    IL_016b:  ldarg.0
    IL_016c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0171:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0176:  blt        IL_00dd

    IL_017b:  ret
  } // end of method TerrainRenderer::DrawAlphaTested

  .method public hidebysig instance void 
          DrawTransparent(class Game.Camera camera) cil managed
  {
    // 代码大小       432 (0x1b0)
    .maxstack  5
    .locals init (class [Engine]Engine.Graphics.ShaderParameter V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainChunk V_3,
             float32 V_4,
             float32 V_5,
             int32 V_6)
    IL_0000:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::AlphaBlend
    IL_0005:  call       void [Engine]Engine.Graphics.Display::set_BlendState(class [Engine]Engine.Graphics.BlendState)
    IL_000a:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::Default
    IL_000f:  call       void [Engine]Engine.Graphics.Display::set_DepthStencilState(class [Engine]Engine.Graphics.DepthStencilState)
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_001a:  callvirt   instance float32 Game.SubsystemSky::get_ViewUnderWaterDepth()
    IL_001f:  ldc.r4     0.0
    IL_0024:  bgt.s      IL_002d

    IL_0026:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullCounterClockwiseScissor
    IL_002b:  br.s       IL_0032

    IL_002d:  ldsfld     class [Engine]Engine.Graphics.RasterizerState [Engine]Engine.Graphics.RasterizerState::CullClockwiseScissor
    IL_0032:  call       void [Engine]Engine.Graphics.Display::set_RasterizerState(class [Engine]Engine.Graphics.RasterizerState)
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_003d:  ldstr      "u_worldViewProjectionMatrix"
    IL_0042:  ldc.i4.0
    IL_0043:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0048:  ldarg.1
    IL_0049:  callvirt   instance valuetype [Engine]Engine.Matrix Game.Camera::get_ViewProjectionMatrix()
    IL_004e:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Matrix)
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0059:  ldstr      "u_viewPosition"
    IL_005e:  ldc.i4.0
    IL_005f:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_0064:  ldarg.1
    IL_0065:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
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
    IL_00db:  callvirt   instance valuetype [Engine]Engine.Color Game.SubsystemSky::get_ViewFogColor()
    IL_00e0:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Color)
    IL_00e5:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector3)
    IL_00ea:  ldarg.0
    IL_00eb:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_00f0:  ldstr      "u_fogStartInvLength"
    IL_00f5:  ldc.i4.0
    IL_00f6:  callvirt   instance class [Engine]Engine.Graphics.ShaderParameter [Engine]Engine.Graphics.Shader::GetParameter(string,
                                                                                                                             bool)
    IL_00fb:  stloc.0
    IL_00fc:  ldarg.1
    IL_00fd:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0102:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_0107:  stloc.1
    IL_0108:  ldarg.0
    IL_0109:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_010e:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Count()
    IL_0113:  ldc.i4.1
    IL_0114:  sub
    IL_0115:  stloc.2
    IL_0116:  br         IL_01a8

    IL_011b:  ldarg.0
    IL_011c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk> Game.TerrainRenderer::m_chunksToDraw
    IL_0121:  ldloc.2
    IL_0122:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.TerrainChunk>::get_Item(int32)
    IL_0127:  stloc.3
    IL_0128:  ldloc.3
    IL_0129:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_012e:  ldloc.1
    IL_012f:  ldelem.r4
    IL_0130:  ldarg.0
    IL_0131:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_0136:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_013b:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0140:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0145:  stloc.s    V_4
    IL_0147:  ldarg.0
    IL_0148:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_014d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0152:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0157:  ldloc.s    V_4
    IL_0159:  ldc.r4     1.
    IL_015e:  sub
    IL_015f:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_0164:  stloc.s    V_5
    IL_0166:  ldloc.0
    IL_0167:  ldloc.s    V_5
    IL_0169:  ldc.r4     1.
    IL_016e:  ldloc.s    V_4
    IL_0170:  ldloc.s    V_5
    IL_0172:  sub
    IL_0173:  div
    IL_0174:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0179:  callvirt   instance void [Engine]Engine.Graphics.ShaderParameter::SetValue(valuetype [Engine]Engine.Vector2)
    IL_017e:  ldloc.3
    IL_017f:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0184:  ldfld      class Game.TerrainGeometrySubset Game.TerrainGeometrySubsets::SubsetTransparent
    IL_0189:  ldfld      int32 Game.TerrainGeometrySubset::SubsetMask
    IL_018e:  stloc.s    V_6
    IL_0190:  ldarg.0
    IL_0191:  ldarg.0
    IL_0192:  ldfld      class [Engine]Engine.Graphics.Shader Game.TerrainRenderer::m_transparentShader
    IL_0197:  ldloc.3
    IL_0198:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_019d:  ldloc.s    V_6
    IL_019f:  call       instance void Game.TerrainRenderer::DrawTerrainChunkGeometrySubsets(class [Engine]Engine.Graphics.Shader,
                                                                                             class Game.TerrainChunkGeometry,
                                                                                             int32)
    IL_01a4:  ldloc.2
    IL_01a5:  ldc.i4.1
    IL_01a6:  sub
    IL_01a7:  stloc.2
    IL_01a8:  ldloc.2
    IL_01a9:  ldc.i4.0
    IL_01aa:  bge        IL_011b

    IL_01af:  ret
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
    // 代码大小       88 (0x58)
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
    IL_0018:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_001d:  callvirt   instance class Game.TerrainChunk[] Game.Terrain::get_AllocatedChunks()
    IL_0022:  stloc.0
    IL_0023:  ldc.i4.0
    IL_0024:  stloc.1
    IL_0025:  br.s       IL_003b

    IL_0027:  ldloc.0
    IL_0028:  ldloc.1
    IL_0029:  ldelem.ref
    IL_002a:  stloc.2
    IL_002b:  ldarg.0
    IL_002c:  ldloc.2
    IL_002d:  ldfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0032:  call       instance void Game.TerrainRenderer::ReturnTerrainChunkGeometryVertexIndexBuffers(class Game.TerrainChunkGeometry)
    IL_0037:  ldloc.1
    IL_0038:  ldc.i4.1
    IL_0039:  add
    IL_003a:  stloc.1
    IL_003b:  ldloc.1
    IL_003c:  ldloc.0
    IL_003d:  ldlen
    IL_003e:  conv.i4
    IL_003f:  blt.s      IL_0027

    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.VertexBufferCache Game.TerrainRenderer::m_vertexBufferCache
    IL_0047:  callvirt   instance void Game.VertexBufferCache::Clear()
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.IndexBufferCache Game.TerrainRenderer::m_indexBufferCache
    IL_0052:  callvirt   instance void Game.IndexBufferCache::Clear()
    IL_0057:  ret
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
    // 代码大小       155 (0x9b)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.TerrainGeometrySubset V_3)
    IL_0000:  ldarg.2
    IL_0001:  ldfld      class [Engine]Engine.Graphics.VertexBuffer Game.TerrainChunkGeometry::VertexBuffer
    IL_0006:  brfalse    IL_009a

    IL_000b:  ldarg.2
    IL_000c:  ldfld      class [Engine]Engine.Graphics.IndexBuffer Game.TerrainChunkGeometry::IndexBuffer
    IL_0011:  brfalse    IL_009a

    IL_0016:  ldc.i4.m1
    IL_0017:  stloc.0
    IL_0018:  ldc.i4.0
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  br.s       IL_008d

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
    IL_0050:  br.s       IL_0089

    IL_0052:  ldloc.1
    IL_0053:  ldc.i4.0
    IL_0054:  ble.s      IL_0085

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
    IL_006b:  ldsfld     int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_0070:  ldloc.1
    IL_0071:  ldc.i4.3
    IL_0072:  div
    IL_0073:  add
    IL_0074:  stsfld     int32 Game.TerrainRenderer::ChunkTrianglesDrawn
    IL_0079:  ldsfld     int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_007e:  ldc.i4.1
    IL_007f:  add
    IL_0080:  stsfld     int32 Game.TerrainRenderer::ChunkDrawCalls
    IL_0085:  ldc.i4.m1
    IL_0086:  stloc.0
    IL_0087:  ldc.i4.0
    IL_0088:  stloc.1
    IL_0089:  ldloc.2
    IL_008a:  ldc.i4.1
    IL_008b:  add
    IL_008c:  stloc.2
    IL_008d:  ldloc.2
    IL_008e:  ldarg.2
    IL_008f:  ldfld      class Game.TerrainGeometrySubset[] Game.TerrainChunkGeometry::AllSubsets
    IL_0094:  ldlen
    IL_0095:  conv.i4
    IL_0096:  ldc.i4.1
    IL_0097:  add
    IL_0098:  blt.s      IL_001e

    IL_009a:  ret
  } // end of method TerrainRenderer::DrawTerrainChunkGeometrySubsets

  .method private hidebysig instance void 
          StartChunkFadeIn(class Game.Camera camera,
                           class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       246 (0xf6)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             float32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldarg.2
    IL_000a:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_000f:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0014:  conv.r4
    IL_0015:  ldarg.2
    IL_0016:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_001b:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0020:  conv.r4
    IL_0021:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0026:  ldloca.s   V_2
    IL_0028:  ldarg.2
    IL_0029:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_002e:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0033:  ldc.i4.s   16
    IL_0035:  add
    IL_0036:  conv.r4
    IL_0037:  ldarg.2
    IL_0038:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_003d:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0042:  conv.r4
    IL_0043:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0048:  ldloca.s   V_3
    IL_004a:  ldarg.2
    IL_004b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0050:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0055:  conv.r4
    IL_0056:  ldarg.2
    IL_0057:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_005c:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0061:  ldc.i4.s   16
    IL_0063:  add
    IL_0064:  conv.r4
    IL_0065:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_006a:  ldloca.s   V_4
    IL_006c:  ldarg.2
    IL_006d:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0072:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0077:  ldc.i4.s   16
    IL_0079:  add
    IL_007a:  conv.r4
    IL_007b:  ldarg.2
    IL_007c:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0081:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0086:  ldc.i4.s   16
    IL_0088:  add
    IL_0089:  conv.r4
    IL_008a:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008f:  ldloca.s   V_0
    IL_0091:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0096:  ldloc.1
    IL_0097:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_009c:  stloc.s    V_5
    IL_009e:  ldloca.s   V_0
    IL_00a0:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00a5:  ldloc.2
    IL_00a6:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00ab:  stloc.s    V_6
    IL_00ad:  ldloca.s   V_0
    IL_00af:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00b4:  ldloc.3
    IL_00b5:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00ba:  stloc.s    V_7
    IL_00bc:  ldloca.s   V_0
    IL_00be:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00c3:  ldloc.s    V_4
    IL_00c5:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_00ca:  stloc.s    V_8
    IL_00cc:  ldarg.2
    IL_00cd:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_00d2:  ldarg.1
    IL_00d3:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_00d8:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_00dd:  ldloc.s    V_5
    IL_00df:  ldloc.s    V_6
    IL_00e1:  ldloc.s    V_7
    IL_00e3:  ldloc.s    V_8
    IL_00e5:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_00ea:  ldc.r4     1.e-003
    IL_00ef:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00f4:  stelem.r4
    IL_00f5:  ret
  } // end of method TerrainRenderer::StartChunkFadeIn

  .method private hidebysig instance void 
          RunChunkFadeIn(class Game.Camera camera,
                         class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       97 (0x61)
    .maxstack  4
    IL_0000:  ldarg.2
    IL_0001:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_000c:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_0011:  ldelema    [System.Runtime]System.Single
    IL_0016:  dup
    IL_0017:  ldind.r4
    IL_0018:  ldc.r4     32.
    IL_001d:  call       float32 [Engine]Engine.Time::get_FrameDuration()
    IL_0022:  mul
    IL_0023:  add
    IL_0024:  stind.r4
    IL_0025:  ldarg.2
    IL_0026:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_002b:  ldarg.1
    IL_002c:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0031:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_0036:  ldelem.r4
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.SubsystemSky Game.TerrainRenderer::m_subsystemSky
    IL_003d:  callvirt   instance valuetype [Engine]Engine.Vector2 Game.SubsystemSky::get_ViewFogRange()
    IL_0042:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0047:  blt.un.s   IL_0060

    IL_0049:  ldarg.2
    IL_004a:  ldfld      float32[] Game.TerrainChunk::FogEnds
    IL_004f:  ldarg.1
    IL_0050:  callvirt   instance class Game.View Game.Camera::get_View()
    IL_0055:  callvirt   instance int32 Game.View::get_ViewIndex()
    IL_005a:  ldc.r4     3.4028235e+038
    IL_005f:  stelem.r4
    IL_0060:  ret
  } // end of method TerrainRenderer::RunChunkFadeIn

  .property instance string ChunksGpuBuffersStats()
  {
    .get instance string Game.TerrainRenderer::get_ChunksGpuBuffersStats()
  } // end of property TerrainRenderer::ChunksGpuBuffersStats
} // end of class Game.TerrainRenderer