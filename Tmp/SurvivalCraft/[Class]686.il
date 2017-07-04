.class public auto ansi beforefieldinit Game.DetonatorElectricElement
       extends Game.MountedElectricElement
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
    IL_0003:  call       instance void Game.MountedElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                          valuetype Game.CellFace)
    IL_0008:  ret
  } // end of method DetonatorElectricElement::.ctor

  .method public hidebysig instance void 
          Detonate() cil managed
  {
    // 代码大小       70 (0x46)
    .maxstack  5
    .locals init (valuetype Game.CellFace V_0,
             int32 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0006:  stloc.2
    IL_0007:  ldloca.s   V_2
    IL_0009:  ldc.i4.0
    IL_000a:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_000f:  stloc.0
    IL_0010:  ldc.i4     0x93
    IL_0015:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_001a:  stloc.1
    IL_001b:  ldarg.0
    IL_001c:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0021:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0026:  ldc.i4.1
    IL_0027:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_002c:  ldloc.0
    IL_002d:  ldfld      int32 Game.CellFace::X
    IL_0032:  ldloc.0
    IL_0033:  ldfld      int32 Game.CellFace::Y
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 Game.CellFace::Z
    IL_003e:  ldloc.1
    IL_003f:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0044:  pop
    IL_0045:  ret
  } // end of method DetonatorElectricElement::Detonate

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance int32 Game.ElectricElement::CalculateHighInputsCount()
    IL_0006:  ldc.i4.0
    IL_0007:  ble.s      IL_000f

    IL_0009:  ldarg.0
    IL_000a:  call       instance void Game.DetonatorElectricElement::Detonate()
    IL_000f:  ldc.i4.0
    IL_0010:  ret
  } // end of method DetonatorElectricElement::Simulate

  .method public hidebysig virtual instance void 
          OnHitByProjectile(valuetype Game.CellFace cellFace,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.DetonatorElectricElement::Detonate()
    IL_0006:  ret
  } // end of method DetonatorElectricElement::OnHitByProjectile

} // end of class Game.DetonatorElectricElement