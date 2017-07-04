.class public auto ansi beforefieldinit Game.PistonElectricElement
       extends Game.ElectricElement
{
  .field private int32 m_lastLength
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemElectricity subsystemElectricity,
                               valuetype [Engine]Engine.Point3 point) cil managed
  {
    // 代码大小       200 (0xc8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.m1
    IL_0002:  stfld      int32 Game.PistonElectricElement::m_lastLength
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::.ctor()
    IL_000e:  dup
    IL_000f:  ldarg.2
    IL_0010:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0015:  ldarg.2
    IL_0016:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_001b:  ldarg.2
    IL_001c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0021:  ldc.i4.0
    IL_0022:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0027:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_002c:  dup
    IL_002d:  ldarg.2
    IL_002e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0033:  ldarg.2
    IL_0034:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0039:  ldarg.2
    IL_003a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_003f:  ldc.i4.1
    IL_0040:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0045:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_004a:  dup
    IL_004b:  ldarg.2
    IL_004c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0051:  ldarg.2
    IL_0052:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0057:  ldarg.2
    IL_0058:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_005d:  ldc.i4.2
    IL_005e:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0063:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_0068:  dup
    IL_0069:  ldarg.2
    IL_006a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_006f:  ldarg.2
    IL_0070:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0075:  ldarg.2
    IL_0076:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_007b:  ldc.i4.3
    IL_007c:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_0081:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_0086:  dup
    IL_0087:  ldarg.2
    IL_0088:  ldfld      int32 [Engine]Engine.Point3::X
    IL_008d:  ldarg.2
    IL_008e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0093:  ldarg.2
    IL_0094:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0099:  ldc.i4.4
    IL_009a:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_009f:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_00a4:  dup
    IL_00a5:  ldarg.2
    IL_00a6:  ldfld      int32 [Engine]Engine.Point3::X
    IL_00ab:  ldarg.2
    IL_00ac:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_00b1:  ldarg.2
    IL_00b2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_00b7:  ldc.i4.5
    IL_00b8:  newobj     instance void Game.CellFace::.ctor(int32,
                                                            int32,
                                                            int32,
                                                            int32)
    IL_00bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.CellFace>::Add(!0)
    IL_00c2:  call       instance void Game.ElectricElement::.ctor(class Game.SubsystemElectricity,
                                                                   class [System.Runtime]System.Collections.Generic.IEnumerable`1<valuetype Game.CellFace>)
    IL_00c7:  ret
  } // end of method PistonElectricElement::.ctor

  .method public hidebysig virtual instance bool 
          Simulate() cil managed
  {
    // 代码大小       177 (0xb1)
    .maxstack  3
    .locals init (float32 V_0,
             int32 V_1,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection> V_2,
             class Game.ElectricConnection V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> V_4,
             valuetype Game.CellFace V_5)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection> Game.ElectricElement::get_Connections()
    IL_000c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ElectricConnection>::GetEnumerator()
    IL_0011:  stloc.2
    .try
    {
      IL_0012:  br.s       IL_0045

      IL_0014:  ldloca.s   V_2
      IL_0016:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::get_Current()
      IL_001b:  stloc.3
      IL_001c:  ldloc.3
      IL_001d:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::ConnectorType
      IL_0022:  ldc.i4.1
      IL_0023:  beq.s      IL_0045

      IL_0025:  ldloc.3
      IL_0026:  ldfld      valuetype Game.ElectricConnectorType Game.ElectricConnection::NeighborConnectorType
      IL_002b:  brfalse.s  IL_0045

      IL_002d:  ldloc.0
      IL_002e:  ldloc.3
      IL_002f:  ldfld      class Game.ElectricElement Game.ElectricConnection::NeighborElectricElement
      IL_0034:  ldloc.3
      IL_0035:  ldfld      int32 Game.ElectricConnection::NeighborConnectorFace
      IL_003a:  callvirt   instance float32 Game.ElectricElement::GetOutputVoltage(int32)
      IL_003f:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                                 float32)
      IL_0044:  stloc.0
      IL_0045:  ldloca.s   V_2
      IL_0047:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>::MoveNext()
      IL_004c:  brtrue.s   IL_0014

      IL_004e:  leave.s    IL_005e

    }  // end .try
    finally
    {
      IL_0050:  ldloca.s   V_2
      IL_0052:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ElectricConnection>
      IL_0058:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_005d:  endfinally
    }  // end handler
    IL_005e:  ldloc.0
    IL_005f:  ldc.r4     15.999
    IL_0064:  mul
    IL_0065:  conv.i4
    IL_0066:  ldc.i4.7
    IL_0067:  sub
    IL_0068:  ldc.i4.0
    IL_0069:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_006e:  stloc.1
    IL_006f:  ldloc.1
    IL_0070:  ldarg.0
    IL_0071:  ldfld      int32 Game.PistonElectricElement::m_lastLength
    IL_0076:  beq.s      IL_00af

    IL_0078:  ldarg.0
    IL_0079:  ldloc.1
    IL_007a:  stfld      int32 Game.PistonElectricElement::m_lastLength
    IL_007f:  ldarg.0
    IL_0080:  call       instance class Game.SubsystemElectricity Game.ElectricElement::get_SubsystemElectricity()
    IL_0085:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_008a:  ldc.i4.1
    IL_008b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPistonBlockBehavior>(bool)
    IL_0090:  ldarg.0
    IL_0091:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace> Game.ElectricElement::get_CellFaces()
    IL_0096:  stloc.s    V_4
    IL_0098:  ldloca.s   V_4
    IL_009a:  ldc.i4.0
    IL_009b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.CellFace>::get_Item(int32)
    IL_00a0:  stloc.s    V_5
    IL_00a2:  ldloca.s   V_5
    IL_00a4:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00a9:  ldloc.1
    IL_00aa:  callvirt   instance void Game.SubsystemPistonBlockBehavior::AdjustPiston(valuetype [Engine]Engine.Point3,
                                                                                       int32)
    IL_00af:  ldc.i4.0
    IL_00b0:  ret
  } // end of method PistonElectricElement::Simulate

} // end of class Game.PistonElectricElement