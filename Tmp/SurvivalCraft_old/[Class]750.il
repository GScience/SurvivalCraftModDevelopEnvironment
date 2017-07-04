.class public abstract auto ansi beforefieldinit Game.ParticleSystemBase
       extends [System.Runtime]System.Object
{
  .field public class Game.SubsystemParticles SubsystemParticles
  .method public hidebysig newslot abstract virtual 
          instance void  Draw(class Game.Camera camera) cil managed
  {
  } // end of method ParticleSystemBase::Draw

  .method public hidebysig newslot abstract virtual 
          instance bool  Simulate(float32 dt) cil managed
  {
  } // end of method ParticleSystemBase::Simulate

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ParticleSystemBase::.ctor

} // end of class Game.ParticleSystemBase