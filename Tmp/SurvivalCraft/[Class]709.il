.class public auto ansi beforefieldinit Game.SwitchFurnitureElectricElement
       extends Game.FurnitureElectricElement
{
  .field private float32 m_voltage
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point,
                               int32 'value') cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  3
    .locals init (class Game.FurnitureDesign V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.FurnitureElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                            valuetype [Engine]Engine.Point3)
    IL_0008:  ldarg.1
    IL_0009:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_000e:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0013:  ldarg.3
    IL_0014:  call       class Game.FurnitureDesign Game.FurnitureBlock::GetDesign(class Game.SubsystemFurnitureBlockBehavior,
                                                                                   int32)
    IL_0019:  stloc.0
    IL_001a:  ldloc.0
    IL_001b:  brfalse.s  IL_0043

    IL_001d:  ldloc.0
    IL_001e:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_0023:  brfalse.s  IL_0043

    IL_0025:  ldarg.0
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_002c:  ldloc.0
    IL_002d:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_0032:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_0037:  blt.s      IL_003c

    IL_0039:  ldc.i4.1
    IL_003a:  br.s       IL_003d

    IL_003c:  ldc.i4.0
    IL_003d:  conv.r4
    IL_003e:  stfld      float32 Game.SwitchFurnitureElectricElement::m_voltage
    IL_0043:  ret
  } // end of method SwitchFurnitureElectricElement::.ctor

  .method public hidebysig virtual instance float32 
          GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SwitchFurnitureElectricElement::m_voltage
    IL_0006:  ret
  } // end of method SwitchFurnitureElectricElement::GetOutputVoltage

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       121 (0x79)
    .maxstack  7
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0016:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemElectricity::get_SubsystemTerrain()
    IL_001b:  callvirt   instance class Game.SubsystemFurnitureBlockBehavior Game.SubsystemTerrain::get_SubsystemFurnitureBlockBehavior()
    IL_0020:  ldloc.0
    IL_0021:  ldfld      int32 Game.CellFace::X
    IL_0026:  ldloc.0
    IL_0027:  ldfld      int32 Game.CellFace::Y
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::Z
    IL_0032:  ldc.i4.0
    IL_0033:  callvirt   instance void Game.SubsystemFurnitureBlockBehavior::SwitchToNextState(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               bool)
    IL_0038:  ldarg.0
    IL_0039:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_003e:  callvirt   instance class Game.SubsystemAudio Game.SubsystemElectricity::get_SubsystemAudio()
    IL_0043:  ldstr      "Audio/Click"
    IL_0048:  ldc.r4     1.
    IL_004d:  ldc.r4     0.0
    IL_0052:  ldloc.0
    IL_0053:  ldfld      int32 Game.CellFace::X
    IL_0058:  conv.r4
    IL_0059:  ldloc.0
    IL_005a:  ldfld      int32 Game.CellFace::Y
    IL_005f:  conv.r4
    IL_0060:  ldloc.0
    IL_0061:  ldfld      int32 Game.CellFace::Z
    IL_0066:  conv.r4
    IL_0067:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_006c:  ldc.r4     2.
    IL_0071:  ldc.i4.1
    IL_0072:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0077:  ldc.i4.1
    IL_0078:  ret
  } // end of method SwitchFurnitureElectricElement::OnInteract

} // end of class Game.SwitchFurnitureElectricElement