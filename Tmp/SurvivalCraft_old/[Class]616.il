.class public auto ansi beforefieldinit Game.SubsystemGrassTrapBlockBehavior
       extends Game.SubsystemBlockBehavior
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit TrapValue
         extends [System.Runtime]System.Object
  {
    .field public float32 Damage
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method TrapValue::.ctor

  } // end of class TrapValue

  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> m_trapValues
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> m_toRemove
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   87
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemGrassTrapBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       98 (0x62)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             class Game.SubsystemGrassTrapBlockBehavior/TrapValue V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      int32 Game.CellFace::Face
    IL_0006:  ldc.i4.4
    IL_0007:  bne.un.s   IL_0061

    IL_0009:  ldarg.3
    IL_000a:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_000f:  ldc.r4     20.
    IL_0014:  ble.un.s   IL_0061

    IL_0016:  ldloca.s   V_0
    IL_0018:  ldarg.1
    IL_0019:  ldfld      int32 Game.CellFace::X
    IL_001e:  ldarg.1
    IL_001f:  ldfld      int32 Game.CellFace::Y
    IL_0024:  ldarg.1
    IL_0025:  ldfld      int32 Game.CellFace::Z
    IL_002a:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> Game.SubsystemGrassTrapBlockBehavior::m_trapValues
    IL_0035:  ldloc.0
    IL_0036:  ldloca.s   V_1
    IL_0038:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::TryGetValue(!0,
                                                                                                                                                                                                            !1&)
    IL_003d:  brtrue.s   IL_0052

    IL_003f:  newobj     instance void Game.SubsystemGrassTrapBlockBehavior/TrapValue::.ctor()
    IL_0044:  stloc.1
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> Game.SubsystemGrassTrapBlockBehavior::m_trapValues
    IL_004b:  ldloc.0
    IL_004c:  ldloc.1
    IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::Add(!0,
                                                                                                                                                                                                    !1)
    IL_0052:  ldloc.1
    IL_0053:  dup
    IL_0054:  ldfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
    IL_0059:  ldarg.2
    IL_005a:  neg
    IL_005b:  add
    IL_005c:  stfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
    IL_0061:  ret
  } // end of method SubsystemGrassTrapBlockBehavior::OnCollide

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemGrassTrapBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       399 (0x18f)
    .maxstack  8
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> V_1,
             int32 V_2,
             int32 V_3,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_4,
             valuetype [Engine]Engine.Point3 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> Game.SubsystemGrassTrapBlockBehavior::m_trapValues
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br         IL_0128

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Current()
      IL_0018:  stloc.1
      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Value()
      IL_0020:  ldfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
      IL_0025:  ldc.r4     1.
      IL_002a:  ble.un     IL_00e9

      IL_002f:  ldc.i4.m1
      IL_0030:  stloc.2
      IL_0031:  br         IL_00cf

      IL_0036:  ldc.i4.m1
      IL_0037:  stloc.3
      IL_0038:  br         IL_00c4

      IL_003d:  ldloc.2
      IL_003e:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
      IL_0043:  ldloc.3
      IL_0044:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
      IL_0049:  add
      IL_004a:  ldc.i4.1
      IL_004b:  bgt.s      IL_00c0

      IL_004d:  ldarg.0
      IL_004e:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0053:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
      IL_0058:  ldloca.s   V_1
      IL_005a:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_005f:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0064:  ldloc.2
      IL_0065:  add
      IL_0066:  ldloca.s   V_1
      IL_0068:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_006d:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0072:  ldloca.s   V_1
      IL_0074:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_0079:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_007e:  ldloc.3
      IL_007f:  add
      IL_0080:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                        int32,
                                                                        int32)
      IL_0085:  ldc.i4.s   87
      IL_0087:  bne.un.s   IL_00c0

      IL_0089:  ldarg.0
      IL_008a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_008f:  ldc.i4.0
      IL_0090:  ldloca.s   V_1
      IL_0092:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_0097:  ldfld      int32 [Engine]Engine.Point3::X
      IL_009c:  ldloc.2
      IL_009d:  add
      IL_009e:  ldloca.s   V_1
      IL_00a0:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_00a5:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00aa:  ldloca.s   V_1
      IL_00ac:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_00b1:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00b6:  ldloc.3
      IL_00b7:  add
      IL_00b8:  ldc.i4.0
      IL_00b9:  ldc.i4.0
      IL_00ba:  ldc.i4.0
      IL_00bb:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            bool,
                                                                            bool)
      IL_00c0:  ldloc.3
      IL_00c1:  ldc.i4.1
      IL_00c2:  add
      IL_00c3:  stloc.3
      IL_00c4:  ldloc.3
      IL_00c5:  ldc.i4.1
      IL_00c6:  ble        IL_003d

      IL_00cb:  ldloc.2
      IL_00cc:  ldc.i4.1
      IL_00cd:  add
      IL_00ce:  stloc.2
      IL_00cf:  ldloc.2
      IL_00d0:  ldc.i4.1
      IL_00d1:  ble        IL_0036

      IL_00d6:  ldloca.s   V_1
      IL_00d8:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Value()
      IL_00dd:  ldc.r4     0.0
      IL_00e2:  stfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
      IL_00e7:  br.s       IL_0103

      IL_00e9:  ldloca.s   V_1
      IL_00eb:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Value()
      IL_00f0:  dup
      IL_00f1:  ldfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
      IL_00f6:  ldc.r4     0.5
      IL_00fb:  ldarg.1
      IL_00fc:  mul
      IL_00fd:  sub
      IL_00fe:  stfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
      IL_0103:  ldloca.s   V_1
      IL_0105:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Value()
      IL_010a:  ldfld      float32 Game.SubsystemGrassTrapBlockBehavior/TrapValue::Damage
      IL_010f:  ldc.r4     0.0
      IL_0114:  bgt.un.s   IL_0128

      IL_0116:  ldarg.0
      IL_0117:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemGrassTrapBlockBehavior::m_toRemove
      IL_011c:  ldloca.s   V_1
      IL_011e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::get_Key()
      IL_0123:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_0128:  ldloca.s   V_0
      IL_012a:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::MoveNext()
      IL_012f:  brtrue     IL_0011

      IL_0134:  leave.s    IL_0144

    }  // end .try
    finally
    {
      IL_0136:  ldloca.s   V_0
      IL_0138:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>
      IL_013e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0143:  endfinally
    }  // end handler
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemGrassTrapBlockBehavior::m_toRemove
    IL_014a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_014f:  stloc.s    V_4
    .try
    {
      IL_0151:  br.s       IL_016a

      IL_0153:  ldloca.s   V_4
      IL_0155:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_015a:  stloc.s    V_5
      IL_015c:  ldarg.0
      IL_015d:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> Game.SubsystemGrassTrapBlockBehavior::m_trapValues
      IL_0162:  ldloc.s    V_5
      IL_0164:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::Remove(!0)
      IL_0169:  pop
      IL_016a:  ldloca.s   V_4
      IL_016c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_0171:  brtrue.s   IL_0153

      IL_0173:  leave.s    IL_0183

    }  // end .try
    finally
    {
      IL_0175:  ldloca.s   V_4
      IL_0177:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_017d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0182:  endfinally
    }  // end handler
    IL_0183:  ldarg.0
    IL_0184:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemGrassTrapBlockBehavior::m_toRemove
    IL_0189:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Clear()
    IL_018e:  ret
  } // end of method SubsystemGrassTrapBlockBehavior::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class Game.SubsystemGrassTrapBlockBehavior/TrapValue> Game.SubsystemGrassTrapBlockBehavior::m_trapValues
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> Game.SubsystemGrassTrapBlockBehavior::m_toRemove
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemGrassTrapBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemGrassTrapBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemGrassTrapBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemGrassTrapBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemGrassTrapBlockBehavior::UpdateOrder
} // end of class Game.SubsystemGrassTrapBlockBehavior