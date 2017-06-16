.class public auto ansi beforefieldinit Game.TerrainChunk
       extends [System.Runtime]System.Object
{
  .field public static literal int32 Size = int32(0x00000010)
  .field public static literal int32 Height = int32(0x00000080)
  .field public valuetype Game.TerrainChunkState State
  .field public valuetype Game.TerrainChunkState ThreadState
  .field public bool WasDowngraded
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> DowngradedState
  .field public bool WasUpgraded
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainChunkState> UpgradedState
  .field public valuetype [Engine]Engine.Point2 Origin
  .field public valuetype [Engine]Engine.BoundingBox BoundingBox
  .field public valuetype [Engine]Engine.Vector3 Center
  .field public bool IsInVisibilityRange
  .field public bool IsVisible
  .field public float32 DistanceSquared
  .field public int32 LightPropagationMask
  .field public int32 ModificationCounter
  .field public float32 FogEnd
  .field public bool IsFogFading
  .field public int64 ContentsHash
  .field public bool AreBehaviorsNotified
  .field public bool IsLoaded
  .field public bool modreq([System.Runtime]System.Runtime.CompilerServices.IsVolatile) NewGeometryData
  .field public float32 GeometryMinY
  .field public float32 GeometryMaxY
  .field public class Game.TerrainChunkGeometry Geometry
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4     0x7fffffff
    IL_0006:  ldc.i4     0x7fffffff
    IL_000b:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0010:  stfld      valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
    IL_0015:  ldarg.0
    IL_0016:  newobj     instance void Game.TerrainChunkGeometry::.ctor()
    IL_001b:  stfld      class Game.TerrainChunkGeometry Game.TerrainChunk::Geometry
    IL_0020:  ldarg.0
    IL_0021:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0026:  ret
  } // end of method TerrainChunk::.ctor

} // end of class Game.TerrainChunk