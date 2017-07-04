.class public auto ansi beforefieldinit Game.SubsystemWhistleBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xa0
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemWhistleBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnUse(valuetype [Engine]Engine.Vector3 start,
                valuetype [Engine]Engine.Vector3 direction,
                class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       447 (0x1bf)
    .maxstack  7
    .locals init (class [Engine]Engine.DynamicArray`1<class Game.ComponentBody> V_0,
             float32 V_1,
             class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody> V_2,
             valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody> V_3,
             class Game.ComponentBody V_4,
             class Game.ComponentSummonBehavior V_5,
             float32 V_6,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBody> V_7,
             class Game.ComponentBody V_8,
             class Game.ComponentSummonBehavior V_9)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemAudio Game.SubsystemWhistleBlockBehavior::m_subsystemAudio
    IL_0006:  ldstr      "Audio/Whistle"
    IL_000b:  ldc.r4     1.
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class Game.Random Game.SubsystemWhistleBlockBehavior::m_random
    IL_0016:  ldc.r4     -0.2
    IL_001b:  ldc.r4     0.0
    IL_0020:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0025:  ldarg.1
    IL_0026:  ldc.r4     4.
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0031:  ldarg.0
    IL_0032:  ldfld      class Game.SubsystemNoise Game.SubsystemWhistleBlockBehavior::m_subsystemNoise
    IL_0037:  ldarg.3
    IL_0038:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_003d:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0042:  ldc.r4     0.5
    IL_0047:  ldc.r4     30.
    IL_004c:  callvirt   instance void Game.SubsystemNoise::MakeNoise(class Game.ComponentBody,
                                                                      float32,
                                                                      float32)
    IL_0051:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::.ctor()
    IL_0056:  stloc.0
    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemBodies Game.SubsystemWhistleBlockBehavior::m_subsystemBodies
    IL_005d:  ldarg.3
    IL_005e:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0063:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0068:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_006d:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0072:  ldarg.3
    IL_0073:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
    IL_0078:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_007d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0082:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0087:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_008c:  ldc.r4     64.
    IL_0091:  ldloc.0
    IL_0092:  callvirt   instance void Game.SubsystemBodies::FindBodiesAroundPoint(valuetype [Engine]Engine.Vector2,
                                                                                   float32,
                                                                                   class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>)
    IL_0097:  ldc.r4     (00 00 80 7F)
    IL_009c:  stloc.1
    IL_009d:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::.ctor()
    IL_00a2:  stloc.2
    IL_00a3:  ldloc.0
    IL_00a4:  callvirt   instance valuetype [Engine]Engine.DynamicArray`1/Enumerator<!0> class [Engine]Engine.DynamicArray`1<class Game.ComponentBody>::GetEnumerator()
    IL_00a9:  stloc.3
    .try
    {
      IL_00aa:  br.s       IL_0125

      IL_00ac:  ldloca.s   V_3
      IL_00ae:  call       instance !0 valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::get_Current()
      IL_00b3:  stloc.s    V_4
      IL_00b5:  ldloc.s    V_4
      IL_00b7:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_00bc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSummonBehavior>()
      IL_00c1:  stloc.s    V_5
      IL_00c3:  ldloc.s    V_5
      IL_00c5:  brfalse.s  IL_0125

      IL_00c7:  ldloc.s    V_5
      IL_00c9:  callvirt   instance bool Game.ComponentSummonBehavior::get_IsEnabled()
      IL_00ce:  brfalse.s  IL_0125

      IL_00d0:  ldloc.s    V_4
      IL_00d2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00d7:  ldarg.3
      IL_00d8:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_00dd:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_00e2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_00e7:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_00ec:  stloc.s    V_6
      IL_00ee:  ldloc.s    V_6
      IL_00f0:  ldc.r4     4.
      IL_00f5:  ble.un.s   IL_0113

      IL_00f7:  ldloc.s    V_5
      IL_00f9:  callvirt   instance class Game.ComponentBody Game.ComponentSummonBehavior::get_SummonTarget()
      IL_00fe:  brtrue.s   IL_0113

      IL_0100:  ldloc.2
      IL_0101:  ldloc.s    V_4
      IL_0103:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::Add(!0)
      IL_0108:  ldloc.1
      IL_0109:  ldloc.s    V_6
      IL_010b:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_0110:  stloc.1
      IL_0111:  br.s       IL_0125

      IL_0113:  ldloc.s    V_5
      IL_0115:  ldarg.3
      IL_0116:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_011b:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0120:  callvirt   instance void Game.ComponentSummonBehavior::set_SummonTarget(class Game.ComponentBody)
      IL_0125:  ldloca.s   V_3
      IL_0127:  call       instance bool valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>::MoveNext()
      IL_012c:  brtrue     IL_00ac

      IL_0131:  leave.s    IL_0141

    }  // end .try
    finally
    {
      IL_0133:  ldloca.s   V_3
      IL_0135:  constrained. valuetype [Engine]Engine.DynamicArray`1/Enumerator<class Game.ComponentBody>
      IL_013b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0140:  endfinally
    }  // end handler
    IL_0141:  ldloc.2
    IL_0142:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.ComponentBody>::GetEnumerator()
    IL_0147:  stloc.s    V_7
    .try
    {
      IL_0149:  br.s       IL_019d

      IL_014b:  ldloca.s   V_7
      IL_014d:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBody>::get_Current()
      IL_0152:  stloc.s    V_8
      IL_0154:  ldloc.s    V_8
      IL_0156:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_015b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentSummonBehavior>()
      IL_0160:  stloc.s    V_9
      IL_0162:  ldloc.s    V_9
      IL_0164:  brfalse.s  IL_019d

      IL_0166:  ldloc.s    V_8
      IL_0168:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_016d:  ldarg.3
      IL_016e:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0173:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0178:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_017d:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
      IL_0182:  ldloc.1
      IL_0183:  ldc.r4     4.
      IL_0188:  add
      IL_0189:  bge.un.s   IL_019d

      IL_018b:  ldloc.s    V_9
      IL_018d:  ldarg.3
      IL_018e:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0193:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_0198:  callvirt   instance void Game.ComponentSummonBehavior::set_SummonTarget(class Game.ComponentBody)
      IL_019d:  ldloca.s   V_7
      IL_019f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBody>::MoveNext()
      IL_01a4:  brtrue.s   IL_014b

      IL_01a6:  leave.s    IL_01b6

    }  // end .try
    finally
    {
      IL_01a8:  ldloca.s   V_7
      IL_01aa:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.ComponentBody>
      IL_01b0:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01b5:  endfinally
    }  // end handler
    IL_01b6:  ldarg.3
    IL_01b7:  ldc.i4.1
    IL_01b8:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
    IL_01bd:  ldc.i4.1
    IL_01be:  ret
  } // end of method SubsystemWhistleBlockBehavior::OnUse

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0014:  stfld      class Game.SubsystemBodies Game.SubsystemWhistleBlockBehavior::m_subsystemBodies
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0026:  stfld      class Game.SubsystemAudio Game.SubsystemWhistleBlockBehavior::m_subsystemAudio
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0038:  stfld      class Game.SubsystemNoise Game.SubsystemWhistleBlockBehavior::m_subsystemNoise
    IL_003d:  ret
  } // end of method SubsystemWhistleBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemWhistleBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemWhistleBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemWhistleBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemWhistleBlockBehavior::HandledBlocks
} // end of class Game.SubsystemWhistleBlockBehavior