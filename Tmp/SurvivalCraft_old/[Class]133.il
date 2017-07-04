.class public auto ansi beforefieldinit Game.DrawBlockEnvironmentData
       extends [System.Runtime]System.Object
{
  .field public class Game.SubsystemTerrain SubsystemTerrain
  .field public valuetype [Engine]Engine.Matrix InWorldMatrix
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> ViewProjectionMatrix
  .field public valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> BillboardDirection
  .field public int32 Humidity
  .field public int32 Temperature
  .field public int32 Light
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       41 (0x29)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldsfld     valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::Identity
    IL_000c:  stfld      valuetype [Engine]Engine.Matrix Game.DrawBlockEnvironmentData::InWorldMatrix
    IL_0011:  ldarg.0
    IL_0012:  ldc.i4.s   15
    IL_0014:  stfld      int32 Game.DrawBlockEnvironmentData::Humidity
    IL_0019:  ldarg.0
    IL_001a:  ldc.i4.8
    IL_001b:  stfld      int32 Game.DrawBlockEnvironmentData::Temperature
    IL_0020:  ldarg.0
    IL_0021:  ldc.i4.s   15
    IL_0023:  stfld      int32 Game.DrawBlockEnvironmentData::Light
    IL_0028:  ret
  } // end of method DrawBlockEnvironmentData::.ctor

} // end of class Game.DrawBlockEnvironmentData