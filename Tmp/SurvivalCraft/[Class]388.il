.class interface public abstract auto ansi Game.IElectricElementBlock
{
  .method public hidebysig newslot abstract virtual 
          instance class Game.ElectricElement 
          CreateElectricElement(class Game.SubsystemElectricity subsystemElectricity,
                                int32 'value',
                                int32 x,
                                int32 y,
                                int32 z) cil managed
  {
  } // end of method IElectricElementBlock::CreateElectricElement

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
  } // end of method IElectricElementBlock::GetConnectorType

  .method public hidebysig newslot abstract virtual 
          instance int32  GetConnectionMask(int32 'value') cil managed
  {
  } // end of method IElectricElementBlock::GetConnectionMask

} // end of class Game.IElectricElementBlock