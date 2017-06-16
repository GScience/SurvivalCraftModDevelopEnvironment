.class public abstract auto ansi beforefieldinit Game.MountedElectricElementBlock
       extends Game.Block
       implements Game.IElectricElementBlock
{
  .method public hidebysig newslot abstract virtual 
          instance int32  GetFace(int32 'value') cil managed
  {
  } // end of method MountedElectricElementBlock::GetFace

  .method public hidebysig newslot abstract virtual 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
  } // end of method MountedElectricElementBlock::CreateElectricElement

  .method public hidebysig newslot abstract virtual 
          instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.ElectricConnectorType> 
          GetConnectorType(class Game.SubsystemTerrain terrain,
                           int32 'value',
                           int32 face,
                           int32 connectorFace,
                           int32 x,
                           int32 y,
                           int32 z) cil managed
  {
  } // end of method MountedElectricElementBlock::GetConnectorType

  .method public hidebysig newslot virtual 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x7fffffff
    IL_0005:  ret
  } // end of method MountedElectricElementBlock::GetConnectionMask

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.Block::.ctor()
    IL_0006:  ret
  } // end of method MountedElectricElementBlock::.ctor

} // end of class Game.MountedElectricElementBlock