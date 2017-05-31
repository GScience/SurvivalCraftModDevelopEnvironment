.class public auto ansi beforefieldinit Game.FppCamera
       extends Game.Camera
{
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.SubsystemCamera subsystemCamera) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.Camera::.ctor(class Game.SubsystemCamera)
    IL_0007:  ret
  } // end of method FppCamera::.ctor

  .method public hidebysig virtual instance void 
          UpdateViewParameters(class Game.SubsystemDrawing subsystemDrawing,
                               class Game.SubsystemAudio subsystemAudio,
                               float32 dt) cil managed
  {
    // 代码大小       169 (0xa9)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             class Game.ComponentCreature V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0006:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_000b:  brfalse    IL_00a8

    IL_0010:  ldarg.0
    IL_0011:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0016:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_001b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0020:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_0025:  stloc.1
    IL_0026:  ldloc.1
    IL_0027:  brfalse.s  IL_004e

    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_002f:  callvirt   instance valuetype [Engine]Engine.Quaternion Game.ComponentCreatureModel::get_EyeRotation()
    IL_0034:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateFromQuaternion(valuetype [Engine]Engine.Quaternion)
    IL_0039:  stloc.0
    IL_003a:  ldloca.s   V_0
    IL_003c:  ldloc.1
    IL_003d:  callvirt   instance class Game.ComponentCreatureModel Game.ComponentCreature::get_ComponentCreatureModel()
    IL_0042:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentCreatureModel::get_EyePosition()
    IL_0047:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_004c:  br.s       IL_005f

    IL_004e:  ldarg.0
    IL_004f:  call       instance class Game.SubsystemCamera Game.Camera::get_SubsystemCamera()
    IL_0054:  callvirt   instance class Game.ComponentBody Game.SubsystemCamera::get_Target()
    IL_0059:  callvirt   instance valuetype [Engine]Engine.Matrix Game.ComponentFrame::get_Matrix()
    IL_005e:  stloc.0
    IL_005f:  ldarg.1
    IL_0060:  ldloca.s   V_0
    IL_0062:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0067:  callvirt   instance void Game.SubsystemDrawing::set_ViewPosition(valuetype [Engine]Engine.Vector3)
    IL_006c:  ldarg.1
    IL_006d:  ldloca.s   V_0
    IL_006f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0074:  callvirt   instance void Game.SubsystemDrawing::set_ViewDirection(valuetype [Engine]Engine.Vector3)
    IL_0079:  ldarg.1
    IL_007a:  ldloca.s   V_0
    IL_007c:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0081:  callvirt   instance void Game.SubsystemDrawing::set_ViewUp(valuetype [Engine]Engine.Vector3)
    IL_0086:  ldarg.2
    IL_0087:  ldarg.1
    IL_0088:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_008d:  callvirt   instance void Game.SubsystemAudio::set_ListenerPosition(valuetype [Engine]Engine.Vector3)
    IL_0092:  ldarg.2
    IL_0093:  ldarg.1
    IL_0094:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewDirection()
    IL_0099:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_009e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00a3:  callvirt   instance void Game.SubsystemAudio::set_ListenerRight(valuetype [Engine]Engine.Vector3)
    IL_00a8:  ret
  } // end of method FppCamera::UpdateViewParameters

} // end of class Game.FppCamera