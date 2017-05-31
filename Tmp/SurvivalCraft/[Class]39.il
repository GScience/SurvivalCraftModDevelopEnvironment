.class public auto ansi beforefieldinit Game.ComponentBoat
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.ComponentMount m_componentMount
  .field private class Game.ComponentBody m_componentBody
  .field private class Game.ComponentDamage m_componentDamage
  .field private float32 m_turnSpeed
  .field private float32 '<MoveOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TurnOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<Health>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_MoveOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBoat::'<MoveOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBoat::get_MoveOrder

  .method public hidebysig specialname instance void 
          set_MoveOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBoat::'<MoveOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBoat::set_MoveOrder

  .method public hidebysig specialname instance float32 
          get_TurnOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBoat::'<TurnOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBoat::get_TurnOrder

  .method public hidebysig specialname instance void 
          set_TurnOrder(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBoat::'<TurnOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBoat::set_TurnOrder

  .method public hidebysig specialname instance float32 
          get_Health() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentBoat::'<Health>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentBoat::get_Health

  .method private hidebysig specialname instance void 
          set_Health(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentBoat::'<Health>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentBoat::set_Health

  .method public hidebysig instance void 
          Injure(float32 amount,
                 class Game.ComponentCreature attacker,
                 bool ignoreInvulnerability) cil managed
  {
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.r4     0.0
    IL_0006:  ble.un.s   IL_0020

    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance float32 Game.ComponentBoat::get_Health()
    IL_000f:  ldarg.1
    IL_0010:  sub
    IL_0011:  ldc.r4     0.0
    IL_0016:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_001b:  call       instance void Game.ComponentBoat::set_Health(float32)
    IL_0020:  ret
  } // end of method ComponentBoat::Injure

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentBoat::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       670 (0x29e)
    .maxstack  7
    .locals init (valuetype [Engine]Engine.Quaternion V_0,
             float32 V_1,
             valuetype [System.Runtime]System.Nullable`1<int32> V_2,
             valuetype [Engine]Engine.Matrix V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_0006:  callvirt   instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_000b:  ldc.r4     0.33000001
    IL_0010:  bge.un.s   IL_0085

    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0018:  ldc.r4     1.15
    IL_001d:  callvirt   instance void Game.ComponentBody::set_Density(float32)
    IL_0022:  ldarg.0
    IL_0023:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_0028:  callvirt   instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_0033:  callvirt   instance float32 Game.ComponentDamage::get_HitpointsChange()
    IL_0038:  sub
    IL_0039:  ldc.r4     0.33000001
    IL_003e:  blt.un     IL_0102

    IL_0043:  ldarg.0
    IL_0044:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0049:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_004e:  ldc.r4     0.0
    IL_0053:  ble.un     IL_0102

    IL_0058:  ldarg.0
    IL_0059:  ldfld      class Game.SubsystemAudio Game.ComponentBoat::m_subsystemAudio
    IL_005e:  ldstr      "Audio/Sinking"
    IL_0063:  ldc.r4     1.
    IL_0068:  ldc.r4     0.0
    IL_006d:  ldarg.0
    IL_006e:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0073:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0078:  ldc.r4     4.
    IL_007d:  ldc.i4.1
    IL_007e:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0083:  br.s       IL_0102

    IL_0085:  ldarg.0
    IL_0086:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_008b:  callvirt   instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_0090:  ldc.r4     0.66000003
    IL_0095:  bge.un.s   IL_0102

    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_009d:  ldc.r4     0.69999999
    IL_00a2:  callvirt   instance void Game.ComponentBody::set_Density(float32)
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_00ad:  callvirt   instance float32 Game.ComponentDamage::get_Hitpoints()
    IL_00b2:  ldarg.0
    IL_00b3:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_00b8:  callvirt   instance float32 Game.ComponentDamage::get_HitpointsChange()
    IL_00bd:  sub
    IL_00be:  ldc.r4     0.66000003
    IL_00c3:  blt.un.s   IL_0102

    IL_00c5:  ldarg.0
    IL_00c6:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_00cb:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00d0:  ldc.r4     0.0
    IL_00d5:  ble.un.s   IL_0102

    IL_00d7:  ldarg.0
    IL_00d8:  ldfld      class Game.SubsystemAudio Game.ComponentBoat::m_subsystemAudio
    IL_00dd:  ldstr      "Audio/Sinking"
    IL_00e2:  ldc.r4     1.
    IL_00e7:  ldc.r4     0.0
    IL_00ec:  ldarg.0
    IL_00ed:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_00f2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00f7:  ldc.r4     4.
    IL_00fc:  ldc.i4.1
    IL_00fd:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0102:  ldarg.0
    IL_0103:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0108:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_010d:  ldc.r4     0.94999999
    IL_0112:  cgt
    IL_0114:  dup
    IL_0115:  brtrue.s   IL_014e

    IL_0117:  ldarg.0
    IL_0118:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_011d:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_0122:  ldc.r4     9.9999998e-003
    IL_0127:  ble.un.s   IL_014e

    IL_0129:  ldarg.0
    IL_012a:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_012f:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<int32> Game.ComponentBody::get_StandingOnValue()
    IL_0134:  stloc.2
    IL_0135:  ldloca.s   V_2
    IL_0137:  call       instance bool valuetype [System.Runtime]System.Nullable`1<int32>::get_HasValue()
    IL_013c:  brtrue.s   IL_014e

    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0144:  callvirt   instance class Game.ComponentBody Game.ComponentBody::get_StandingOnBody()
    IL_0149:  ldnull
    IL_014a:  ceq
    IL_014c:  br.s       IL_014f

    IL_014e:  ldc.i4.0
    IL_014f:  ldarg.0
    IL_0150:  ldarg.0
    IL_0151:  ldfld      float32 Game.ComponentBoat::m_turnSpeed
    IL_0156:  ldc.r4     2.5
    IL_015b:  ldarg.0
    IL_015c:  ldfld      class Game.SubsystemTime Game.ComponentBoat::m_subsystemTime
    IL_0161:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_0166:  mul
    IL_0167:  ldc.r4     1.
    IL_016c:  ldarg.0
    IL_016d:  call       instance float32 Game.ComponentBoat::get_TurnOrder()
    IL_0172:  mul
    IL_0173:  ldarg.0
    IL_0174:  ldfld      float32 Game.ComponentBoat::m_turnSpeed
    IL_0179:  sub
    IL_017a:  mul
    IL_017b:  add
    IL_017c:  stfld      float32 Game.ComponentBoat::m_turnSpeed
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0187:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentFrame::get_Rotation()
    IL_018c:  stloc.0
    IL_018d:  ldc.r4     2.
    IL_0192:  ldloc.0
    IL_0193:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_0198:  mul
    IL_0199:  ldloc.0
    IL_019a:  ldfld      float32 [Engine]Engine.Quaternion::W
    IL_019f:  mul
    IL_01a0:  ldc.r4     2.
    IL_01a5:  ldloc.0
    IL_01a6:  ldfld      float32 [Engine]Engine.Quaternion::X
    IL_01ab:  mul
    IL_01ac:  ldloc.0
    IL_01ad:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_01b2:  mul
    IL_01b3:  sub
    IL_01b4:  ldc.r4     1.
    IL_01b9:  ldc.r4     2.
    IL_01be:  ldloc.0
    IL_01bf:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_01c4:  mul
    IL_01c5:  ldloc.0
    IL_01c6:  ldfld      float32 [Engine]Engine.Quaternion::Y
    IL_01cb:  mul
    IL_01cc:  sub
    IL_01cd:  ldc.r4     2.
    IL_01d2:  ldloc.0
    IL_01d3:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_01d8:  mul
    IL_01d9:  ldloc.0
    IL_01da:  ldfld      float32 [Engine]Engine.Quaternion::Z
    IL_01df:  mul
    IL_01e0:  sub
    IL_01e1:  call       float32 [Engine]Engine.MathUtils::Atan2(float32,
                                                                 float32)
    IL_01e6:  stloc.1
    IL_01e7:  dup
    IL_01e8:  brfalse.s  IL_01f5

    IL_01ea:  ldloc.1
    IL_01eb:  ldarg.0
    IL_01ec:  ldfld      float32 Game.ComponentBoat::m_turnSpeed
    IL_01f1:  ldarg.1
    IL_01f2:  mul
    IL_01f3:  sub
    IL_01f4:  stloc.1
    IL_01f5:  ldarg.0
    IL_01f6:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_01fb:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0200:  ldloc.1
    IL_0201:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromAxisAngle(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0206:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_020b:  brfalse.s  IL_0256

    IL_020d:  ldarg.0
    IL_020e:  call       instance float32 Game.ComponentBoat::get_MoveOrder()
    IL_0213:  ldc.r4     0.0
    IL_0218:  beq.s      IL_0256

    IL_021a:  ldarg.0
    IL_021b:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0220:  dup
    IL_0221:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_Velocity()
    IL_0226:  ldarg.1
    IL_0227:  ldc.r4     3.
    IL_022c:  mul
    IL_022d:  ldarg.0
    IL_022e:  call       instance float32 Game.ComponentBoat::get_MoveOrder()
    IL_0233:  mul
    IL_0234:  ldarg.0
    IL_0235:  ldfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_023a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_023f:  stloc.3
    IL_0240:  ldloca.s   V_3
    IL_0242:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0247:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_024c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0251:  callvirt   instance void Game.ComponentBody::set_Velocity(valuetype [Engine]Engine.Vector3)
    IL_0256:  brfalse.s  IL_0287

    IL_0258:  ldarg.0
    IL_0259:  ldfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_025e:  ldc.r4     4.9999999e-003
    IL_0263:  ldarg.1
    IL_0264:  mul
    IL_0265:  callvirt   instance void Game.ComponentDamage::Damage(float32)
    IL_026a:  ldarg.0
    IL_026b:  ldfld      class Game.ComponentMount Game.ComponentBoat::m_componentMount
    IL_0270:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0275:  brfalse.s  IL_0287

    IL_0277:  ldarg.0
    IL_0278:  ldfld      class Game.ComponentMount Game.ComponentBoat::m_componentMount
    IL_027d:  callvirt   instance class Game.ComponentRider Game.ComponentMount::get_Rider()
    IL_0282:  callvirt   instance void Game.ComponentRider::StartDismounting()
    IL_0287:  ldarg.0
    IL_0288:  ldc.r4     0.0
    IL_028d:  call       instance void Game.ComponentBoat::set_MoveOrder(float32)
    IL_0292:  ldarg.0
    IL_0293:  ldc.r4     0.0
    IL_0298:  call       instance void Game.ComponentBoat::set_TurnOrder(float32)
    IL_029d:  ret
  } // end of method ComponentBoat::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentBoat::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_001f:  stfld      class Game.SubsystemAudio Game.ComponentBoat::m_subsystemAudio
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentMount>(bool)
    IL_0031:  stfld      class Game.ComponentMount Game.ComponentBoat::m_componentMount
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0043:  stfld      class Game.ComponentBody Game.ComponentBoat::m_componentBody
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDamage>(bool)
    IL_0055:  stfld      class Game.ComponentDamage Game.ComponentBoat::m_componentDamage
    IL_005a:  ret
  } // end of method ComponentBoat::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentBoat::.ctor

  .property instance float32 MoveOrder()
  {
    .get instance float32 Game.ComponentBoat::get_MoveOrder()
    .set instance void Game.ComponentBoat::set_MoveOrder(float32)
  } // end of property ComponentBoat::MoveOrder
  .property instance float32 TurnOrder()
  {
    .get instance float32 Game.ComponentBoat::get_TurnOrder()
    .set instance void Game.ComponentBoat::set_TurnOrder(float32)
  } // end of property ComponentBoat::TurnOrder
  .property instance float32 Health()
  {
    .get instance float32 Game.ComponentBoat::get_Health()
    .set instance void Game.ComponentBoat::set_Health(float32)
  } // end of property ComponentBoat::Health
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentBoat::get_UpdateOrder()
  } // end of property ComponentBoat::UpdateOrder
} // end of class Game.ComponentBoat