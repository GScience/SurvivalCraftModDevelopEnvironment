.class public auto ansi beforefieldinit Game.SubsystemFurnitureBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemFurnitureBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> '<>9__17_0'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> '<>9__17_1'
    .field public static class [System.Runtime]System.Func`2<object,bool> '<>9__36_0'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> '<>9__37_0'
    .field public static class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> '<>9__37_1'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemFurnitureBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
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

    .method assembly hidebysig instance bool 
            '<TryAddDesignChain>b__17_0'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  ceq
      IL_0004:  ret
    } // end of method '<>c'::'<TryAddDesignChain>b__17_0'

    .method assembly hidebysig instance bool 
            '<TryAddDesignChain>b__17_1'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  ceq
      IL_0004:  ret
    } // end of method '<>c'::'<TryAddDesignChain>b__17_1'

    .method assembly hidebysig instance bool 
            '<Load>b__36_0'(object v) cil managed
    {
      // 代码大小       10 (0xa)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  isinst     [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0006:  ldnull
      IL_0007:  cgt.un
      IL_0009:  ret
    } // end of method '<>c'::'<Load>b__36_0'

    .method assembly hidebysig instance bool 
            '<Save>b__37_0'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       5 (0x5)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldnull
      IL_0002:  cgt.un
      IL_0004:  ret
    } // end of method '<>c'::'<Save>b__37_0'

    .method assembly hidebysig instance int32 
            '<Save>b__37_1'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_0006:  ret
    } // end of method '<>c'::'<Save>b__37_1'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass18_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.FurnitureDesign design
    .field public class Game.ComponentMiner componentMiner
    .field public class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> valuesDictionary
    .field public int32 startValue
    .field public valuetype Game.CellFace start
    .field public class Game.SubsystemFurnitureBlockBehavior '<>4__this'
    .field public class [System.Runtime]System.Action '<>9__1'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass18_0'::.ctor

    .method assembly hidebysig instance void 
            '<ScanDesign>b__0'(bool result) cil managed
    {
      // 代码大小       524 (0x20c)
      .maxstack  8
      .locals init (int32 V_0,
               int32 V_1,
               valuetype [Engine]Engine.Matrix V_2,
               valuetype [Engine]Engine.Vector3 V_3,
               valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_4,
               valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_5,
               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6,
               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_7,
               int32 V_8,
               class [System.Runtime]System.Action V_9)
      IL_0000:  ldarg.1
      IL_0001:  brfalse    IL_020b

      IL_0006:  ldarg.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_0013:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::TryAddDesign(class Game.FurnitureDesign)
      IL_0018:  stfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_001d:  ldarg.0
      IL_001e:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_0023:  brtrue.s   IL_0047

      IL_0025:  ldarg.0
      IL_0026:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_002b:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
      IL_0030:  dup
      IL_0031:  brtrue.s   IL_0035

      IL_0033:  pop
      IL_0034:  ret

      IL_0035:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
      IL_003a:  ldstr      "Too many different furniture designs"
      IL_003f:  ldc.i4.1
      IL_0040:  ldc.i4.0
      IL_0041:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                                bool,
                                                                                bool)
      IL_0046:  ret

      IL_0047:  ldarg.0
      IL_0048:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
      IL_004d:  ldfld      class Game.SubsystemGameInfo Game.SubsystemFurnitureBlockBehavior::m_subsystemGameInfo
      IL_0052:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
      IL_0057:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
      IL_005c:  brfalse.s  IL_00c7

      IL_005e:  ldarg.0
      IL_005f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
      IL_0064:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
      IL_0069:  stloc.s    V_4
      .try
      {
        IL_006b:  br.s       IL_00ae

        IL_006d:  ldloca.s   V_4
        IL_006f:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
        IL_0074:  stloc.s    V_5
        IL_0076:  ldarg.0
        IL_0077:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
        IL_007c:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
        IL_0081:  ldc.i4.0
        IL_0082:  ldloca.s   V_5
        IL_0084:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
        IL_0089:  ldfld      int32 [Engine]Engine.Point3::X
        IL_008e:  ldloca.s   V_5
        IL_0090:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
        IL_0095:  ldfld      int32 [Engine]Engine.Point3::Y
        IL_009a:  ldloca.s   V_5
        IL_009c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
        IL_00a1:  ldfld      int32 [Engine]Engine.Point3::Z
        IL_00a6:  ldc.i4.0
        IL_00a7:  ldc.i4.1
        IL_00a8:  ldc.i4.1
        IL_00a9:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              int32,
                                                                              bool,
                                                                              bool)
        IL_00ae:  ldloca.s   V_4
        IL_00b0:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
        IL_00b5:  brtrue.s   IL_006d

        IL_00b7:  leave.s    IL_00c7

      }  // end .try
      finally
      {
        IL_00b9:  ldloca.s   V_4
        IL_00bb:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
        IL_00c1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00c6:  endfinally
      }  // end handler
      IL_00c7:  ldc.i4     0xe3
      IL_00cc:  ldc.i4.0
      IL_00cd:  ldc.i4.0
      IL_00ce:  ldarg.0
      IL_00cf:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_00d4:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_00d9:  ldarg.0
      IL_00da:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_00df:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
      IL_00e4:  ldarg.0
      IL_00e5:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_00ea:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
      IL_00ef:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                     int32,
                                                                     int32,
                                                                     bool)
      IL_00f4:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                              int32,
                                                              int32)
      IL_00f9:  stloc.0
      IL_00fa:  ldarg.0
      IL_00fb:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
      IL_0100:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
      IL_0105:  ldc.i4.4
      IL_0106:  ldc.i4.8
      IL_0107:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                                 int32,
                                                                 int32)
      IL_010c:  stloc.1
      IL_010d:  ldarg.0
      IL_010e:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_0113:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_0118:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
      IL_011d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
      IL_0122:  stloc.2
      IL_0123:  ldloca.s   V_2
      IL_0125:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
      IL_012a:  ldc.r4     1.
      IL_012f:  ldloca.s   V_2
      IL_0131:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
      IL_0136:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_013b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0140:  ldc.r4     1.
      IL_0145:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
      IL_014a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_014f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0154:  stloc.3
      IL_0155:  ldarg.0
      IL_0156:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
      IL_015b:  ldfld      class Game.SubsystemPickables Game.SubsystemFurnitureBlockBehavior::m_subsystemPickables
      IL_0160:  ldloc.0
      IL_0161:  ldloc.1
      IL_0162:  ldloc.3
      IL_0163:  ldloca.s   V_6
      IL_0165:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_016b:  ldloc.s    V_6
      IL_016d:  ldloca.s   V_7
      IL_016f:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_0175:  ldloc.s    V_7
      IL_0177:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_017c:  pop
      IL_017d:  ldarg.0
      IL_017e:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_0183:  ldc.i4.1
      IL_0184:  callvirt   instance void Game.ComponentMiner::DamageActiveTool(int32)
      IL_0189:  ldarg.0
      IL_018a:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_018f:  ldc.i4.0
      IL_0190:  callvirt   instance void Game.ComponentMiner::Poke(bool)
      IL_0195:  ldc.i4.0
      IL_0196:  stloc.s    V_8
      IL_0198:  br.s       IL_01d6

      IL_019a:  call       float64 [Engine]Engine.Time::get_FrameStartTime()
      IL_019f:  ldloc.s    V_8
      IL_01a1:  conv.r4
      IL_01a2:  ldc.r4     0.25
      IL_01a7:  mul
      IL_01a8:  conv.r8
      IL_01a9:  add
      IL_01aa:  ldarg.0
      IL_01ab:  ldfld      class [System.Runtime]System.Action Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>9__1'
      IL_01b0:  dup
      IL_01b1:  brtrue.s   IL_01cb

      IL_01b3:  pop
      IL_01b4:  ldarg.0
      IL_01b5:  ldarg.0
      IL_01b6:  ldftn      instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<ScanDesign>b__1'()
      IL_01bc:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                              native int)
      IL_01c1:  dup
      IL_01c2:  stloc.s    V_9
      IL_01c4:  stfld      class [System.Runtime]System.Action Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>9__1'
      IL_01c9:  ldloc.s    V_9
      IL_01cb:  call       void [Engine]Engine.Time::QueueTimeDelayedExecution(float64,
                                                                               class [System.Runtime]System.Action)
      IL_01d0:  ldloc.s    V_8
      IL_01d2:  ldc.i4.1
      IL_01d3:  add
      IL_01d4:  stloc.s    V_8
      IL_01d6:  ldloc.s    V_8
      IL_01d8:  ldc.i4.3
      IL_01d9:  blt.s      IL_019a

      IL_01db:  ldarg.0
      IL_01dc:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_01e1:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_01e6:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_01eb:  brfalse.s  IL_020b

      IL_01ed:  ldarg.0
      IL_01ee:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
      IL_01f3:  callvirt   instance class Game.ComponentCreature Game.ComponentMiner::get_ComponentCreature()
      IL_01f8:  callvirt   instance class Game.PlayerStats Game.ComponentCreature::get_PlayerStats()
      IL_01fd:  dup
      IL_01fe:  ldfld      int64 Game.PlayerStats::FurnitureItemsMade
      IL_0203:  ldloc.1
      IL_0204:  conv.i8
      IL_0205:  add
      IL_0206:  stfld      int64 Game.PlayerStats::FurnitureItemsMade
      IL_020b:  ret
    } // end of method '<>c__DisplayClass18_0'::'<ScanDesign>b__0'

    .method assembly hidebysig instance void 
            '<ScanDesign>b__1'() cil managed
    {
      // 代码大小       44 (0x2c)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
      IL_0006:  ldfld      class Game.SubsystemSoundMaterials Game.SubsystemFurnitureBlockBehavior::m_subsystemSoundMaterials
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::startValue
      IL_0011:  ldarg.0
      IL_0012:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
      IL_0017:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
      IL_001c:  newobj     instance void [Engine]Engine.Vector3::.ctor(valuetype [Engine]Engine.Point3)
      IL_0021:  ldc.r4     1.
      IL_0026:  callvirt   instance void Game.SubsystemSoundMaterials::PlayImpactSound(int32,
                                                                                       valuetype [Engine]Engine.Vector3,
                                                                                       float32)
      IL_002b:  ret
    } // end of method '<>c__DisplayClass18_0'::'<ScanDesign>b__1'

  } // end of class '<>c__DisplayClass18_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass23_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string uniqueName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass23_0'::.ctor

    .method assembly hidebysig instance bool 
            '<NewFurnitureSet>b__0'(class Game.FurnitureSet fs) cil managed
    {
      // 代码大小       18 (0x12)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      string Game.FurnitureSet::Name
      IL_0006:  ldarg.0
      IL_0007:  ldfld      string Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::uniqueName
      IL_000c:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0011:  ret
    } // end of method '<>c__DisplayClass23_0'::'<NewFurnitureSet>b__0'

  } // end of class '<>c__DisplayClass23_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass27_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.FurnitureSet furnitureSet
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass27_0'::.ctor

    .method assembly hidebysig instance bool 
            '<GetFurnitureSetDesigns>b__0'(class Game.FurnitureDesign fd) cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  brfalse.s  IL_0012

      IL_0003:  ldarg.1
      IL_0004:  callvirt   instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
      IL_0009:  ldarg.0
      IL_000a:  ldfld      class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass27_0'::furnitureSet
      IL_000f:  ceq
      IL_0011:  ret

      IL_0012:  ldc.i4.0
      IL_0013:  ret
    } // end of method '<>c__DisplayClass27_0'::'<GetFurnitureSetDesigns>b__0'

  } // end of class '<>c__DisplayClass27_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass28_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class Game.FurnitureDesign design
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass28_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadFurnitureDesigns>b__0'(class Game.FurnitureDesign d) cil managed
    {
      // 代码大小       20 (0x14)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::design
      IL_000c:  ldfld      int32 Game.FurnitureDesign::m_loadTimeLinkedDesignIndex
      IL_0011:  ceq
      IL_0013:  ret
    } // end of method '<>c__DisplayClass28_0'::'<LoadFurnitureDesigns>b__0'

  } // end of class '<>c__DisplayClass28_0'

  .field public static literal int32 MaxDesigns = int32(0x00000400)
  .field public static literal int32 MaxFurnitureSetNameLength = int32(0x00000014)
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemSoundMaterials m_subsystemSoundMaterials
  .field private class Game.SubsystemItemsScanner m_subsystemItemsScanner
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> m_furnitureSets
  .field private class Game.FurnitureDesign[] m_furnitureDesigns
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> m_particleSystemsByCell
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemFurnitureBlockBehavior::get_HandledBlocks

  .method public hidebysig instance class Game.FurnitureDesign 
          GetDesign(int32 index) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldc.i4.0
    IL_0002:  blt.s      IL_000f

    IL_0004:  ldarg.1
    IL_0005:  ldarg.0
    IL_0006:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_000b:  ldlen
    IL_000c:  conv.i4
    IL_000d:  blt.s      IL_0011

    IL_000f:  ldnull
    IL_0010:  ret

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0017:  ldarg.1
    IL_0018:  ldelem.ref
    IL_0019:  ret
  } // end of method SubsystemFurnitureBlockBehavior::GetDesign

  .method public hidebysig instance class Game.FurnitureDesign 
          FindMatchingDesign(class Game.FurnitureDesign design) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_000a:  ldloc.0
    IL_000b:  ldelem.ref
    IL_000c:  brfalse.s  IL_0027

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0014:  ldloc.0
    IL_0015:  ldelem.ref
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance bool Game.FurnitureDesign::Compare(class Game.FurnitureDesign)
    IL_001c:  brfalse.s  IL_0027

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0024:  ldloc.0
    IL_0025:  ldelem.ref
    IL_0026:  ret

    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0032:  ldlen
    IL_0033:  conv.i4
    IL_0034:  blt.s      IL_0004

    IL_0036:  ldnull
    IL_0037:  ret
  } // end of method SubsystemFurnitureBlockBehavior::FindMatchingDesign

  .method public hidebysig instance class Game.FurnitureDesign 
          FindMatchingDesignChain(class Game.FurnitureDesign design) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  2
    .locals init (class Game.FurnitureDesign V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::FindMatchingDesign(class Game.FurnitureDesign)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_0016

    IL_000b:  ldarg.1
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance bool Game.FurnitureDesign::CompareChain(class Game.FurnitureDesign)
    IL_0012:  brfalse.s  IL_0016

    IL_0014:  ldloc.0
    IL_0015:  ret

    IL_0016:  ldnull
    IL_0017:  ret
  } // end of method SubsystemFurnitureBlockBehavior::FindMatchingDesignChain

  .method public hidebysig instance class Game.FurnitureDesign 
          TryAddDesign(class Game.FurnitureDesign design) cil managed
  {
    // 代码大小       140 (0x8c)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002b

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_000a:  ldloc.0
    IL_000b:  ldelem.ref
    IL_000c:  brfalse.s  IL_0027

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0014:  ldloc.0
    IL_0015:  ldelem.ref
    IL_0016:  ldarg.1
    IL_0017:  callvirt   instance bool Game.FurnitureDesign::Compare(class Game.FurnitureDesign)
    IL_001c:  brfalse.s  IL_0027

    IL_001e:  ldarg.0
    IL_001f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0024:  ldloc.0
    IL_0025:  ldelem.ref
    IL_0026:  ret

    IL_0027:  ldloc.0
    IL_0028:  ldc.i4.1
    IL_0029:  add
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0032:  ldlen
    IL_0033:  conv.i4
    IL_0034:  blt.s      IL_0004

    IL_0036:  ldc.i4.0
    IL_0037:  stloc.1
    IL_0038:  br.s       IL_0052

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0040:  ldloc.1
    IL_0041:  ldelem.ref
    IL_0042:  brtrue.s   IL_004e

    IL_0044:  ldarg.0
    IL_0045:  ldloc.1
    IL_0046:  ldarg.1
    IL_0047:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddDesign(int32,
                                                                                       class Game.FurnitureDesign)
    IL_004c:  ldarg.1
    IL_004d:  ret

    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.1
    IL_0050:  add
    IL_0051:  stloc.1
    IL_0052:  ldloc.1
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0059:  ldlen
    IL_005a:  conv.i4
    IL_005b:  blt.s      IL_003a

    IL_005d:  ldarg.0
    IL_005e:  call       instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns()
    IL_0063:  ldc.i4.0
    IL_0064:  stloc.2
    IL_0065:  br.s       IL_007f

    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_006d:  ldloc.2
    IL_006e:  ldelem.ref
    IL_006f:  brtrue.s   IL_007b

    IL_0071:  ldarg.0
    IL_0072:  ldloc.2
    IL_0073:  ldarg.1
    IL_0074:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddDesign(int32,
                                                                                       class Game.FurnitureDesign)
    IL_0079:  ldarg.1
    IL_007a:  ret

    IL_007b:  ldloc.2
    IL_007c:  ldc.i4.1
    IL_007d:  add
    IL_007e:  stloc.2
    IL_007f:  ldloc.2
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0086:  ldlen
    IL_0087:  conv.i4
    IL_0088:  blt.s      IL_0067

    IL_008a:  ldnull
    IL_008b:  ret
  } // end of method SubsystemFurnitureBlockBehavior::TryAddDesign

  .method public hidebysig instance class Game.FurnitureDesign 
          TryAddDesignChain(class Game.FurnitureDesign design) cil managed
  {
    // 代码大小       208 (0xd0)
    .maxstack  4
    .locals init (class Game.FurnitureDesign V_0,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_1,
             int32 V_2,
             int32 V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::FindMatchingDesignChain(class Game.FurnitureDesign)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brfalse.s  IL_000d

    IL_000b:  ldloc.0
    IL_000c:  ret

    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0013:  stloc.1
    IL_0014:  ldarg.0
    IL_0015:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_001a:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__17_0'
    IL_001f:  dup
    IL_0020:  brtrue.s   IL_0039

    IL_0022:  pop
    IL_0023:  ldsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
    IL_0028:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c'::'<TryAddDesignChain>b__17_0'(class Game.FurnitureDesign)
    IL_002e:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool>::.ctor(object,
                                                                                                                   native int)
    IL_0033:  dup
    IL_0034:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__17_0'
    IL_0039:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                      class [System.Runtime]System.Func`2<!!0,bool>)
    IL_003e:  ldloc.1
    IL_003f:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_0044:  bge.s      IL_004c

    IL_0046:  ldarg.0
    IL_0047:  call       instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns()
    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0052:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__17_1'
    IL_0057:  dup
    IL_0058:  brtrue.s   IL_0071

    IL_005a:  pop
    IL_005b:  ldsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
    IL_0060:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c'::'<TryAddDesignChain>b__17_1'(class Game.FurnitureDesign)
    IL_0066:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool>::.ctor(object,
                                                                                                                   native int)
    IL_006b:  dup
    IL_006c:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__17_1'
    IL_0071:  call       int32 [System.Linq]System.Linq.Enumerable::Count<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                      class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0076:  ldloc.1
    IL_0077:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_007c:  bge.s      IL_0080

    IL_007e:  ldnull
    IL_007f:  ret

    IL_0080:  ldc.i4.0
    IL_0081:  stloc.2
    IL_0082:  ldc.i4.0
    IL_0083:  stloc.3
    IL_0084:  br.s       IL_00a6

    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_008c:  ldloc.3
    IL_008d:  ldelem.ref
    IL_008e:  brtrue.s   IL_00a2

    IL_0090:  ldarg.0
    IL_0091:  ldloc.3
    IL_0092:  ldloc.1
    IL_0093:  ldloc.2
    IL_0094:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Item(int32)
    IL_0099:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddDesign(int32,
                                                                                       class Game.FurnitureDesign)
    IL_009e:  ldloc.2
    IL_009f:  ldc.i4.1
    IL_00a0:  add
    IL_00a1:  stloc.2
    IL_00a2:  ldloc.3
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.3
    IL_00a6:  ldloc.3
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_00ad:  ldlen
    IL_00ae:  conv.i4
    IL_00af:  bge.s      IL_00ba

    IL_00b1:  ldloc.2
    IL_00b2:  ldloc.1
    IL_00b3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_00b8:  blt.s      IL_0086

    IL_00ba:  ldloc.2
    IL_00bb:  ldloc.1
    IL_00bc:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::get_Count()
    IL_00c1:  beq.s      IL_00ce

    IL_00c3:  ldstr      "Internal error."
    IL_00c8:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00cd:  throw

    IL_00ce:  ldarg.1
    IL_00cf:  ret
  } // end of method SubsystemFurnitureBlockBehavior::TryAddDesignChain

  .method public hidebysig instance void 
          ScanDesign(valuetype Game.CellFace start,
                     valuetype [Engine]Engine.Vector3 direction,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       1490 (0x5d2)
    .maxstack  5
    .locals init (class Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0' V_0,
             class Game.FurnitureDesign V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4,
             class Game.BuildFurnitureDialog V_5,
             int32 V_6,
             class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3> V_7,
             valuetype [Engine]Engine.Point3 V_8,
             int32 V_9,
             int32[] V_10,
             int32 V_11,
             valuetype [Engine]Engine.Point3 V_12,
             valuetype [Engine]Engine.Point3 V_13,
             valuetype [Engine]Engine.Point3 V_14,
             valuetype [Engine]Engine.Point3 V_15,
             int32 V_16,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_17,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_18,
             valuetype [Engine]Engine.Point3 V_19,
             valuetype [Engine]Engine.Box V_20)
    IL_0000:  newobj     instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemFurnitureBlockBehavior Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<>4__this'
    IL_000d:  ldloc.0
    IL_000e:  ldarg.3
    IL_000f:  stfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_0014:  ldloc.0
    IL_0015:  ldarg.1
    IL_0016:  stfld      valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_001b:  ldloc.0
    IL_001c:  ldnull
    IL_001d:  stfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0022:  ldnull
    IL_0023:  stloc.1
    IL_0024:  ldloc.0
    IL_0025:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_002a:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_002f:  ldloc.0
    IL_0030:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0035:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_003a:  stloc.2
    IL_003b:  ldloc.0
    IL_003c:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0041:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0046:  stloc.3
    IL_0047:  ldloc.0
    IL_0048:  ldarg.0
    IL_0049:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_004e:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0053:  ldloc.0
    IL_0054:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0059:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_005e:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0063:  ldloc.0
    IL_0064:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0069:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_006e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0073:  ldloc.0
    IL_0074:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0079:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_007e:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0083:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0088:  stfld      int32 Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::startValue
    IL_008d:  ldloc.0
    IL_008e:  ldfld      int32 Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::startValue
    IL_0093:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0098:  stloc.s    V_4
    IL_009a:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_009f:  ldloc.s    V_4
    IL_00a1:  ldelem.ref
    IL_00a2:  isinst     Game.FurnitureBlock
    IL_00a7:  brfalse    IL_0131

    IL_00ac:  ldloc.0
    IL_00ad:  ldfld      int32 Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::startValue
    IL_00b2:  call       int32 Game.Terrain::ExtractData(int32)
    IL_00b7:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_00bc:  stloc.s    V_6
    IL_00be:  ldarg.0
    IL_00bf:  ldloc.s    V_6
    IL_00c1:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_00c6:  stloc.1
    IL_00c7:  ldloc.1
    IL_00c8:  brfalse.s  IL_010f

    IL_00ca:  ldloc.0
    IL_00cb:  ldloc.1
    IL_00cc:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::Clone()
    IL_00d1:  stfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_00d6:  ldloc.0
    IL_00d7:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_00dc:  ldnull
    IL_00dd:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
    IL_00e2:  ldloc.0
    IL_00e3:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_00e8:  ldc.i4.0
    IL_00e9:  callvirt   instance void Game.FurnitureDesign::set_InteractionMode(valuetype Game.FurnitureInteractionMode)
    IL_00ee:  ldloc.0
    IL_00ef:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_00f4:  ldloc.0
    IL_00f5:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_00fa:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_00ff:  ldloc.0
    IL_0100:  ldfld      int32 Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::startValue
    IL_0105:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Add(!0,
                                                                                                                                                     !1)
    IL_010a:  br         IL_058e

    IL_010f:  ldloc.0
    IL_0110:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_0115:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_011a:  dup
    IL_011b:  brtrue.s   IL_011f

    IL_011d:  pop
    IL_011e:  ret

    IL_011f:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_0124:  ldstr      "Unsuitable block found"
    IL_0129:  ldc.i4.1
    IL_012a:  ldc.i4.0
    IL_012b:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_0130:  ret

    IL_0131:  newobj     instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0136:  stloc.s    V_7
    IL_0138:  ldloc.s    V_7
    IL_013a:  ldloc.0
    IL_013b:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_0140:  call       instance valuetype [Engine]Engine.Point3 Game.CellFace::get_Point()
    IL_0145:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_014a:  br         IL_03bb

    IL_014f:  ldloc.s    V_7
    IL_0151:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Pop()
    IL_0156:  stloc.s    V_15
    IL_0158:  ldloc.0
    IL_0159:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_015e:  ldloc.s    V_15
    IL_0160:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::ContainsKey(!0)
    IL_0165:  brtrue     IL_03bb

    IL_016a:  ldarg.0
    IL_016b:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0170:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0175:  ldloc.s    V_15
    IL_0177:  ldfld      int32 [Engine]Engine.Point3::X
    IL_017c:  ldloc.s    V_15
    IL_017e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0183:  ldloc.s    V_15
    IL_0185:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_018a:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_018f:  stloc.s    V_16
    IL_0191:  ldloc.s    V_16
    IL_0193:  call       bool Game.SubsystemFurnitureBlockBehavior::IsValueDisallowed(int32)
    IL_0198:  brfalse.s  IL_01bc

    IL_019a:  ldloc.0
    IL_019b:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_01a0:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_01a5:  dup
    IL_01a6:  brtrue.s   IL_01aa

    IL_01a8:  pop
    IL_01a9:  ret

    IL_01aa:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_01af:  ldstr      "Unsuitable block found"
    IL_01b4:  ldc.i4.1
    IL_01b5:  ldc.i4.0
    IL_01b6:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_01bb:  ret

    IL_01bc:  ldloc.s    V_16
    IL_01be:  call       bool Game.SubsystemFurnitureBlockBehavior::IsValueAllowed(int32)
    IL_01c3:  brfalse    IL_03bb

    IL_01c8:  ldloc.s    V_15
    IL_01ca:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01cf:  ldloc.2
    IL_01d0:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01d5:  bge.s      IL_01e5

    IL_01d7:  ldloca.s   V_2
    IL_01d9:  ldloc.s    V_15
    IL_01db:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01e0:  stfld      int32 [Engine]Engine.Point3::X
    IL_01e5:  ldloc.s    V_15
    IL_01e7:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01ec:  ldloc.2
    IL_01ed:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01f2:  bge.s      IL_0202

    IL_01f4:  ldloca.s   V_2
    IL_01f6:  ldloc.s    V_15
    IL_01f8:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01fd:  stfld      int32 [Engine]Engine.Point3::Y
    IL_0202:  ldloc.s    V_15
    IL_0204:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0209:  ldloc.2
    IL_020a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_020f:  bge.s      IL_021f

    IL_0211:  ldloca.s   V_2
    IL_0213:  ldloc.s    V_15
    IL_0215:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_021a:  stfld      int32 [Engine]Engine.Point3::Z
    IL_021f:  ldloc.s    V_15
    IL_0221:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0226:  ldloc.3
    IL_0227:  ldfld      int32 [Engine]Engine.Point3::X
    IL_022c:  ble.s      IL_023c

    IL_022e:  ldloca.s   V_3
    IL_0230:  ldloc.s    V_15
    IL_0232:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0237:  stfld      int32 [Engine]Engine.Point3::X
    IL_023c:  ldloc.s    V_15
    IL_023e:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0243:  ldloc.3
    IL_0244:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0249:  ble.s      IL_0259

    IL_024b:  ldloca.s   V_3
    IL_024d:  ldloc.s    V_15
    IL_024f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0254:  stfld      int32 [Engine]Engine.Point3::Y
    IL_0259:  ldloc.s    V_15
    IL_025b:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0260:  ldloc.3
    IL_0261:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0266:  ble.s      IL_0276

    IL_0268:  ldloca.s   V_3
    IL_026a:  ldloc.s    V_15
    IL_026c:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0271:  stfld      int32 [Engine]Engine.Point3::Z
    IL_0276:  ldloc.2
    IL_0277:  ldfld      int32 [Engine]Engine.Point3::X
    IL_027c:  ldloc.3
    IL_027d:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0282:  sub
    IL_0283:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_0288:  ldc.i4.s   16
    IL_028a:  bge.s      IL_02b8

    IL_028c:  ldloc.2
    IL_028d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0292:  ldloc.3
    IL_0293:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0298:  sub
    IL_0299:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_029e:  ldc.i4.s   16
    IL_02a0:  bge.s      IL_02b8

    IL_02a2:  ldloc.2
    IL_02a3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_02a8:  ldloc.3
    IL_02a9:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_02ae:  sub
    IL_02af:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_02b4:  ldc.i4.s   16
    IL_02b6:  blt.s      IL_02da

    IL_02b8:  ldloc.0
    IL_02b9:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_02be:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_02c3:  dup
    IL_02c4:  brtrue.s   IL_02c8

    IL_02c6:  pop
    IL_02c7:  ret

    IL_02c8:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_02cd:  ldstr      "Furniture design is too large"
    IL_02d2:  ldc.i4.1
    IL_02d3:  ldc.i4.0
    IL_02d4:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_02d9:  ret

    IL_02da:  ldloc.0
    IL_02db:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_02e0:  ldloc.s    V_15
    IL_02e2:  ldloc.s    V_16
    IL_02e4:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_02e9:  ldloc.s    V_7
    IL_02eb:  ldloc.s    V_15
    IL_02ed:  ldfld      int32 [Engine]Engine.Point3::X
    IL_02f2:  ldc.i4.1
    IL_02f3:  sub
    IL_02f4:  ldloc.s    V_15
    IL_02f6:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_02fb:  ldloc.s    V_15
    IL_02fd:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0302:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0307:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_030c:  ldloc.s    V_7
    IL_030e:  ldloc.s    V_15
    IL_0310:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0315:  ldc.i4.1
    IL_0316:  add
    IL_0317:  ldloc.s    V_15
    IL_0319:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_031e:  ldloc.s    V_15
    IL_0320:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0325:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_032a:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_032f:  ldloc.s    V_7
    IL_0331:  ldloc.s    V_15
    IL_0333:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0338:  ldloc.s    V_15
    IL_033a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_033f:  ldc.i4.1
    IL_0340:  sub
    IL_0341:  ldloc.s    V_15
    IL_0343:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0348:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_034d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_0352:  ldloc.s    V_7
    IL_0354:  ldloc.s    V_15
    IL_0356:  ldfld      int32 [Engine]Engine.Point3::X
    IL_035b:  ldloc.s    V_15
    IL_035d:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0362:  ldc.i4.1
    IL_0363:  add
    IL_0364:  ldloc.s    V_15
    IL_0366:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_036b:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0370:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_0375:  ldloc.s    V_7
    IL_0377:  ldloc.s    V_15
    IL_0379:  ldfld      int32 [Engine]Engine.Point3::X
    IL_037e:  ldloc.s    V_15
    IL_0380:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0385:  ldloc.s    V_15
    IL_0387:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_038c:  ldc.i4.1
    IL_038d:  sub
    IL_038e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0393:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_0398:  ldloc.s    V_7
    IL_039a:  ldloc.s    V_15
    IL_039c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_03a1:  ldloc.s    V_15
    IL_03a3:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_03a8:  ldloc.s    V_15
    IL_03aa:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_03af:  ldc.i4.1
    IL_03b0:  add
    IL_03b1:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_03b6:  callvirt   instance void class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::Push(!0)
    IL_03bb:  ldloc.s    V_7
    IL_03bd:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Stack`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_03c2:  ldc.i4.0
    IL_03c3:  bgt        IL_014f

    IL_03c8:  ldloc.0
    IL_03c9:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_03ce:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::get_Count()
    IL_03d3:  brtrue.s   IL_03f7

    IL_03d5:  ldloc.0
    IL_03d6:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_03db:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_03e0:  dup
    IL_03e1:  brtrue.s   IL_03e5

    IL_03e3:  pop
    IL_03e4:  ret

    IL_03e5:  call       instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_03ea:  ldstr      "No suitable blocks found"
    IL_03ef:  ldc.i4.1
    IL_03f0:  ldc.i4.0
    IL_03f1:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                              bool,
                                                                              bool)
    IL_03f6:  ret

    IL_03f7:  ldloc.0
    IL_03f8:  ldarg.0
    IL_03f9:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_03fe:  newobj     instance void Game.FurnitureDesign::.ctor(class Game.SubsystemTerrain)
    IL_0403:  stfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0408:  ldloc.3
    IL_0409:  ldloc.2
    IL_040a:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Subtraction(valuetype [Engine]Engine.Point3,
                                                                                               valuetype [Engine]Engine.Point3)
    IL_040f:  stloc.s    V_8
    IL_0411:  ldloc.s    V_8
    IL_0413:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0418:  ldloc.s    V_8
    IL_041a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_041f:  ldloc.s    V_8
    IL_0421:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0426:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32,
                                                             int32)
    IL_042b:  ldc.i4.1
    IL_042c:  add
    IL_042d:  ldc.i4.2
    IL_042e:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0433:  stloc.s    V_9
    IL_0435:  ldloc.s    V_9
    IL_0437:  ldloc.s    V_9
    IL_0439:  mul
    IL_043a:  ldloc.s    V_9
    IL_043c:  mul
    IL_043d:  newarr     [System.Runtime]System.Int32
    IL_0442:  stloc.s    V_10
    IL_0444:  ldloc.0
    IL_0445:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::valuesDictionary
    IL_044a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_044f:  stloc.s    V_17
    .try
    {
      IL_0451:  br.s       IL_0495

      IL_0453:  ldloca.s   V_17
      IL_0455:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_045a:  stloc.s    V_18
      IL_045c:  ldloca.s   V_18
      IL_045e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0463:  ldloc.2
      IL_0464:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Subtraction(valuetype [Engine]Engine.Point3,
                                                                                                 valuetype [Engine]Engine.Point3)
      IL_0469:  stloc.s    V_19
      IL_046b:  ldloc.s    V_10
      IL_046d:  ldloc.s    V_19
      IL_046f:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0474:  ldloc.s    V_19
      IL_0476:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_047b:  ldloc.s    V_9
      IL_047d:  mul
      IL_047e:  add
      IL_047f:  ldloc.s    V_19
      IL_0481:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0486:  ldloc.s    V_9
      IL_0488:  mul
      IL_0489:  ldloc.s    V_9
      IL_048b:  mul
      IL_048c:  add
      IL_048d:  ldloca.s   V_18
      IL_048f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_0494:  stelem.i4
      IL_0495:  ldloca.s   V_17
      IL_0497:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_049c:  brtrue.s   IL_0453

      IL_049e:  leave.s    IL_04ae

    }  // end .try
    finally
    {
      IL_04a0:  ldloca.s   V_17
      IL_04a2:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_04a8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04ad:  endfinally
    }  // end handler
    IL_04ae:  ldloc.0
    IL_04af:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_04b4:  ldloc.s    V_9
    IL_04b6:  ldloc.s    V_10
    IL_04b8:  callvirt   instance void Game.FurnitureDesign::SetValues(int32,
                                                                       int32[])
    IL_04bd:  ldloc.0
    IL_04be:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_04c3:  ldfld      int32 Game.CellFace::Face
    IL_04c8:  ldc.i4.3
    IL_04c9:  bgt.s      IL_04df

    IL_04cb:  ldloc.0
    IL_04cc:  ldflda     valuetype Game.CellFace Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::start
    IL_04d1:  ldfld      int32 Game.CellFace::Face
    IL_04d6:  call       int32 Game.CellFace::OppositeFace(int32)
    IL_04db:  stloc.s    V_11
    IL_04dd:  br.s       IL_04e8

    IL_04df:  ldarg.2
    IL_04e0:  ldc.i4.3
    IL_04e1:  call       int32 Game.CellFace::Vector3ToFace(valuetype [Engine]Engine.Vector3,
                                                            int32)
    IL_04e6:  stloc.s    V_11
    IL_04e8:  ldloc.0
    IL_04e9:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_04ee:  ldc.i4.1
    IL_04ef:  ldloc.s    V_11
    IL_04f1:  callvirt   instance void Game.FurnitureDesign::Rotate(int32,
                                                                    int32)
    IL_04f6:  ldloc.0
    IL_04f7:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_04fc:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0501:  stloc.s    V_20
    IL_0503:  ldloca.s   V_20
    IL_0505:  call       instance valuetype [Engine]Engine.Point3 [Engine]Engine.Box::get_Location()
    IL_050a:  stloc.s    V_12
    IL_050c:  ldloc.0
    IL_050d:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0512:  callvirt   instance int32 Game.FurnitureDesign::get_Resolution()
    IL_0517:  newobj     instance void [Engine]Engine.Point3::.ctor(int32)
    IL_051c:  ldloc.0
    IL_051d:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0522:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_0527:  stloc.s    V_20
    IL_0529:  ldloca.s   V_20
    IL_052b:  call       instance valuetype [Engine]Engine.Point3 [Engine]Engine.Box::get_Location()
    IL_0530:  ldloc.0
    IL_0531:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0536:  callvirt   instance valuetype [Engine]Engine.Box Game.FurnitureDesign::get_Box()
    IL_053b:  stloc.s    V_20
    IL_053d:  ldloca.s   V_20
    IL_053f:  call       instance valuetype [Engine]Engine.Point3 [Engine]Engine.Box::get_Size()
    IL_0544:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Addition(valuetype [Engine]Engine.Point3,
                                                                                            valuetype [Engine]Engine.Point3)
    IL_0549:  call       valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::op_Subtraction(valuetype [Engine]Engine.Point3,
                                                                                               valuetype [Engine]Engine.Point3)
    IL_054e:  stloc.s    V_13
    IL_0550:  ldloca.s   V_14
    IL_0552:  ldloc.s    V_13
    IL_0554:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0559:  ldloc.s    V_12
    IL_055b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0560:  sub
    IL_0561:  ldc.i4.2
    IL_0562:  div
    IL_0563:  ldloc.s    V_12
    IL_0565:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_056a:  neg
    IL_056b:  ldloc.s    V_13
    IL_056d:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0572:  ldloc.s    V_12
    IL_0574:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0579:  sub
    IL_057a:  ldc.i4.2
    IL_057b:  div
    IL_057c:  call       instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0581:  ldloc.0
    IL_0582:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0587:  ldloc.s    V_14
    IL_0589:  callvirt   instance void Game.FurnitureDesign::Shift(valuetype [Engine]Engine.Point3)
    IL_058e:  ldloc.0
    IL_058f:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::design
    IL_0594:  ldloc.1
    IL_0595:  ldloc.0
    IL_0596:  ldftn      instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::'<ScanDesign>b__0'(bool)
    IL_059c:  newobj     instance void class [System.Runtime]System.Action`1<bool>::.ctor(object,
                                                                                          native int)
    IL_05a1:  newobj     instance void Game.BuildFurnitureDialog::.ctor(class Game.FurnitureDesign,
                                                                        class Game.FurnitureDesign,
                                                                        class [System.Runtime]System.Action`1<bool>)
    IL_05a6:  stloc.s    V_5
    IL_05a8:  ldloc.0
    IL_05a9:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_05ae:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_05b3:  brfalse.s  IL_05d1

    IL_05b5:  ldloc.0
    IL_05b6:  ldfld      class Game.ComponentMiner Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass18_0'::componentMiner
    IL_05bb:  callvirt   instance class Game.ComponentPlayer Game.ComponentMiner::get_ComponentPlayer()
    IL_05c0:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_05c5:  callvirt   instance class Game.GameWidget Game.View::get_GameWidget()
    IL_05ca:  ldloc.s    V_5
    IL_05cc:  call       void Game.DialogsManager::ShowDialog(class Game.ContainerWidget,
                                                              class Game.Dialog)
    IL_05d1:  ret
  } // end of method SubsystemFurnitureBlockBehavior::ScanDesign

  .method public hidebysig instance void 
          SwitchToNextState(int32 x,
                            int32 y,
                            int32 z,
                            bool playSound) cil managed
  {
    // 代码大小       552 (0x228)
    .maxstack  7
    .locals init (class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3> V_0,
             class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_1,
             int32 V_2,
             valuetype [Engine]Engine.Point3 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             class Game.FurnitureDesign V_7,
             int32 V_8,
             int32 V_9)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_000b:  stloc.1
    IL_000c:  ldloc.1
    IL_000d:  ldarg.1
    IL_000e:  ldarg.2
    IL_000f:  ldarg.3
    IL_0010:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0015:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_001a:  ldc.i4.0
    IL_001b:  stloc.2
    IL_001c:  br         IL_01e4

    IL_0021:  ldloc.1
    IL_0022:  ldloc.2
    IL_0023:  dup
    IL_0024:  ldc.i4.1
    IL_0025:  add
    IL_0026:  stloc.2
    IL_0027:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::get_Item(int32)
    IL_002c:  stloc.3
    IL_002d:  ldloc.0
    IL_002e:  ldloc.3
    IL_002f:  callvirt   instance bool class [System.Collections]System.Collections.Generic.HashSet`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_0034:  brfalse    IL_01e4

    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_003f:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0044:  ldloc.3
    IL_0045:  ldfld      int32 [Engine]Engine.Point3::X
    IL_004a:  ldloc.3
    IL_004b:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0050:  ldloc.3
    IL_0051:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0056:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_005b:  stloc.s    V_4
    IL_005d:  ldloc.s    V_4
    IL_005f:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0064:  ldc.i4     0xe3
    IL_0069:  bne.un     IL_01e4

    IL_006e:  ldloc.s    V_4
    IL_0070:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0075:  stloc.s    V_5
    IL_0077:  ldloc.s    V_5
    IL_0079:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_007e:  stloc.s    V_6
    IL_0080:  ldarg.0
    IL_0081:  ldloc.s    V_6
    IL_0083:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0088:  stloc.s    V_7
    IL_008a:  ldloc.s    V_7
    IL_008c:  brfalse    IL_01e4

    IL_0091:  ldloc.s    V_7
    IL_0093:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_0098:  brfalse    IL_01e4

    IL_009d:  ldloc.s    V_7
    IL_009f:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00a4:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_00a9:  ldc.i4.0
    IL_00aa:  blt        IL_01e4

    IL_00af:  ldloc.1
    IL_00b0:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_00b5:  ldc.i4.1
    IL_00b6:  beq.s      IL_00c5

    IL_00b8:  ldloc.s    V_7
    IL_00ba:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_00bf:  ldc.i4.4
    IL_00c0:  bne.un     IL_01e4

    IL_00c5:  ldloc.s    V_5
    IL_00c7:  ldloc.s    V_7
    IL_00c9:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00ce:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
    IL_00d3:  ldloc.s    V_7
    IL_00d5:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00da:  callvirt   instance int32 Game.FurnitureDesign::get_ShadowStrengthFactor()
    IL_00df:  ldloc.s    V_7
    IL_00e1:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00e6:  callvirt   instance bool Game.FurnitureDesign::get_IsLightEmitter()
    IL_00eb:  call       int32 Game.FurnitureBlock::SetDesignIndex(int32,
                                                                   int32,
                                                                   int32,
                                                                   bool)
    IL_00f0:  stloc.s    V_8
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldloc.s    V_8
    IL_00f6:  call       int32 Game.Terrain::ReplaceData(int32,
                                                         int32)
    IL_00fb:  stloc.s    V_9
    IL_00fd:  ldarg.0
    IL_00fe:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0103:  ldloc.3
    IL_0104:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0109:  ldloc.3
    IL_010a:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_010f:  ldloc.3
    IL_0110:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_0115:  ldloc.s    V_9
    IL_0117:  ldc.i4.1
    IL_0118:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_011d:  ldloc.s    V_7
    IL_011f:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0124:  ldc.i4.4
    IL_0125:  bne.un     IL_01e4

    IL_012a:  ldloc.1
    IL_012b:  ldloc.3
    IL_012c:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0131:  ldc.i4.1
    IL_0132:  sub
    IL_0133:  ldloc.3
    IL_0134:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0139:  ldloc.3
    IL_013a:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_013f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0144:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_0149:  ldloc.1
    IL_014a:  ldloc.3
    IL_014b:  ldfld      int32 [Engine]Engine.Point3::X
    IL_0150:  ldc.i4.1
    IL_0151:  add
    IL_0152:  ldloc.3
    IL_0153:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0158:  ldloc.3
    IL_0159:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_015e:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0163:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_0168:  ldloc.1
    IL_0169:  ldloc.3
    IL_016a:  ldfld      int32 [Engine]Engine.Point3::X
    IL_016f:  ldloc.3
    IL_0170:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0175:  ldc.i4.1
    IL_0176:  sub
    IL_0177:  ldloc.3
    IL_0178:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_017d:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0182:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_0187:  ldloc.1
    IL_0188:  ldloc.3
    IL_0189:  ldfld      int32 [Engine]Engine.Point3::X
    IL_018e:  ldloc.3
    IL_018f:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_0194:  ldc.i4.1
    IL_0195:  add
    IL_0196:  ldloc.3
    IL_0197:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_019c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01a1:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_01a6:  ldloc.1
    IL_01a7:  ldloc.3
    IL_01a8:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01ad:  ldloc.3
    IL_01ae:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01b3:  ldloc.3
    IL_01b4:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01b9:  ldc.i4.1
    IL_01ba:  sub
    IL_01bb:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01c0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_01c5:  ldloc.1
    IL_01c6:  ldloc.3
    IL_01c7:  ldfld      int32 [Engine]Engine.Point3::X
    IL_01cc:  ldloc.3
    IL_01cd:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_01d2:  ldloc.3
    IL_01d3:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_01d8:  ldc.i4.1
    IL_01d9:  add
    IL_01da:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_01df:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
    IL_01e4:  ldloc.2
    IL_01e5:  ldloc.1
    IL_01e6:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::get_Count()
    IL_01eb:  bge.s      IL_01f8

    IL_01ed:  ldloc.2
    IL_01ee:  ldc.i4     0x1000
    IL_01f3:  blt        IL_0021

    IL_01f8:  ldarg.s    playSound
    IL_01fa:  brfalse.s  IL_0227

    IL_01fc:  ldarg.0
    IL_01fd:  ldfld      class Game.SubsystemAudio Game.SubsystemFurnitureBlockBehavior::m_subsystemAudio
    IL_0202:  ldstr      "Audio/BlockPlaced"
    IL_0207:  ldc.r4     1.
    IL_020c:  ldc.r4     0.0
    IL_0211:  ldarg.1
    IL_0212:  conv.r4
    IL_0213:  ldarg.2
    IL_0214:  conv.r4
    IL_0215:  ldarg.3
    IL_0216:  conv.r4
    IL_0217:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_021c:  ldc.r4     2.
    IL_0221:  ldc.i4.1
    IL_0222:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      bool)
    IL_0227:  ret
  } // end of method SubsystemFurnitureBlockBehavior::SwitchToNextState

  .method public hidebysig instance void 
          GarbageCollectDesigns() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.SubsystemItemsScanner Game.SubsystemFurnitureBlockBehavior::m_subsystemItemsScanner
    IL_0007:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData> Game.SubsystemItemsScanner::ScanItems()
    IL_000c:  call       instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>)
    IL_0011:  ret
  } // end of method SubsystemFurnitureBlockBehavior::GarbageCollectDesigns

  .method public hidebysig specialname instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> 
          get_FurnitureSets() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_000b:  ret
  } // end of method SubsystemFurnitureBlockBehavior::get_FurnitureSets

  .method public hidebysig instance class Game.FurnitureSet 
          NewFurnitureSet(string name,
                          string importedFrom) cil managed
  {
    // 代码大小       142 (0x8e)
    .maxstack  4
    .locals init (class Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0' V_0,
             int32 V_1,
             class Game.FurnitureSet V_2)
    IL_0000:  newobj     instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 [System.Runtime]System.String::get_Length()
    IL_000c:  ldc.i4.s   20
    IL_000e:  ble.s      IL_001b

    IL_0010:  ldarg.1
    IL_0011:  ldc.i4.0
    IL_0012:  ldc.i4.s   20
    IL_0014:  callvirt   instance string [System.Runtime]System.String::Substring(int32,
                                                                                  int32)
    IL_0019:  starg.s    name
    IL_001b:  ldc.i4.0
    IL_001c:  stloc.1
    IL_001d:  ldloc.0
    IL_001e:  ldarg.1
    IL_001f:  stfld      string Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::uniqueName
    IL_0024:  br.s       IL_0049

    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.1
    IL_002a:  ldloc.0
    IL_002b:  ldloc.1
    IL_002c:  ldc.i4.0
    IL_002d:  bgt.s      IL_0032

    IL_002f:  ldarg.1
    IL_0030:  br.s       IL_0044

    IL_0032:  ldarg.1
    IL_0033:  ldloca.s   V_1
    IL_0035:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_003a:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_003f:  call       string [System.Runtime]System.String::Concat(string,
                                                                      string)
    IL_0044:  stfld      string Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::uniqueName
    IL_0049:  ldarg.0
    IL_004a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_004f:  box        valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>
    IL_0054:  ldloc.0
    IL_0055:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::'<NewFurnitureSet>b__0'(class Game.FurnitureSet)
    IL_005b:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureSet,bool>::.ctor(object,
                                                                                                                native int)
    IL_0060:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.FurnitureSet>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                          class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0065:  brtrue.s   IL_0026

    IL_0067:  newobj     instance void Game.FurnitureSet::.ctor()
    IL_006c:  dup
    IL_006d:  ldloc.0
    IL_006e:  ldfld      string Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass23_0'::uniqueName
    IL_0073:  stfld      string Game.FurnitureSet::Name
    IL_0078:  dup
    IL_0079:  ldarg.2
    IL_007a:  stfld      string Game.FurnitureSet::ImportedFrom
    IL_007f:  stloc.2
    IL_0080:  ldarg.0
    IL_0081:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0086:  ldloc.2
    IL_0087:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::Add(!0)
    IL_008c:  ldloc.2
    IL_008d:  ret
  } // end of method SubsystemFurnitureBlockBehavior::NewFurnitureSet

  .method public hidebysig instance void 
          DeleteFurnitureSet(class Game.FurnitureSet furnitureSet) cil managed
  {
    // 代码大小       61 (0x3d)
    .maxstack  2
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.FurnitureDesign> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
    IL_0007:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_000c:  stloc.0
    .try
    {
      IL_000d:  br.s       IL_001b

      IL_000f:  ldloc.0
      IL_0010:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.FurnitureDesign>::get_Current()
      IL_0015:  ldnull
      IL_0016:  callvirt   instance void Game.FurnitureDesign::set_FurnitureSet(class Game.FurnitureSet)
      IL_001b:  ldloc.0
      IL_001c:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0021:  brtrue.s   IL_000f

      IL_0023:  leave.s    IL_002f

    }  // end .try
    finally
    {
      IL_0025:  ldloc.0
      IL_0026:  brfalse.s  IL_002e

      IL_0028:  ldloc.0
      IL_0029:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_002e:  endfinally
    }  // end handler
    IL_002f:  ldarg.0
    IL_0030:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0035:  ldarg.1
    IL_0036:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::Remove(!0)
    IL_003b:  pop
    IL_003c:  ret
  } // end of method SubsystemFurnitureBlockBehavior::DeleteFurnitureSet

  .method public hidebysig instance void 
          MoveFurnitureSet(class Game.FurnitureSet furnitureSet,
                           int32 move) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::IndexOf(!0)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.i4.0
    IL_000f:  blt.s      IL_003d

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::RemoveAt(int32)
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_0023:  ldloc.0
    IL_0024:  ldarg.2
    IL_0025:  add
    IL_0026:  ldc.i4.0
    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_002d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::get_Count()
    IL_0032:  call       int32 [Engine]Engine.MathUtils::Clamp(int32,
                                                               int32,
                                                               int32)
    IL_0037:  ldarg.1
    IL_0038:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::Insert(int32,
                                                                                                                                    !0)
    IL_003d:  ret
  } // end of method SubsystemFurnitureBlockBehavior::MoveFurnitureSet

  .method public hidebysig instance void 
          AddToFurnitureSet(class Game.FurnitureDesign design,
                            class Game.FurnitureSet furnitureSet) cil managed
  {
    // 代码大小       53 (0x35)
    .maxstack  2
    .locals init (valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_0)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.FurnitureDesign::ListChain()
    IL_0006:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  br.s       IL_001b

      IL_000e:  ldloca.s   V_0
      IL_0010:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
      IL_0015:  ldarg.2
      IL_0016:  callvirt   instance void Game.FurnitureDesign::set_FurnitureSet(class Game.FurnitureSet)
      IL_001b:  ldloca.s   V_0
      IL_001d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
      IL_0022:  brtrue.s   IL_000e

      IL_0024:  leave.s    IL_0034

    }  // end .try
    finally
    {
      IL_0026:  ldloca.s   V_0
      IL_0028:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
      IL_002e:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0033:  endfinally
    }  // end handler
    IL_0034:  ret
  } // end of method SubsystemFurnitureBlockBehavior::AddToFurnitureSet

  .method public hidebysig instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> 
          GetFurnitureSetDesigns(class Game.FurnitureSet furnitureSet) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  3
    .locals init (class Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass27_0' V_0)
    IL_0000:  newobj     instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass27_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class Game.FurnitureSet Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass27_0'::furnitureSet
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass27_0'::'<GetFurnitureSetDesigns>b__0'(class Game.FurnitureDesign)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool>::.ctor(object,
                                                                                                                   native int)
    IL_001f:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0024:  ret
  } // end of method SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns

  .method public hidebysig static class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> 
          LoadFurnitureDesigns(class Game.SubsystemTerrain subsystemTerrain,
                               class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       193 (0xc1)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object> V_2,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_3,
             class Game.FurnitureDesign V_4,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_5,
             class Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0' V_6)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>> [EntitySystem]TemplatesDatabase.ValuesDictionary::GetEnumerator()
    IL_000c:  stloc.1
    .try
    {
      IL_000d:  br.s       IL_0045

      IL_000f:  ldloc.1
      IL_0010:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>>::get_Current()
      IL_0015:  stloc.2
      IL_0016:  ldloca.s   V_2
      IL_0018:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Key()
      IL_001d:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0022:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                     class [System.Runtime]System.IFormatProvider)
      IL_0027:  ldloca.s   V_2
      IL_0029:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<string,object>::get_Value()
      IL_002e:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_0033:  stloc.3
      IL_0034:  ldarg.0
      IL_0035:  ldloc.3
      IL_0036:  newobj     instance void Game.FurnitureDesign::.ctor(int32,
                                                                     class Game.SubsystemTerrain,
                                                                     class [EntitySystem]TemplatesDatabase.ValuesDictionary)
      IL_003b:  stloc.s    V_4
      IL_003d:  ldloc.0
      IL_003e:  ldloc.s    V_4
      IL_0040:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::Add(!0)
      IL_0045:  ldloc.1
      IL_0046:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_004b:  brtrue.s   IL_000f

      IL_004d:  leave.s    IL_0059

    }  // end .try
    finally
    {
      IL_004f:  ldloc.1
      IL_0050:  brfalse.s  IL_0058

      IL_0052:  ldloc.1
      IL_0053:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0058:  endfinally
    }  // end handler
    IL_0059:  ldloc.0
    IL_005a:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_005f:  stloc.s    V_5
    .try
    {
      IL_0061:  br.s       IL_00a6

      IL_0063:  newobj     instance void Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::.ctor()
      IL_0068:  stloc.s    V_6
      IL_006a:  ldloc.s    V_6
      IL_006c:  ldloca.s   V_5
      IL_006e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
      IL_0073:  stfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::design
      IL_0078:  ldloc.s    V_6
      IL_007a:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::design
      IL_007f:  ldfld      int32 Game.FurnitureDesign::m_loadTimeLinkedDesignIndex
      IL_0084:  ldc.i4.0
      IL_0085:  blt.s      IL_00a6

      IL_0087:  ldloc.s    V_6
      IL_0089:  ldfld      class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::design
      IL_008e:  ldloc.0
      IL_008f:  ldloc.s    V_6
      IL_0091:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c__DisplayClass28_0'::'<LoadFurnitureDesigns>b__0'(class Game.FurnitureDesign)
      IL_0097:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool>::.ctor(object,
                                                                                                                     native int)
      IL_009c:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                               class [System.Runtime]System.Func`2<!!0,bool>)
      IL_00a1:  callvirt   instance void Game.FurnitureDesign::set_LinkedDesign(class Game.FurnitureDesign)
      IL_00a6:  ldloca.s   V_5
      IL_00a8:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
      IL_00ad:  brtrue.s   IL_0063

      IL_00af:  leave.s    IL_00bf

    }  // end .try
    finally
    {
      IL_00b1:  ldloca.s   V_5
      IL_00b3:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
      IL_00b9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00be:  endfinally
    }  // end handler
    IL_00bf:  ldloc.0
    IL_00c0:  ret
  } // end of method SubsystemFurnitureBlockBehavior::LoadFurnitureDesigns

  .method public hidebysig static void  SaveFurnitureDesigns(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
                                                             class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign> designs) cil managed
  {
    // 代码大小       68 (0x44)
    .maxstack  3
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.FurnitureDesign> V_0,
             class Game.FurnitureDesign V_1,
             int32 V_2)
    IL_0000:  ldarg.1
    IL_0001:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_0006:  stloc.0
    .try
    {
      IL_0007:  br.s       IL_002f

      IL_0009:  ldloc.0
      IL_000a:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class Game.FurnitureDesign>::get_Current()
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  ldloc.1
      IL_0012:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_0017:  stloc.2
      IL_0018:  ldloca.s   V_2
      IL_001a:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_001f:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_0024:  ldloc.1
      IL_0025:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary Game.FurnitureDesign::Save()
      IL_002a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_002f:  ldloc.0
      IL_0030:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0035:  brtrue.s   IL_0009

      IL_0037:  leave.s    IL_0043

    }  // end .try
    finally
    {
      IL_0039:  ldloc.0
      IL_003a:  brfalse.s  IL_0042

      IL_003c:  ldloc.0
      IL_003d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0042:  endfinally
    }  // end handler
    IL_0043:  ret
  } // end of method SubsystemFurnitureBlockBehavior::SaveFurnitureDesigns

  .method public hidebysig virtual instance void 
          OnBlockAdded(int32 'value',
                       int32 oldValue,
                       int32 x,
                       int32 y,
                       int32 z) cil managed
  {
    // 代码大小       20 (0x14)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddTerrainFurniture(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.1
    IL_0009:  ldarg.3
    IL_000a:  ldarg.s    y
    IL_000c:  ldarg.s    z
    IL_000e:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddParticleSystems(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_0013:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnBlockAdded

  .method public hidebysig virtual instance void 
          OnBlockRemoved(int32 'value',
                         int32 newValue,
                         int32 x,
                         int32 y,
                         int32 z) cil managed
  {
    // 代码大小       19 (0x13)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemFurnitureBlockBehavior::RemoveTerrainFurniture(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  call       instance void Game.SubsystemFurnitureBlockBehavior::RemoveParticleSystems(int32,
                                                                                                   int32,
                                                                                                   int32)
    IL_0012:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnBlockRemoved

  .method public hidebysig virtual instance void 
          OnBlockModified(int32 'value',
                          int32 oldValue,
                          int32 x,
                          int32 y,
                          int32 z) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  call       instance void Game.SubsystemFurnitureBlockBehavior::RemoveTerrainFurniture(int32)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.3
    IL_0009:  ldarg.s    y
    IL_000b:  ldarg.s    z
    IL_000d:  call       instance void Game.SubsystemFurnitureBlockBehavior::RemoveParticleSystems(int32,
                                                                                                   int32,
                                                                                                   int32)
    IL_0012:  ldarg.0
    IL_0013:  ldarg.1
    IL_0014:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddTerrainFurniture(int32)
    IL_0019:  ldarg.0
    IL_001a:  ldarg.1
    IL_001b:  ldarg.3
    IL_001c:  ldarg.s    y
    IL_001e:  ldarg.s    z
    IL_0020:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddParticleSystems(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_0025:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnBlockModified

  .method public hidebysig virtual instance void 
          OnBlockGenerated(int32 'value',
                           int32 x,
                           int32 y,
                           int32 z,
                           bool isLoaded) cil managed
  {
    // 代码大小       23 (0x17)
    .maxstack  8
    IL_0000:  ldarg.s    isLoaded
    IL_0002:  brtrue.s   IL_000b

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddTerrainFurniture(int32)
    IL_000b:  ldarg.0
    IL_000c:  ldarg.1
    IL_000d:  ldarg.2
    IL_000e:  ldarg.3
    IL_000f:  ldarg.s    z
    IL_0011:  call       instance void Game.SubsystemFurnitureBlockBehavior::AddParticleSystems(int32,
                                                                                                int32,
                                                                                                int32,
                                                                                                int32)
    IL_0016:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnBlockGenerated

  .method public hidebysig virtual instance void 
          OnChunkDiscarding(class Game.TerrainChunk chunk) cil managed
  {
    // 代码大小       218 (0xda)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3> V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> V_1,
             valuetype [Engine]Engine.Point3 V_2,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3> V_3,
             valuetype [Engine]Engine.Point3 V_4)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> Game.SubsystemFurnitureBlockBehavior::m_particleSystemsByCell
    IL_000c:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::get_Keys()
    IL_0011:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::GetEnumerator()
    IL_0016:  stloc.1
    .try
    {
      IL_0017:  br.s       IL_007a

      IL_0019:  ldloca.s   V_1
      IL_001b:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::get_Current()
      IL_0020:  stloc.2
      IL_0021:  ldloc.2
      IL_0022:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0027:  ldarg.1
      IL_0028:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_002d:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0032:  blt.s      IL_007a

      IL_0034:  ldloc.2
      IL_0035:  ldfld      int32 [Engine]Engine.Point3::X
      IL_003a:  ldarg.1
      IL_003b:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0040:  ldfld      int32 [Engine]Engine.Point2::X
      IL_0045:  ldc.i4.s   16
      IL_0047:  add
      IL_0048:  bge.s      IL_007a

      IL_004a:  ldloc.2
      IL_004b:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0050:  ldarg.1
      IL_0051:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0056:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_005b:  blt.s      IL_007a

      IL_005d:  ldloc.2
      IL_005e:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0063:  ldarg.1
      IL_0064:  ldflda     valuetype [Engine]Engine.Point2 Game.TerrainChunk::Origin
      IL_0069:  ldfld      int32 [Engine]Engine.Point2::Y
      IL_006e:  ldc.i4.s   16
      IL_0070:  add
      IL_0071:  bge.s      IL_007a

      IL_0073:  ldloc.0
      IL_0074:  ldloc.2
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::Add(!0)
      IL_007a:  ldloca.s   V_1
      IL_007c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::MoveNext()
      IL_0081:  brtrue.s   IL_0019

      IL_0083:  leave.s    IL_0093

    }  // end .try
    finally
    {
      IL_0085:  ldloca.s   V_1
      IL_0087:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>
      IL_008d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0092:  endfinally
    }  // end handler
    IL_0093:  ldloc.0
    IL_0094:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [Engine]Engine.Point3>::GetEnumerator()
    IL_0099:  stloc.3
    .try
    {
      IL_009a:  br.s       IL_00c0

      IL_009c:  ldloca.s   V_3
      IL_009e:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::get_Current()
      IL_00a3:  stloc.s    V_4
      IL_00a5:  ldarg.0
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  ldfld      int32 [Engine]Engine.Point3::X
      IL_00ad:  ldloc.s    V_4
      IL_00af:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_00b4:  ldloc.s    V_4
      IL_00b6:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_00bb:  call       instance void Game.SubsystemFurnitureBlockBehavior::RemoveParticleSystems(int32,
                                                                                                     int32,
                                                                                                     int32)
      IL_00c0:  ldloca.s   V_3
      IL_00c2:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>::MoveNext()
      IL_00c7:  brtrue.s   IL_009c

      IL_00c9:  leave.s    IL_00d9

    }  // end .try
    finally
    {
      IL_00cb:  ldloca.s   V_3
      IL_00cd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [Engine]Engine.Point3>
      IL_00d3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d8:  endfinally
    }  // end handler
    IL_00d9:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnChunkDiscarding

  .method public hidebysig virtual instance bool 
          OnInteract(valuetype Game.TerrainRaycastResult raycastResult,
                     class Game.ComponentMiner componentMiner) cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.1
    IL_000c:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0011:  ldfld      int32 Game.CellFace::X
    IL_0016:  ldarg.1
    IL_0017:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_001c:  ldfld      int32 Game.CellFace::Y
    IL_0021:  ldarg.1
    IL_0022:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0027:  ldfld      int32 Game.CellFace::Z
    IL_002c:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0031:  stloc.0
    IL_0032:  ldloc.0
    IL_0033:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0038:  ldc.i4     0xe3
    IL_003d:  bne.un.s   IL_0092

    IL_003f:  ldloc.0
    IL_0040:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0045:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_004a:  stloc.1
    IL_004b:  ldarg.0
    IL_004c:  ldloc.1
    IL_004d:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_0052:  stloc.2
    IL_0053:  ldloc.2
    IL_0054:  brfalse.s  IL_0092

    IL_0056:  ldloc.2
    IL_0057:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_005c:  ldc.i4.1
    IL_005d:  beq.s      IL_0068

    IL_005f:  ldloc.2
    IL_0060:  callvirt   instance valuetype Game.FurnitureInteractionMode Game.FurnitureDesign::get_InteractionMode()
    IL_0065:  ldc.i4.4
    IL_0066:  bne.un.s   IL_0092

    IL_0068:  ldarg.0
    IL_0069:  ldarg.1
    IL_006a:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_006f:  ldfld      int32 Game.CellFace::X
    IL_0074:  ldarg.1
    IL_0075:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_007a:  ldfld      int32 Game.CellFace::Y
    IL_007f:  ldarg.1
    IL_0080:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_0085:  ldfld      int32 Game.CellFace::Z
    IL_008a:  ldc.i4.1
    IL_008b:  call       instance void Game.SubsystemFurnitureBlockBehavior::SwitchToNextState(int32,
                                                                                               int32,
                                                                                               int32,
                                                                                               bool)
    IL_0090:  ldc.i4.1
    IL_0091:  ret

    IL_0092:  ldc.i4.0
    IL_0093:  ret
  } // end of method SubsystemFurnitureBlockBehavior::OnInteract

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       471 (0x1d7)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign> V_1,
             class Game.FurnitureDesign V_2,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<object> V_3,
             string V_4,
             string V_5,
             string V_6,
             class Game.FurnitureSet V_7,
             int32[] V_8,
             int32 V_9,
             int32 V_10)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0014:  stfld      class Game.SubsystemAudio Game.SubsystemFurnitureBlockBehavior::m_subsystemAudio
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSoundMaterials>(bool)
    IL_0026:  stfld      class Game.SubsystemSoundMaterials Game.SubsystemFurnitureBlockBehavior::m_subsystemSoundMaterials
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemItemsScanner>(bool)
    IL_0038:  stfld      class Game.SubsystemItemsScanner Game.SubsystemFurnitureBlockBehavior::m_subsystemItemsScanner
    IL_003d:  ldarg.0
    IL_003e:  ldarg.0
    IL_003f:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0044:  ldc.i4.1
    IL_0045:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_004a:  stfld      class Game.SubsystemGameInfo Game.SubsystemFurnitureBlockBehavior::m_subsystemGameInfo
    IL_004f:  ldarg.0
    IL_0050:  ldarg.0
    IL_0051:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0056:  ldc.i4.1
    IL_0057:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_005c:  stfld      class Game.SubsystemPickables Game.SubsystemFurnitureBlockBehavior::m_subsystemPickables
    IL_0061:  ldarg.0
    IL_0062:  ldarg.0
    IL_0063:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0068:  ldc.i4.1
    IL_0069:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_006e:  stfld      class Game.SubsystemParticles Game.SubsystemFurnitureBlockBehavior::m_subsystemParticles
    IL_0073:  ldarg.1
    IL_0074:  ldstr      "FurnitureDesigns"
    IL_0079:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_007e:  stloc.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0085:  ldloc.0
    IL_0086:  call       class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::LoadFurnitureDesigns(class Game.SubsystemTerrain,
                                                                                                                                                                            class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_008b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureDesign>::GetEnumerator()
    IL_0090:  stloc.1
    .try
    {
      IL_0091:  br.s       IL_00a9

      IL_0093:  ldloca.s   V_1
      IL_0095:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::get_Current()
      IL_009a:  stloc.2
      IL_009b:  ldarg.0
      IL_009c:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
      IL_00a1:  ldloc.2
      IL_00a2:  callvirt   instance int32 Game.FurnitureDesign::get_Index()
      IL_00a7:  ldloc.2
      IL_00a8:  stelem.ref
      IL_00a9:  ldloca.s   V_1
      IL_00ab:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>::MoveNext()
      IL_00b0:  brtrue.s   IL_0093

      IL_00b2:  leave.s    IL_00c2

    }  // end .try
    finally
    {
      IL_00b4:  ldloca.s   V_1
      IL_00b6:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FurnitureDesign>
      IL_00bc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00c1:  endfinally
    }  // end handler
    IL_00c2:  ldarg.1
    IL_00c3:  ldstr      "FurnitureSets"
    IL_00c8:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_00cd:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<object> [EntitySystem]TemplatesDatabase.ValuesDictionary::get_Values()
    IL_00d2:  ldsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__36_0'
    IL_00d7:  dup
    IL_00d8:  brtrue.s   IL_00f1

    IL_00da:  pop
    IL_00db:  ldsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
    IL_00e0:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c'::'<Load>b__36_0'(object)
    IL_00e6:  newobj     instance void class [System.Runtime]System.Func`2<object,bool>::.ctor(object,
                                                                                               native int)
    IL_00eb:  dup
    IL_00ec:  stsfld     class [System.Runtime]System.Func`2<object,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__36_0'
    IL_00f1:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<object>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                class [System.Runtime]System.Func`2<!!0,bool>)
    IL_00f6:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<object>::GetEnumerator()
    IL_00fb:  stloc.3
    .try
    {
      IL_00fc:  br         IL_01a8

      IL_0101:  ldloc.3
      IL_0102:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<object>::get_Current()
      IL_0107:  castclass  [EntitySystem]TemplatesDatabase.ValuesDictionary
      IL_010c:  dup
      IL_010d:  ldstr      "Name"
      IL_0112:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_0117:  stloc.s    V_4
      IL_0119:  dup
      IL_011a:  ldstr      "ImportedFrom"
      IL_011f:  ldnull
      IL_0120:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string,
                                                                                                           !!0)
      IL_0125:  stloc.s    V_5
      IL_0127:  ldstr      "Indices"
      IL_012c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
      IL_0131:  stloc.s    V_6
      IL_0133:  ldc.i4.s   59
      IL_0135:  ldloc.s    V_6
      IL_0137:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                  string)
      IL_013c:  newobj     instance void Game.FurnitureSet::.ctor()
      IL_0141:  dup
      IL_0142:  ldloc.s    V_4
      IL_0144:  stfld      string Game.FurnitureSet::Name
      IL_0149:  dup
      IL_014a:  ldloc.s    V_5
      IL_014c:  stfld      string Game.FurnitureSet::ImportedFrom
      IL_0151:  stloc.s    V_7
      IL_0153:  ldarg.0
      IL_0154:  ldfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
      IL_0159:  ldloc.s    V_7
      IL_015b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::Add(!0)
      IL_0160:  stloc.s    V_8
      IL_0162:  ldc.i4.0
      IL_0163:  stloc.s    V_9
      IL_0165:  br.s       IL_01a0

      IL_0167:  ldloc.s    V_8
      IL_0169:  ldloc.s    V_9
      IL_016b:  ldelem.i4
      IL_016c:  stloc.s    V_10
      IL_016e:  ldloc.s    V_10
      IL_0170:  ldc.i4.0
      IL_0171:  blt.s      IL_019a

      IL_0173:  ldloc.s    V_10
      IL_0175:  ldarg.0
      IL_0176:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
      IL_017b:  ldlen
      IL_017c:  conv.i4
      IL_017d:  bge.s      IL_019a

      IL_017f:  ldarg.0
      IL_0180:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
      IL_0185:  ldloc.s    V_10
      IL_0187:  ldelem.ref
      IL_0188:  brfalse.s  IL_019a

      IL_018a:  ldarg.0
      IL_018b:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
      IL_0190:  ldloc.s    V_10
      IL_0192:  ldelem.ref
      IL_0193:  ldloc.s    V_7
      IL_0195:  callvirt   instance void Game.FurnitureDesign::set_FurnitureSet(class Game.FurnitureSet)
      IL_019a:  ldloc.s    V_9
      IL_019c:  ldc.i4.1
      IL_019d:  add
      IL_019e:  stloc.s    V_9
      IL_01a0:  ldloc.s    V_9
      IL_01a2:  ldloc.s    V_8
      IL_01a4:  ldlen
      IL_01a5:  conv.i4
      IL_01a6:  blt.s      IL_0167

      IL_01a8:  ldloc.3
      IL_01a9:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01ae:  brtrue     IL_0101

      IL_01b3:  leave.s    IL_01bf

    }  // end .try
    finally
    {
      IL_01b5:  ldloc.3
      IL_01b6:  brfalse.s  IL_01be

      IL_01b8:  ldloc.3
      IL_01b9:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01be:  endfinally
    }  // end handler
    IL_01bf:  ldarg.0
    IL_01c0:  ldfld      class Game.SubsystemItemsScanner Game.SubsystemFurnitureBlockBehavior::m_subsystemItemsScanner
    IL_01c5:  ldarg.0
    IL_01c6:  ldftn      instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>)
    IL_01cc:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>::.ctor(object,
                                                                                                                                                             native int)
    IL_01d1:  callvirt   instance void Game.SubsystemItemsScanner::add_ItemsScanned(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>>)
    IL_01d6:  ret
  } // end of method SubsystemFurnitureBlockBehavior::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       313 (0x139)
    .maxstack  4
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_1,
             int32 V_2,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet> V_3,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> V_4,
             class Game.FurnitureSet V_5,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_6,
             string V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  call       instance void Game.SubsystemFurnitureBlockBehavior::GarbageCollectDesigns()
    IL_000d:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0012:  stloc.0
    IL_0013:  ldarg.1
    IL_0014:  ldstr      "FurnitureDesigns"
    IL_0019:  ldloc.0
    IL_001a:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_001f:  ldloc.0
    IL_0020:  ldarg.0
    IL_0021:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0026:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__37_0'
    IL_002b:  dup
    IL_002c:  brtrue.s   IL_0045

    IL_002e:  pop
    IL_002f:  ldsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
    IL_0034:  ldftn      instance bool Game.SubsystemFurnitureBlockBehavior/'<>c'::'<Save>b__37_0'(class Game.FurnitureDesign)
    IL_003a:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool>::.ctor(object,
                                                                                                                   native int)
    IL_003f:  dup
    IL_0040:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,bool> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__37_0'
    IL_0045:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Where<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                    class [System.Runtime]System.Func`2<!!0,bool>)
    IL_004a:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class Game.FurnitureDesign>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_004f:  call       void Game.SubsystemFurnitureBlockBehavior::SaveFurnitureDesigns(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                                         class [System.Runtime]System.Collections.Generic.ICollection`1<class Game.FurnitureDesign>)
    IL_0054:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0059:  stloc.1
    IL_005a:  ldarg.1
    IL_005b:  ldstr      "FurnitureSets"
    IL_0060:  ldloc.1
    IL_0061:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0066:  ldc.i4.0
    IL_0067:  stloc.2
    IL_0068:  ldarg.0
    IL_0069:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
    IL_006e:  stloc.s    V_4
    IL_0070:  ldloca.s   V_4
    IL_0072:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>::GetEnumerator()
    IL_0077:  stloc.3
    .try
    {
      IL_0078:  br         IL_011c

      IL_007d:  ldloca.s   V_3
      IL_007f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::get_Current()
      IL_0084:  stloc.s    V_5
      IL_0086:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
      IL_008b:  stloc.s    V_6
      IL_008d:  ldloc.1
      IL_008e:  ldloca.s   V_2
      IL_0090:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
      IL_0095:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
      IL_009a:  ldloc.s    V_6
      IL_009c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                            !!0)
      IL_00a1:  ldloc.s    V_6
      IL_00a3:  ldstr      "Name"
      IL_00a8:  ldloc.s    V_5
      IL_00aa:  ldfld      string Game.FurnitureSet::Name
      IL_00af:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00b4:  ldloc.s    V_5
      IL_00b6:  ldfld      string Game.FurnitureSet::ImportedFrom
      IL_00bb:  brfalse.s  IL_00d0

      IL_00bd:  ldloc.s    V_6
      IL_00bf:  ldstr      "ImportedFrom"
      IL_00c4:  ldloc.s    V_5
      IL_00c6:  ldfld      string Game.FurnitureSet::ImportedFrom
      IL_00cb:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_00d0:  ldc.i4.s   59
      IL_00d2:  ldarg.0
      IL_00d3:  ldloc.s    V_5
      IL_00d5:  call       instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<class Game.FurnitureDesign> Game.SubsystemFurnitureBlockBehavior::GetFurnitureSetDesigns(class Game.FurnitureSet)
      IL_00da:  ldsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__37_1'
      IL_00df:  dup
      IL_00e0:  brtrue.s   IL_00f9

      IL_00e2:  pop
      IL_00e3:  ldsfld     class Game.SubsystemFurnitureBlockBehavior/'<>c' Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9'
      IL_00e8:  ldftn      instance int32 Game.SubsystemFurnitureBlockBehavior/'<>c'::'<Save>b__37_1'(class Game.FurnitureDesign)
      IL_00ee:  newobj     instance void class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32>::.ctor(object,
                                                                                                                      native int)
      IL_00f3:  dup
      IL_00f4:  stsfld     class [System.Runtime]System.Func`2<class Game.FurnitureDesign,int32> Game.SubsystemFurnitureBlockBehavior/'<>c'::'<>9__37_1'
      IL_00f9:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class Game.FurnitureDesign,int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                             class [System.Runtime]System.Func`2<!!0,!!1>)
      IL_00fe:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
      IL_0103:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                                 !!0[])
      IL_0108:  stloc.s    V_7
      IL_010a:  ldloc.s    V_6
      IL_010c:  ldstr      "Indices"
      IL_0111:  ldloc.s    V_7
      IL_0113:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                            !!0)
      IL_0118:  ldloc.2
      IL_0119:  ldc.i4.1
      IL_011a:  add
      IL_011b:  stloc.2
      IL_011c:  ldloca.s   V_3
      IL_011e:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>::MoveNext()
      IL_0123:  brtrue     IL_007d

      IL_0128:  leave.s    IL_0138

    }  // end .try
    finally
    {
      IL_012a:  ldloca.s   V_3
      IL_012c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.FurnitureSet>
      IL_0132:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0137:  endfinally
    }  // end handler
    IL_0138:  ret
  } // end of method SubsystemFurnitureBlockBehavior::Save

  .method private hidebysig instance void 
          AddDesign(int32 index,
                    class Game.FurnitureDesign design) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  stelem.ref
    IL_0009:  ldarg.2
    IL_000a:  ldarg.1
    IL_000b:  callvirt   instance void Game.FurnitureDesign::set_Index(int32)
    IL_0010:  ldarg.2
    IL_0011:  ldc.i4.0
    IL_0012:  stfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0017:  ret
  } // end of method SubsystemFurnitureBlockBehavior::AddDesign

  .method private hidebysig instance void 
          AddTerrainFurniture(int32 'value') cil managed
  {
    // 代码大小       58 (0x3a)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldc.i4     0xe3
    IL_000b:  bne.un.s   IL_0039

    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0020:  ldlen
    IL_0021:  conv.i4
    IL_0022:  bge.s      IL_0039

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  dup
    IL_002d:  ldfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0039:  ret
  } // end of method SubsystemFurnitureBlockBehavior::AddTerrainFurniture

  .method private hidebysig instance void 
          RemoveTerrainFurniture(int32 'value') cil managed
  {
    // 代码大小       71 (0x47)
    .maxstack  3
    .locals init (int32 V_0)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldc.i4     0xe3
    IL_000b:  bne.un.s   IL_0046

    IL_000d:  ldarg.1
    IL_000e:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0013:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0020:  ldlen
    IL_0021:  conv.i4
    IL_0022:  bge.s      IL_0046

    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_002a:  ldloc.0
    IL_002b:  ldelem.ref
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0032:  ldloc.0
    IL_0033:  ldelem.ref
    IL_0034:  ldfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0039:  ldc.i4.1
    IL_003a:  sub
    IL_003b:  ldc.i4.0
    IL_003c:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_0041:  stfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0046:  ret
  } // end of method SubsystemFurnitureBlockBehavior::RemoveTerrainFurniture

  .method private hidebysig instance void 
          GarbageCollectDesigns(valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData> allExistingItems) cil managed
  {
    // 代码大小       347 (0x15b)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData> V_1,
             valuetype Game.ScannedItemData V_2,
             int32 V_3,
             class Game.FurnitureDesign V_4,
             int32 V_5,
             class Game.FurnitureDesign V_6,
             int32 V_7)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_002f

    IL_0004:  ldarg.0
    IL_0005:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_000a:  ldloc.0
    IL_000b:  ldelem.ref
    IL_000c:  brfalse.s  IL_002b

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0014:  ldloc.0
    IL_0015:  ldelem.ref
    IL_0016:  ldarg.0
    IL_0017:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_001c:  ldloc.0
    IL_001d:  ldelem.ref
    IL_001e:  ldfld      int32 Game.FurnitureDesign::m_terrainUseCount
    IL_0023:  ldc.i4.0
    IL_0024:  cgt
    IL_0026:  stfld      bool Game.FurnitureDesign::m_gcUsed
    IL_002b:  ldloc.0
    IL_002c:  ldc.i4.1
    IL_002d:  add
    IL_002e:  stloc.0
    IL_002f:  ldloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0036:  ldlen
    IL_0037:  conv.i4
    IL_0038:  blt.s      IL_0004

    IL_003a:  ldarga.s   allExistingItems
    IL_003c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<valuetype Game.ScannedItemData>::GetEnumerator()
    IL_0041:  stloc.1
    .try
    {
      IL_0042:  br.s       IL_0084

      IL_0044:  ldloca.s   V_1
      IL_0046:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>::get_Current()
      IL_004b:  stloc.2
      IL_004c:  ldloc.2
      IL_004d:  ldfld      int32 Game.ScannedItemData::Value
      IL_0052:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_0057:  ldc.i4     0xe3
      IL_005c:  bne.un.s   IL_0084

      IL_005e:  ldloc.2
      IL_005f:  ldfld      int32 Game.ScannedItemData::Value
      IL_0064:  call       int32 Game.Terrain::ExtractData(int32)
      IL_0069:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
      IL_006e:  stloc.3
      IL_006f:  ldarg.0
      IL_0070:  ldloc.3
      IL_0071:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
      IL_0076:  stloc.s    V_4
      IL_0078:  ldloc.s    V_4
      IL_007a:  brfalse.s  IL_0084

      IL_007c:  ldloc.s    V_4
      IL_007e:  ldc.i4.1
      IL_007f:  stfld      bool Game.FurnitureDesign::m_gcUsed
      IL_0084:  ldloca.s   V_1
      IL_0086:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>::MoveNext()
      IL_008b:  brtrue.s   IL_0044

      IL_008d:  leave.s    IL_009d

    }  // end .try
    finally
    {
      IL_008f:  ldloca.s   V_1
      IL_0091:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<valuetype Game.ScannedItemData>
      IL_0097:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_009c:  endfinally
    }  // end handler
    IL_009d:  ldc.i4.0
    IL_009e:  stloc.s    V_5
    IL_00a0:  br.s       IL_00f3

    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  ldelem.ref
    IL_00ab:  brfalse.s  IL_00ed

    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_00b3:  ldloc.s    V_5
    IL_00b5:  ldelem.ref
    IL_00b6:  ldfld      bool Game.FurnitureDesign::m_gcUsed
    IL_00bb:  brfalse.s  IL_00ed

    IL_00bd:  ldarg.0
    IL_00be:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_00c3:  ldloc.s    V_5
    IL_00c5:  ldelem.ref
    IL_00c6:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00cb:  stloc.s    V_6
    IL_00cd:  br.s       IL_00e0

    IL_00cf:  ldloc.s    V_6
    IL_00d1:  ldc.i4.1
    IL_00d2:  stfld      bool Game.FurnitureDesign::m_gcUsed
    IL_00d7:  ldloc.s    V_6
    IL_00d9:  callvirt   instance class Game.FurnitureDesign Game.FurnitureDesign::get_LinkedDesign()
    IL_00de:  stloc.s    V_6
    IL_00e0:  ldloc.s    V_6
    IL_00e2:  brfalse.s  IL_00ed

    IL_00e4:  ldloc.s    V_6
    IL_00e6:  ldfld      bool Game.FurnitureDesign::m_gcUsed
    IL_00eb:  brfalse.s  IL_00cf

    IL_00ed:  ldloc.s    V_5
    IL_00ef:  ldc.i4.1
    IL_00f0:  add
    IL_00f1:  stloc.s    V_5
    IL_00f3:  ldloc.s    V_5
    IL_00f5:  ldarg.0
    IL_00f6:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_00fb:  ldlen
    IL_00fc:  conv.i4
    IL_00fd:  blt.s      IL_00a2

    IL_00ff:  ldc.i4.0
    IL_0100:  stloc.s    V_7
    IL_0102:  br.s       IL_014e

    IL_0104:  ldarg.0
    IL_0105:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_010a:  ldloc.s    V_7
    IL_010c:  ldelem.ref
    IL_010d:  brfalse.s  IL_0148

    IL_010f:  ldarg.0
    IL_0110:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0115:  ldloc.s    V_7
    IL_0117:  ldelem.ref
    IL_0118:  ldfld      bool Game.FurnitureDesign::m_gcUsed
    IL_011d:  brtrue.s   IL_0148

    IL_011f:  ldarg.0
    IL_0120:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0125:  ldloc.s    V_7
    IL_0127:  ldelem.ref
    IL_0128:  callvirt   instance class Game.FurnitureSet Game.FurnitureDesign::get_FurnitureSet()
    IL_012d:  brtrue.s   IL_0148

    IL_012f:  ldarg.0
    IL_0130:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0135:  ldloc.s    V_7
    IL_0137:  ldelem.ref
    IL_0138:  ldc.i4.m1
    IL_0139:  callvirt   instance void Game.FurnitureDesign::set_Index(int32)
    IL_013e:  ldarg.0
    IL_013f:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0144:  ldloc.s    V_7
    IL_0146:  ldnull
    IL_0147:  stelem.ref
    IL_0148:  ldloc.s    V_7
    IL_014a:  ldc.i4.1
    IL_014b:  add
    IL_014c:  stloc.s    V_7
    IL_014e:  ldloc.s    V_7
    IL_0150:  ldarg.0
    IL_0151:  ldfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_0156:  ldlen
    IL_0157:  conv.i4
    IL_0158:  blt.s      IL_0104

    IL_015a:  ret
  } // end of method SubsystemFurnitureBlockBehavior::GarbageCollectDesigns

  .method private hidebysig static bool  IsValueAllowed(int32 'value') cil managed
  {
    // 代码大小       158 (0x9e)
    .maxstack  2
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  ldc.i4.s   21
    IL_000a:  bne.un.s   IL_000e

    IL_000c:  ldc.i4.1
    IL_000d:  ret

    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.3
    IL_0010:  bne.un.s   IL_0014

    IL_0012:  ldc.i4.1
    IL_0013:  ret

    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.s   67
    IL_0017:  bne.un.s   IL_001b

    IL_0019:  ldc.i4.1
    IL_001a:  ret

    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.7
    IL_001d:  bne.un.s   IL_0021

    IL_001f:  ldc.i4.1
    IL_0020:  ret

    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.s   72
    IL_0024:  bne.un.s   IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldloc.0
    IL_0029:  ldc.i4.5
    IL_002a:  bne.un.s   IL_002e

    IL_002c:  ldc.i4.1
    IL_002d:  ret

    IL_002e:  ldloc.0
    IL_002f:  ldc.i4.s   26
    IL_0031:  bne.un.s   IL_0035

    IL_0033:  ldc.i4.1
    IL_0034:  ret

    IL_0035:  ldloc.0
    IL_0036:  ldc.i4.4
    IL_0037:  bne.un.s   IL_003b

    IL_0039:  ldc.i4.1
    IL_003a:  ret

    IL_003b:  ldloc.0
    IL_003c:  ldc.i4.s   68
    IL_003e:  bne.un.s   IL_0042

    IL_0040:  ldc.i4.1
    IL_0041:  ret

    IL_0042:  ldloc.0
    IL_0043:  ldc.i4.s   73
    IL_0045:  bne.un.s   IL_0049

    IL_0047:  ldc.i4.1
    IL_0048:  ret

    IL_0049:  ldloc.0
    IL_004a:  ldc.i4     0x96
    IL_004f:  bne.un.s   IL_0053

    IL_0051:  ldc.i4.1
    IL_0052:  ret

    IL_0053:  ldloc.0
    IL_0054:  ldc.i4.s   71
    IL_0056:  bne.un.s   IL_005a

    IL_0058:  ldc.i4.1
    IL_0059:  ret

    IL_005a:  ldloc.0
    IL_005b:  ldc.i4.s   126
    IL_005d:  bne.un.s   IL_0061

    IL_005f:  ldc.i4.1
    IL_0060:  ret

    IL_0061:  ldloc.0
    IL_0062:  ldc.i4.s   47
    IL_0064:  bne.un.s   IL_0068

    IL_0066:  ldc.i4.1
    IL_0067:  ret

    IL_0068:  ldloc.0
    IL_0069:  ldc.i4.s   46
    IL_006b:  bne.un.s   IL_006f

    IL_006d:  ldc.i4.1
    IL_006e:  ret

    IL_006f:  ldloc.0
    IL_0070:  ldc.i4.s   15
    IL_0072:  bne.un.s   IL_0076

    IL_0074:  ldc.i4.1
    IL_0075:  ret

    IL_0076:  ldloc.0
    IL_0077:  ldc.i4     0xd0
    IL_007c:  bne.un.s   IL_0080

    IL_007e:  ldc.i4.1
    IL_007f:  ret

    IL_0080:  ldloc.0
    IL_0081:  ldc.i4.s   31
    IL_0083:  bne.un.s   IL_0087

    IL_0085:  ldc.i4.1
    IL_0086:  ret

    IL_0087:  ldloc.0
    IL_0088:  ldc.i4.s   17
    IL_008a:  bne.un.s   IL_008e

    IL_008c:  ldc.i4.1
    IL_008d:  ret

    IL_008e:  ldloc.0
    IL_008f:  ldc.i4.s   18
    IL_0091:  bne.un.s   IL_0095

    IL_0093:  ldc.i4.1
    IL_0094:  ret

    IL_0095:  ldloc.0
    IL_0096:  ldc.i4.s   92
    IL_0098:  bne.un.s   IL_009c

    IL_009a:  ldc.i4.1
    IL_009b:  ret

    IL_009c:  ldc.i4.0
    IL_009d:  ret
  } // end of method SubsystemFurnitureBlockBehavior::IsValueAllowed

  .method private hidebysig static bool  IsValueDisallowed(int32 'value') cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000d:  stloc.1
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.s   18
    IL_0011:  beq.s      IL_0018

    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.s   92
    IL_0016:  bne.un.s   IL_002a

    IL_0018:  ldloc.1
    IL_0019:  call       int32 Game.FluidBlock::GetLevel(int32)
    IL_001e:  brfalse.s  IL_002a

    IL_0020:  ldloc.1
    IL_0021:  call       bool Game.FluidBlock::GetIsTop(int32)
    IL_0026:  brfalse.s  IL_002a

    IL_0028:  ldc.i4.1
    IL_0029:  ret

    IL_002a:  ldc.i4.0
    IL_002b:  ret
  } // end of method SubsystemFurnitureBlockBehavior::IsValueDisallowed

  .method private hidebysig instance void 
          AddParticleSystems(int32 'value',
                             int32 x,
                             int32 y,
                             int32 z) cil managed
  {
    // 代码大小       273 (0x111)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             class Game.FurnitureDesign V_2,
             class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem> V_3,
             valuetype [Engine]Engine.BoundingBox[] V_4,
             valuetype [Engine]Engine.BoundingBox[] V_5,
             int32 V_6,
             valuetype [Engine]Engine.BoundingBox V_7,
             float32 V_8,
             float32 V_9,
             class Game.FireParticleSystem V_10)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0006:  ldc.i4     0xe3
    IL_000b:  bne.un     IL_0110

    IL_0010:  ldarg.1
    IL_0011:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0016:  dup
    IL_0017:  call       int32 Game.FurnitureBlock::GetRotation(int32)
    IL_001c:  stloc.0
    IL_001d:  call       int32 Game.FurnitureBlock::GetDesignIndex(int32)
    IL_0022:  stloc.1
    IL_0023:  ldarg.0
    IL_0024:  ldloc.1
    IL_0025:  call       instance class Game.FurnitureDesign Game.SubsystemFurnitureBlockBehavior::GetDesign(int32)
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  brfalse    IL_0110

    IL_0031:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>::.ctor()
    IL_0036:  stloc.3
    IL_0037:  ldloc.2
    IL_0038:  ldloc.0
    IL_0039:  callvirt   instance valuetype [Engine]Engine.BoundingBox[] Game.FurnitureDesign::GetTorchPoints(int32)
    IL_003e:  stloc.s    V_4
    IL_0040:  ldloc.s    V_4
    IL_0042:  ldlen
    IL_0043:  brfalse    IL_00f2

    IL_0048:  ldloc.s    V_4
    IL_004a:  stloc.s    V_5
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.s    V_6
    IL_004f:  br         IL_00e7

    IL_0054:  ldloc.s    V_5
    IL_0056:  ldloc.s    V_6
    IL_0058:  ldelem     [Engine]Engine.BoundingBox
    IL_005d:  stloc.s    V_7
    IL_005f:  ldloca.s   V_7
    IL_0061:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_0066:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_006b:  ldloca.s   V_7
    IL_006d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_0072:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0077:  add
    IL_0078:  ldloca.s   V_7
    IL_007a:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Size()
    IL_007f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0084:  add
    IL_0085:  ldc.r4     3.
    IL_008a:  div
    IL_008b:  stloc.s    V_8
    IL_008d:  ldc.r4     1.5
    IL_0092:  ldloc.s    V_8
    IL_0094:  mul
    IL_0095:  ldc.r4     0.1
    IL_009a:  ldc.r4     1.
    IL_009f:  call       float32 [Engine]Engine.MathUtils::Clamp(float32,
                                                                 float32,
                                                                 float32)
    IL_00a4:  stloc.s    V_9
    IL_00a6:  ldarg.2
    IL_00a7:  conv.r4
    IL_00a8:  ldarg.3
    IL_00a9:  conv.r4
    IL_00aa:  ldarg.s    z
    IL_00ac:  conv.r4
    IL_00ad:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00b2:  ldloca.s   V_7
    IL_00b4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00be:  ldloc.s    V_9
    IL_00c0:  ldc.r4     24.
    IL_00c5:  newobj     instance void Game.FireParticleSystem::.ctor(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_00ca:  stloc.s    V_10
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      class Game.SubsystemParticles Game.SubsystemFurnitureBlockBehavior::m_subsystemParticles
    IL_00d2:  ldloc.s    V_10
    IL_00d4:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00d9:  ldloc.3
    IL_00da:  ldloc.s    V_10
    IL_00dc:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>::Add(!0)
    IL_00e1:  ldloc.s    V_6
    IL_00e3:  ldc.i4.1
    IL_00e4:  add
    IL_00e5:  stloc.s    V_6
    IL_00e7:  ldloc.s    V_6
    IL_00e9:  ldloc.s    V_5
    IL_00eb:  ldlen
    IL_00ec:  conv.i4
    IL_00ed:  blt        IL_0054

    IL_00f2:  ldloc.3
    IL_00f3:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>::get_Count()
    IL_00f8:  ldc.i4.0
    IL_00f9:  ble.s      IL_0110

    IL_00fb:  ldarg.0
    IL_00fc:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> Game.SubsystemFurnitureBlockBehavior::m_particleSystemsByCell
    IL_0101:  ldarg.2
    IL_0102:  ldarg.3
    IL_0103:  ldarg.s    z
    IL_0105:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_010a:  ldloc.3
    IL_010b:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::set_Item(!0,
                                                                                                                                                                                                                                               !1)
    IL_0110:  ret
  } // end of method SubsystemFurnitureBlockBehavior::AddParticleSystems

  .method private hidebysig instance void 
          RemoveParticleSystems(int32 x,
                                int32 y,
                                int32 z) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  4
    .locals init (class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem> V_0,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FireParticleSystem> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> Game.SubsystemFurnitureBlockBehavior::m_particleSystemsByCell
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  ldarg.3
    IL_0009:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_000e:  ldloca.s   V_0
    IL_0010:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::TryGetValue(!0,
                                                                                                                                                                                                                                                  !1&)
    IL_0015:  brfalse.s  IL_005a

    IL_0017:  ldloc.0
    IL_0018:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>::GetEnumerator()
    IL_001d:  stloc.1
    .try
    {
      IL_001e:  br.s       IL_002d

      IL_0020:  ldloca.s   V_1
      IL_0022:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FireParticleSystem>::get_Current()
      IL_0027:  ldc.i4.1
      IL_0028:  callvirt   instance void Game.FireParticleSystem::set_IsStopped(bool)
      IL_002d:  ldloca.s   V_1
      IL_002f:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FireParticleSystem>::MoveNext()
      IL_0034:  brtrue.s   IL_0020

      IL_0036:  leave.s    IL_0046

    }  // end .try
    finally
    {
      IL_0038:  ldloca.s   V_1
      IL_003a:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<class Game.FireParticleSystem>
      IL_0040:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0045:  endfinally
    }  // end handler
    IL_0046:  ldarg.0
    IL_0047:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> Game.SubsystemFurnitureBlockBehavior::m_particleSystemsByCell
    IL_004c:  ldarg.1
    IL_004d:  ldarg.2
    IL_004e:  ldarg.3
    IL_004f:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_0054:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::Remove(!0)
    IL_0059:  pop
    IL_005a:  ret
  } // end of method SubsystemFurnitureBlockBehavior::RemoveParticleSystems

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       45 (0x2d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::m_furnitureSets
    IL_000b:  ldarg.0
    IL_000c:  ldc.i4     0x400
    IL_0011:  newarr     Game.FurnitureDesign
    IL_0016:  stfld      class Game.FurnitureDesign[] Game.SubsystemFurnitureBlockBehavior::m_furnitureDesigns
    IL_001b:  ldarg.0
    IL_001c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>>::.ctor()
    IL_0021:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,class [System.Collections]System.Collections.Generic.List`1<class Game.FireParticleSystem>> Game.SubsystemFurnitureBlockBehavior::m_particleSystemsByCell
    IL_0026:  ldarg.0
    IL_0027:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_002c:  ret
  } // end of method SubsystemFurnitureBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemFurnitureBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemFurnitureBlockBehavior::HandledBlocks
  .property instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet>
          FurnitureSets()
  {
    .get instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.FurnitureSet> Game.SubsystemFurnitureBlockBehavior::get_FurnitureSets()
  } // end of property SubsystemFurnitureBlockBehavior::FurnitureSets
} // end of class Game.SubsystemFurnitureBlockBehavior