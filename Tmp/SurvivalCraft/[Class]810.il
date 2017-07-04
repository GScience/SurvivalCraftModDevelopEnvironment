.class public auto ansi beforefieldinit Game.DeathCamera
       extends Game.BasePerspectiveCamera
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.DeathCamera/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`3<int32,float32,bool> '<>9__9_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.DeathCamera/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.DeathCamera/'<>c' Game.DeathCamera/'<>c'::'<>9'
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
            '<FindBestCameraPosition>b__9_0'(int32 v,
                                             float32 d) cil managed
    {
      // 代码大小       21 (0x15)
      .maxstack  8
      IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_0005:  ldarg.1
      IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_000b:  ldelem.ref
      IL_000c:  ldfld      bool Game.Block::IsTransparent
      IL_0011:  ldc.i4.0
      IL_0012:  ceq
      IL_0014:  ret
    } // end of method '<>c'::'<FindBestCameraPosition>b__9_0'

  } // end of class '<>c'

  .field private valuetype [Engine]Engine.Vector3 m_position
  .field private valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> m_bestPosition
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class Game.View view) cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.BasePerspectiveCamera::.ctor(class Game.View)
    IL_0007:  ret
  } // end of method DeathCamera::.ctor

  .method public hidebysig specialname virtual 
          instance bool  get_UsesMovementControls() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method DeathCamera::get_UsesMovementControls

  .method public hidebysig specialname virtual 
          instance bool  get_IsEntityControlEnabled() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method DeathCamera::get_IsEntityControlEnabled

  .method public hidebysig virtual instance void 
          Activate(class Game.Camera previousCamera) cil managed
  {
    // 代码大小       107 (0x6b)
    .maxstack  4
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.BoundingBox V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Camera::get_ViewPosition()
    IL_0007:  stfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_000c:  ldarg.0
    IL_000d:  call       instance class Game.View Game.Camera::get_View()
    IL_0012:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_0017:  dup
    IL_0018:  brtrue.s   IL_0023

    IL_001a:  pop
    IL_001b:  ldarg.0
    IL_001c:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0021:  br.s       IL_0035

    IL_0023:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_0028:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_002d:  stloc.1
    IL_002e:  ldloca.s   V_1
    IL_0030:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0035:  stloc.0
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.r4     5.
    IL_003e:  call       instance valuetype [Engine]Engine.Vector3 Game.DeathCamera::FindBestCameraPosition(valuetype [Engine]Engine.Vector3,
                                                                                                            float32)
    IL_0043:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0048:  stfld      valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_bestPosition
    IL_004d:  ldarg.0
    IL_004e:  ldarg.0
    IL_004f:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0054:  ldloc.0
    IL_0055:  ldarg.0
    IL_0056:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_005b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0060:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0065:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_006a:  ret
  } // end of method DeathCamera::Activate

  .method public hidebysig virtual instance void 
          Update(float32 dt) cil managed
  {
    // 代码大小       182 (0xb6)
    .maxstack  5
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.BoundingBox V_1)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.View Game.Camera::get_View()
    IL_0006:  callvirt   instance class Game.ComponentCreature Game.View::get_Target()
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0017

    IL_000e:  pop
    IL_000f:  ldarg.0
    IL_0010:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0015:  br.s       IL_0029

    IL_0017:  call       instance class Game.ComponentBody Game.ComponentCreature::get_ComponentBody()
    IL_001c:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0021:  stloc.1
    IL_0022:  ldloca.s   V_1
    IL_0024:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Center()
    IL_0029:  stloc.0
    IL_002a:  ldarg.0
    IL_002b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_bestPosition
    IL_0030:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0035:  brfalse.s  IL_0098

    IL_0037:  ldarg.0
    IL_0038:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_bestPosition
    IL_003d:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0042:  ldarg.0
    IL_0043:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0048:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_004d:  ldc.r4     20.
    IL_0052:  ble.un.s   IL_0065

    IL_0054:  ldarg.0
    IL_0055:  ldarg.0
    IL_0056:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_bestPosition
    IL_005b:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0060:  stfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0065:  ldarg.0
    IL_0066:  ldarg.0
    IL_0067:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_006c:  ldc.r4     1.5
    IL_0071:  ldarg.1
    IL_0072:  mul
    IL_0073:  ldarg.0
    IL_0074:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.DeathCamera::m_bestPosition
    IL_0079:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_007e:  ldarg.0
    IL_007f:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0084:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0089:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0093:  stfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_0098:  ldarg.0
    IL_0099:  ldarg.0
    IL_009a:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_009f:  ldloc.0
    IL_00a0:  ldarg.0
    IL_00a1:  ldfld      valuetype [Engine]Engine.Vector3 Game.DeathCamera::m_position
    IL_00a6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00ab:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_00b0:  call       instance void Game.BasePerspectiveCamera::SetupPerspectiveCamera(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3)
    IL_00b5:  ret
  } // end of method DeathCamera::Update

  .method private hidebysig instance valuetype [Engine]Engine.Vector3 
          FindBestCameraPosition(valuetype [Engine]Engine.Vector3 targetPosition,
                                 float32 distance) cil managed
  {
    // 代码大小       311 (0x137)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_0,
             int32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype Game.CellFace V_7)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
    IL_0008:  ldc.i4.0
    IL_0009:  stloc.1
    IL_000a:  br         IL_011c

    IL_000f:  ldc.r4     1.
    IL_0014:  ldc.r4     6.2831855
    IL_0019:  ldloc.1
    IL_001a:  conv.r4
    IL_001b:  mul
    IL_001c:  ldc.r4     36.
    IL_0021:  div
    IL_0022:  add
    IL_0023:  stloc.2
    IL_0024:  ldloc.2
    IL_0025:  call       float32 [Engine]Engine.MathUtils::Sin(float32)
    IL_002a:  ldc.r4     1.
    IL_002f:  ldloc.2
    IL_0030:  call       float32 [Engine]Engine.MathUtils::Cos(float32)
    IL_0035:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_003a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_003f:  stloc.3
    IL_0040:  ldarg.1
    IL_0041:  ldloc.3
    IL_0042:  ldarg.2
    IL_0043:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0048:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_004d:  stloc.s    V_4
    IL_004f:  ldarg.0
    IL_0050:  call       instance class Game.View Game.Camera::get_View()
    IL_0055:  callvirt   instance class Game.SubsystemViews Game.View::get_SubsystemViews()
    IL_005a:  callvirt   instance class Game.SubsystemTerrain Game.SubsystemViews::get_SubsystemTerrain()
    IL_005f:  ldarg.1
    IL_0060:  ldloc.s    V_4
    IL_0062:  ldc.i4.0
    IL_0063:  ldc.i4.1
    IL_0064:  ldsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.DeathCamera/'<>c'::'<>9__9_0'
    IL_0069:  dup
    IL_006a:  brtrue.s   IL_0083

    IL_006c:  pop
    IL_006d:  ldsfld     class Game.DeathCamera/'<>c' Game.DeathCamera/'<>c'::'<>9'
    IL_0072:  ldftn      instance bool Game.DeathCamera/'<>c'::'<FindBestCameraPosition>b__9_0'(int32,
                                                                                                float32)
    IL_0078:  newobj     instance void class [System.Runtime]System.Func`3<int32,float32,bool>::.ctor(object,
                                                                                                      native int)
    IL_007d:  dup
    IL_007e:  stsfld     class [System.Runtime]System.Func`3<int32,float32,bool> Game.DeathCamera/'<>c'::'<>9__9_0'
    IL_0083:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult> Game.SubsystemTerrain::Raycast(valuetype [Engine]Engine.Vector3,
                                                                                                                                                  valuetype [Engine]Engine.Vector3,
                                                                                                                                                  bool,
                                                                                                                                                  bool,
                                                                                                                                                  class [System.Runtime]System.Func`3<int32,float32,bool>)
    IL_0088:  stloc.s    V_5
    IL_008a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_008f:  stloc.s    V_6
    IL_0091:  ldloca.s   V_5
    IL_0093:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_HasValue()
    IL_0098:  brfalse.s  IL_00eb

    IL_009a:  ldloca.s   V_5
    IL_009c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.TerrainRaycastResult>::get_Value()
    IL_00a1:  ldfld      valuetype Game.CellFace Game.TerrainRaycastResult::CellFace
    IL_00a6:  stloc.s    V_7
    IL_00a8:  ldloc.s    V_7
    IL_00aa:  ldfld      int32 Game.CellFace::X
    IL_00af:  conv.r4
    IL_00b0:  ldc.r4     0.5
    IL_00b5:  add
    IL_00b6:  ldloc.s    V_7
    IL_00b8:  ldfld      int32 Game.CellFace::Y
    IL_00bd:  conv.r4
    IL_00be:  ldc.r4     0.5
    IL_00c3:  add
    IL_00c4:  ldloc.s    V_7
    IL_00c6:  ldfld      int32 Game.CellFace::Z
    IL_00cb:  conv.r4
    IL_00cc:  ldc.r4     0.5
    IL_00d1:  add
    IL_00d2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00d7:  ldc.r4     1.
    IL_00dc:  ldloc.3
    IL_00dd:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00e2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e7:  stloc.s    V_6
    IL_00e9:  br.s       IL_00ef

    IL_00eb:  ldloc.s    V_4
    IL_00ed:  stloc.s    V_6
    IL_00ef:  ldloca.s   V_0
    IL_00f1:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_00f6:  brfalse.s  IL_010f

    IL_00f8:  ldloc.s    V_6
    IL_00fa:  ldarg.1
    IL_00fb:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_0100:  ldloca.s   V_0
    IL_0102:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0107:  ldarg.1
    IL_0108:  call       float32 [Engine]Engine.Vector3::Distance(valuetype [Engine]Engine.Vector3,
                                                                  valuetype [Engine]Engine.Vector3)
    IL_010d:  ble.un.s   IL_0118

    IL_010f:  ldloca.s   V_0
    IL_0111:  ldloc.s    V_6
    IL_0113:  call       instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_0118:  ldloc.1
    IL_0119:  ldc.i4.1
    IL_011a:  add
    IL_011b:  stloc.1
    IL_011c:  ldloc.1
    IL_011d:  ldc.i4.s   36
    IL_011f:  blt        IL_000f

    IL_0124:  ldloca.s   V_0
    IL_0126:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_012b:  brfalse.s  IL_0135

    IL_012d:  ldloca.s   V_0
    IL_012f:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0134:  ret

    IL_0135:  ldarg.1
    IL_0136:  ret
  } // end of method DeathCamera::FindBestCameraPosition

  .property instance bool UsesMovementControls()
  {
    .get instance bool Game.DeathCamera::get_UsesMovementControls()
  } // end of property DeathCamera::UsesMovementControls
  .property instance bool IsEntityControlEnabled()
  {
    .get instance bool Game.DeathCamera::get_IsEntityControlEnabled()
  } // end of property DeathCamera::IsEntityControlEnabled
} // end of class Game.DeathCamera