.class public auto ansi beforefieldinit Game.ComponentIntroShip
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentFrame m_componentFrame
  .field private class Game.ComponentModel m_componentModel
  .field private float32 '<Heading>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_Heading() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentIntroShip::'<Heading>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentIntroShip::get_Heading

  .method public hidebysig specialname instance void 
          set_Heading(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentIntroShip::'<Heading>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentIntroShip::set_Heading

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentIntroShip::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       440 (0x1b8)
    .maxstack  6
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Matrix V_1,
             valuetype [Engine]Engine.Quaternion V_2,
             valuetype [Engine]Engine.Vector3 V_3)
    IL_0000:  ldc.r4     3.5
    IL_0005:  ldc.r4     7.9999998e-002
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class Game.SubsystemGameInfo Game.ComponentIntroShip::m_subsystemGameInfo
    IL_0010:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0015:  conv.r4
    IL_0016:  ldc.r4     6.
    IL_001b:  sub
    IL_001c:  mul
    IL_001d:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_0022:  mul
    IL_0023:  stloc.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      class Game.ComponentFrame Game.ComponentIntroShip::m_componentFrame
    IL_002a:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromRotationMatrix(valuetype [Engine]Engine.Matrix)
    IL_0036:  stloc.2
    IL_0037:  ldloca.s   V_2
    IL_0039:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Quaternion::ToYawPitchRoll()
    IL_003e:  stloc.3
    IL_003f:  ldloca.s   V_3
    IL_0041:  ldarg.0
    IL_0042:  call       instance float32 Game.ComponentIntroShip::get_Heading()
    IL_0047:  stfld      float32 [Engine]Engine.Vector3::X
    IL_004c:  ldloca.s   V_3
    IL_004e:  ldc.r4     7.9999998e-002
    IL_0053:  ldc.r8     0.77000000000000002
    IL_005c:  ldarg.0
    IL_005d:  ldfld      class Game.SubsystemTime Game.ComponentIntroShip::m_subsystemTime
    IL_0062:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_0067:  mul
    IL_0068:  ldc.r8     1.
    IL_0071:  add
    IL_0072:  call       float64 [Engine]Engine.MathUtils::NormalizeAngle(float64)
    IL_0077:  conv.r4
    IL_0078:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_007d:  mul
    IL_007e:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_0083:  ldloca.s   V_3
    IL_0085:  ldc.r4     0.12
    IL_008a:  ldc.r8     1.1200000000000001
    IL_0093:  ldarg.0
    IL_0094:  ldfld      class Game.SubsystemTime Game.ComponentIntroShip::m_subsystemTime
    IL_0099:  callvirt   instance float64 Game.SubsystemTime::get_GameTime()
    IL_009e:  mul
    IL_009f:  ldc.r8     2.
    IL_00a8:  add
    IL_00a9:  call       float64 [Engine]Engine.MathUtils::NormalizeAngle(float64)
    IL_00ae:  conv.r4
    IL_00af:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_00b4:  mul
    IL_00b5:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_00ba:  ldloc.3
    IL_00bb:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_00c0:  ldloc.3
    IL_00c1:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_00c6:  ldloc.3
    IL_00c7:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_00cc:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromYawPitchRoll(float32,
                                                                                                       float32,
                                                                                                       float32)
    IL_00d1:  ldloca.s   V_1
    IL_00d3:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00d8:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateTranslation(valuetype [Engine]Engine.Vector3)
    IL_00dd:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00e2:  stloc.1
    IL_00e3:  ldloca.s   V_1
    IL_00e5:  dup
    IL_00e6:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00eb:  ldloc.0
    IL_00ec:  ldloca.s   V_1
    IL_00ee:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_00f3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f8:  ldc.r4     1.
    IL_00fd:  ldc.r4     0.0
    IL_0102:  ldc.r4     1.
    IL_0107:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0111:  ldarg.1
    IL_0112:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0117:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_011c:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0121:  ldarg.0
    IL_0122:  ldfld      class Game.ComponentFrame Game.ComponentIntroShip::m_componentFrame
    IL_0127:  ldloca.s   V_1
    IL_0129:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_012e:  callvirt   instance void Game.ComponentFrame::set_Position(valuetype [Engine]Engine.Vector3)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class Game.ComponentFrame Game.ComponentIntroShip::m_componentFrame
    IL_0139:  ldloc.1
    IL_013a:  call       valuetype [Engine]Engine.Quaternion [Engine]Engine.Quaternion::CreateFromRotationMatrix(valuetype [Engine]Engine.Matrix)
    IL_013f:  callvirt   instance void Game.ComponentFrame::set_Rotation(valuetype [Engine]Engine.Quaternion)
    IL_0144:  ldarg.0
    IL_0145:  ldfld      class Game.ComponentModel Game.ComponentIntroShip::m_componentModel
    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.ComponentModel Game.ComponentIntroShip::m_componentModel
    IL_0150:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0155:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_015a:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_015f:  ldloc.1
    IL_0160:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::.ctor(!0)
    IL_0165:  callvirt   instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_016a:  ldarg.0
    IL_016b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0170:  ldc.i4.1
    IL_0171:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemDrawing>(bool)
    IL_0176:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_017b:  ldloca.s   V_1
    IL_017d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0182:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0187:  ldarg.0
    IL_0188:  ldfld      class Game.SubsystemTerrain Game.ComponentIntroShip::m_subsystemTerrain
    IL_018d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0192:  callvirt   instance int32 Game.TerrainData::get_SizeX()
    IL_0197:  conv.r4
    IL_0198:  ldc.r4     0.75
    IL_019d:  mul
    IL_019e:  ldc.r4     16.
    IL_01a3:  add
    IL_01a4:  ble.un.s   IL_01b7

    IL_01a6:  ldarg.0
    IL_01a7:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_01ac:  ldarg.0
    IL_01ad:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_01b2:  callvirt   instance void [EntitySystem]GameEntitySystem.Project::RemoveEntity(class [EntitySystem]GameEntitySystem.Entity)
    IL_01b7:  ret
  } // end of method ComponentIntroShip::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       108 (0x6c)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.ComponentIntroShip::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_001f:  stfld      class Game.SubsystemGameInfo Game.ComponentIntroShip::m_subsystemGameInfo
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.ComponentIntroShip::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_0043:  stfld      class Game.ComponentFrame Game.ComponentIntroShip::m_componentFrame
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentModel>(bool)
    IL_0055:  stfld      class Game.ComponentModel Game.ComponentIntroShip::m_componentModel
    IL_005a:  ldarg.0
    IL_005b:  ldarg.1
    IL_005c:  ldstr      "Heading"
    IL_0061:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<float32>(string)
    IL_0066:  call       instance void Game.ComponentIntroShip::set_Heading(float32)
    IL_006b:  ret
  } // end of method ComponentIntroShip::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  ldstr      "Heading"
    IL_0006:  ldarg.0
    IL_0007:  call       instance float32 Game.ComponentIntroShip::get_Heading()
    IL_000c:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<float32>(string,
                                                                                                           !!0)
    IL_0011:  ret
  } // end of method ComponentIntroShip::Save

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentIntroShip::.ctor

  .property instance float32 Heading()
  {
    .get instance float32 Game.ComponentIntroShip::get_Heading()
    .set instance void Game.ComponentIntroShip::set_Heading(float32)
  } // end of property ComponentIntroShip::Heading
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentIntroShip::get_UpdateOrder()
  } // end of property ComponentIntroShip::UpdateOrder
} // end of class Game.ComponentIntroShip