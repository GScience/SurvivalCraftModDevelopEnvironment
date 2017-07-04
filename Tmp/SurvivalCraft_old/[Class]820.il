.class public auto ansi beforefieldinit Game.SubsystemViews
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass20_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 viewIndex
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass20_0'::.ctor

    .method assembly hidebysig instance bool 
            '<AddViewForPlayer>b__0'(class Game.View v) cil managed
    {
      // 代码大小       15 (0xf)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.View::get_ViewIndex()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
      IL_000c:  ceq
      IL_000e:  ret
    } // end of method '<>c__DisplayClass20_0'::'<AddViewForPlayer>b__0'

  } // end of class '<>c__DisplayClass20_0'

  .field public static literal int32 MaxViews = int32(0x00000004)
  .field private class Game.SubsystemPlayers m_subsystemPlayers
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.View> m_views
  .field private class Game.GamesWidget '<GamesWidget>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.SubsystemTerrain '<SubsystemTerrain>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance class Game.GamesWidget 
          get_GamesWidget() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.GamesWidget Game.SubsystemViews::'<GamesWidget>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemViews::get_GamesWidget

  .method private hidebysig specialname instance void 
          set_GamesWidget(class Game.GamesWidget 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.GamesWidget Game.SubsystemViews::'<GamesWidget>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemViews::set_GamesWidget

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> 
          get_Views() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemViews::get_Views

  .method public hidebysig instance float32 
          CalculateSquaredDistanceFromNearestView(valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       79 (0x4f)
    .maxstack  2
    .locals init (float32 V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.View> V_1,
             class Game.View V_2,
             float32 V_3)
    IL_0000:  ldc.r4     3.4028235e+038
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_000c:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.View>::GetEnumerator()
    IL_0011:  stloc.1
    .try
    {
      IL_0012:  br.s       IL_0034

      IL_0014:  ldloca.s   V_1
      IL_0016:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.View>::get_Current()
      IL_001b:  stloc.2
      IL_001c:  ldarg.1
      IL_001d:  ldloc.2
      IL_001e:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_0023:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
      IL_0028:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                           valuetype [Engine]Engine.Vector3)
      IL_002d:  stloc.3
      IL_002e:  ldloc.3
      IL_002f:  ldloc.0
      IL_0030:  bge.un.s   IL_0034

      IL_0032:  ldloc.3
      IL_0033:  stloc.0
      IL_0034:  ldloca.s   V_1
      IL_0036:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.View>::MoveNext()
      IL_003b:  brtrue.s   IL_0014

      IL_003d:  leave.s    IL_004d

    }  // end .try
    finally
    {
      IL_003f:  ldloca.s   V_1
      IL_0041:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.View>
      IL_0047:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_004c:  endfinally
    }  // end handler
    IL_004d:  ldloc.0
    IL_004e:  ret
  } // end of method SubsystemViews::CalculateSquaredDistanceFromNearestView

  .method public hidebysig instance float32 
          CalculateDistanceFromNearestView(valuetype [Engine]Engine.Vector3 p) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance float32 Game.SubsystemViews::CalculateSquaredDistanceFromNearestView(valuetype [Engine]Engine.Vector3)
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
    IL_000c:  ret
  } // end of method SubsystemViews::CalculateDistanceFromNearestView

  .method public hidebysig specialname instance class Game.SubsystemTerrain 
          get_SubsystemTerrain() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTerrain Game.SubsystemViews::'<SubsystemTerrain>k__BackingField'
    IL_0006:  ret
  } // end of method SubsystemViews::get_SubsystemTerrain

  .method private hidebysig specialname instance void 
          set_SubsystemTerrain(class Game.SubsystemTerrain 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.SubsystemTerrain Game.SubsystemViews::'<SubsystemTerrain>k__BackingField'
    IL_0007:  ret
  } // end of method SubsystemViews::set_SubsystemTerrain

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldc.i4     0x2710
    IL_0005:  ret
  } // end of method SubsystemViews::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  2
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0006:  stloc.1
    IL_0007:  ldloca.s   V_1
    IL_0009:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>::GetEnumerator()
    IL_000e:  stloc.0
    .try
    {
      IL_000f:  br.s       IL_0027

      IL_0011:  ldloca.s   V_0
      IL_0013:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::get_Current()
      IL_0018:  callvirt   instance class Game.Camera Game.View::get_ActiveCamera()
      IL_001d:  call       float32 [Engine]Engine.Time::get_FrameDuration()
      IL_0022:  callvirt   instance void Game.Camera::Update(float32)
      IL_0027:  ldloca.s   V_0
      IL_0029:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>::MoveNext()
      IL_002e:  brtrue.s   IL_0011

      IL_0030:  leave.s    IL_0040

    }  // end .try
    finally
    {
      IL_0032:  ldloca.s   V_0
      IL_0034:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.View>
      IL_003a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_003f:  endfinally
    }  // end handler
    IL_0040:  ret
  } // end of method SubsystemViews::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       162 (0xa2)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> V_1,
             class Game.PlayerData V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayers>(bool)
    IL_000d:  stfld      class Game.SubsystemPlayers Game.SubsystemViews::m_subsystemPlayers
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  call       instance void Game.SubsystemViews::set_SubsystemTerrain(class Game.SubsystemTerrain)
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.SubsystemPlayers Game.SubsystemViews::m_subsystemPlayers
    IL_002a:  ldarg.0
    IL_002b:  ldftn      instance void Game.SubsystemViews::'<Load>b__18_0'(class Game.PlayerData)
    IL_0031:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_0036:  callvirt   instance void Game.SubsystemPlayers::add_PlayerAdded(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_003b:  ldarg.0
    IL_003c:  ldfld      class Game.SubsystemPlayers Game.SubsystemViews::m_subsystemPlayers
    IL_0041:  ldarg.0
    IL_0042:  ldftn      instance void Game.SubsystemViews::'<Load>b__18_1'(class Game.PlayerData)
    IL_0048:  newobj     instance void class [System.Runtime]System.Action`1<class Game.PlayerData>::.ctor(object,
                                                                                                           native int)
    IL_004d:  callvirt   instance void Game.SubsystemPlayers::add_PlayerRemoved(class [System.Runtime]System.Action`1<class Game.PlayerData>)
    IL_0052:  ldarg.0
    IL_0053:  ldarg.1
    IL_0054:  ldstr      "GamesWidget"
    IL_0059:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class Game.GamesWidget>(string)
    IL_005e:  call       instance void Game.SubsystemViews::set_GamesWidget(class Game.GamesWidget)
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.SubsystemPlayers Game.SubsystemViews::m_subsystemPlayers
    IL_0069:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData> Game.SubsystemPlayers::get_PlayersData()
    IL_006e:  stloc.1
    IL_006f:  ldloca.s   V_1
    IL_0071:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.PlayerData>::GetEnumerator()
    IL_0076:  stloc.0
    .try
    {
      IL_0077:  br.s       IL_0088

      IL_0079:  ldloca.s   V_0
      IL_007b:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::get_Current()
      IL_0080:  stloc.2
      IL_0081:  ldarg.0
      IL_0082:  ldloc.2
      IL_0083:  call       instance void Game.SubsystemViews::AddViewForPlayer(class Game.PlayerData)
      IL_0088:  ldloca.s   V_0
      IL_008a:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>::MoveNext()
      IL_008f:  brtrue.s   IL_0079

      IL_0091:  leave.s    IL_00a1

    }  // end .try
    finally
    {
      IL_0093:  ldloca.s   V_0
      IL_0095:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.PlayerData>
      IL_009b:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00a0:  endfinally
    }  // end handler
    IL_00a1:  ret
  } // end of method SubsystemViews::Load

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       49 (0x31)
    .maxstack  2
    .locals init (class Game.View[] V_0,
             int32 V_1,
             class Game.View V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
    IL_0006:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>
    IL_000b:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.View>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0010:  stloc.0
    IL_0011:  ldc.i4.0
    IL_0012:  stloc.1
    IL_0013:  br.s       IL_002a

    IL_0015:  ldloc.0
    IL_0016:  ldloc.1
    IL_0017:  ldelem.ref
    IL_0018:  stloc.2
    IL_0019:  ldarg.0
    IL_001a:  ldloc.2
    IL_001b:  call       instance void Game.SubsystemViews::RemoveView(class Game.View)
    IL_0020:  ldloc.2
    IL_0021:  callvirt   instance void Game.View::Dispose()
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.1
    IL_002a:  ldloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldlen
    IL_002d:  conv.i4
    IL_002e:  blt.s      IL_0015

    IL_0030:  ret
  } // end of method SubsystemViews::Dispose

  .method private hidebysig instance void 
          AddViewForPlayer(class Game.PlayerData playerData) cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  3
    .locals init (class Game.SubsystemViews/'<>c__DisplayClass20_0' V_0,
             class Game.View V_1,
             int32 V_2)
    IL_0000:  newobj     instance void Game.SubsystemViews/'<>c__DisplayClass20_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_000d:  br.s       IL_0038

    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_0015:  ldloc.0
    IL_0016:  ldftn      instance bool Game.SubsystemViews/'<>c__DisplayClass20_0'::'<AddViewForPlayer>b__0'(class Game.View)
    IL_001c:  newobj     instance void class [System.Runtime]System.Func`2<class Game.View,bool>::.ctor(object,
                                                                                                        native int)
    IL_0021:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.View>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0026:  brfalse.s  IL_0041

    IL_0028:  ldloc.0
    IL_0029:  ldfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_002e:  ldc.i4.1
    IL_002f:  add
    IL_0030:  stloc.2
    IL_0031:  ldloc.0
    IL_0032:  ldloc.2
    IL_0033:  stfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_0038:  ldloc.0
    IL_0039:  ldfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_003e:  ldc.i4.4
    IL_003f:  blt.s      IL_000f

    IL_0041:  ldloc.0
    IL_0042:  ldfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_0047:  ldc.i4.4
    IL_0048:  bne.un.s   IL_0055

    IL_004a:  ldstr      "Too many views."
    IL_004f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0054:  throw

    IL_0055:  ldarg.0
    IL_0056:  ldarg.1
    IL_0057:  ldloc.0
    IL_0058:  ldfld      int32 Game.SubsystemViews/'<>c__DisplayClass20_0'::viewIndex
    IL_005d:  newobj     instance void Game.View::.ctor(class Game.SubsystemViews,
                                                        class Game.PlayerData,
                                                        int32)
    IL_0062:  stloc.1
    IL_0063:  ldarg.0
    IL_0064:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_0069:  ldloc.1
    IL_006a:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.View>::Add(!0)
    IL_006f:  ldarg.0
    IL_0070:  call       instance class Game.GamesWidget Game.SubsystemViews::get_GamesWidget()
    IL_0075:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_007a:  ldloc.1
    IL_007b:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_0080:  callvirt   instance void Game.WidgetsList::Add(class Game.Widget)
    IL_0085:  ret
  } // end of method SubsystemViews::AddViewForPlayer

  .method private hidebysig instance void 
          RemoveView(class Game.View view) cil managed
  {
    // 代码大小       36 (0x24)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.View>::Remove(!0)
    IL_000c:  pop
    IL_000d:  ldarg.0
    IL_000e:  call       instance class Game.GamesWidget Game.SubsystemViews::get_GamesWidget()
    IL_0013:  ldfld      class Game.WidgetsList Game.ContainerWidget::Children
    IL_0018:  ldarg.1
    IL_0019:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_001e:  callvirt   instance void Game.WidgetsList::Remove(class Game.Widget)
    IL_0023:  ret
  } // end of method SubsystemViews::RemoveView

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.View>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.View> Game.SubsystemViews::m_views
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemViews::.ctor

  .method private hidebysig instance void 
          '<Load>b__18_0'(class Game.PlayerData playerData) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemViews::AddViewForPlayer(class Game.PlayerData)
    IL_0007:  ret
  } // end of method SubsystemViews::'<Load>b__18_0'

  .method private hidebysig instance void 
          '<Load>b__18_1'(class Game.PlayerData playerData) cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class Game.View Game.PlayerData::get_View()
    IL_0006:  brfalse.s  IL_0014

    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  callvirt   instance class Game.View Game.PlayerData::get_View()
    IL_000f:  call       instance void Game.SubsystemViews::RemoveView(class Game.View)
    IL_0014:  ret
  } // end of method SubsystemViews::'<Load>b__18_1'

  .property instance class Game.GamesWidget
          GamesWidget()
  {
    .get instance class Game.GamesWidget Game.SubsystemViews::get_GamesWidget()
    .set instance void Game.SubsystemViews::set_GamesWidget(class Game.GamesWidget)
  } // end of property SubsystemViews::GamesWidget
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View>
          Views()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.View> Game.SubsystemViews::get_Views()
  } // end of property SubsystemViews::Views
  .property instance class Game.SubsystemTerrain
          SubsystemTerrain()
  {
    .get instance class Game.SubsystemTerrain Game.SubsystemViews::get_SubsystemTerrain()
    .set instance void Game.SubsystemViews::set_SubsystemTerrain(class Game.SubsystemTerrain)
  } // end of property SubsystemViews::SubsystemTerrain
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemViews::get_UpdateOrder()
  } // end of property SubsystemViews::UpdateOrder
} // end of class Game.SubsystemViews