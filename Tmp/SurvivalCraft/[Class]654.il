.class public auto ansi beforefieldinit Game.SubsystemBodies
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .field private static literal float32 m_areaSize = float32(8.)
  .field private class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> m_componentBodies
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> m_areaByComponentBody
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> m_componentBodiesByArea
  .method public hidebysig specialname instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2> 
          get_Bodies() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0006:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Keys()
    IL_000b:  ret
  } // end of method SubsystemBodies::get_Bodies

  .method public hidebysig instance void 
          FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2 point,
                                float32 radius,
                                class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> result) cil managed
  {
    // 代码大小       172 (0xac)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_5,
             int32 V_6)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0006:  ldarg.2
    IL_0007:  sub
    IL_0008:  ldc.r4     8.
    IL_000d:  div
    IL_000e:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0013:  conv.i4
    IL_0014:  ldarg.1
    IL_0015:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_001a:  ldarg.2
    IL_001b:  sub
    IL_001c:  ldc.r4     8.
    IL_0021:  div
    IL_0022:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0027:  conv.i4
    IL_0028:  stloc.0
    IL_0029:  ldarg.1
    IL_002a:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_002f:  ldarg.2
    IL_0030:  add
    IL_0031:  ldc.r4     8.
    IL_0036:  div
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_003c:  conv.i4
    IL_003d:  stloc.1
    IL_003e:  ldarg.1
    IL_003f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0044:  ldarg.2
    IL_0045:  add
    IL_0046:  ldc.r4     8.
    IL_004b:  div
    IL_004c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0051:  conv.i4
    IL_0052:  stloc.2
    IL_0053:  stloc.3
    IL_0054:  br.s       IL_00a7

    IL_0056:  ldloc.0
    IL_0057:  stloc.s    V_4
    IL_0059:  br.s       IL_009e

    IL_005b:  ldarg.0
    IL_005c:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_0061:  ldloc.3
    IL_0062:  ldloc.s    V_4
    IL_0064:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0069:  ldloca.s   V_5
    IL_006b:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::TryGetValue(!0,
                                                                                                                                                                                                                     !1&)
    IL_0070:  brfalse.s  IL_0098

    IL_0072:  ldc.i4.0
    IL_0073:  stloc.s    V_6
    IL_0075:  br.s       IL_008d

    IL_0077:  ldarg.3
    IL_0078:  ldloc.s    V_5
    IL_007a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_007f:  ldloc.s    V_6
    IL_0081:  ldelem.ref
    IL_0082:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Add(!0)
    IL_0087:  ldloc.s    V_6
    IL_0089:  ldc.i4.1
    IL_008a:  add
    IL_008b:  stloc.s    V_6
    IL_008d:  ldloc.s    V_6
    IL_008f:  ldloc.s    V_5
    IL_0091:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_0096:  blt.s      IL_0077

    IL_0098:  ldloc.s    V_4
    IL_009a:  ldc.i4.1
    IL_009b:  add
    IL_009c:  stloc.s    V_4
    IL_009e:  ldloc.s    V_4
    IL_00a0:  ldloc.2
    IL_00a1:  ble.s      IL_005b

    IL_00a3:  ldloc.3
    IL_00a4:  ldc.i4.1
    IL_00a5:  add
    IL_00a6:  stloc.3
    IL_00a7:  ldloc.3
    IL_00a8:  ldloc.1
    IL_00a9:  ble.s      IL_0056

    IL_00ab:  ret
  } // end of method SubsystemBodies::FindBodiesAroundPoint

  .method public hidebysig instance void 
          FindBodiesInArea(valuetype [Engine]Engine.Vector2 corner1,
                           valuetype [Engine]Engine.Vector2 corner2,
                           class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> result) cil managed
  {
    // 代码大小       260 (0x104)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Point2 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_7,
             int32 V_8)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0006:  ldc.r4     8.
    IL_000b:  div
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0011:  conv.i4
    IL_0012:  ldarg.1
    IL_0013:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0018:  ldc.r4     8.
    IL_001d:  div
    IL_001e:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_0023:  conv.i4
    IL_0024:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0029:  ldloca.s   V_0
    IL_002b:  ldarg.2
    IL_002c:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0031:  ldc.r4     8.
    IL_0036:  div
    IL_0037:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_003c:  conv.i4
    IL_003d:  ldarg.2
    IL_003e:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0043:  ldc.r4     8.
    IL_0048:  div
    IL_0049:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_004e:  conv.i4
    IL_004f:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0054:  dup
    IL_0055:  ldfld      int32 [Engine]Engine.Point2::X
    IL_005a:  ldloc.0
    IL_005b:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0060:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0065:  ldc.i4.1
    IL_0066:  sub
    IL_0067:  stloc.1
    IL_0068:  dup
    IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_006e:  ldloc.0
    IL_006f:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0074:  call       int32 [Engine]Engine.MathUtils::Min(int32,
                                                             int32)
    IL_0079:  ldc.i4.1
    IL_007a:  sub
    IL_007b:  stloc.2
    IL_007c:  dup
    IL_007d:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0082:  ldloc.0
    IL_0083:  ldfld      int32 [Engine]Engine.Point2::X
    IL_0088:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008d:  ldc.i4.1
    IL_008e:  add
    IL_008f:  stloc.3
    IL_0090:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_0095:  ldloc.0
    IL_0096:  ldfld      int32 [Engine]Engine.Point2::Y
    IL_009b:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_00a0:  ldc.i4.1
    IL_00a1:  add
    IL_00a2:  stloc.s    V_4
    IL_00a4:  ldloc.1
    IL_00a5:  stloc.s    V_5
    IL_00a7:  br.s       IL_00fe

    IL_00a9:  ldloc.2
    IL_00aa:  stloc.s    V_6
    IL_00ac:  br.s       IL_00f2

    IL_00ae:  ldarg.0
    IL_00af:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_00b4:  ldloc.s    V_5
    IL_00b6:  ldloc.s    V_6
    IL_00b8:  newobj     instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_00bd:  ldloca.s   V_7
    IL_00bf:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::TryGetValue(!0,
                                                                                                                                                                                                                     !1&)
    IL_00c4:  brfalse.s  IL_00ec

    IL_00c6:  ldc.i4.0
    IL_00c7:  stloc.s    V_8
    IL_00c9:  br.s       IL_00e1

    IL_00cb:  ldarg.3
    IL_00cc:  ldloc.s    V_7
    IL_00ce:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_00d3:  ldloc.s    V_8
    IL_00d5:  ldelem.ref
    IL_00d6:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Add(!0)
    IL_00db:  ldloc.s    V_8
    IL_00dd:  ldc.i4.1
    IL_00de:  add
    IL_00df:  stloc.s    V_8
    IL_00e1:  ldloc.s    V_8
    IL_00e3:  ldloc.s    V_7
    IL_00e5:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_00ea:  blt.s      IL_00cb

    IL_00ec:  ldloc.s    V_6
    IL_00ee:  ldc.i4.1
    IL_00ef:  add
    IL_00f0:  stloc.s    V_6
    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldloc.s    V_4
    IL_00f6:  ble.s      IL_00ae

    IL_00f8:  ldloc.s    V_5
    IL_00fa:  ldc.i4.1
    IL_00fb:  add
    IL_00fc:  stloc.s    V_5
    IL_00fe:  ldloc.s    V_5
    IL_0100:  ldloc.3
    IL_0101:  ble.s      IL_00a9

    IL_0103:  ret
  } // end of method SubsystemBodies::FindBodiesInArea

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> 
          Raycast(valuetype [Engine]Engine.Vector3 start,
                  valuetype [Engine]Engine.Vector3 end,
                  float32 inflateAmount,
                  class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool> action) cil managed
  {
    // 代码大小       384 (0x180)
    .maxstack  4
    .locals init (valuetype Game.BodyRaycastResult V_0,
             float32 V_1,
             valuetype [Engine]Engine.Ray V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             valuetype Game.BodyRaycastResult V_5,
             int32 V_6,
             class Game.ComponentBody V_7,
             valuetype [System.Runtime]System.Nullable`1<float32> V_8,
             valuetype [Engine]Engine.BoundingBox V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult> V_10)
    IL_0000:  ldloca.s   V_5
    IL_0002:  initobj    Game.BodyRaycastResult
    IL_0008:  ldloca.s   V_5
    IL_000a:  ldc.r4     3.4028235e+038
    IL_000f:  stfld      float32 Game.BodyRaycastResult::Distance
    IL_0014:  ldloc.s    V_5
    IL_0016:  stloc.0
    IL_0017:  ldarg.1
    IL_0018:  ldarg.2
    IL_0019:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_001e:  stloc.1
    IL_001f:  ldloca.s   V_2
    IL_0021:  ldarg.1
    IL_0022:  ldloc.1
    IL_0023:  ldc.r4     0.0
    IL_0028:  bgt.s      IL_0031

    IL_002a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitX
    IL_002f:  br.s       IL_003e

    IL_0031:  ldarg.2
    IL_0032:  ldarg.1
    IL_0033:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0038:  ldloc.1
    IL_0039:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_003e:  call       instance void [Engine]Engine.Ray::.ctor(valuetype [Engine]Engine.Vector3,
                                                                 valuetype [Engine]Engine.Vector3)
    IL_0043:  ldloca.s   V_3
    IL_0045:  ldarg.1
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_004b:  ldarg.1
    IL_004c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0051:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0056:  ldloca.s   V_4
    IL_0058:  ldarg.2
    IL_0059:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_005e:  ldarg.2
    IL_005f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0064:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0069:  ldarg.0
    IL_006a:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemBodies::m_componentBodies
    IL_006f:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Clear()
    IL_0074:  ldarg.0
    IL_0075:  ldloc.3
    IL_0076:  ldloc.s    V_4
    IL_0078:  ldarg.0
    IL_0079:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemBodies::m_componentBodies
    IL_007e:  call       instance void Game.SubsystemBodies::FindBodiesInArea(valuetype [Engine]Engine.Vector2,
                                                                              valuetype [Engine]Engine.Vector2,
                                                                              class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0083:  ldc.i4.0
    IL_0084:  stloc.s    V_6
    IL_0086:  br         IL_0154

    IL_008b:  ldarg.0
    IL_008c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemBodies::m_componentBodies
    IL_0091:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Array()
    IL_0096:  ldloc.s    V_6
    IL_0098:  ldelem.ref
    IL_0099:  stloc.s    V_7
    IL_009b:  ldarg.3
    IL_009c:  ldc.r4     0.0
    IL_00a1:  ble.un.s   IL_00f3

    IL_00a3:  ldloc.s    V_7
    IL_00a5:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_00aa:  stloc.s    V_9
    IL_00ac:  ldloca.s   V_9
    IL_00ae:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_00b3:  dup
    IL_00b4:  ldobj      [Engine]Engine.Vector3
    IL_00b9:  ldarg.3
    IL_00ba:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00bf:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c4:  stobj      [Engine]Engine.Vector3
    IL_00c9:  ldloca.s   V_9
    IL_00cb:  ldflda     valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_00d0:  dup
    IL_00d1:  ldobj      [Engine]Engine.Vector3
    IL_00d6:  ldarg.3
    IL_00d7:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_00dc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e1:  stobj      [Engine]Engine.Vector3
    IL_00e6:  ldloca.s   V_2
    IL_00e8:  ldloc.s    V_9
    IL_00ea:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_00ef:  stloc.s    V_8
    IL_00f1:  br.s       IL_0103

    IL_00f3:  ldloca.s   V_2
    IL_00f5:  ldloc.s    V_7
    IL_00f7:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_00fc:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> [Engine]Engine.Ray::Intersection(valuetype [Engine]Engine.BoundingBox)
    IL_0101:  stloc.s    V_8
    IL_0103:  ldloca.s   V_8
    IL_0105:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_010a:  brfalse.s  IL_014e

    IL_010c:  ldloca.s   V_8
    IL_010e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0113:  ldloc.1
    IL_0114:  bgt.un.s   IL_014e

    IL_0116:  ldloca.s   V_8
    IL_0118:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_011d:  ldloc.0
    IL_011e:  ldfld      float32 Game.BodyRaycastResult::Distance
    IL_0123:  bge.un.s   IL_014e

    IL_0125:  ldarg.s    action
    IL_0127:  ldloc.s    V_7
    IL_0129:  ldloca.s   V_8
    IL_012b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0130:  callvirt   instance !2 class [System.Runtime]System.Func`3<class Game.ComponentBody,float32,bool>::Invoke(!0,
                                                                                                                        !1)
    IL_0135:  brfalse.s  IL_014e

    IL_0137:  ldloca.s   V_0
    IL_0139:  ldloca.s   V_8
    IL_013b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_0140:  stfld      float32 Game.BodyRaycastResult::Distance
    IL_0145:  ldloca.s   V_0
    IL_0147:  ldloc.s    V_7
    IL_0149:  stfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_014e:  ldloc.s    V_6
    IL_0150:  ldc.i4.1
    IL_0151:  add
    IL_0152:  stloc.s    V_6
    IL_0154:  ldloc.s    V_6
    IL_0156:  ldarg.0
    IL_0157:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemBodies::m_componentBodies
    IL_015c:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::get_Count()
    IL_0161:  blt        IL_008b

    IL_0166:  ldloc.0
    IL_0167:  ldfld      class Game.ComponentBody Game.BodyRaycastResult::ComponentBody
    IL_016c:  brtrue.s   IL_0179

    IL_016e:  ldloca.s   V_10
    IL_0170:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>
    IL_0176:  ldloc.s    V_10
    IL_0178:  ret

    IL_0179:  ldloc.0
    IL_017a:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype Game.BodyRaycastResult>::.ctor(!0)
    IL_017f:  ret
  } // end of method SubsystemBodies::Raycast

  .method family hidebysig virtual instance void 
          OnEntityAdded(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBody> V_1,
             class Game.ComponentBody V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentBody>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBody>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemBodies::AddBody(class Game.ComponentBody)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemBodies::OnEntityAdded

  .method family hidebysig virtual instance void 
          OnEntityRemoved(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  2
    .locals init (valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody> V_0,
             valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBody> V_1,
             class Game.ComponentBody V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<!!0> [EntitySystem]GameEntitySystem.Entity::FindComponents<class Game.ComponentBody>()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<!0> valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerable`1<class Game.ComponentBody>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0020

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>::get_Current()
      IL_0018:  stloc.2
      IL_0019:  ldarg.0
      IL_001a:  ldloc.2
      IL_001b:  call       instance void Game.SubsystemBodies::RemoveBody(class Game.ComponentBody)
      IL_0020:  ldloca.s   V_0
      IL_0022:  call       instance bool valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>::MoveNext()
      IL_0027:  brtrue.s   IL_0011

      IL_0029:  leave.s    IL_0039

    }  // end .try
    finally
    {
      IL_002b:  ldloca.s   V_0
      IL_002d:  constrained. valuetype [EntitySystem]GameEntitySystem.Entity/FilteredComponentsEnumerator`1<class Game.ComponentBody>
      IL_0033:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0038:  endfinally
    }  // end handler
    IL_0039:  ret
  } // end of method SubsystemBodies::OnEntityRemoved

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemBodies::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       55 (0x37)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2> V_0,
             class Game.ComponentBody V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::get_Bodies()
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001d

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Current()
      IL_0015:  stloc.1
      IL_0016:  ldarg.0
      IL_0017:  ldloc.1
      IL_0018:  call       instance void Game.SubsystemBodies::UpdateBody(class Game.ComponentBody)
      IL_001d:  ldloca.s   V_0
      IL_001f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::MoveNext()
      IL_0024:  brtrue.s   IL_000e

      IL_0026:  leave.s    IL_0036

    }  // end .try
    finally
    {
      IL_0028:  ldloca.s   V_0
      IL_002a:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>
      IL_0030:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0035:  endfinally
    }  // end handler
    IL_0036:  ret
  } // end of method SubsystemBodies::Update

  .method private hidebysig instance void 
          AddBody(class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       124 (0x7c)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Point2 V_1,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldloc.0
    IL_000a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000f:  ldc.r4     8.
    IL_0014:  div
    IL_0015:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_001a:  conv.i4
    IL_001b:  ldloc.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0021:  ldc.r4     8.
    IL_0026:  div
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002c:  conv.i4
    IL_002d:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0038:  ldarg.1
    IL_0039:  ldloc.1
    IL_003a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::Add(!0,
                                                                                                                                                                        !1)
    IL_003f:  ldarg.0
    IL_0040:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_0045:  ldloc.1
    IL_0046:  ldloca.s   V_2
    IL_0048:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::TryGetValue(!0,
                                                                                                                                                                                                                     !1&)
    IL_004d:  brtrue.s   IL_0062

    IL_004f:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0054:  stloc.2
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_005b:  ldloc.1
    IL_005c:  ldloc.2
    IL_005d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::Add(!0,
                                                                                                                                                                                                             !1)
    IL_0062:  ldloc.2
    IL_0063:  ldarg.1
    IL_0064:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Add(!0)
    IL_0069:  ldarg.1
    IL_006a:  ldarg.0
    IL_006b:  ldftn      instance void Game.SubsystemBodies::ComponentBody_PositionChanged(class Game.ComponentFrame)
    IL_0071:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::.ctor(object,
                                                                                                               native int)
    IL_0076:  callvirt   instance void Game.ComponentFrame::add_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    IL_007b:  ret
  } // end of method SubsystemBodies::AddBody

  .method private hidebysig instance void 
          RemoveBody(class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Point2 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Item(!0)
    IL_000c:  stloc.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0013:  ldarg.1
    IL_0014:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::Remove(!0)
    IL_0019:  pop
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::get_Item(!0)
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance bool class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Remove(!0)
    IL_002c:  pop
    IL_002d:  ldarg.1
    IL_002e:  ldarg.0
    IL_002f:  ldftn      instance void Game.SubsystemBodies::ComponentBody_PositionChanged(class Game.ComponentFrame)
    IL_0035:  newobj     instance void class [System.Runtime]System.Action`1<class Game.ComponentFrame>::.ctor(object,
                                                                                                               native int)
    IL_003a:  callvirt   instance void Game.ComponentFrame::remove_PositionChanged(class [System.Runtime]System.Action`1<class Game.ComponentFrame>)
    IL_003f:  ret
  } // end of method SubsystemBodies::RemoveBody

  .method private hidebysig instance void 
          UpdateBody(class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       147 (0x93)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Point2 V_1,
             valuetype [Engine]Engine.Point2 V_2,
             class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_3)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0006:  stloc.0
    IL_0007:  ldloca.s   V_1
    IL_0009:  ldloc.0
    IL_000a:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_000f:  ldc.r4     8.
    IL_0014:  div
    IL_0015:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_001a:  conv.i4
    IL_001b:  ldloc.0
    IL_001c:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0021:  ldc.r4     8.
    IL_0026:  div
    IL_0027:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_002c:  conv.i4
    IL_002d:  call       instance void [Engine]Engine.Point2::.ctor(int32,
                                                                    int32)
    IL_0032:  ldarg.0
    IL_0033:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0038:  ldarg.1
    IL_0039:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Item(!0)
    IL_003e:  stloc.2
    IL_003f:  ldloc.1
    IL_0040:  ldloc.2
    IL_0041:  call       bool [Engine]Engine.Point2::op_Inequality(valuetype [Engine]Engine.Point2,
                                                                   valuetype [Engine]Engine.Point2)
    IL_0046:  brfalse.s  IL_0092

    IL_0048:  ldarg.0
    IL_0049:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_004e:  ldarg.1
    IL_004f:  ldloc.1
    IL_0050:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::set_Item(!0,
                                                                                                                                                                             !1)
    IL_0055:  ldarg.0
    IL_0056:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_005b:  ldloc.2
    IL_005c:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::get_Item(!0)
    IL_0061:  ldarg.1
    IL_0062:  callvirt   instance bool class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Remove(!0)
    IL_0067:  pop
    IL_0068:  ldarg.0
    IL_0069:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_006e:  ldloc.1
    IL_006f:  ldloca.s   V_3
    IL_0071:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::TryGetValue(!0,
                                                                                                                                                                                                                     !1&)
    IL_0076:  brtrue.s   IL_008b

    IL_0078:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_007d:  stloc.3
    IL_007e:  ldarg.0
    IL_007f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_0084:  ldloc.1
    IL_0085:  ldloc.3
    IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::Add(!0,
                                                                                                                                                                                                             !1)
    IL_008b:  ldloc.3
    IL_008c:  ldarg.1
    IL_008d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::Add(!0)
    IL_0092:  ret
  } // end of method SubsystemBodies::UpdateBody

  .method private hidebysig instance void 
          ComponentBody_PositionChanged(class Game.ComponentFrame componentFrame) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  castclass  Game.ComponentBody
    IL_0007:  call       instance void Game.SubsystemBodies::UpdateBody(class Game.ComponentBody)
    IL_000c:  ret
  } // end of method SubsystemBodies::ComponentBody_PositionChanged

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> Game.SubsystemBodies::m_componentBodies
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::m_areaByComponentBody
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point2,class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>> Game.SubsystemBodies::m_componentBodiesByArea
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0027:  ret
  } // end of method SubsystemBodies::.ctor

  .property instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2>
          Bodies()
  {
    .get instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::get_Bodies()
  } // end of property SubsystemBodies::Bodies
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemBodies::get_UpdateOrder()
  } // end of property SubsystemBodies::UpdateOrder
} // end of class Game.SubsystemBodies