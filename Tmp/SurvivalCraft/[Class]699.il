.class public auto ansi beforefieldinit Game.SubsystemIntro
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass13_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public bool isPlayerMounted
    .field public class Game.SubsystemIntro '<>4__this'
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass13_0'::.ctor

    .method assembly hidebysig instance void 
            '<ShipView_Enter>b__1'(object '<obj>') cil managed
    {
      // 代码大小       74 (0x4a)
      .maxstack  5
      IL_0000:  ldarg.0
      IL_0001:  ldfld      bool Game.SubsystemIntro/'<>c__DisplayClass13_0'::isPlayerMounted
      IL_0006:  brfalse.s  IL_0029

      IL_0008:  ldarg.0
      IL_0009:  ldfld      class Game.SubsystemIntro Game.SubsystemIntro/'<>c__DisplayClass13_0'::'<>4__this'
      IL_000e:  ldfld      class Game.SubsystemGui Game.SubsystemIntro::m_subsystemGui
      IL_0013:  ldnull
      IL_0014:  ldstr      "Hey you, in the boat!"
      IL_0019:  ldc.r4     5.
      IL_001e:  ldc.r4     0.0
      IL_0023:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                                string,
                                                                                float32,
                                                                                float32)
      IL_0028:  ret

      IL_0029:  ldarg.0
      IL_002a:  ldfld      class Game.SubsystemIntro Game.SubsystemIntro/'<>c__DisplayClass13_0'::'<>4__this'
      IL_002f:  ldfld      class Game.SubsystemGui Game.SubsystemIntro::m_subsystemGui
      IL_0034:  ldnull
      IL_0035:  ldstr      "Hey you, on the shore!"
      IL_003a:  ldc.r4     5.
      IL_003f:  ldc.r4     0.0
      IL_0044:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                                string,
                                                                                float32,
                                                                                float32)
      IL_0049:  ret
    } // end of method '<>c__DisplayClass13_0'::'<ShipView_Enter>b__1'

  } // end of class '<>c__DisplayClass13_0'

  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemPlayer m_subsystemPlayer
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private bool m_playIntro
  .field private class Game.StateMachine m_stateMachine
  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemIntro::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.SubsystemIntro::m_playIntro
    IL_0006:  brfalse.s  IL_002c

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.SubsystemPlayer Game.SubsystemIntro::m_subsystemPlayer
    IL_000e:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0013:  brfalse.s  IL_002c

    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      bool Game.SubsystemIntro::m_playIntro
    IL_001c:  ldarg.0
    IL_001d:  ldfld      class Game.StateMachine Game.SubsystemIntro::m_stateMachine
    IL_0022:  ldstr      "ShipView"
    IL_0027:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.StateMachine Game.SubsystemIntro::m_stateMachine
    IL_0032:  callvirt   instance void Game.StateMachine::Update()
    IL_0037:  ret
  } // end of method SubsystemIntro::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       167 (0xa7)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemIntro::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_001f:  stfld      class Game.SubsystemGui Game.SubsystemIntro::m_subsystemGui
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0031:  stfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0043:  stfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPlayer>(bool)
    IL_0055:  stfld      class Game.SubsystemPlayer Game.SubsystemIntro::m_subsystemPlayer
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_0067:  stfld      class Game.SubsystemGameInfo Game.SubsystemIntro::m_subsystemGameInfo
    IL_006c:  ldarg.0
    IL_006d:  ldarg.1
    IL_006e:  ldstr      "PlayIntro"
    IL_0073:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0078:  stfld      bool Game.SubsystemIntro::m_playIntro
    IL_007d:  ldarg.0
    IL_007e:  ldfld      class Game.StateMachine Game.SubsystemIntro::m_stateMachine
    IL_0083:  ldstr      "ShipView"
    IL_0088:  ldarg.0
    IL_0089:  ldftn      instance void Game.SubsystemIntro::ShipView_Enter()
    IL_008f:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_0094:  ldarg.0
    IL_0095:  ldftn      instance void Game.SubsystemIntro::ShipView_Update()
    IL_009b:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_00a0:  ldnull
    IL_00a1:  callvirt   instance void Game.StateMachine::AddState(string,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action,
                                                                   class [System.Runtime]System.Action)
    IL_00a6:  ret
  } // end of method SubsystemIntro::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "PlayIntro"
    IL_0006:  ldarg.0
    IL_0007:  ldfld      bool Game.SubsystemIntro::m_playIntro
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<bool>(string,
                                                                                                        !!0)
    IL_0011:  ret
  } // end of method SubsystemIntro::Save

  .method private hidebysig instance void 
          ShipView_Enter() cil managed
  {
    // 代码大小       842 (0x34a)
    .maxstack  5
    .locals init (class Game.SubsystemIntro/'<>c__DisplayClass13_0' V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             class [EntitySystem]TemplatesDatabase.DatabaseObject V_6,
             class [EntitySystem]TemplatesDatabase.ValuesDictionary V_7,
             class [EntitySystem]GameEntitySystem.Entity V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             class Game.ComponentCreature V_10,
             class Game.IntroCamera V_11,
             int32 V_12,
             int32 V_13,
             int32 V_14,
             int32 V_15,
             int32 V_16,
             int32 V_17,
             int32 V_18,
             int32 V_19)
    IL_0000:  newobj     instance void Game.SubsystemIntro/'<>c__DisplayClass13_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      class Game.SubsystemIntro Game.SubsystemIntro/'<>c__DisplayClass13_0'::'<>4__this'
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemPlayer Game.SubsystemIntro::m_subsystemPlayer
    IL_0013:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0018:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_001d:  ldc.i4.1
    IL_001e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_0023:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0028:  stloc.1
    IL_0029:  ldloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemPlayer Game.SubsystemIntro::m_subsystemPlayer
    IL_0030:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_0035:  callvirt   instance class Game.ComponentRider Game.ComponentPlayer::get_ComponentRider()
    IL_003a:  callvirt   instance class Game.ComponentMount Game.ComponentRider::get_Mount()
    IL_003f:  ldnull
    IL_0040:  cgt.un
    IL_0042:  stfld      bool Game.SubsystemIntro/'<>c__DisplayClass13_0'::isPlayerMounted
    IL_0047:  ldc.i4     0x7fffffff
    IL_004c:  stloc.2
    IL_004d:  ldc.i4.0
    IL_004e:  stloc.3
    IL_004f:  ldc.i4.0
    IL_0050:  stloc.s    V_4
    IL_0052:  ldc.i4.0
    IL_0053:  stloc.s    V_5
    IL_0055:  ldloc.1
    IL_0056:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_005b:  conv.i4
    IL_005c:  ldc.i4.s   15
    IL_005e:  sub
    IL_005f:  stloc.s    V_12
    IL_0061:  br         IL_0150

    IL_0066:  ldc.i4     0x7fffffff
    IL_006b:  stloc.s    V_13
    IL_006d:  ldc.i4.s   10
    IL_006f:  stloc.s    V_14
    IL_0071:  br         IL_0116

    IL_0076:  ldloc.1
    IL_0077:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_007c:  conv.i4
    IL_007d:  ldloc.s    V_14
    IL_007f:  sub
    IL_0080:  stloc.s    V_15
    IL_0082:  ldarg.0
    IL_0083:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_0088:  ldloc.s    V_15
    IL_008a:  ldloc.s    V_12
    IL_008c:  callvirt   instance class Game.TerrainChunk Game.SubsystemTerrain::CellToChunk(int32,
                                                                                             int32)
    IL_0091:  brfalse.s  IL_0110

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_0099:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_009e:  ldloc.s    V_15
    IL_00a0:  ldloc.s    V_12
    IL_00a2:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_00a7:  stloc.s    V_16
    IL_00a9:  ldc.i4.s   -3
    IL_00ab:  stloc.s    V_17
    IL_00ad:  br.s       IL_010b

    IL_00af:  ldarg.0
    IL_00b0:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_00b5:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ba:  ldloc.s    V_15
    IL_00bc:  ldloc.s    V_17
    IL_00be:  add
    IL_00bf:  ldloc.s    V_16
    IL_00c1:  ldloc.s    V_12
    IL_00c3:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00c8:  stloc.s    V_18
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_00d0:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00d5:  ldloc.s    V_15
    IL_00d7:  ldloc.s    V_17
    IL_00d9:  add
    IL_00da:  ldloc.s    V_16
    IL_00dc:  ldc.i4.1
    IL_00dd:  sub
    IL_00de:  ldloc.s    V_12
    IL_00e0:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00e5:  stloc.s    V_19
    IL_00e7:  ldloc.s    V_18
    IL_00e9:  ldc.i4.s   18
    IL_00eb:  beq.s      IL_00f3

    IL_00ed:  ldloc.s    V_18
    IL_00ef:  ldc.i4.s   92
    IL_00f1:  bne.un.s   IL_00ff

    IL_00f3:  ldloc.s    V_19
    IL_00f5:  ldc.i4.s   18
    IL_00f7:  beq.s      IL_0105

    IL_00f9:  ldloc.s    V_19
    IL_00fb:  ldc.i4.s   92
    IL_00fd:  beq.s      IL_0105

    IL_00ff:  ldloc.s    V_14
    IL_0101:  stloc.s    V_13
    IL_0103:  br.s       IL_0110

    IL_0105:  ldloc.s    V_17
    IL_0107:  ldc.i4.1
    IL_0108:  add
    IL_0109:  stloc.s    V_17
    IL_010b:  ldloc.s    V_17
    IL_010d:  ldc.i4.3
    IL_010e:  ble.s      IL_00af

    IL_0110:  ldloc.s    V_14
    IL_0112:  ldc.i4.1
    IL_0113:  add
    IL_0114:  stloc.s    V_14
    IL_0116:  ldloc.s    V_14
    IL_0118:  ldc.i4.s   40
    IL_011a:  blt        IL_0076

    IL_011f:  ldloc.s    V_13
    IL_0121:  ldloc.2
    IL_0122:  bge.s      IL_014a

    IL_0124:  ldloc.s    V_13
    IL_0126:  stloc.2
    IL_0127:  ldloc.1
    IL_0128:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_012d:  conv.i4
    IL_012e:  ldloc.2
    IL_012f:  sub
    IL_0130:  stloc.3
    IL_0131:  ldloc.s    V_12
    IL_0133:  stloc.s    V_5
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_013b:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0140:  ldloc.3
    IL_0141:  ldloc.s    V_5
    IL_0143:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_0148:  stloc.s    V_4
    IL_014a:  ldloc.s    V_12
    IL_014c:  ldc.i4.1
    IL_014d:  add
    IL_014e:  stloc.s    V_12
    IL_0150:  ldloc.s    V_12
    IL_0152:  ldloc.1
    IL_0153:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0158:  conv.i4
    IL_0159:  ldc.i4.s   15
    IL_015b:  add
    IL_015c:  blt        IL_0066

    IL_0161:  ldloc.2
    IL_0162:  ldc.i4     0x7fffffff
    IL_0167:  bne.un.s   IL_019c

    IL_0169:  ldstr      "Fallback intro ship position used."
    IL_016e:  call       void [Engine]Engine.Log::Warning(string)
    IL_0173:  ldloc.1
    IL_0174:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0179:  conv.i4
    IL_017a:  ldc.i4.s   10
    IL_017c:  sub
    IL_017d:  stloc.3
    IL_017e:  ldloc.1
    IL_017f:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0184:  conv.i4
    IL_0185:  stloc.s    V_5
    IL_0187:  ldarg.0
    IL_0188:  ldfld      class Game.SubsystemTerrain Game.SubsystemIntro::m_subsystemTerrain
    IL_018d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0192:  ldloc.3
    IL_0193:  ldloc.s    V_5
    IL_0195:  callvirt   instance int32 Game.TerrainData::CalculateTopmostCellHeight(int32,
                                                                                     int32)
    IL_019a:  stloc.s    V_4
    IL_019c:  ldarg.0
    IL_019d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_01a2:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_01a7:  callvirt   instance class [EntitySystem]TemplatesDatabase.Database [EntitySystem]GameEntitySystem.GameDatabase::get_Database()
    IL_01ac:  ldstr      "IntroShip"
    IL_01b1:  ldarg.0
    IL_01b2:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_01b7:  callvirt   instance class [EntitySystem]GameEntitySystem.GameDatabase [EntitySystem]GameEntitySystem.Project::get_GameDatabase()
    IL_01bc:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObjectType [EntitySystem]GameEntitySystem.GameDatabase::get_EntityTemplateType()
    IL_01c1:  ldc.i4.1
    IL_01c2:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.Database::FindDatabaseObject(string,
                                                                                                                                                    class [EntitySystem]TemplatesDatabase.DatabaseObjectType,
                                                                                                                                                    bool)
    IL_01c7:  stloc.s    V_6
    IL_01c9:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_01ce:  stloc.s    V_7
    IL_01d0:  ldloc.s    V_7
    IL_01d2:  ldloc.s    V_6
    IL_01d4:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::PopulateFromDatabaseObject(class [EntitySystem]TemplatesDatabase.DatabaseObject)
    IL_01d9:  ldarg.0
    IL_01da:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_01df:  ldloc.s    V_7
    IL_01e1:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Project::CreateEntity(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_01e6:  stloc.s    V_8
    IL_01e8:  ldloca.s   V_9
    IL_01ea:  ldloc.3
    IL_01eb:  ldc.i4.s   12
    IL_01ed:  sub
    IL_01ee:  conv.r4
    IL_01ef:  ldloc.s    V_4
    IL_01f1:  ldc.i4.1
    IL_01f2:  add
    IL_01f3:  conv.r4
    IL_01f4:  ldloc.s    V_5
    IL_01f6:  conv.r4
    IL_01f7:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01fc:  ldloc.s    V_8
    IL_01fe:  ldc.i4.1
    IL_01ff:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_0204:  ldloc.s    V_9
    IL_0206:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_020b:  ldloc.s    V_8
    IL_020d:  ldc.i4.1
    IL_020e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentIntroShip>(bool)
    IL_0213:  ldloc.s    V_5
    IL_0215:  conv.r4
    IL_0216:  ldloc.1
    IL_0217:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_021c:  bgt.s      IL_022a

    IL_021e:  ldc.r4     130.
    IL_0223:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0228:  br.s       IL_0234

    IL_022a:  ldc.r4     50.
    IL_022f:  call       float32 [Engine]Engine.MathUtils::DegToRad(float32)
    IL_0234:  callvirt   instance void Game.ComponentIntroShip::set_Heading(float32)
    IL_0239:  ldarg.0
    IL_023a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_023f:  ldloc.s    V_8
    IL_0241:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::AddEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_0246:  ldarg.0
    IL_0247:  ldfld      class Game.SubsystemTime Game.SubsystemIntro::m_subsystemTime
    IL_024c:  ldc.r8     2.
    IL_0255:  ldnull
    IL_0256:  ldarg.0
    IL_0257:  ldftn      instance void Game.SubsystemIntro::'<ShipView_Enter>b__13_0'(object)
    IL_025d:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0262:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_0267:  ldarg.0
    IL_0268:  ldfld      class Game.SubsystemTime Game.SubsystemIntro::m_subsystemTime
    IL_026d:  ldc.r8     7.
    IL_0276:  ldnull
    IL_0277:  ldloc.0
    IL_0278:  ldftn      instance void Game.SubsystemIntro/'<>c__DisplayClass13_0'::'<ShipView_Enter>b__1'(object)
    IL_027e:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_0283:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_0288:  ldarg.0
    IL_0289:  ldfld      class Game.SubsystemTime Game.SubsystemIntro::m_subsystemTime
    IL_028e:  ldc.r8     12.
    IL_0297:  ldnull
    IL_0298:  ldarg.0
    IL_0299:  ldftn      instance void Game.SubsystemIntro::'<ShipView_Enter>b__13_2'(object)
    IL_029f:  newobj     instance void class [System.Runtime]System.Action`1<object>::.ctor(object,
                                                                                            native int)
    IL_02a4:  callvirt   instance void Game.SubsystemTime::QueueGameTimeDelayedExecution(float64,
                                                                                         object,
                                                                                         class [System.Runtime]System.Action`1<object>)
    IL_02a9:  ldarg.0
    IL_02aa:  ldfld      class Game.SubsystemPlayer Game.SubsystemIntro::m_subsystemPlayer
    IL_02af:  callvirt   instance class Game.ComponentPlayer Game.SubsystemPlayer::get_ComponentPlayer()
    IL_02b4:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_02b9:  ldc.i4.1
    IL_02ba:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_02bf:  stloc.s    V_10
    IL_02c1:  ldarg.0
    IL_02c2:  ldfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_02c7:  ldc.i4.1
    IL_02c8:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.IntroCamera>(bool)
    IL_02cd:  stloc.s    V_11
    IL_02cf:  ldarg.0
    IL_02d0:  ldfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_02d5:  ldloc.s    V_11
    IL_02d7:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_02dc:  ldloc.s    V_11
    IL_02de:  ldloc.s    V_9
    IL_02e0:  ldc.r4     -12.
    IL_02e5:  ldc.r4     8.
    IL_02ea:  ldc.r4     -10.
    IL_02ef:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_02f4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_02f9:  callvirt   instance void Game.IntroCamera::set_CameraPosition(valuetype [Engine]Engine.Vector3)
    IL_02fe:  ldloc.s    V_11
    IL_0300:  ldloc.s    V_10
    IL_0302:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0307:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_030c:  ldc.r4     -2.5
    IL_0311:  ldc.r4     0.0
    IL_0316:  ldc.r4     0.0
    IL_031b:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0320:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0325:  callvirt   instance void Game.IntroCamera::set_TargetPosition(valuetype [Engine]Engine.Vector3)
    IL_032a:  ldloc.s    V_11
    IL_032c:  ldc.r4     0.0
    IL_0331:  callvirt   instance void Game.IntroCamera::set_Speed(float32)
    IL_0336:  ldloc.s    V_11
    IL_0338:  ldloc.s    V_10
    IL_033a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_033f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0344:  callvirt   instance void Game.IntroCamera::set_TargetCameraPosition(valuetype [Engine]Engine.Vector3)
    IL_0349:  ret
  } // end of method SubsystemIntro::ShipView_Enter

  .method private hidebysig instance void 
          ShipView_Update() cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  5
    .locals init (class Game.IntroCamera V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_0006:  ldc.i4.1
    IL_0007:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.IntroCamera>(bool)
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldc.r4     0.0
    IL_0013:  ldc.r4     8.
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class Game.SubsystemGameInfo Game.SubsystemIntro::m_subsystemGameInfo
    IL_001e:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0023:  conv.r4
    IL_0024:  ldc.r4     6.
    IL_0029:  sub
    IL_002a:  ldc.r4     3.
    IL_002f:  div
    IL_0030:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0035:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_003a:  callvirt   instance void Game.IntroCamera::set_Speed(float32)
    IL_003f:  ldloc.0
    IL_0040:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_TargetCameraPosition()
    IL_0045:  ldloc.0
    IL_0046:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.IntroCamera::get_CameraPosition()
    IL_004b:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0050:  ldc.r4     0.30000001
    IL_0055:  bge.un.s   IL_007a

    IL_0057:  ldarg.0
    IL_0058:  ldfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_005d:  ldarg.0
    IL_005e:  ldfld      class Game.SubsystemCamera Game.SubsystemIntro::m_subsystemCamera
    IL_0063:  ldc.i4.1
    IL_0064:  callvirt   instance !!0 Game.SubsystemCamera::FindCamera<class Game.FppCamera>(bool)
    IL_0069:  callvirt   instance void Game.SubsystemCamera::set_ActiveCamera(class Game.Camera)
    IL_006e:  ldarg.0
    IL_006f:  ldfld      class Game.StateMachine Game.SubsystemIntro::m_stateMachine
    IL_0074:  ldnull
    IL_0075:  callvirt   instance void Game.StateMachine::TransitionTo(string)
    IL_007a:  ret
  } // end of method SubsystemIntro::ShipView_Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.StateMachine::.ctor()
    IL_0006:  stfld      class Game.StateMachine Game.SubsystemIntro::m_stateMachine
    IL_000b:  ldarg.0
    IL_000c:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0011:  ret
  } // end of method SubsystemIntro::.ctor

  .method private hidebysig instance void 
          '<ShipView_Enter>b__13_0'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemIntro::m_subsystemGui
    IL_0006:  ldnull
    IL_0007:  ldstr      "Cast away, boys."
    IL_000c:  ldc.r4     5.
    IL_0011:  ldc.r4     0.0
    IL_0016:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_001b:  ret
  } // end of method SubsystemIntro::'<ShipView_Enter>b__13_0'

  .method private hidebysig instance void 
          '<ShipView_Enter>b__13_2'(object '<obj>') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGui Game.SubsystemIntro::m_subsystemGui
    IL_0006:  ldnull
    IL_0007:  ldstr      "We're leaving you here for good!"
    IL_000c:  ldc.r4     5.
    IL_0011:  ldc.r4     0.0
    IL_0016:  callvirt   instance void Game.SubsystemGui::DisplayLargeMessage(string,
                                                                              string,
                                                                              float32,
                                                                              float32)
    IL_001b:  ret
  } // end of method SubsystemIntro::'<ShipView_Enter>b__13_2'

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemIntro::get_UpdateOrder()
  } // end of property SubsystemIntro::UpdateOrder
} // end of class Game.SubsystemIntro