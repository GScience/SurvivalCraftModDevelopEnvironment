.class public abstract auto ansi beforefieldinit Game.ElectricElement
       extends [System.Runtime]System.Object
{
  .field private class Game.SubsystemElectricity '<SubsystemElectricity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> '<CellFaces>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> '<Connections>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace> cellFaces) cil managed
  {
    // 代码大小       42 (0x2a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  call       instance void Game.ElectricElement::set_SubsystemElectricity(class Game.SubsystemElectricity)
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0014:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_0019:  call       instance void Game.ElectricElement::set_CellFaces(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>)
    IL_001e:  ldarg.0
    IL_001f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::.ctor()
    IL_0024:  call       instance void Game.ElectricElement::set_Connections(class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>)
    IL_0029:  ret
  } // end of method ElectricElement::.ctor

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype Game.CellFace cellFace) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::.ctor()
    IL_0007:  dup
    IL_0008:  ldarg.2
    IL_0009:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_000e:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
    IL_0013:  ret
  } // end of method ElectricElement::.ctor

  .method public hidebysig specialname instance class Game.SubsystemElectricity 
          get_SubsystemElectricity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemElectricity Game.ElectricElement::'<SubsystemElectricity>k__BackingField'
    IL_0006:  ret
  } // end of method ElectricElement::get_SubsystemElectricity

  .method private hidebysig specialname instance void 
          set_SubsystemElectricity(class Game.SubsystemElectricity 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemElectricity Game.ElectricElement::'<SubsystemElectricity>k__BackingField'
    IL_0007:  ret
  } // end of method ElectricElement::set_SubsystemElectricity

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> 
          get_CellFaces() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::'<CellFaces>k__BackingField'
    IL_0006:  ret
  } // end of method ElectricElement::get_CellFaces

  .method private hidebysig specialname instance void 
          set_CellFaces(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::'<CellFaces>k__BackingField'
    IL_0007:  ret
  } // end of method ElectricElement::set_CellFaces

  .method public hidebysig specialname instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> 
          get_Connections() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::'<Connections>k__BackingField'
    IL_0006:  ret
  } // end of method ElectricElement::get_Connections

  .method private hidebysig specialname instance void 
          set_Connections(class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::'<Connections>k__BackingField'
    IL_0007:  ret
  } // end of method ElectricElement::set_Connections

  .method public hidebysig newslot virtual 
          instance float32  GetOutputVoltage(int32 face) cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.r4     0.0
    IL_0005:  ret
  } // end of method ElectricElement::GetOutputVoltage

  .method public hidebysig newslot virtual 
          instance bool  Simulate() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ElectricElement::Simulate

  .method public hidebysig newslot virtual 
          instance void  OnAdded() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnAdded

  .method public hidebysig newslot virtual 
          instance void  OnRemoved() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnRemoved

  .method public hidebysig newslot virtual 
          instance void  OnNeighborBlockChanged(valuetype Game.CellFace cellFace,
                                                int32 neighborX,
                                                int32 neighborY,
                                                int32 neighborZ) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnNeighborBlockChanged

  .method public hidebysig newslot virtual 
          instance bool  OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                                    class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ElectricElement::OnInteract

  .method public hidebysig newslot virtual 
          instance void  OnCollide(valuetype Game.CellFace cellFace,
                                   float32 velocity,
                                   class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnCollide

  .method public hidebysig newslot virtual 
          instance void  OnHitByProjectile(valuetype Game.CellFace cellFace,
                                           class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnHitByProjectile

  .method public hidebysig newslot virtual 
          instance void  OnConnectionsChanged() cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ElectricElement::OnConnectionsChanged

  .method public hidebysig static bool  IsSignalHigh(float32 voltage) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.5
    IL_0006:  clt.un
    IL_0008:  ldc.i4.0
    IL_0009:  ceq
    IL_000b:  ret
  } // end of method ElectricElement::IsSignalHigh

  .method family hidebysig instance int32 
          CalculateHighInputsCount() cil managed
  {
    // 代码大小       96 (0x60)
    .maxstack  2
    .locals init (int32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_1,
             class Game.ElectricConnection V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_0008:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_000d:  stloc.1
    .try
    {
      IL_000e:  br.s       IL_0045

      IL_0010:  ldloca.s   V_1
      IL_0012:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_0017:  stloc.2
      IL_0018:  ldloc.2
      IL_0019:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_001e:  ldc.i4.1
      IL_001f:  beq.s      IL_0045

      IL_0021:  ldloc.2
      IL_0022:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_0027:  brfalse.s  IL_0045

      IL_0029:  ldloc.2
      IL_002a:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_002f:  ldloc.2
      IL_0030:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_0035:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_003a:  call       bool Game.ElectricElement::IsSignalHigh(float32)
      IL_003f:  brfalse.s  IL_0045

      IL_0041:  ldloc.0
      IL_0042:  ldc.i4.1
      IL_0043:  add
      IL_0044:  stloc.0
      IL_0045:  ldloca.s   V_1
      IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_004c:  brtrue.s   IL_0010

      IL_004e:  leave.s    IL_005e

    }  // end .try
    finally
    {
      IL_0050:  ldloca.s   V_1
      IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005d:  endfinally
    }  // end handler
    IL_005e:  ldloc.0
    IL_005f:  ret
  } // end of method ElectricElement::CalculateHighInputsCount

  .property instance class Game.SubsystemElectricity
          SubsystemElectricity()
  {
    .get instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    .set instance void Game.ElectricElement::set_SubsystemElectricity(class Game.SubsystemElectricity)
  } // end of property ElectricElement::SubsystemElectricity
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>
          CellFaces()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    .set instance void Game.ElectricElement::set_CellFaces(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>)
  } // end of property ElectricElement::CellFaces
  .property instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>
          Connections()
  {
    .get instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    .set instance void Game.ElectricElement::set_Connections(class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>)
  } // end of property ElectricElement::Connections
} // end of class Game.ElectricElement