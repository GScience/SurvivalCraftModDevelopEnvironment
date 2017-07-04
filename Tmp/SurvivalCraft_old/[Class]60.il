.class public auto ansi beforefieldinit Game.ComponentIntro
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass12_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool isPlayerMounted
    .field public class Game.ComponentIntro '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass12_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShipView_Enter>b__1'() cil managed
    {
      // 代码大小       84 (0x54)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldfld      bool Game.ComponentIntro/'<>c__DisplayClass12_0'::isPlayerMounted
      IL_0006:  brfalse.s  IL_002e

      IL_0008:  ldarg.0
      IL_0009:  ldfld      class Game.ComponentIntro Game.ComponentIntro/'<>c__DisplayClass12_0'::'<>4__this'
      IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
      IL_0013:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
      IL_0018:  ldnull
      IL_0019:  ldstr      "Hey you, in the boat!"
      IL_001e:  ldc.r4     5.
      IL_0023:  ldc.r4     0.0
      IL_0028:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                                string,
                                                                                float32,
                                                                                float32)
      IL_002d:  ret

      IL_002e:  ldarg.0
      IL_002f:  ldfld      class Game.ComponentIntro Game.ComponentIntro/'<>c__DisplayClass12_0'::'<>4__this'
      IL_0034:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
      IL_0039:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
      IL_003e:  ldnull
      IL_003f:  ldstr      "Hey you, on the shore!"
      IL_0044:  ldc.r4     5.
      IL_0049:  ldc.r4     0.0
      IL_004e:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                                string,
                                                                                float32,
                                                                                float32)
      IL_0053:  ret
    } // end of method '<>c__DisplayClass12_0'::'<ShipView_Enter>b__1'

  } // end of class '<>c__DisplayClass12_0'

  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private bool m_playIntro
  .field private class Game.StateMachine m_stateMachine
  .method public hidebysig static valuetype [Engine]Engine.Vector2 
          FindOceanDirection(class Game.ITerrainContentsGenerator generator,
                             valuetype [Engine]Engine.Vector2 position) cil managed
  {
    // 代码大小       104 (0x68)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector2 V_1,
             int32 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5)
    IL_0000:  ldc.r4     3.4028235e+038
    IL_0005:  stloc.0
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.0
    IL_000d:  stloc.2
    IL_000e:  br.s       IL_0061

    IL_0010:  ldloc.2
    IL_0011:  conv.r4
    IL_0012:  ldc.r4     36.
    IL_0017:  div
    IL_0018:  ldc.r4     2.
    IL_001d:  mul
    IL_001e:  ldc.r4     3.1415927
    IL_0023:  mul
    IL_0024:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::CreateFromAngle(float32)
    IL_0029:  stloc.3
    IL_002a:  ldarg.1
    IL_002b:  ldc.r4     50.
    IL_0030:  ldloc.3
    IL_0031:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0036:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_003b:  stloc.s    V_4
    IL_003d:  ldarg.0
    IL_003e:  ldloc.s    V_4
    IL_0040:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0045:  ldloc.s    V_4
    IL_0047:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_004c:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_0051:  stloc.s    V_5
    IL_0053:  ldloc.s    V_5
    IL_0055:  ldloc.0
    IL_0056:  bge.un.s   IL_005d

    IL_0058:  ldloc.3
    IL_0059:  stloc.1
    IL_005a:  ldloc.s    V_5
    IL_005c:  stloc.0
    IL_005d:  ldloc.2
    IL_005e:  ldc.i4.1
    IL_005f:  add
    IL_0060:  stloc.2
    IL_0061:  ldloc.2
    IL_0062:  ldc.i4.s   36
    IL_0064:  blt.s      IL_0010

    IL_0066:  ldloc.1
    IL_0067:  ret
  } // end of method ComponentIntro::FindOceanDirection

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentIntro::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       43 (0x2b)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentIntro::m_playIntro
    IL_0006:  brfalse.s  IL_001f

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.0
    IL_000a:  stfld      bool Game.ComponentIntro::m_playIntro
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class Game.StateMachine Game.ComponentIntro::m_stateMachine
    IL_0015:  ldstr      "ShipView"
    IL_001a:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.StateMachine Game.ComponentIntro::m_stateMachine
    IL_0025:  callvirt   instance void Game.StateMachine::Update()
    IL_002a:  ret
  } // end of method ComponentIntro::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       131 (0x83)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentIntro::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_001f:  stfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0031:  stfld      class Game.SubsystemGameInfo Game.ComponentIntro::m_subsystemGameInfo
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_0043:  stfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0048:  ldarg.0
    IL_0049:  ldarg.1
    IL_004a:  ldstr      "PlayIntro"
    IL_004f:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0054:  stfld      bool Game.ComponentIntro::m_playIntro
    IL_0059:  ldarg.0
    IL_005a:  ldfld      class Game.StateMachine Game.ComponentIntro::m_stateMachine
    IL_005f:  ldstr      "ShipView"
    IL_0064:  ldarg.0
    IL_0065:  ldftn      instance void Game.ComponentIntro::ShipView_Enter()
    IL_006b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0070:  ldarg.0
    IL_0071:  ldftn      instance void Game.ComponentIntro::ShipView_Update()
    IL_0077:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_007c:  ldnull
    IL_007d:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_0082:  ret
  } // end of method ComponentIntro::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "PlayIntro"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.ComponentIntro::m_playIntro
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method ComponentIntro::Save

  .method private hidebysig instance void 
          ShipView_Enter() cil managed
  {
    // 代码大小       757 (0x2f5)
    .maxstack  6
    .locals init (class Game.ComponentIntro/'<>c__DisplayClass12_0' V_0,
             class Game.ComponentBody V_1,
             valuetype [Engine]Engine.Vector2 V_2,
             valuetype [Engine]Engine.Vector2 V_3,
             valuetype [Engine]Engine.Vector2 V_4,
             float32 V_5,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_6,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_7,
             class [EntitySystem]GameEntitySystem.Entity V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             class Game.IntroCamera V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             int32 V_12,
             int32 V_13,
             float32 V_14)
    IL_0000:  newobj     instance void Game.ComponentIntro/'<>c__DisplayClass12_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.ComponentIntro Game.ComponentIntro/'<>c__DisplayClass12_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0013:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0018:  ldc.i4.1
    IL_0019:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_001e:  stloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_002a:  ldloc.1
    IL_002b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0030:  stloc.s    V_11
    IL_0032:  ldloca.s   V_11
    IL_0034:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_0039:  call       valuetype [Engine]Engine.Vector2 Game.ComponentIntro::FindOceanDirection(class Game.ITerrainContentsGenerator,
                                                                                                  valuetype [Engine]Engine.Vector2)
    IL_003e:  stloc.2
    IL_003f:  ldloc.1
    IL_0040:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0045:  stloc.s    V_11
    IL_0047:  ldloca.s   V_11
    IL_0049:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_004e:  ldc.r4     25.
    IL_0053:  ldloc.2
    IL_0054:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_0059:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_Addition(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2)
    IL_005e:  stloc.3
    IL_005f:  ldloc.0
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0066:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_006b:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_0070:  ldnull
    IL_0071:  cgt.un
    IL_0073:  stfld      bool Game.ComponentIntro/'<>c__DisplayClass12_0'::isPlayerMounted
    IL_0078:  ldloc.3
    IL_0079:  stloc.s    V_4
    IL_007b:  ldc.r4     -3.4028235e+038
    IL_0080:  stloc.s    V_5
    IL_0082:  ldloc.3
    IL_0083:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0088:  call       int32 Game.Terrain::ToCell(float32)
    IL_008d:  ldc.i4.s   15
    IL_008f:  sub
    IL_0090:  stloc.s    V_12
    IL_0092:  br.s       IL_00f6

    IL_0094:  ldloc.3
    IL_0095:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_009a:  call       int32 Game.Terrain::ToCell(float32)
    IL_009f:  ldc.i4.s   15
    IL_00a1:  sub
    IL_00a2:  stloc.s    V_13
    IL_00a4:  br.s       IL_00de

    IL_00a6:  ldarg.0
    IL_00a7:  ldloc.1
    IL_00a8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_00ad:  stloc.s    V_11
    IL_00af:  ldloca.s   V_11
    IL_00b1:  call       instance valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector3::get_XZ()
    IL_00b6:  ldloc.s    V_13
    IL_00b8:  ldloc.s    V_12
    IL_00ba:  call       instance float32 Game.ComponentIntro::ScoreShipPosition(valuetype [Engine]Engine.Vector2,
                                                                                 int32,
                                                                                 int32)
    IL_00bf:  stloc.s    V_14
    IL_00c1:  ldloc.s    V_14
    IL_00c3:  ldloc.s    V_5
    IL_00c5:  ble.un.s   IL_00d8

    IL_00c7:  ldloc.s    V_14
    IL_00c9:  stloc.s    V_5
    IL_00cb:  ldloca.s   V_4
    IL_00cd:  ldloc.s    V_13
    IL_00cf:  conv.r4
    IL_00d0:  ldloc.s    V_12
    IL_00d2:  conv.r4
    IL_00d3:  call       instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_00d8:  ldloc.s    V_13
    IL_00da:  ldc.i4.1
    IL_00db:  add
    IL_00dc:  stloc.s    V_13
    IL_00de:  ldloc.s    V_13
    IL_00e0:  ldloc.3
    IL_00e1:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_00e6:  call       int32 Game.Terrain::ToCell(float32)
    IL_00eb:  ldc.i4.s   15
    IL_00ed:  add
    IL_00ee:  blt.s      IL_00a6

    IL_00f0:  ldloc.s    V_12
    IL_00f2:  ldc.i4.1
    IL_00f3:  add
    IL_00f4:  stloc.s    V_12
    IL_00f6:  ldloc.s    V_12
    IL_00f8:  ldloc.3
    IL_00f9:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_00fe:  call       int32 Game.Terrain::ToCell(float32)
    IL_0103:  ldc.i4.s   15
    IL_0105:  add
    IL_0106:  blt.s      IL_0094

    IL_0108:  ldarg.0
    IL_0109:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_010e:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0113:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_0118:  ldstr      "IntroShip"
    IL_011d:  ldarg.0
    IL_011e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0123:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_0128:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_012d:  ldc.i4.1
    IL_012e:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_0133:  stloc.s    V_6
    IL_0135:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_013a:  stloc.s    V_7
    IL_013c:  ldloc.s    V_7
    IL_013e:  ldloc.s    V_6
    IL_0140:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_0145:  ldarg.0
    IL_0146:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_014b:  ldloc.s    V_7
    IL_014d:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0152:  stloc.s    V_8
    IL_0154:  ldloca.s   V_9
    IL_0156:  ldloc.s    V_4
    IL_0158:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_015d:  ldarg.0
    IL_015e:  ldfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_0163:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0168:  callvirt   instance int32 Game.ITerrainContentsGenerator::get_OceanLevel()
    IL_016d:  conv.r4
    IL_016e:  ldc.r4     0.5
    IL_0173:  add
    IL_0174:  ldloc.s    V_4
    IL_0176:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_017b:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0180:  ldloc.s    V_8
    IL_0182:  ldc.i4.1
    IL_0183:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_0188:  ldloc.s    V_9
    IL_018a:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_018f:  ldloc.s    V_8
    IL_0191:  ldc.i4.1
    IL_0192:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentIntroShip>(bool)
    IL_0197:  ldloc.2
    IL_0198:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::UnitY
    IL_019d:  call       valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::op_UnaryNegation(valuetype [Engine]Engine.Vector2)
    IL_01a2:  call       float32 [Engine]Engine.Vector2::Angle(valuetype [Engine]Engine.Vector2,
                                                               valuetype [Engine]Engine.Vector2)
    IL_01a7:  callvirt   instance void Game.ComponentIntroShip::set_Heading(float32)
    IL_01ac:  ldarg.0
    IL_01ad:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_01b2:  ldloc.s    V_8
    IL_01b4:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_01b9:  ldarg.0
    IL_01ba:  ldfld      class Game.SubsystemTime Game.ComponentIntro::m_subsystemTime
    IL_01bf:  ldc.r8     2.
    IL_01c8:  ldarg.0
    IL_01c9:  ldftn      instance void Game.ComponentIntro::'<ShipView_Enter>b__12_0'()
    IL_01cf:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01d4:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_01d9:  ldarg.0
    IL_01da:  ldfld      class Game.SubsystemTime Game.ComponentIntro::m_subsystemTime
    IL_01df:  ldc.r8     7.
    IL_01e8:  ldloc.0
    IL_01e9:  ldftn      instance void Game.ComponentIntro/'<>c__DisplayClass12_0'::'<ShipView_Enter>b__1'()
    IL_01ef:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01f4:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_01f9:  ldarg.0
    IL_01fa:  ldfld      class Game.SubsystemTime Game.ComponentIntro::m_subsystemTime
    IL_01ff:  ldc.r8     12.
    IL_0208:  ldarg.0
    IL_0209:  ldftn      instance void Game.ComponentIntro::'<ShipView_Enter>b__12_2'()
    IL_020f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0214:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         class [System.Runtime]System.Action)
    IL_0219:  ldarg.0
    IL_021a:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_021f:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0224:  ldc.i4.1
    IL_0225:  callvirt   instance !!0 Game.View::FindCamera<class Game.IntroCamera>(bool)
    IL_022a:  stloc.s    V_10
    IL_022c:  ldarg.0
    IL_022d:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0232:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0237:  ldloc.s    V_10
    IL_0239:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_023e:  ldloc.s    V_10
    IL_0240:  ldloc.s    V_9
    IL_0242:  ldc.r4     12.
    IL_0247:  ldloc.2
    IL_0248:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_024d:  mul
    IL_024e:  ldc.r4     8.
    IL_0253:  ldc.r4     12.
    IL_0258:  ldloc.2
    IL_0259:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_025e:  mul
    IL_025f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0264:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0269:  ldc.r4     -5.
    IL_026e:  ldloc.2
    IL_026f:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_0274:  mul
    IL_0275:  ldc.r4     0.0
    IL_027a:  ldc.r4     5.
    IL_027f:  ldloc.2
    IL_0280:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_0285:  mul
    IL_0286:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_028b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0290:  callvirt   instance void Game.IntroCamera::set_CameraPosition(valuetype [Engine]Engine.Vector3)
    IL_0295:  ldloc.s    V_10
    IL_0297:  ldarg.0
    IL_0298:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_029d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02a2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_02a7:  ldc.r4     2.5
    IL_02ac:  ldloc.2
    IL_02ad:  ldfld      float32 [Engine]Engine.Vector2::X
    IL_02b2:  ldc.r4     0.0
    IL_02b7:  ldloc.2
    IL_02b8:  ldfld      float32 [Engine]Engine.Vector2::Y
    IL_02bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02c2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02cc:  callvirt   instance void Game.IntroCamera::set_TargetPosition(valuetype [Engine]Engine.Vector3)
    IL_02d1:  ldloc.s    V_10
    IL_02d3:  ldc.r4     0.0
    IL_02d8:  callvirt   instance void Game.IntroCamera::set_Speed(float32)
    IL_02dd:  ldloc.s    V_10
    IL_02df:  ldarg.0
    IL_02e0:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_02e5:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_02ea:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_02ef:  callvirt   instance void Game.IntroCamera::set_TargetCameraPosition(valuetype [Engine]Engine.Vector3)
    IL_02f4:  ret
  } // end of method ComponentIntro::ShipView_Enter

  .method private hidebysig instance void 
          ShipView_Update() cil managed
  {
    // 代码大小       138 (0x8a)
    .maxstack  5
    .locals init (class Game.IntroCamera V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0006:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_000b:  ldc.i4.1
    IL_000c:  callvirt   instance !!0 Game.View::FindCamera<class Game.IntroCamera>(bool)
    IL_0011:  stloc.0
    IL_0012:  ldloc.0
    IL_0013:  ldc.r4     0.0
    IL_0018:  ldc.r4     8.
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemGameInfo Game.ComponentIntro::m_subsystemGameInfo
    IL_0023:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0028:  conv.r4
    IL_0029:  ldc.r4     6.
    IL_002e:  sub
    IL_002f:  ldc.r4     3.
    IL_0034:  div
    IL_0035:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_003a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_003f:  callvirt   instance void Game.IntroCamera::set_Speed(float32)
    IL_0044:  ldloc.0
    IL_0045:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_0050:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0055:  ldc.r4     0.30000001
    IL_005a:  bge.un.s   IL_0089

    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0062:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0067:  ldarg.0
    IL_0068:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_006d:  callvirt   instance class Game.View Game.ComponentPlayer::get_View()
    IL_0072:  ldc.i4.1
    IL_0073:  callvirt   instance !!0 Game.View::FindCamera<class Game.FppCamera>(bool)
    IL_0078:  callvirt   instance void Game.View::set_ActiveCamera(class Game.Camera)
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.StateMachine Game.ComponentIntro::m_stateMachine
    IL_0083:  ldnull
    IL_0084:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_0089:  ret
  } // end of method ComponentIntro::ShipView_Update

  .method private hidebysig instance float32 
          ScoreShipPosition(valuetype [Engine]Engine.Vector2 playerPosition,
                            int32 x,
                            int32 z) cil managed
  {
    // 代码大小       227 (0xe3)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             int32 V_3,
             class Game.TerrainChunk V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7)
    IL_0000:  ldc.r4     0.0
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_000c:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0011:  ldarg.2
    IL_0012:  conv.r4
    IL_0013:  ldarg.3
    IL_0014:  conv.r4
    IL_0015:  callvirt   instance float32 Game.ITerrainContentsGenerator::CalculateOceanShoreDistance(float32,
                                                                                                      float32)
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  ldc.r4     -8.
    IL_0021:  ble.un.s   IL_002b

    IL_0023:  ldloc.0
    IL_0024:  ldc.r4     100.
    IL_0029:  sub
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  ldc.r4     0.25
    IL_0031:  ldloc.1
    IL_0032:  mul
    IL_0033:  sub
    IL_0034:  stloc.0
    IL_0035:  ldarg.1
    IL_0036:  ldarg.2
    IL_0037:  conv.r4
    IL_0038:  ldarg.3
    IL_0039:  conv.r4
    IL_003a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_003f:  call       float32 [Engine]Engine.Vector2::Distance(valuetype [Engine]Engine.Vector2,
                                                                  valuetype [Engine]Engine.Vector2)
    IL_0044:  stloc.2
    IL_0045:  ldloc.0
    IL_0046:  ldloc.2
    IL_0047:  ldc.r4     20.
    IL_004c:  sub
    IL_004d:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0052:  sub
    IL_0053:  stloc.0
    IL_0054:  ldc.i4.0
    IL_0055:  stloc.3
    IL_0056:  ldarg.0
    IL_0057:  ldfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_005c:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_0061:  ldarg.2
    IL_0062:  ldarg.3
    IL_0063:  callvirt   instance class Game.TerrainChunk Game.Terrain::GetChunkAtCell(int32,
                                                                                       int32)
    IL_0068:  stloc.s    V_4
    IL_006a:  ldloc.s    V_4
    IL_006c:  brfalse.s  IL_00c8

    IL_006e:  ldloc.s    V_4
    IL_0070:  ldfld      valuetype Game.TerrainChunkState Game.TerrainChunk::State
    IL_0075:  ldc.i4.5
    IL_0076:  blt.s      IL_00c8

    IL_0078:  ldarg.0
    IL_0079:  ldfld      class Game.SubsystemTerrain Game.ComponentIntro::m_subsystemTerrain
    IL_007e:  callvirt   instance class Game.ITerrainContentsGenerator Game.SubsystemTerrain::get_TerrainContentsGenerator()
    IL_0083:  callvirt   instance int32 Game.ITerrainContentsGenerator::get_OceanLevel()
    IL_0088:  stloc.s    V_5
    IL_008a:  ldloc.s    V_5
    IL_008c:  stloc.s    V_6
    IL_008e:  br.s       IL_00b9

    IL_0090:  ldloc.s    V_4
    IL_0092:  ldarg.2
    IL_0093:  ldc.i4.s   15
    IL_0095:  and
    IL_0096:  ldloc.s    V_6
    IL_0098:  ldarg.3
    IL_0099:  ldc.i4.s   15
    IL_009b:  and
    IL_009c:  callvirt   instance int32 Game.TerrainChunk::GetCellContentsFast(int32,
                                                                               int32,
                                                                               int32)
    IL_00a1:  stloc.s    V_7
    IL_00a3:  ldloc.s    V_7
    IL_00a5:  ldc.i4.s   18
    IL_00a7:  beq.s      IL_00af

    IL_00a9:  ldloc.s    V_7
    IL_00ab:  ldc.i4.s   92
    IL_00ad:  bne.un.s   IL_00ca

    IL_00af:  ldloc.s    V_6
    IL_00b1:  ldc.i4.1
    IL_00b2:  sub
    IL_00b3:  stloc.s    V_6
    IL_00b5:  ldloc.3
    IL_00b6:  ldc.i4.1
    IL_00b7:  add
    IL_00b8:  stloc.3
    IL_00b9:  ldloc.s    V_6
    IL_00bb:  ldloc.s    V_5
    IL_00bd:  ldc.i4.5
    IL_00be:  sub
    IL_00bf:  blt.s      IL_00ca

    IL_00c1:  ldloc.s    V_6
    IL_00c3:  ldc.i4.0
    IL_00c4:  bge.s      IL_0090

    IL_00c6:  br.s       IL_00ca

    IL_00c8:  ldc.i4.2
    IL_00c9:  stloc.3
    IL_00ca:  ldloc.3
    IL_00cb:  ldc.i4.2
    IL_00cc:  bge.s      IL_00d6

    IL_00ce:  ldloc.0
    IL_00cf:  ldc.r4     100.
    IL_00d4:  sub
    IL_00d5:  stloc.0
    IL_00d6:  ldloc.0
    IL_00d7:  ldc.r4     2.
    IL_00dc:  ldloc.3
    IL_00dd:  conv.r4
    IL_00de:  mul
    IL_00df:  add
    IL_00e0:  stloc.0
    IL_00e1:  ldloc.0
    IL_00e2:  ret
  } // end of method ComponentIntro::ScoreShipPosition

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.ComponentIntro::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0011:  ret
  } // end of method ComponentIntro::.ctor

  .method private hidebysig instance void 
          '<ShipView_Enter>b__12_0'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldnull
    IL_000c:  ldstr      "Cast away, boys."
    IL_0011:  ldc.r4     5.
    IL_0016:  ldc.r4     0.0
    IL_001b:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_0020:  ret
  } // end of method ComponentIntro::'<ShipView_Enter>b__12_0'

  .method private hidebysig instance void 
          '<ShipView_Enter>b__12_2'() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       33 (0x21)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.ComponentPlayer Game.ComponentIntro::m_componentPlayer
    IL_0006:  callvirt   instance class Game.ComponentGui Game.ComponentPlayer::get_ComponentGui()
    IL_000b:  ldnull
    IL_000c:  ldstr      "We're leaving you here for good!"
    IL_0011:  ldc.r4     5.
    IL_0016:  ldc.r4     0.0
    IL_001b:  callvirt   instance void Game.ComponentGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_0020:  ret
  } // end of method ComponentIntro::'<ShipView_Enter>b__12_2'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentIntro::get_UpdateOrder()
  } // end of property ComponentIntro::UpdateOrder
} // end of class Game.ComponentIntro