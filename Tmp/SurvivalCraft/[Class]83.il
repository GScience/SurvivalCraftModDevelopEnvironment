.class public auto ansi beforefieldinit Game.ComponentModel
       extends [EntitySystem]GameEntitySystem.Component
{
  .field private class Game.SubsystemSky m_subsystemSky
  .field family class Game.ComponentFrame m_componentFrame
  .field private class [Engine]Engine.Graphics.Model m_model
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] m_boneTransforms
  .field private bool '<IsVisible>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<float32> '<Opacity>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> '<DiffuseColor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.Graphics.Texture2D '<TextureOverride>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private bool '<CastsShadow>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32 '<PrepareOrder>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.ModelRenderingMode '<RenderingMode>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private int32[] '<MeshDrawOrders>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype [Engine]Engine.Matrix[] '<AbsoluteBoneTransforms>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance bool 
          get_IsVisible() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentModel::'<IsVisible>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_IsVisible

  .method family hidebysig specialname instance void 
          set_IsVisible(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentModel::'<IsVisible>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_IsVisible

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<float32> 
          get_Opacity() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::'<Opacity>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_Opacity

  .method public hidebysig specialname instance void 
          set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::'<Opacity>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_Opacity

  .method public hidebysig specialname instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 
          get_DiffuseColor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::'<DiffuseColor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_DiffuseColor

  .method public hidebysig specialname instance void 
          set_DiffuseColor(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::'<DiffuseColor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_DiffuseColor

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Model 
          get_Model() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_0006:  ret
  } // end of method ComponentModel::get_Model

  .method public hidebysig specialname instance void 
          set_Model(class [Engine]Engine.Graphics.Model 'value') cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance void Game.ComponentModel::SetModel(class [Engine]Engine.Graphics.Model)
    IL_0007:  ret
  } // end of method ComponentModel::set_Model

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_TextureOverride() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::'<TextureOverride>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_TextureOverride

  .method public hidebysig specialname instance void 
          set_TextureOverride(class [Engine]Engine.Graphics.Texture2D 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::'<TextureOverride>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_TextureOverride

  .method public hidebysig specialname instance bool 
          get_CastsShadow() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      bool Game.ComponentModel::'<CastsShadow>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_CastsShadow

  .method public hidebysig specialname instance void 
          set_CastsShadow(bool 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      bool Game.ComponentModel::'<CastsShadow>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_CastsShadow

  .method public hidebysig specialname instance int32 
          get_PrepareOrder() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 Game.ComponentModel::'<PrepareOrder>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_PrepareOrder

  .method public hidebysig specialname instance void 
          set_PrepareOrder(int32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32 Game.ComponentModel::'<PrepareOrder>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_PrepareOrder

  .method public hidebysig newslot specialname virtual 
          instance valuetype Game.ModelRenderingMode 
          get_RenderingMode() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.ModelRenderingMode Game.ComponentModel::'<RenderingMode>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_RenderingMode

  .method family hidebysig newslot specialname virtual 
          instance void  set_RenderingMode(valuetype Game.ModelRenderingMode 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.ModelRenderingMode Game.ComponentModel::'<RenderingMode>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_RenderingMode

  .method public hidebysig specialname instance int32[] 
          get_MeshDrawOrders() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32[] Game.ComponentModel::'<MeshDrawOrders>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_MeshDrawOrders

  .method private hidebysig specialname instance void 
          set_MeshDrawOrders(int32[] 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      int32[] Game.ComponentModel::'<MeshDrawOrders>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_MeshDrawOrders

  .method public hidebysig specialname instance valuetype [Engine]Engine.Matrix[] 
          get_AbsoluteBoneTransforms() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix[] Game.ComponentModel::'<AbsoluteBoneTransforms>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentModel::get_AbsoluteBoneTransforms

  .method private hidebysig specialname instance void 
          set_AbsoluteBoneTransforms(valuetype [Engine]Engine.Matrix[] 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype [Engine]Engine.Matrix[] Game.ComponentModel::'<AbsoluteBoneTransforms>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentModel::set_AbsoluteBoneTransforms

  .method public hidebysig instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> 
          GetBoneTransform(int32 boneIndex) cil managed
  {
    // 代码大小       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_0006:  ldarg.1
    IL_0007:  ldelem     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000c:  ret
  } // end of method ComponentModel::GetBoneTransform

  .method public hidebysig instance void 
          SetBoneTransform(int32 boneIndex,
                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> transformation) cil managed
  {
    // 代码大小       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_0006:  ldarg.1
    IL_0007:  ldarg.2
    IL_0008:  stelem     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_000d:  ret
  } // end of method ComponentModel::SetBoneTransform

  .method public hidebysig newslot virtual 
          instance void  UpdateVisibility(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       92 (0x5c)
    .maxstack  3
    .locals init (float32 V_0,
             valuetype [Engine]Engine.BoundingSphere V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemSky Game.ComponentModel::m_subsystemSky
    IL_0006:  callvirt   instance float32 Game.SubsystemSky::get_VisibilityRange()
    IL_000b:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
    IL_0010:  stloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_0017:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_001c:  ldarg.1
    IL_001d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemDrawing::get_ViewPosition()
    IL_0022:  call       float32 [Engine]Engine.Vector3::DistanceSquared(valuetype [Engine]Engine.Vector3,
                                                                         valuetype [Engine]Engine.Vector3)
    IL_0027:  ldloc.0
    IL_0028:  bge.un.s   IL_0054

    IL_002a:  ldloca.s   V_1
    IL_002c:  ldarg.0
    IL_002d:  ldfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_0032:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0037:  ldc.r4     3.
    IL_003c:  call       instance void [Engine]Engine.BoundingSphere::.ctor(valuetype [Engine]Engine.Vector3,
                                                                            float32)
    IL_0041:  ldarg.0
    IL_0042:  ldarg.1
    IL_0043:  callvirt   instance class [Engine]Engine.BoundingFrustum Game.SubsystemDrawing::get_ViewFrustum()
    IL_0048:  ldloc.1
    IL_0049:  callvirt   instance bool [Engine]Engine.BoundingFrustum::Intersection(valuetype [Engine]Engine.BoundingSphere)
    IL_004e:  call       instance void Game.ComponentModel::set_IsVisible(bool)
    IL_0053:  ret

    IL_0054:  ldarg.0
    IL_0055:  ldc.i4.0
    IL_0056:  call       instance void Game.ComponentModel::set_IsVisible(bool)
    IL_005b:  ret
  } // end of method ComponentModel::UpdateVisibility

  .method public hidebysig newslot virtual 
          instance void  PrepareForDrawing(class Game.SubsystemDrawing subsystemDrawing) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    IL_0007:  callvirt   instance class [Engine]Engine.Graphics.ModelBone [Engine]Engine.Graphics.Model::get_RootBone()
    IL_000c:  ldarg.1
    IL_000d:  callvirt   instance valuetype [Engine]Engine.Matrix Game.SubsystemDrawing::get_ViewMatrix()
    IL_0012:  ldarg.0
    IL_0013:  call       instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
    IL_0018:  call       instance void Game.ComponentModel::ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone,
                                                                                 valuetype [Engine]Engine.Matrix,
                                                                                 valuetype [Engine]Engine.Matrix[])
    IL_001d:  ret
  } // end of method ComponentModel::PrepareForDrawing

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       130 (0x82)
    .maxstack  3
    .locals init (string V_0,
             string V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemSky>(bool)
    IL_000d:  stfld      class Game.SubsystemSky Game.ComponentModel::m_subsystemSky
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentFrame>(bool)
    IL_001f:  stfld      class Game.ComponentFrame Game.ComponentModel::m_componentFrame
    IL_0024:  ldarg.1
    IL_0025:  ldstr      "ModelName"
    IL_002a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldloc.0
    IL_0032:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Model>(string)
    IL_0037:  call       instance void Game.ComponentModel::set_Model(class [Engine]Engine.Graphics.Model)
    IL_003c:  ldarg.0
    IL_003d:  ldarg.1
    IL_003e:  ldstr      "CastsShadow"
    IL_0043:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<bool>(string)
    IL_0048:  call       instance void Game.ComponentModel::set_CastsShadow(bool)
    IL_004d:  ldarg.1
    IL_004e:  ldstr      "TextureOverride"
    IL_0053:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0058:  stloc.1
    IL_0059:  ldarg.0
    IL_005a:  ldloc.1
    IL_005b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0060:  brtrue.s   IL_006a

    IL_0062:  ldloc.1
    IL_0063:  call       !!0 Game.ContentManager::Get<class [Engine]Engine.Graphics.Texture2D>(string)
    IL_0068:  br.s       IL_006b

    IL_006a:  ldnull
    IL_006b:  call       instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_0070:  ldarg.0
    IL_0071:  ldarg.1
    IL_0072:  ldstr      "PrepareOrder"
    IL_0077:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<int32>(string)
    IL_007c:  call       instance void Game.ComponentModel::set_PrepareOrder(int32)
    IL_0081:  ret
  } // end of method ComponentModel::Load

  .method family hidebysig newslot virtual 
          instance void  SetModel(class [Engine]Engine.Graphics.Model model) cil managed
  {
    // 代码大小       134 (0x86)
    .maxstack  3
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_0,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_0007:  ldarg.0
    IL_0008:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_000d:  brfalse.s  IL_0070

    IL_000f:  ldarg.0
    IL_0010:  ldarg.0
    IL_0011:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_0016:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_001b:  stloc.0
    IL_001c:  ldloca.s   V_0
    IL_001e:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0023:  newarr     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0028:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_002d:  ldarg.0
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_0034:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.Model::get_Bones()
    IL_0039:  stloc.0
    IL_003a:  ldloca.s   V_0
    IL_003c:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::get_Count()
    IL_0041:  newarr     [Engine]Engine.Matrix
    IL_0046:  call       instance void Game.ComponentModel::set_AbsoluteBoneTransforms(valuetype [Engine]Engine.Matrix[])
    IL_004b:  ldarg.0
    IL_004c:  ldc.i4.0
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [Engine]Engine.Graphics.Model Game.ComponentModel::m_model
    IL_0053:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh> [Engine]Engine.Graphics.Model::get_Meshes()
    IL_0058:  stloc.1
    IL_0059:  ldloca.s   V_1
    IL_005b:  call       instance int32 valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelMesh>::get_Count()
    IL_0060:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [System.Linq]System.Linq.Enumerable::Range(int32,
                                                                                                                                          int32)
    IL_0065:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_006a:  call       instance void Game.ComponentModel::set_MeshDrawOrders(int32[])
    IL_006f:  ret

    IL_0070:  ldarg.0
    IL_0071:  ldnull
    IL_0072:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_0077:  ldarg.0
    IL_0078:  ldnull
    IL_0079:  call       instance void Game.ComponentModel::set_AbsoluteBoneTransforms(valuetype [Engine]Engine.Matrix[])
    IL_007e:  ldarg.0
    IL_007f:  ldnull
    IL_0080:  call       instance void Game.ComponentModel::set_MeshDrawOrders(int32[])
    IL_0085:  ret
  } // end of method ComponentModel::SetModel

  .method private hidebysig instance void 
          ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone modelBone,
                               valuetype [Engine]Engine.Matrix currentTransform,
                               valuetype [Engine]Engine.Matrix[] transforms) cil managed
  {
    // 代码大小       216 (0xd8)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone> V_2,
             valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> V_3,
             class [Engine]Engine.Graphics.ModelBone V_4)
    IL_0000:  ldarg.1
    IL_0001:  ldfld      valuetype [Engine]Engine.Matrix [Engine]Engine.Graphics.ModelBone::Transform
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_000d:  ldarg.1
    IL_000e:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0013:  ldelema    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0018:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_001d:  brfalse.s  IL_007a

    IL_001f:  ldloca.s   V_0
    IL_0021:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0026:  stloc.1
    IL_0027:  ldloca.s   V_0
    IL_0029:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_002e:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0033:  ldloc.0
    IL_0034:  ldarg.0
    IL_0035:  ldfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>[] Game.ComponentModel::m_boneTransforms
    IL_003a:  ldarg.1
    IL_003b:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0040:  ldelema    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0045:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_004a:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_004f:  stloc.0
    IL_0050:  ldloca.s   V_0
    IL_0052:  dup
    IL_0053:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_0058:  ldloc.1
    IL_0059:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_005e:  call       instance void [Engine]Engine.Matrix::set_Translation(valuetype [Engine]Engine.Vector3)
    IL_0063:  ldloca.s   V_0
    IL_0065:  ldarga.s   currentTransform
    IL_0067:  ldarg.3
    IL_0068:  ldarg.1
    IL_0069:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_006e:  ldelema    [Engine]Engine.Matrix
    IL_0073:  call       void [Engine]Engine.Matrix::MultiplyRestricted(valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&)
    IL_0078:  br.s       IL_008f

    IL_007a:  ldloca.s   V_0
    IL_007c:  ldarga.s   currentTransform
    IL_007e:  ldarg.3
    IL_007f:  ldarg.1
    IL_0080:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
    IL_0085:  ldelema    [Engine]Engine.Matrix
    IL_008a:  call       void [Engine]Engine.Matrix::MultiplyRestricted(valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&,
                                                                        valuetype [Engine]Engine.Matrix&)
    IL_008f:  ldarg.1
    IL_0090:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone> [Engine]Engine.Graphics.ModelBone::get_ChildBones()
    IL_0095:  stloc.3
    IL_0096:  ldloca.s   V_3
    IL_0098:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class [Engine]Engine.Graphics.ModelBone>::GetEnumerator()
    IL_009d:  stloc.2
    .try
    {
      IL_009e:  br.s       IL_00be

      IL_00a0:  ldloca.s   V_2
      IL_00a2:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::get_Current()
      IL_00a7:  stloc.s    V_4
      IL_00a9:  ldarg.0
      IL_00aa:  ldloc.s    V_4
      IL_00ac:  ldarg.3
      IL_00ad:  ldarg.1
      IL_00ae:  callvirt   instance int32 [Engine]Engine.Graphics.ModelBone::get_Index()
      IL_00b3:  ldelem     [Engine]Engine.Matrix
      IL_00b8:  ldarg.3
      IL_00b9:  call       instance void Game.ComponentModel::ProcessBoneHierarchy(class [Engine]Engine.Graphics.ModelBone,
                                                                                   valuetype [Engine]Engine.Matrix,
                                                                                   valuetype [Engine]Engine.Matrix[])
      IL_00be:  ldloca.s   V_2
      IL_00c0:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>::MoveNext()
      IL_00c5:  brtrue.s   IL_00a0

      IL_00c7:  leave.s    IL_00d7

    }  // end .try
    finally
    {
      IL_00c9:  ldloca.s   V_2
      IL_00cb:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class [Engine]Engine.Graphics.ModelBone>
      IL_00d1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00d6:  endfinally
    }  // end handler
    IL_00d7:  ret
  } // end of method ComponentModel::ProcessBoneHierarchy

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0006:  ret
  } // end of method ComponentModel::.ctor

  .property instance bool IsVisible()
  {
    .get instance bool Game.ComponentModel::get_IsVisible()
    .set instance void Game.ComponentModel::set_IsVisible(bool)
  } // end of property ComponentModel::IsVisible
  .property instance valuetype [System.Runtime]System.Nullable`1<float32>
          Opacity()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<float32> Game.ComponentModel::get_Opacity()
    .set instance void Game.ComponentModel::set_Opacity(valuetype [System.Runtime]System.Nullable`1<float32>)
  } // end of property ComponentModel::Opacity
  .property instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
          DiffuseColor()
  {
    .get instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentModel::get_DiffuseColor()
    .set instance void Game.ComponentModel::set_DiffuseColor(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>)
  } // end of property ComponentModel::DiffuseColor
  .property instance class [Engine]Engine.Graphics.Model
          Model()
  {
    .get instance class [Engine]Engine.Graphics.Model Game.ComponentModel::get_Model()
    .set instance void Game.ComponentModel::set_Model(class [Engine]Engine.Graphics.Model)
  } // end of property ComponentModel::Model
  .property instance class [Engine]Engine.Graphics.Texture2D
          TextureOverride()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.ComponentModel::get_TextureOverride()
    .set instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
  } // end of property ComponentModel::TextureOverride
  .property instance bool CastsShadow()
  {
    .get instance bool Game.ComponentModel::get_CastsShadow()
    .set instance void Game.ComponentModel::set_CastsShadow(bool)
  } // end of property ComponentModel::CastsShadow
  .property instance int32 PrepareOrder()
  {
    .get instance int32 Game.ComponentModel::get_PrepareOrder()
    .set instance void Game.ComponentModel::set_PrepareOrder(int32)
  } // end of property ComponentModel::PrepareOrder
  .property instance valuetype Game.ModelRenderingMode
          RenderingMode()
  {
    .get instance valuetype Game.ModelRenderingMode Game.ComponentModel::get_RenderingMode()
    .set instance void Game.ComponentModel::set_RenderingMode(valuetype Game.ModelRenderingMode)
  } // end of property ComponentModel::RenderingMode
  .property instance int32[] MeshDrawOrders()
  {
    .get instance int32[] Game.ComponentModel::get_MeshDrawOrders()
    .set instance void Game.ComponentModel::set_MeshDrawOrders(int32[])
  } // end of property ComponentModel::MeshDrawOrders
  .property instance valuetype [Engine]Engine.Matrix[]
          AbsoluteBoneTransforms()
  {
    .get instance valuetype [Engine]Engine.Matrix[] Game.ComponentModel::get_AbsoluteBoneTransforms()
    .set instance void Game.ComponentModel::set_AbsoluteBoneTransforms(valuetype [Engine]Engine.Matrix[])
  } // end of property ComponentModel::AbsoluteBoneTransforms
} // end of class Game.ComponentModel