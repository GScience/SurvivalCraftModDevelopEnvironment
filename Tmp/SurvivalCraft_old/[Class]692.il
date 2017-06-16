.class public auto ansi beforefieldinit Game.SubsystemGameInfo
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<GetActiveExternalContent>d__22'
         extends [System.Runtime]System.Object
         implements class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>,
                    [System.Runtime]System.Collections.IEnumerable,
                    class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>,
                    [System.Runtime]System.Collections.IEnumerator,
                    [System.Runtime]System.IDisposable
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field private int32 '<>1__state'
    .field private class Game.ActiveExternalContentInfo '<>2__current'
    .field private int32 '<>l__initialThreadId'
    .field public class Game.SubsystemGameInfo '<>4__this'
    .field private valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> '<>7__wrap1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 '<>1__state') cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_000d:  ldarg.0
      IL_000e:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0013:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>l__initialThreadId'
      IL_0018:  ret
    } // end of method '<GetActiveExternalContent>d__22'::.ctor

    .method private hidebysig newslot virtual final 
            instance void  System.IDisposable.Dispose() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.IDisposable::Dispose
      // 代码大小       27 (0x1b)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  beq.s      IL_0010

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.4
      IL_000e:  bne.un.s   IL_001a

      IL_0010:  nop
      .try
      {
        IL_0011:  leave.s    IL_001a

      }  // end .try
      finally
      {
        IL_0013:  ldarg.0
        IL_0014:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally1'()
        IL_0019:  endfinally
      }  // end handler
      IL_001a:  ret
    } // end of method '<GetActiveExternalContent>d__22'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       583 (0x247)
      .maxstack  4
      .locals init (bool V_0,
               int32 V_1,
               string V_2,
               class Game.SubsystemFurnitureBlockBehavior V_3,
               valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_4,
               class Game.FurnitureSet V_5)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_0028,
                              IL_008b,
                              IL_010a,
                              IL_0181,
                              IL_0213)
        IL_0021:  ldc.i4.0
        IL_0022:  stloc.0
        IL_0023:  leave      IL_0245

        IL_0028:  ldarg.0
        IL_0029:  ldc.i4.m1
        IL_002a:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_002f:  ldc.i4.2
        IL_0030:  ldarg.0
        IL_0031:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0036:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_003b:  ldfld      string Game.WorldInfo::DirectoryName
        IL_0040:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_0045:  stloc.2
        IL_0046:  ldloc.2
        IL_0047:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_004c:  brtrue.s   IL_0092

        IL_004e:  ldarg.0
        IL_004f:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_0054:  dup
        IL_0055:  ldloc.2
        IL_0056:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_005b:  dup
        IL_005c:  ldarg.0
        IL_005d:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0062:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_0067:  ldfld      string Game.WorldInfo::Name
        IL_006c:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_0071:  dup
        IL_0072:  ldc.i4.2
        IL_0073:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_0078:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_007d:  ldarg.0
        IL_007e:  ldc.i4.1
        IL_007f:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0084:  ldc.i4.1
        IL_0085:  stloc.0
        IL_0086:  leave      IL_0245

        IL_008b:  ldarg.0
        IL_008c:  ldc.i4.m1
        IL_008d:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0092:  ldarg.0
        IL_0093:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0098:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_009d:  ldfld      string Game.WorldInfo::BlocksTextureName
        IL_00a2:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_00a7:  brtrue.s   IL_0111

        IL_00a9:  ldc.i4.3
        IL_00aa:  ldarg.0
        IL_00ab:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_00b0:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_00b5:  ldfld      string Game.WorldInfo::BlocksTextureName
        IL_00ba:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_00bf:  stloc.2
        IL_00c0:  ldloc.2
        IL_00c1:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_00c6:  brtrue.s   IL_0111

        IL_00c8:  ldarg.0
        IL_00c9:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_00ce:  dup
        IL_00cf:  ldloc.2
        IL_00d0:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_00d5:  dup
        IL_00d6:  ldarg.0
        IL_00d7:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_00dc:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_00e1:  ldfld      string Game.WorldInfo::BlocksTextureName
        IL_00e6:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
        IL_00eb:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_00f0:  dup
        IL_00f1:  ldc.i4.3
        IL_00f2:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_00f7:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_00fc:  ldarg.0
        IL_00fd:  ldc.i4.2
        IL_00fe:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0103:  ldc.i4.1
        IL_0104:  stloc.0
        IL_0105:  leave      IL_0245

        IL_010a:  ldarg.0
        IL_010b:  ldc.i4.m1
        IL_010c:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0111:  ldarg.0
        IL_0112:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0117:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_011c:  ldfld      string Game.WorldInfo::CharacterSkinName
        IL_0121:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_0126:  brtrue.s   IL_0188

        IL_0128:  ldc.i4.4
        IL_0129:  ldarg.0
        IL_012a:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_012f:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_0134:  ldfld      string Game.WorldInfo::CharacterSkinName
        IL_0139:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_013e:  stloc.2
        IL_013f:  ldarg.0
        IL_0140:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_0145:  dup
        IL_0146:  ldloc.2
        IL_0147:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_014c:  dup
        IL_014d:  ldarg.0
        IL_014e:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0153:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
        IL_0158:  ldfld      string Game.WorldInfo::CharacterSkinName
        IL_015d:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
        IL_0162:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_0167:  dup
        IL_0168:  ldc.i4.4
        IL_0169:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_016e:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_0173:  ldarg.0
        IL_0174:  ldc.i4.3
        IL_0175:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_017a:  ldc.i4.1
        IL_017b:  stloc.0
        IL_017c:  leave      IL_0245

        IL_0181:  ldarg.0
        IL_0182:  ldc.i4.m1
        IL_0183:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0188:  ldarg.0
        IL_0189:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_018e:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
        IL_0193:  ldc.i4.1
        IL_0194:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
        IL_0199:  stloc.3
        IL_019a:  ldarg.0
        IL_019b:  ldloc.3
        IL_019c:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
        IL_01a1:  stloc.s    V_4
        IL_01a3:  ldloca.s   V_4
        IL_01a5:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::GetEnumerator()
        IL_01aa:  stfld      valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_01af:  ldarg.0
        IL_01b0:  ldc.i4.s   -3
        IL_01b2:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_01b7:  br.s       IL_021b

        IL_01b9:  ldarg.0
        IL_01ba:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_01bf:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::get_Current()
        IL_01c4:  stloc.s    V_5
        IL_01c6:  ldloc.s    V_5
        IL_01c8:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_01cd:  brfalse.s  IL_021b

        IL_01cf:  ldc.i4.5
        IL_01d0:  ldloc.s    V_5
        IL_01d2:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_01d7:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_01dc:  stloc.2
        IL_01dd:  ldarg.0
        IL_01de:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_01e3:  dup
        IL_01e4:  ldloc.2
        IL_01e5:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_01ea:  dup
        IL_01eb:  ldloc.s    V_5
        IL_01ed:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_01f2:  call       string Game.FurniturePacksManager::GetDisplayName(string)
        IL_01f7:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_01fc:  dup
        IL_01fd:  ldc.i4.5
        IL_01fe:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_0203:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_0208:  ldarg.0
        IL_0209:  ldc.i4.4
        IL_020a:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_020f:  ldc.i4.1
        IL_0210:  stloc.0
        IL_0211:  leave.s    IL_0245

        IL_0213:  ldarg.0
        IL_0214:  ldc.i4.s   -3
        IL_0216:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_021b:  ldarg.0
        IL_021c:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_0221:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::MoveNext()
        IL_0226:  brtrue.s   IL_01b9

        IL_0228:  ldarg.0
        IL_0229:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally1'()
        IL_022e:  ldarg.0
        IL_022f:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_0234:  initobj    valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
        IL_023a:  ldc.i4.0
        IL_023b:  stloc.0
        IL_023c:  leave.s    IL_0245

      }  // end .try
      fault
      {
        IL_023e:  ldarg.0
        IL_023f:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::System.IDisposable.Dispose()
        IL_0244:  endfinally
      }  // end handler
      IL_0245:  ldloc.0
      IL_0246:  ret
    } // end of method '<GetActiveExternalContent>d__22'::MoveNext

    .method private hidebysig instance void 
            '<>m__Finally1'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetActiveExternalContent>d__22'::'<>m__Finally1'

    .method private hidebysig newslot specialname virtual final 
            instance class Game.ActiveExternalContentInfo 
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>::get_Current()
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetActiveExternalContent>d__22'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'

    .method private hidebysig newslot virtual final 
            instance void  System.Collections.IEnumerator.Reset() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::Reset
      // 代码大小       6 (0x6)
      .maxstack  8
      IL_0000:  newobj     instance void [System.Runtime]System.NotSupportedException::.ctor()
      IL_0005:  throw
    } // end of method '<GetActiveExternalContent>d__22'::System.Collections.IEnumerator.Reset

    .method private hidebysig newslot specialname virtual final 
            instance object  System.Collections.IEnumerator.get_Current() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerator::get_Current
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
      IL_0006:  ret
    } // end of method '<GetActiveExternalContent>d__22'::System.Collections.IEnumerator.get_Current

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> 
            'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override  method instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>::GetEnumerator()
      // 代码大小       55 (0x37)
      .maxstack  2
      .locals init (class Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22' V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_0006:  ldc.i4.s   -2
      IL_0008:  bne.un.s   IL_0022

      IL_000a:  ldarg.0
      IL_000b:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>l__initialThreadId'
      IL_0010:  call       int32 [System.Runtime.Extensions]System.Environment::get_CurrentManagedThreadId()
      IL_0015:  bne.un.s   IL_0022

      IL_0017:  ldarg.0
      IL_0018:  ldc.i4.0
      IL_0019:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_001e:  ldarg.0
      IL_001f:  stloc.0
      IL_0020:  br.s       IL_0035

      IL_0022:  ldc.i4.0
      IL_0023:  newobj     instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::.ctor(int32)
      IL_0028:  stloc.0
      IL_0029:  ldloc.0
      IL_002a:  ldarg.0
      IL_002b:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
      IL_0030:  stfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
      IL_0035:  ldloc.0
      IL_0036:  ret
    } // end of method '<GetActiveExternalContent>d__22'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'

    .method private hidebysig newslot virtual final 
            instance class [System.Runtime]System.Collections.IEnumerator 
            System.Collections.IEnumerable.GetEnumerator() cil managed
    {
      .custom instance void [System.Diagnostics.Debug]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      .override [System.Runtime]System.Collections.IEnumerable::GetEnumerator
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'System.Collections.Generic.IEnumerable<Game.ActiveExternalContentInfo>.GetEnumerator'()
      IL_0006:  ret
    } // end of method '<GetActiveExternalContent>d__22'::System.Collections.IEnumerable.GetEnumerator

    .property instance class Game.ActiveExternalContentInfo
            'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'()
    {
      .get instance class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.get_Current'()
    } // end of property '<GetActiveExternalContent>d__22'::'System.Collections.Generic.IEnumerator<Game.ActiveExternalContentInfo>.Current'
    .property instance object System.Collections.IEnumerator.Current()
    {
      .get instance object Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::System.Collections.IEnumerator.get_Current()
    } // end of property '<GetActiveExternalContent>d__22'::System.Collections.IEnumerator.Current
  } // end of class '<GetActiveExternalContent>d__22'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemGameInfo/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action '<>9__27_0'
    .field public static class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> '<>9__27_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemGameInfo/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemGameInfo/'<>c' Game.SubsystemGameInfo/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance void 
            '<Update>b__27_0'() cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Update>b__27_0'

    .method assembly hidebysig instance void 
            '<Update>b__27_1'(class [System.Runtime]System.Exception '<obj>') cil managed
    {
      // 代码大小       1 (0x1)
      .maxstack  8
      IL_0000:  ret
    } // end of method '<>c'::'<Update>b__27_1'

  } // end of class '<>c'

  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastTotalElapsedGameTime
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.GameWidget '<GameWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.WorldInfo '<WorldInfo>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<TotalElapsedGameTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TotalElapsedGameTimeDelta>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<WorldSeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.GameWidget 
          get_GameWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GameWidget Game.SubsystemGameInfo::'<GameWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_GameWidget

  .method private hidebysig specialname instance void 
          set_GameWidget(class Game.GameWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.GameWidget Game.SubsystemGameInfo::'<GameWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_GameWidget

  .method public hidebysig specialname instance class Game.WorldInfo 
          get_WorldInfo() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldInfo Game.SubsystemGameInfo::'<WorldInfo>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_WorldInfo

  .method private hidebysig specialname instance void 
          set_WorldInfo(class Game.WorldInfo 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.WorldInfo Game.SubsystemGameInfo::'<WorldInfo>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_WorldInfo

  .method public hidebysig specialname instance float64 
          get_TotalElapsedGameTime() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float64 Game.SubsystemGameInfo::'<TotalElapsedGameTime>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_TotalElapsedGameTime

  .method public hidebysig specialname instance void 
          set_TotalElapsedGameTime(float64 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float64 Game.SubsystemGameInfo::'<TotalElapsedGameTime>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_TotalElapsedGameTime

  .method public hidebysig specialname instance float32 
          get_TotalElapsedGameTimeDelta() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.SubsystemGameInfo::'<TotalElapsedGameTimeDelta>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_TotalElapsedGameTimeDelta

  .method private hidebysig specialname instance void 
          set_TotalElapsedGameTimeDelta(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.SubsystemGameInfo::'<TotalElapsedGameTimeDelta>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_TotalElapsedGameTimeDelta

  .method public hidebysig specialname instance int32 
          get_WorldSeed() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.SubsystemGameInfo::'<WorldSeed>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_WorldSeed

  .method private hidebysig specialname instance void 
          set_WorldSeed(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.SubsystemGameInfo::'<WorldSeed>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_WorldSeed

  .method public hidebysig instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> 
          GetActiveExternalContent() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.IteratorStateMachineAttribute::.ctor(class [System.Runtime]System.Type) = ( 01 00 36 47 61 6D 65 2E 53 75 62 73 79 73 74 65   // ..6Game.Subsyste
                                                                                                                                                      6D 47 61 6D 65 49 6E 66 6F 2B 3C 47 65 74 41 63   // mGameInfo+<GetAc
                                                                                                                                                      74 69 76 65 45 78 74 65 72 6E 61 6C 43 6F 6E 74   // tiveExternalCont
                                                                                                                                                      65 6E 74 3E 64 5F 5F 32 32 00 00 )                // ent>d__22..
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.s   -2
    IL_0002:  newobj     instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::.ctor(int32)
    IL_0007:  dup
    IL_0008:  ldarg.0
    IL_0009:  stfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
    IL_000e:  ret
  } // end of method SubsystemGameInfo::GetActiveExternalContent

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  newobj     instance void Game.WorldInfo::.ctor()
    IL_0018:  call       instance void Game.SubsystemGameInfo::set_WorldInfo(class Game.WorldInfo)
    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance void Game.WorldInfo::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0029:  ldarg.0
    IL_002a:  call       instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_002f:  ldarg.1
    IL_0030:  ldstr      "WorldDirectoryName"
    IL_0035:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_003a:  stfld      string Game.WorldInfo::DirectoryName
    IL_003f:  ldarg.0
    IL_0040:  ldarg.1
    IL_0041:  ldstr      "GameWidget"
    IL_0046:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class Game.GameWidget>(string)
    IL_004b:  call       instance void Game.SubsystemGameInfo::set_GameWidget(class Game.GameWidget)
    IL_0050:  ldarg.0
    IL_0051:  ldarg.1
    IL_0052:  ldstr      "WorldSeed"
    IL_0057:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_005c:  call       instance void Game.SubsystemGameInfo::set_WorldSeed(int32)
    IL_0061:  ldarg.0
    IL_0062:  ldarg.1
    IL_0063:  ldstr      "TotalElapsedGameTime"
    IL_0068:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_006d:  call       instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
    IL_0072:  ret
  } // end of method SubsystemGameInfo::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "WorldSeed"
    IL_0006:  ldarg.0
    IL_0007:  call       instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_0011:  ldarg.1
    IL_0012:  ldstr      "TotalElapsedGameTime"
    IL_0017:  ldarg.0
    IL_0018:  call       instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_001d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_0028:  ldarg.1
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance void Game.WorldInfo::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                            bool)
    IL_002f:  ret
  } // end of method SubsystemGameInfo::Save

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemGameInfo::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       285 (0x11d)
    .maxstack  7
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0007:  ldarg.1
    IL_0008:  conv.r8
    IL_0009:  add
    IL_000a:  call       instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemGameInfo::m_lastTotalElapsedGameTime
    IL_0016:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_001b:  brtrue.s   IL_0024

    IL_001d:  ldc.r4     0.0
    IL_0022:  br.s       IL_0037

    IL_0024:  ldarg.0
    IL_0025:  call       instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemGameInfo::m_lastTotalElapsedGameTime
    IL_0030:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
    IL_0035:  sub
    IL_0036:  conv.r4
    IL_0037:  call       instance void Game.SubsystemGameInfo::set_TotalElapsedGameTimeDelta(float32)
    IL_003c:  ldarg.0
    IL_003d:  ldarg.0
    IL_003e:  call       instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.SubsystemGameInfo::m_lastTotalElapsedGameTime
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
    IL_0053:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0058:  ldc.r8     600.
    IL_0061:  blt.un     IL_011c

    IL_0066:  ldarg.0
    IL_0067:  ldfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
    IL_006c:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0071:  ldarg.0
    IL_0072:  ldfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
    IL_0077:  callvirt   instance float32 Game.SubsystemTime::get_GameTimeDelta()
    IL_007c:  conv.r8
    IL_007d:  sub
    IL_007e:  ldc.r8     600.
    IL_0087:  bge.un     IL_011c

    IL_008c:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
    IL_0091:  brfalse    IL_011c

    IL_0096:  ldarg.0
    IL_0097:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo> Game.SubsystemGameInfo::GetActiveExternalContent()
    IL_009c:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.ActiveExternalContentInfo>::GetEnumerator()
    IL_00a1:  stloc.0
    .try
    {
      IL_00a2:  br.s       IL_0108

      IL_00a4:  ldloc.0
      IL_00a5:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.ActiveExternalContentInfo>::get_Current()
      IL_00aa:  ldfld      string Game.ActiveExternalContentInfo::Address
      IL_00af:  call       class Game.UserInfo Game.UserManager::get_ActiveUser()
      IL_00b4:  ldfld      string Game.UserInfo::UniqueId
      IL_00b9:  ldarg.0
      IL_00ba:  ldfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
      IL_00bf:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
      IL_00c4:  ldnull
      IL_00c5:  ldsfld     class [System.Runtime]System.Action Game.SubsystemGameInfo/'<>c'::'<>9__27_0'
      IL_00ca:  dup
      IL_00cb:  brtrue.s   IL_00e4

      IL_00cd:  pop
      IL_00ce:  ldsfld     class Game.SubsystemGameInfo/'<>c' Game.SubsystemGameInfo/'<>c'::'<>9'
      IL_00d3:  ldftn      instance void Game.SubsystemGameInfo/'<>c'::'<Update>b__27_0'()
      IL_00d9:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_00de:  dup
      IL_00df:  stsfld     class [System.Runtime]System.Action Game.SubsystemGameInfo/'<>c'::'<>9__27_0'
      IL_00e4:  ldsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.SubsystemGameInfo/'<>c'::'<>9__27_1'
      IL_00e9:  dup
      IL_00ea:  brtrue.s   IL_0103

      IL_00ec:  pop
      IL_00ed:  ldsfld     class Game.SubsystemGameInfo/'<>c' Game.SubsystemGameInfo/'<>c'::'<>9'
      IL_00f2:  ldftn      instance void Game.SubsystemGameInfo/'<>c'::'<Update>b__27_1'(class [System.Runtime]System.Exception)
      IL_00f8:  newobj     instance void class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>::.ctor(object,
                                                                                                                              native int)
      IL_00fd:  dup
      IL_00fe:  stsfld     class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> Game.SubsystemGameInfo/'<>c'::'<>9__27_1'
      IL_0103:  call       void Game.CommunityContentManager::SendPlayTime(string,
                                                                           string,
                                                                           float64,
                                                                           class Game.CancellableProgress,
                                                                           class [System.Runtime]System.Action,
                                                                           class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception>)
      IL_0108:  ldloc.0
      IL_0109:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_010e:  brtrue.s   IL_00a4

      IL_0110:  leave.s    IL_011c

    }  // end .try
    finally
    {
      IL_0112:  ldloc.0
      IL_0113:  brfalse.s  IL_011b

      IL_0115:  ldloc.0
      IL_0116:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_011b:  endfinally
    }  // end handler
    IL_011c:  ret
  } // end of method SubsystemGameInfo::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemGameInfo::.ctor

  .property instance class Game.GameWidget
          GameWidget()
  {
    .get instance class Game.GameWidget Game.SubsystemGameInfo::get_GameWidget()
    .set instance void Game.SubsystemGameInfo::set_GameWidget(class Game.GameWidget)
  } // end of property SubsystemGameInfo::GameWidget
  .property instance class Game.WorldInfo
          WorldInfo()
  {
    .get instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    .set instance void Game.SubsystemGameInfo::set_WorldInfo(class Game.WorldInfo)
  } // end of property SubsystemGameInfo::WorldInfo
  .property instance float64 TotalElapsedGameTime()
  {
    .get instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    .set instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
  } // end of property SubsystemGameInfo::TotalElapsedGameTime
  .property instance float32 TotalElapsedGameTimeDelta()
  {
    .get instance float32 Game.SubsystemGameInfo::get_TotalElapsedGameTimeDelta()
    .set instance void Game.SubsystemGameInfo::set_TotalElapsedGameTimeDelta(float32)
  } // end of property SubsystemGameInfo::TotalElapsedGameTimeDelta
  .property instance int32 WorldSeed()
  {
    .get instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    .set instance void Game.SubsystemGameInfo::set_WorldSeed(int32)
  } // end of property SubsystemGameInfo::WorldSeed
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemGameInfo::get_UpdateOrder()
  } // end of property SubsystemGameInfo::UpdateOrder
} // end of class Game.SubsystemGameInfo