.class interface public abstract auto ansi Game.ITrailParticleSystem
{
  .method public hidebysig newslot specialname abstract virtual 
          instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
  } // end of method ITrailParticleSystem::get_Position

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
  } // end of method ITrailParticleSystem::set_Position

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsStopped() cil managed
  {
  } // end of method ITrailParticleSystem::get_IsStopped

  .method public hidebysig newslot specialname abstract virtual 
          instance void  set_IsStopped(bool 'value') cil managed
  {
  } // end of method ITrailParticleSystem::set_IsStopped

  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ITrailParticleSystem::get_Position()
    .set instance void Game.ITrailParticleSystem::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property ITrailParticleSystem::Position
  .property instance bool IsStopped()
  {
    .get instance bool Game.ITrailParticleSystem::get_IsStopped()
    .set instance void Game.ITrailParticleSystem::set_IsStopped(bool)
  } // end of property ITrailParticleSystem::IsStopped
} // end of class Game.ITrailParticleSystem