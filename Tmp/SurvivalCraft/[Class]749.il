.class public auto ansi beforefieldinit Game.Projectile
       extends Game.WorldItem
{
  .field public valuetype [Engine]Engine.Vector3 Rotation
  .field public valuetype [Engine]Engine.Vector3 AngularVelocity
  .field public bool IsInWater
  .field public float64 LastNoiseTime
  .field public class Game.ComponentCreature Owner
  .field public valuetype Game.ProjectileStoppedAction ProjectileStoppedAction
  .field public class Game.ITrailParticleSystem TrailParticleSystem
  .field public valuetype [Engine]Engine.Vector3 TrailOffset
  .field public bool NoChunk
  .field public bool IsIncendiary
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.WorldItem::.ctor()
    IL_0006:  ret
  } // end of method Projectile::.ctor

} // end of class Game.Projectile