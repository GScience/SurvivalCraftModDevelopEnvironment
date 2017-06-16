.class public auto ansi beforefieldinit Game.ComponentOuterClothingModel
       extends Game.ComponentModel
{
  .field private class Game.SubsystemCamera m_subsystemCamera
  .field private class Game.SubsystemSky m_subsystemSky
  .field private class Game.ComponentHumanModel m_componentHumanModel
  .field private class Game.ComponentCreature m_componentCreature
  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void Game.ComponentModel::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary,
                                                                 class [EntitySystem]GameEntitySystem.IdToEntityMap)
    IL_0008:  ldarg.0
    IL_0009:  ldarg.0
    IL_000a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000f:  ldc.i4.1
    IL_0010:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemCamera>(bool)
    IL_0015:  stfld      class Game.SubsystemCamera Game.ComponentOuterClothingModel::m_subsystemCamera
    IL_001a:  ldarg.0
    IL_001b:  ldarg.0
    IL_001c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0021:  ldc.i4.1
    IL_0022:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_0027:  stfld      class Game.SubsystemSky Game.ComponentOuterClothingModel::m_subsystemSky
    IL_002c:  ldarg.0
    IL_002d:  ldarg.0
    IL_002e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHumanModel>(bool)
    IL_0039:  stfld      class Game.ComponentHumanModel Game.ComponentOuterClothingModel::m_componentHumanModel
    IL_003e:  ldarg.0
    IL_003f:  ldarg.0
    IL_0040:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0045:  ldc.i4.1
    IL_0046:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>(bool)
    IL_004b:  stfld      class Game.ComponentCreature Game.ComponentOuterClothingModel::m_componentCreature
    IL_0050:  ret
  } // end of method ComponentOuterClothingModel::Load

  .method public hidebysig virtual instance void 
          UpdateVisibility(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       35 (0x23)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemCamera Game.ComponentOuterClothingModel::m_subsystemCamera
    IL_0006:  ldarg.0
    IL_0007:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000c:  callvirt   instance bool Game.SubsystemCamera::IsEntityFirstPersonTarget(class [EntitySystem]GameEntitySystem.Entity)
    IL_0011:  brfalse.s  IL_001b

    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  call       instance void Game.ComponentModel::set_IsVisible(bool)
    IL_001a:  ret

    IL_001b:  ldarg.0
    IL_001c:  ldarg.1
    IL_001d:  call       instance void Game.ComponentModel::UpdateVisibility(class Game.SubsystemDrawing)
    IL_0022:  ret
  } // end of method ComponentOuterClothingModel::UpdateVisibility

  .method public hidebysig virtual instance void 
          PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       247 (0xf7)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_1,
             class [Engine]Engine.Graphics.ModelBone V_2,
             class [Engine]Engine.Graphics.ModelBone V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4,
             bool V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  ldfld      class Game.ComponentHumanModel Game.ComponentOuterClothingModel::m_componentHumanModel
    IL_0007:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_000c:  call       instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
    IL_0011:  ldarg.0
    IL_0012:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0017:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_001c:  stloc.1
    IL_001d:  ldloca.s   V_1
    IL_001f:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::GetEnumerator()
    IL_0024:  stloc.0
    .try
    {
      IL_0025:  br.s       IL_0064

      IL_0027:  ldloca.s   V_0
      IL_0029:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::get_Current()
      IL_002e:  stloc.2
      IL_002f:  ldarg.0
      IL_0030:  ldfld      class Game.ComponentHumanModel Game.ComponentOuterClothingModel::m_componentHumanModel
      IL_0035:  callvirt   instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
      IL_003a:  ldloc.2
      IL_003b:  callvirt   instance string [Engine]Engine.Graphics.ModelBone::get_Name()
      IL_0040:  ldc.i4.1
      IL_0041:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::FindBone(string,
                                                                                                                    bool)
      IL_0046:  stloc.3
      IL_0047:  ldarg.0
      IL_0048:  ldloc.2
      IL_0049:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_004e:  ldarg.0
      IL_004f:  ldfld      class Game.ComponentHumanModel Game.ComponentOuterClothingModel::m_componentHumanModel
      IL_0054:  ldloc.3
      IL_0055:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_005a:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> Game.ComponentModel::GetBoneTransform(int32)
      IL_005f:  call       instance void Game.ComponentModel::SetBoneTransform(int32,
                                                                               valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_0064:  ldloca.s   V_0
      IL_0066:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::MoveNext()
      IL_006b:  brtrue.s   IL_0027

      IL_006d:  leave.s    IL_007d

    }  // end .try
    finally
    {
      IL_006f:  ldloca.s   V_0
      IL_0071:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>
      IL_0077:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_007c:  endfinally
    }  // end handler
    IL_007d:  ldarg.0
    IL_007e:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloca.s   V_4
    IL_0087:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_008c:  brfalse.s  IL_00e8

    IL_008e:  ldarg.0
    IL_008f:  call       instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    IL_0094:  stloc.s    V_4
    IL_0096:  ldloca.s   V_4
    IL_0098:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_009d:  ldc.r4     1.
    IL_00a2:  bge.un.s   IL_00e8

    IL_00a4:  ldarg.0
    IL_00a5:  ldfld      class Game.ComponentCreature Game.ComponentOuterClothingModel::m_componentCreature
    IL_00aa:  callvirt   instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_00af:  callvirt   instance float32 Game.ComponentBody::get_ImmersionFactor()
    IL_00b4:  ldc.r4     1.
    IL_00b9:  clt.un
    IL_00bb:  ldc.i4.0
    IL_00bc:  ceq
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class Game.SubsystemSky Game.ComponentOuterClothingModel::m_subsystemSky
    IL_00c4:  callvirt   instance float32 Game.SubsystemSky::get_UnderWaterDepth()
    IL_00c9:  ldc.r4     0.0
    IL_00ce:  cgt
    IL_00d0:  stloc.s    V_5
    IL_00d2:  ldloc.s    V_5
    IL_00d4:  bne.un.s   IL_00df

    IL_00d6:  ldarg.0
    IL_00d7:  ldc.i4.3
    IL_00d8:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_00dd:  br.s       IL_00ef

    IL_00df:  ldarg.0
    IL_00e0:  ldc.i4.2
    IL_00e1:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_00e6:  br.s       IL_00ef

    IL_00e8:  ldarg.0
    IL_00e9:  ldc.i4.1
    IL_00ea:  callvirt   instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
    IL_00ef:  ldarg.0
    IL_00f0:  ldarg.1
    IL_00f1:  call       instance void Game.ComponentModel::PrepareForDrawing(class Game.SubsystemDrawing)
    IL_00f6:  ret
  } // end of method ComponentOuterClothingModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       166 (0xa6)
    .maxstack  6
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ldarg.0
    IL_0008:  call       instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    IL_000d:  ldlen
    IL_000e:  conv.i4
    IL_000f:  ldc.i4.4
    IL_0010:  beq.s      IL_001d

    IL_0012:  ldstr      "Invalid number of meshes in OuterClothing model."
    IL_0017:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_001c:  throw

    IL_001d:  ldarg.0
    IL_001e:  call       instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    IL_0023:  ldc.i4.0
    IL_0024:  ldarg.1
    IL_0025:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_002a:  stloc.0
    IL_002b:  ldloca.s   V_0
    IL_002d:  ldarg.1
    IL_002e:  ldstr      "Leg1"
    IL_0033:  ldc.i4.1
    IL_0034:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_0039:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::IndexOf(!0)
    IL_003e:  stelem.i4
    IL_003f:  ldarg.0
    IL_0040:  call       instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    IL_0045:  ldc.i4.1
    IL_0046:  ldarg.1
    IL_0047:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_004c:  stloc.0
    IL_004d:  ldloca.s   V_0
    IL_004f:  ldarg.1
    IL_0050:  ldstr      "Leg2"
    IL_0055:  ldc.i4.1
    IL_0056:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_005b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::IndexOf(!0)
    IL_0060:  stelem.i4
    IL_0061:  ldarg.0
    IL_0062:  call       instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    IL_0067:  ldc.i4.2
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_006e:  stloc.0
    IL_006f:  ldloca.s   V_0
    IL_0071:  ldarg.1
    IL_0072:  ldstr      "Body"
    IL_0077:  ldc.i4.1
    IL_0078:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_007d:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::IndexOf(!0)
    IL_0082:  stelem.i4
    IL_0083:  ldarg.0
    IL_0084:  call       instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    IL_0089:  ldc.i4.3
    IL_008a:  ldarg.1
    IL_008b:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0090:  stloc.0
    IL_0091:  ldloca.s   V_0
    IL_0093:  ldarg.1
    IL_0094:  ldstr      "Head"
    IL_0099:  ldc.i4.1
    IL_009a:  callvirt   instance class [Engine]Engine.Graphics.ModelMesh [Engine]Engine.Graphics.Model::FindMesh(string,
                                                                                                                  bool)
    IL_009f:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::IndexOf(!0)
    IL_00a4:  stelem.i4
    IL_00a5:  ret
  } // end of method ComponentOuterClothingModel::SetModel

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.ComponentModel::.ctor()
    IL_0006:  ret
  } // end of method ComponentOuterClothingModel::.ctor

} // end of class Game.ComponentOuterClothingModel