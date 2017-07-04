.class public auto ansi beforefieldinit Game.SubsystemTimeOfDay
       extends [EntitySystem]GameEntitySystem.Subsystem
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field public bool TimeOfDayEnabled
  .field public static literal float32 DayDuration = float32(1200.)
  .field private float64 '<TimeOfDayOffset>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_TimeOfDay() cil managed
  {
    // 代码大小       199 (0xc7)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemTimeOfDay::TimeOfDayEnabled
    IL_0006:  brfalse    IL_00c1

    IL_000b:  ldarg.0
    IL_000c:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0011:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0016:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_001b:  brtrue.s   IL_002f

    IL_001d:  ldarg.0
    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0024:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0029:  call       instance float32 Game.SubsystemTimeOfDay::CalculateTimeOfDay(float64)
    IL_002e:  ret

    IL_002f:  ldarg.0
    IL_0030:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0035:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_003a:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_003f:  ldc.i4.1
    IL_0040:  bne.un.s   IL_0052

    IL_0042:  ldc.r4     0.5
    IL_0047:  ldc.r4     1.
    IL_004c:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0051:  ret

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0058:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_005d:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0062:  ldc.i4.2
    IL_0063:  bne.un.s   IL_0075

    IL_0065:  ldc.r4     1.
    IL_006a:  ldc.r4     1.
    IL_006f:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0074:  ret

    IL_0075:  ldarg.0
    IL_0076:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_007b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0080:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_0085:  ldc.i4.3
    IL_0086:  bne.un.s   IL_0098

    IL_0088:  ldc.r4     0.25
    IL_008d:  ldc.r4     1.
    IL_0092:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0097:  ret

    IL_0098:  ldarg.0
    IL_0099:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_009e:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00a3:  ldfld      valuetype Game.TimeOfDayMode Game.WorldSettings::TimeOfDayMode
    IL_00a8:  ldc.i4.4
    IL_00a9:  bne.un.s   IL_00bb

    IL_00ab:  ldc.r4     0.75
    IL_00b0:  ldc.r4     1.
    IL_00b5:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_00ba:  ret

    IL_00bb:  ldc.r4     0.5
    IL_00c0:  ret

    IL_00c1:  ldc.r4     0.5
    IL_00c6:  ret
  } // end of method SubsystemTimeOfDay::get_TimeOfDay

  .method public hidebysig specialname instance float64 
          get_Day() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0007:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_000c:  call       instance float64 Game.SubsystemTimeOfDay::CalculateDay(float64)
    IL_0011:  ret
  } // end of method SubsystemTimeOfDay::get_Day

  .method public hidebysig specialname instance float64 
          get_TimeOfDayOffset() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemTimeOfDay::'<TimeOfDayOffset>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemTimeOfDay::get_TimeOfDayOffset

  .method public hidebysig specialname instance void 
          set_TimeOfDayOffset(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.SubsystemTimeOfDay::'<TimeOfDayOffset>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemTimeOfDay::set_TimeOfDayOffset

  .method public hidebysig instance float64 
          CalculateDay(float64 totalElapsedGameTime) cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0007:  ldc.r8     0.30000001192092896
    IL_0010:  add
    IL_0011:  ldc.r8     1200.
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  ldc.r8     1200.
    IL_0025:  div
    IL_0026:  ret
  } // end of method SubsystemTimeOfDay::CalculateDay

  .method public hidebysig instance float32 
          CalculateTimeOfDay(float64 totalElapsedGameTime) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_0007:  ldc.r8     0.30000001192092896
    IL_0010:  add
    IL_0011:  ldc.r8     1200.
    IL_001a:  mul
    IL_001b:  add
    IL_001c:  ldc.r8     1200.
    IL_0025:  call       float64 [Engine]Engine.MathUtils::Remainder(float64,
                                                                     float64)
    IL_002a:  conv.r4
    IL_002b:  ldc.r4     1200.
    IL_0030:  div
    IL_0031:  ret
  } // end of method SubsystemTimeOfDay::CalculateTimeOfDay

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.SubsystemTimeOfDay::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  ldstr      "TimeOfDayOffset"
    IL_0019:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_001e:  call       instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
    IL_0023:  ret
  } // end of method SubsystemTimeOfDay::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "TimeOfDayOffset"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method SubsystemTimeOfDay::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  stfld      bool Game.SubsystemTimeOfDay::TimeOfDayEnabled
    IL_0007:  ldarg.0
    IL_0008:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_000d:  ret
  } // end of method SubsystemTimeOfDay::.ctor

  .property instance float32 TimeOfDay()
  {
    .get instance float32 Game.SubsystemTimeOfDay::get_TimeOfDay()
  } // end of property SubsystemTimeOfDay::TimeOfDay
  .property instance float64 Day()
  {
    .get instance float64 Game.SubsystemTimeOfDay::get_Day()
  } // end of property SubsystemTimeOfDay::Day
  .property instance float64 TimeOfDayOffset()
  {
    .get instance float64 Game.SubsystemTimeOfDay::get_TimeOfDayOffset()
    .set instance void Game.SubsystemTimeOfDay::set_TimeOfDayOffset(float64)
  } // end of property SubsystemTimeOfDay::TimeOfDayOffset
} // end of class Game.SubsystemTimeOfDay