.class public sequential ansi sealed beforefieldinit Game.TerrainRaycastResult
       extends [System.Runtime]System.ValueType
{
  .field public int32 Value
  .field public valuetype Game.CellFace CellFace
  .field public int32 CollisionBoxIndex
  .field public float32 Distance
  .field public valuetype [Engine]Engine.Vector3 RaycastStart
  .field public valuetype [Engine]Engine.Vector3 RaycastEnd
  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          HitPoint() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0006:  ldarg.0
    IL_0007:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastEnd
    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::RaycastStart
    IL_0012:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0017:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_001c:  ldarg.0
    IL_001d:  ldfld      float32 Game.TerrainRaycastResult::Distance
    IL_0022:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0027:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_002c:  ret
  } // end of method TerrainRaycastResult::HitPoint

  .method public hidebysig instance valuetype [Engine]Engine.Vector3 
          HitPoint(float32 offsetFromSurface) cil managed
  {
    // 代码大小       34 (0x22)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.Vector3 Game.TerrainRaycastResult::HitPoint()
    IL_0006:  ldarg.0
    IL_0007:  ldflda     valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_000c:  ldfld      int32 Game.CellFace::Face
    IL_0011:  call       valuetype [Engine]Engine.Vector3 Game.CellFace::FaceToVector3(int32)
    IL_0016:  ldarg.1
    IL_0017:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_001c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0021:  ret
  } // end of method TerrainRaycastResult::HitPoint

} // end of class Game.TerrainRaycastResult