.class public auto ansi beforefieldinit Game.ComponentFrame
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [Engine]Engine.Quaternion m_rotation
  .field private bool m_cachedMatrixValid
  .field private valuetype [Engine]Engine.Matrix m_cachedMatrix
  .field private class [System.Runtime]System.Action`1<class Game.ComponentFrame> PositionChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [System.Runtime]System.Action`1<class Game.ComponentFrame> RotationChanged
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance void 
          add_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::PositionChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentFrame>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::PositionChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentFrame>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentFrame::add_PositionChanged

  .method public hidebysig specialname instance void 
          remove_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::PositionChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentFrame>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::PositionChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentFrame>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentFrame::remove_PositionChanged

  .method public hidebysig specialname instance void 
          add_RotationChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::RotationChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate,
                                                                                                        class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentFrame>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::RotationChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentFrame>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentFrame::add_RotationChanged

  .method public hidebysig specialname instance void 
          remove_RotationChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_0,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_1,
             class [System.Runtime]System.Action`1<class Game.ComponentFrame> V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::RotationChanged
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate,
                                                                                                       class [System.Runtime]System.Delegate)
    IL_0010:  castclass  class [System.Runtime]System.Action`1<class Game.ComponentFrame>
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::RotationChanged
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class [System.Runtime]System.Action`1<class Game.ComponentFrame>>(!!0&,
                                                                                                                                                               !!0,
                                                                                                                                                               !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method ComponentFrame::remove_RotationChanged

  .method public hidebysig specialname instance valuetype [Engine]Engine.Vector3 
          get_Position() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFrame::m_position
    IL_0006:  ret
  } // end of method ComponentFrame::get_Position

  .method public hidebysig specialname instance void 
          set_Position(valuetype [Engine]Engine.Vector3 'value') cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype [Engine]Engine.Vector3 Game.ComponentFrame::m_position
    IL_0007:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_000c:  brfalse.s  IL_002d

    IL_000e:  ldarg.0
    IL_000f:  ldc.i4.0
    IL_0010:  stfld      bool Game.ComponentFrame::m_cachedMatrixValid
    IL_0015:  ldarg.0
    IL_0016:  ldarg.1
    IL_0017:  stfld      valuetype [Engine]Engine.Vector3 Game.ComponentFrame::m_position
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::PositionChanged
    IL_0022:  dup
    IL_0023:  brtrue.s   IL_0027

    IL_0025:  pop
    IL_0026:  ret

    IL_0027:  ldarg.0
    IL_0028:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::Invoke(!0)
    IL_002d:  ret
  } // end of method ComponentFrame::set_Position

  .method public hidebysig specialname instance valuetype [Engine]Engine.Quaternion 
          get_Rotation() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Quaternion Game.ComponentFrame::m_rotation
    IL_0006:  ret
  } // end of method ComponentFrame::get_Rotation

  .method public hidebysig specialname instance void 
          set_Rotation(valuetype [Engine]Engine.Quaternion 'value') cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::Normalize(valuetype [Engine]Engine.Quaternion)
    IL_0006:  starg.s    'value'
    IL_0008:  ldarg.1
    IL_0009:  ldarg.0
    IL_000a:  ldfld      valuetype [Engine]Engine.Quaternion Game.ComponentFrame::m_rotation
    IL_000f:  call       bool [Engine]Engine.Quaternion::op_Inequality(valuetype [Engine]Engine.Quaternion,
                                                                       valuetype [Engine]Engine.Quaternion)
    IL_0014:  brfalse.s  IL_0035

    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.0
    IL_0018:  stfld      bool Game.ComponentFrame::m_cachedMatrixValid
    IL_001d:  ldarg.0
    IL_001e:  ldarg.1
    IL_001f:  stfld      valuetype [Engine]Engine.Quaternion Game.ComponentFrame::m_rotation
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class [System.Runtime]System.Action`1<class Game.ComponentFrame> Game.ComponentFrame::RotationChanged
    IL_002a:  dup
    IL_002b:  brtrue.s   IL_002f

    IL_002d:  pop
    IL_002e:  ret

    IL_002f:  ldarg.0
    IL_0030:  callvirt   instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::Invoke(!0)
    IL_0035:  ret
  } // end of method ComponentFrame::set_Rotation

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix 
          get_Matrix() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentFrame::m_cachedMatrixValid
    IL_0006:  brtrue.s   IL_002a

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_000f:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0014:  stfld      valuetype [Engine]Engine.Matrix Game.ComponentFrame::m_cachedMatrix
    IL_0019:  ldarg.0
    IL_001a:  ldflda     valuetype [Engine]Engine.Matrix Game.ComponentFrame::m_cachedMatrix
    IL_001f:  ldarg.0
    IL_0020:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0025:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_002a:  ldarg.0
    IL_002b:  ldfld      valuetype [Engine]Engine.Matrix Game.ComponentFrame::m_cachedMatrix
    IL_0030:  ret
  } // end of method ComponentFrame::get_Matrix

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldstr      "Position"
    IL_0007:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Vector3>(string)
    IL_000c:  call       instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0011:  ldarg.0
    IL_0012:  ldarg.1
    IL_0013:  ldstr      "Rotation"
    IL_0018:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<valuetype [Engine]Engine.Quaternion>(string)
    IL_001d:  call       instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0022:  ret
  } // end of method ComponentFrame::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Position"
    IL_0006:  ldarg.0
    IL_0007:  call       instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Vector3>(string,
                                                                                                                                    !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "Rotation"
    IL_0017:  ldarg.0
    IL_0018:  call       instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<valuetype [Engine]Engine.Quaternion>(string,
                                                                                                                                       !!0)
    IL_0022:  ret
  } // end of method ComponentFrame::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentFrame::.ctor

  .event class [System.Runtime]System.Action`1<class Game.ComponentFrame> PositionChanged
  {
    .addon instance void Game.ComponentFrame::add_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    .removeon instance void Game.ComponentFrame::remove_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
  } // end of event ComponentFrame::PositionChanged
  .event class [System.Runtime]System.Action`1<class Game.ComponentFrame> RotationChanged
  {
    .addon instance void Game.ComponentFrame::add_RotationChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    .removeon instance void Game.ComponentFrame::remove_RotationChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
  } // end of event ComponentFrame::RotationChanged
  .property instance valuetype [Engine]Engine.Vector3
          Position()
  {
    .get instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    .set instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
  } // end of property ComponentFrame::Position
  .property instance valuetype [Engine]Engine.Quaternion
          Rotation()
  {
    .get instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    .set instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
  } // end of property ComponentFrame::Rotation
  .property instance valuetype [Engine]Engine.Matrix
          Matrix()
  {
    .get instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
  } // end of property ComponentFrame::Matrix
} // end of class Game.ComponentFrame