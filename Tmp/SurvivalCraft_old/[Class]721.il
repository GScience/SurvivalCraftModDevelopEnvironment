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
    .field private valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> '<>7__wrap1'
    .field private valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> '<>7__wrap2'
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
      // 代码大小       53 (0x35)
      .maxstack  2
      .locals init (int32 V_0)
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_0006:  stloc.0
      IL_0007:  ldloc.0
      IL_0008:  ldc.i4.s   -3
      IL_000a:  bgt.s      IL_0017

      IL_000c:  ldloc.0
      IL_000d:  ldc.i4.s   -4
      IL_000f:  beq.s      IL_002a

      IL_0011:  ldloc.0
      IL_0012:  ldc.i4.s   -3
      IL_0014:  beq.s      IL_0020

      IL_0016:  ret

      IL_0017:  ldloc.0
      IL_0018:  ldc.i4.3
      IL_0019:  beq.s      IL_0020

      IL_001b:  ldloc.0
      IL_001c:  ldc.i4.4
      IL_001d:  beq.s      IL_002a

      IL_001f:  ret

      IL_0020:  nop
      .try
      {
        IL_0021:  leave.s    IL_0034

      }  // end .try
      finally
      {
        IL_0023:  ldarg.0
        IL_0024:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally1'()
        IL_0029:  endfinally
      }  // end handler
      IL_002a:  nop
      .try
      {
        IL_002b:  leave.s    IL_0034

      }  // end .try
      finally
      {
        IL_002d:  ldarg.0
        IL_002e:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally2'()
        IL_0033:  endfinally
      }  // end handler
      IL_0034:  ret
    } // end of method '<GetActiveExternalContent>d__22'::System.IDisposable.Dispose

    .method private hidebysig newslot virtual final 
            instance bool  MoveNext() cil managed
    {
      .override [System.Runtime]System.Collections.IEnumerator::MoveNext
      // 代码大小       647 (0x287)
      .maxstack  4
      .locals init (bool V_0,
               int32 V_1,
               string V_2,
               class Game.SubsystemPlayers V_3,
               class Game.SubsystemFurnitureBlockBehavior V_4,
               valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_5,
               class Game.PlayerData V_6,
               valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_7,
               class Game.FurnitureSet V_8)
      .try
      {
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0006:  stloc.1
        IL_0007:  ldloc.1
        IL_0008:  switch     ( 
                              IL_0028,
                              IL_0086,
                              IL_0105,
                              IL_019f,
                              IL_0253)
        IL_0021:  ldc.i4.0
        IL_0022:  stloc.0
        IL_0023:  leave      IL_0285

        IL_0028:  ldarg.0
        IL_0029:  ldc.i4.m1
        IL_002a:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_002f:  ldc.i4.2
        IL_0030:  ldarg.0
        IL_0031:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0036:  callvirt   instance string Game.SubsystemGameInfo::get_DirectoryName()
        IL_003b:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_0040:  stloc.2
        IL_0041:  ldloc.2
        IL_0042:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_0047:  brtrue.s   IL_008d

        IL_0049:  ldarg.0
        IL_004a:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_004f:  dup
        IL_0050:  ldloc.2
        IL_0051:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_0056:  dup
        IL_0057:  ldarg.0
        IL_0058:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_005d:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
        IL_0062:  ldfld      string Game.WorldSettings::Name
        IL_0067:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_006c:  dup
        IL_006d:  ldc.i4.2
        IL_006e:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_0073:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_0078:  ldarg.0
        IL_0079:  ldc.i4.1
        IL_007a:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_007f:  ldc.i4.1
        IL_0080:  stloc.0
        IL_0081:  leave      IL_0285

        IL_0086:  ldarg.0
        IL_0087:  ldc.i4.m1
        IL_0088:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_008d:  ldarg.0
        IL_008e:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0093:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
        IL_0098:  ldfld      string Game.WorldSettings::BlocksTextureName
        IL_009d:  call       bool Game.BlocksTexturesManager::IsBuiltIn(string)
        IL_00a2:  brtrue.s   IL_010c

        IL_00a4:  ldc.i4.3
        IL_00a5:  ldarg.0
        IL_00a6:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_00ab:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
        IL_00b0:  ldfld      string Game.WorldSettings::BlocksTextureName
        IL_00b5:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_00ba:  stloc.2
        IL_00bb:  ldloc.2
        IL_00bc:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
        IL_00c1:  brtrue.s   IL_010c

        IL_00c3:  ldarg.0
        IL_00c4:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_00c9:  dup
        IL_00ca:  ldloc.2
        IL_00cb:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_00d0:  dup
        IL_00d1:  ldarg.0
        IL_00d2:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_00d7:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
        IL_00dc:  ldfld      string Game.WorldSettings::BlocksTextureName
        IL_00e1:  call       string Game.BlocksTexturesManager::GetDisplayName(string)
        IL_00e6:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_00eb:  dup
        IL_00ec:  ldc.i4.3
        IL_00ed:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_00f2:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_00f7:  ldarg.0
        IL_00f8:  ldc.i4.2
        IL_00f9:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_00fe:  ldc.i4.1
        IL_00ff:  stloc.0
        IL_0100:  leave      IL_0285

        IL_0105:  ldarg.0
        IL_0106:  ldc.i4.m1
        IL_0107:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_010c:  ldarg.0
        IL_010d:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_0112:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
        IL_0117:  ldc.i4.1
        IL_0118:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
        IL_011d:  stloc.3
        IL_011e:  ldarg.0
        IL_011f:  ldloc.3
        IL_0120:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
        IL_0125:  stloc.s    V_5
        IL_0127:  ldloca.s   V_5
        IL_0129:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
        IL_012e:  stfld      valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_0133:  ldarg.0
        IL_0134:  ldc.i4.s   -3
        IL_0136:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_013b:  br.s       IL_01a7

        IL_013d:  ldarg.0
        IL_013e:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_0143:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
        IL_0148:  stloc.s    V_6
        IL_014a:  ldloc.s    V_6
        IL_014c:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
        IL_0151:  call       bool Game.CharacterSkinsManager::IsBuiltIn(string)
        IL_0156:  brtrue.s   IL_01a7

        IL_0158:  ldc.i4.4
        IL_0159:  ldloc.s    V_6
        IL_015b:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
        IL_0160:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_0165:  stloc.2
        IL_0166:  ldarg.0
        IL_0167:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_016c:  dup
        IL_016d:  ldloc.2
        IL_016e:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_0173:  dup
        IL_0174:  ldloc.s    V_6
        IL_0176:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
        IL_017b:  call       string Game.CharacterSkinsManager::GetDisplayName(string)
        IL_0180:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_0185:  dup
        IL_0186:  ldc.i4.4
        IL_0187:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_018c:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_0191:  ldarg.0
        IL_0192:  ldc.i4.3
        IL_0193:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_0198:  ldc.i4.1
        IL_0199:  stloc.0
        IL_019a:  leave      IL_0285

        IL_019f:  ldarg.0
        IL_01a0:  ldc.i4.s   -3
        IL_01a2:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_01a7:  ldarg.0
        IL_01a8:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_01ad:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
        IL_01b2:  brtrue.s   IL_013d

        IL_01b4:  ldarg.0
        IL_01b5:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally1'()
        IL_01ba:  ldarg.0
        IL_01bb:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
        IL_01c0:  initobj    valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
        IL_01c6:  ldarg.0
        IL_01c7:  ldfld      class Game.SubsystemGameInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>4__this'
        IL_01cc:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
        IL_01d1:  ldc.i4.1
        IL_01d2:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFurnitureBlockBehavior>(bool)
        IL_01d7:  stloc.s    V_4
        IL_01d9:  ldarg.0
        IL_01da:  ldloc.s    V_4
        IL_01dc:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
        IL_01e1:  stloc.s    V_7
        IL_01e3:  ldloca.s   V_7
        IL_01e5:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::GetEnumerator()
        IL_01ea:  stfld      valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap2'
        IL_01ef:  ldarg.0
        IL_01f0:  ldc.i4.s   -4
        IL_01f2:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_01f7:  br.s       IL_025b

        IL_01f9:  ldarg.0
        IL_01fa:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap2'
        IL_01ff:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::get_Current()
        IL_0204:  stloc.s    V_8
        IL_0206:  ldloc.s    V_8
        IL_0208:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_020d:  brfalse.s  IL_025b

        IL_020f:  ldc.i4.5
        IL_0210:  ldloc.s    V_8
        IL_0212:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_0217:  call       string Game.CommunityContentManager::GetDownloadedContentAddress(valuetype Game.ExternalContentType,
                                                                                              string)
        IL_021c:  stloc.2
        IL_021d:  ldarg.0
        IL_021e:  newobj     instance void Game.ActiveExternalContentInfo::.ctor()
        IL_0223:  dup
        IL_0224:  ldloc.2
        IL_0225:  stfld      string Game.ActiveExternalContentInfo::Address
        IL_022a:  dup
        IL_022b:  ldloc.s    V_8
        IL_022d:  ldfld      string Game.FurnitureSet::ImportedFrom
        IL_0232:  call       string Game.FurniturePacksManager::GetDisplayName(string)
        IL_0237:  stfld      string Game.ActiveExternalContentInfo::DisplayName
        IL_023c:  dup
        IL_023d:  ldc.i4.5
        IL_023e:  stfld      valuetype Game.ExternalContentType Game.ActiveExternalContentInfo::Type
        IL_0243:  stfld      class Game.ActiveExternalContentInfo Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>2__current'
        IL_0248:  ldarg.0
        IL_0249:  ldc.i4.4
        IL_024a:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_024f:  ldc.i4.1
        IL_0250:  stloc.0
        IL_0251:  leave.s    IL_0285

        IL_0253:  ldarg.0
        IL_0254:  ldc.i4.s   -4
        IL_0256:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
        IL_025b:  ldarg.0
        IL_025c:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap2'
        IL_0261:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::MoveNext()
        IL_0266:  brtrue.s   IL_01f9

        IL_0268:  ldarg.0
        IL_0269:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>m__Finally2'()
        IL_026e:  ldarg.0
        IL_026f:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap2'
        IL_0274:  initobj    valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
        IL_027a:  ldc.i4.0
        IL_027b:  stloc.0
        IL_027c:  leave.s    IL_0285

      }  // end .try
      fault
      {
        IL_027e:  ldarg.0
        IL_027f:  call       instance void Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::System.IDisposable.Dispose()
        IL_0284:  endfinally
      }  // end handler
      IL_0285:  ldloc.0
      IL_0286:  ret
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
      IL_0008:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap1'
      IL_000d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetActiveExternalContent>d__22'::'<>m__Finally1'

    .method private hidebysig instance void 
            '<>m__Finally2'() cil managed
    {
      // 代码大小       25 (0x19)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.m1
      IL_0002:  stfld      int32 Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>1__state'
      IL_0007:  ldarg.0
      IL_0008:  ldflda     valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> Game.SubsystemGameInfo/'<GetActiveExternalContent>d__22'::'<>7__wrap2'
      IL_000d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
      IL_0013:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0018:  ret
    } // end of method '<GetActiveExternalContent>d__22'::'<>m__Finally2'

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
  .field private class Game.WorldSettings '<WorldSettings>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private string '<DirectoryName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float64 '<TotalElapsedGameTime>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<TotalElapsedGameTimeDelta>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<WorldSeed>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.WorldSettings 
          get_WorldSettings() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.WorldSettings Game.SubsystemGameInfo::'<WorldSettings>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_WorldSettings

  .method private hidebysig specialname instance void 
          set_WorldSettings(class Game.WorldSettings 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.WorldSettings Game.SubsystemGameInfo::'<WorldSettings>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_WorldSettings

  .method public hidebysig specialname instance string 
          get_DirectoryName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.SubsystemGameInfo::'<DirectoryName>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemGameInfo::get_DirectoryName

  .method private hidebysig specialname instance void 
          set_DirectoryName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      string Game.SubsystemGameInfo::'<DirectoryName>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemGameInfo::set_DirectoryName

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

  .method private hidebysig specialname instance void 
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
    // 代码大小       93 (0x5d)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemGameInfo::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  newobj     instance void Game.WorldSettings::.ctor()
    IL_0018:  call       instance void Game.SubsystemGameInfo::set_WorldSettings(class Game.WorldSettings)
    IL_001d:  ldarg.0
    IL_001e:  call       instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0023:  ldarg.1
    IL_0024:  callvirt   instance void Game.WorldSettings::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0029:  ldarg.0
    IL_002a:  ldarg.1
    IL_002b:  ldstr      "WorldDirectoryName"
    IL_0030:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0035:  call       instance void Game.SubsystemGameInfo::set_DirectoryName(string)
    IL_003a:  ldarg.0
    IL_003b:  ldarg.1
    IL_003c:  ldstr      "TotalElapsedGameTime"
    IL_0041:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float64>(string)
    IL_0046:  call       instance void Game.SubsystemGameInfo::set_TotalElapsedGameTime(float64)
    IL_004b:  ldarg.0
    IL_004c:  ldarg.1
    IL_004d:  ldstr      "WorldSeed"
    IL_0052:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_0057:  call       instance void Game.SubsystemGameInfo::set_WorldSeed(int32)
    IL_005c:  ret
  } // end of method SubsystemGameInfo::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       48 (0x30)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0006:  ldarg.1
    IL_0007:  ldc.i4.0
    IL_0008:  callvirt   instance void Game.WorldSettings::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                bool)
    IL_000d:  ldarg.1
    IL_000e:  ldstr      "WorldSeed"
    IL_0013:  ldarg.0
    IL_0014:  call       instance int32 Game.SubsystemGameInfo::get_WorldSeed()
    IL_0019:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<int32>(string,
                                                                                                         !!0)
    IL_001e:  ldarg.1
    IL_001f:  ldstr      "TotalElapsedGameTime"
    IL_0024:  ldarg.0
    IL_0025:  call       instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_002a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float64>(string,
                                                                                                           !!0)
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

  .property instance class Game.WorldSettings
          WorldSettings()
  {
    .get instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    .set instance void Game.SubsystemGameInfo::set_WorldSettings(class Game.WorldSettings)
  } // end of property SubsystemGameInfo::WorldSettings
  .property instance string DirectoryName()
  {
    .get instance string Game.SubsystemGameInfo::get_DirectoryName()
    .set instance void Game.SubsystemGameInfo::set_DirectoryName(string)
  } // end of property SubsystemGameInfo::DirectoryName
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