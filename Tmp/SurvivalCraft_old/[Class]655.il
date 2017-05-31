.class public auto ansi beforefieldinit Game.GunpowderKegElectricElement
       extends Game.ElectricElement
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method GunpowderKegElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  4
    .locals init (valuetype Game.CellFace V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  ble.s      IL_0042

    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_000f:  stloc.1
    IL_0010:  ldloca.s   V_1
    IL_0012:  ldc.i4.0
    IL_0013:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_0018:  stloc.0
    IL_0019:  ldarg.0
    IL_001a:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_001f:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0024:  ldc.i4.1
    IL_0025:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosivesBlockBehavior>(bool)
    IL_002a:  ldloc.0
    IL_002b:  ldfld      int32 Game.CellFace::X
    IL_0030:  ldloc.0
    IL_0031:  ldfld      int32 Game.CellFace::Y
    IL_0036:  ldloc.0
    IL_0037:  ldfld      int32 Game.CellFace::Z
    IL_003c:  callvirt   instance bool Game.SubsystemExplosivesBlockBehavior::IgniteFuse(int32,
                                                                                         int32,
                                                                                         int32)
    IL_0041:  pop
    IL_0042:  ldc.i4.0
    IL_0043:  ret
  } // end of method GunpowderKegElectricElement::Simulate

} // end of class Game.GunpowderKegElectricElement