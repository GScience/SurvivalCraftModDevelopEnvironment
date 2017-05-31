.class public auto ansi beforefieldinit Game.SubsystemExplosions
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IUpdateable
{
  .class auto ansi nested private beforefieldinit SparseSpatialArray`1<T>
         extends [System.Runtime]System.Object
  {
    .field private static literal int32 m_bits1 = int32(0x00000004)
    .field private static literal int32 m_bits2 = int32(0x00000004)
    .field private static literal int32 m_mask1 = int32(0x0000000F)
    .field private static literal int32 m_mask2 = int32(0x0000000F)
    .field private static literal int32 m_diameter = int32(0x00000100)
    .field private int32 m_originX
    .field private int32 m_originY
    .field private int32 m_originZ
    .field private !T[][] m_data
    .field private !T m_outside
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 centerX,
                                 int32 centerY,
                                 int32 centerZ,
                                 !T outside) cil managed
    {
      // 代码大小       70 (0x46)
      .maxstack  3
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldc.i4     0x1000
      IL_000c:  newarr     !T[]
      IL_0011:  stfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_0016:  ldarg.0
      IL_0017:  ldarg.1
      IL_0018:  ldc.i4     0x80
      IL_001d:  sub
      IL_001e:  stfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originX
      IL_0023:  ldarg.0
      IL_0024:  ldarg.2
      IL_0025:  ldc.i4     0x80
      IL_002a:  sub
      IL_002b:  stfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originY
      IL_0030:  ldarg.0
      IL_0031:  ldarg.3
      IL_0032:  ldc.i4     0x80
      IL_0037:  sub
      IL_0038:  stfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originZ
      IL_003d:  ldarg.0
      IL_003e:  ldarg.s    outside
      IL_0040:  stfld      !0 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_outside
      IL_0045:  ret
    } // end of method SparseSpatialArray`1::.ctor

    .method public hidebysig instance !T 
            Get(int32 x,
                int32 y,
                int32 z) cil managed
    {
      // 代码大小       157 (0x9d)
      .maxstack  3
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               !T[] V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6,
               !T V_7)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originX
      IL_0007:  sub
      IL_0008:  starg.s    x
      IL_000a:  ldarg.2
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originY
      IL_0011:  sub
      IL_0012:  starg.s    y
      IL_0014:  ldarg.3
      IL_0015:  ldarg.0
      IL_0016:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originZ
      IL_001b:  sub
      IL_001c:  starg.s    z
      IL_001e:  ldarg.1
      IL_001f:  ldc.i4.0
      IL_0020:  blt.s      IL_0096

      IL_0022:  ldarg.1
      IL_0023:  ldc.i4     0x100
      IL_0028:  bge.s      IL_0096

      IL_002a:  ldarg.2
      IL_002b:  ldc.i4.0
      IL_002c:  blt.s      IL_0096

      IL_002e:  ldarg.2
      IL_002f:  ldc.i4     0x100
      IL_0034:  bge.s      IL_0096

      IL_0036:  ldarg.3
      IL_0037:  ldc.i4.0
      IL_0038:  blt.s      IL_0096

      IL_003a:  ldarg.3
      IL_003b:  ldc.i4     0x100
      IL_0040:  bge.s      IL_0096

      IL_0042:  ldarg.1
      IL_0043:  ldc.i4.4
      IL_0044:  shr
      IL_0045:  ldarg.2
      IL_0046:  ldc.i4.4
      IL_0047:  shr
      IL_0048:  stloc.0
      IL_0049:  ldarg.3
      IL_004a:  ldc.i4.4
      IL_004b:  shr
      IL_004c:  stloc.1
      IL_004d:  ldloc.0
      IL_004e:  ldc.i4.4
      IL_004f:  shl
      IL_0050:  add
      IL_0051:  ldloc.1
      IL_0052:  ldc.i4.4
      IL_0053:  shl
      IL_0054:  ldc.i4.4
      IL_0055:  shl
      IL_0056:  add
      IL_0057:  stloc.2
      IL_0058:  ldarg.0
      IL_0059:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_005e:  ldloc.2
      IL_005f:  ldelem.ref
      IL_0060:  stloc.3
      IL_0061:  ldloc.3
      IL_0062:  brfalse.s  IL_008b

      IL_0064:  ldarg.1
      IL_0065:  ldc.i4.s   15
      IL_0067:  and
      IL_0068:  ldarg.2
      IL_0069:  ldc.i4.s   15
      IL_006b:  and
      IL_006c:  stloc.s    V_4
      IL_006e:  ldarg.3
      IL_006f:  ldc.i4.s   15
      IL_0071:  and
      IL_0072:  stloc.s    V_5
      IL_0074:  ldloc.s    V_4
      IL_0076:  ldc.i4.4
      IL_0077:  shl
      IL_0078:  add
      IL_0079:  ldloc.s    V_5
      IL_007b:  ldc.i4.4
      IL_007c:  shl
      IL_007d:  ldc.i4.4
      IL_007e:  shl
      IL_007f:  add
      IL_0080:  stloc.s    V_6
      IL_0082:  ldloc.3
      IL_0083:  ldloc.s    V_6
      IL_0085:  ldelem     !T
      IL_008a:  ret

      IL_008b:  ldloca.s   V_7
      IL_008d:  initobj    !T
      IL_0093:  ldloc.s    V_7
      IL_0095:  ret

      IL_0096:  ldarg.0
      IL_0097:  ldfld      !0 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_outside
      IL_009c:  ret
    } // end of method SparseSpatialArray`1::Get

    .method public hidebysig instance void 
            Set(int32 x,
                int32 y,
                int32 z,
                !T 'value') cil managed
    {
      // 代码大小       161 (0xa1)
      .maxstack  3
      .locals init (int32 V_0,
               int32 V_1,
               int32 V_2,
               !T[] V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6)
      IL_0000:  ldarg.1
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originX
      IL_0007:  sub
      IL_0008:  starg.s    x
      IL_000a:  ldarg.2
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originY
      IL_0011:  sub
      IL_0012:  starg.s    y
      IL_0014:  ldarg.3
      IL_0015:  ldarg.0
      IL_0016:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originZ
      IL_001b:  sub
      IL_001c:  starg.s    z
      IL_001e:  ldarg.1
      IL_001f:  ldc.i4.0
      IL_0020:  blt.s      IL_00a0

      IL_0022:  ldarg.1
      IL_0023:  ldc.i4     0x100
      IL_0028:  bge.s      IL_00a0

      IL_002a:  ldarg.2
      IL_002b:  ldc.i4.0
      IL_002c:  blt.s      IL_00a0

      IL_002e:  ldarg.2
      IL_002f:  ldc.i4     0x100
      IL_0034:  bge.s      IL_00a0

      IL_0036:  ldarg.3
      IL_0037:  ldc.i4.0
      IL_0038:  blt.s      IL_00a0

      IL_003a:  ldarg.3
      IL_003b:  ldc.i4     0x100
      IL_0040:  bge.s      IL_00a0

      IL_0042:  ldarg.1
      IL_0043:  ldc.i4.4
      IL_0044:  shr
      IL_0045:  ldarg.2
      IL_0046:  ldc.i4.4
      IL_0047:  shr
      IL_0048:  stloc.0
      IL_0049:  ldarg.3
      IL_004a:  ldc.i4.4
      IL_004b:  shr
      IL_004c:  stloc.1
      IL_004d:  ldloc.0
      IL_004e:  ldc.i4.4
      IL_004f:  shl
      IL_0050:  add
      IL_0051:  ldloc.1
      IL_0052:  ldc.i4.4
      IL_0053:  shl
      IL_0054:  ldc.i4.4
      IL_0055:  shl
      IL_0056:  add
      IL_0057:  stloc.2
      IL_0058:  ldarg.0
      IL_0059:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_005e:  ldloc.2
      IL_005f:  ldelem.ref
      IL_0060:  stloc.3
      IL_0061:  ldloc.3
      IL_0062:  brtrue.s   IL_0078

      IL_0064:  ldc.i4     0x1000
      IL_0069:  newarr     !T
      IL_006e:  stloc.3
      IL_006f:  ldarg.0
      IL_0070:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_0075:  ldloc.2
      IL_0076:  ldloc.3
      IL_0077:  stelem.ref
      IL_0078:  ldarg.1
      IL_0079:  ldc.i4.s   15
      IL_007b:  and
      IL_007c:  ldarg.2
      IL_007d:  ldc.i4.s   15
      IL_007f:  and
      IL_0080:  stloc.s    V_4
      IL_0082:  ldarg.3
      IL_0083:  ldc.i4.s   15
      IL_0085:  and
      IL_0086:  stloc.s    V_5
      IL_0088:  ldloc.s    V_4
      IL_008a:  ldc.i4.4
      IL_008b:  shl
      IL_008c:  add
      IL_008d:  ldloc.s    V_5
      IL_008f:  ldc.i4.4
      IL_0090:  shl
      IL_0091:  ldc.i4.4
      IL_0092:  shl
      IL_0093:  add
      IL_0094:  stloc.s    V_6
      IL_0096:  ldloc.3
      IL_0097:  ldloc.s    V_6
      IL_0099:  ldarg.s    'value'
      IL_009b:  stelem     !T
      IL_00a0:  ret
    } // end of method SparseSpatialArray`1::Set

    .method public hidebysig instance void 
            Clear() cil managed
    {
      // 代码大小       29 (0x1d)
      .maxstack  3
      .locals init (int32 V_0)
      IL_0000:  ldc.i4.0
      IL_0001:  stloc.0
      IL_0002:  br.s       IL_0011

      IL_0004:  ldarg.0
      IL_0005:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_000a:  ldloc.0
      IL_000b:  ldnull
      IL_000c:  stelem.ref
      IL_000d:  ldloc.0
      IL_000e:  ldc.i4.1
      IL_000f:  add
      IL_0010:  stloc.0
      IL_0011:  ldloc.0
      IL_0012:  ldarg.0
      IL_0013:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_0018:  ldlen
      IL_0019:  conv.i4
      IL_001a:  blt.s      IL_0004

      IL_001c:  ret
    } // end of method SparseSpatialArray`1::Clear

    .method public hidebysig instance class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T> 
            ToDictionary() cil managed
    {
      // 代码大小       207 (0xcf)
      .maxstack  5
      .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T> V_0,
               int32 V_1,
               !T[] V_2,
               int32 V_3,
               int32 V_4,
               int32 V_5,
               int32 V_6,
               !T V_7,
               int32 V_8,
               int32 V_9,
               int32 V_10)
      IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::.ctor()
      IL_0005:  stloc.0
      IL_0006:  ldc.i4.0
      IL_0007:  stloc.1
      IL_0008:  br         IL_00bf

      IL_000d:  ldarg.0
      IL_000e:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_0013:  ldloc.1
      IL_0014:  ldelem.ref
      IL_0015:  stloc.2
      IL_0016:  ldloc.2
      IL_0017:  brfalse    IL_00bb

      IL_001c:  ldarg.0
      IL_001d:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originX
      IL_0022:  ldloc.1
      IL_0023:  ldc.i4.s   15
      IL_0025:  and
      IL_0026:  ldc.i4.4
      IL_0027:  shl
      IL_0028:  add
      IL_0029:  stloc.3
      IL_002a:  ldarg.0
      IL_002b:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originY
      IL_0030:  ldloc.1
      IL_0031:  ldc.i4.4
      IL_0032:  shr
      IL_0033:  ldc.i4.s   15
      IL_0035:  and
      IL_0036:  ldc.i4.4
      IL_0037:  shl
      IL_0038:  add
      IL_0039:  stloc.s    V_4
      IL_003b:  ldarg.0
      IL_003c:  ldfld      int32 class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_originZ
      IL_0041:  ldloc.1
      IL_0042:  ldc.i4.8
      IL_0043:  shr
      IL_0044:  ldc.i4.s   15
      IL_0046:  and
      IL_0047:  ldc.i4.4
      IL_0048:  shl
      IL_0049:  add
      IL_004a:  stloc.s    V_5
      IL_004c:  ldc.i4.0
      IL_004d:  stloc.s    V_6
      IL_004f:  br.s       IL_00b4

      IL_0051:  ldloc.2
      IL_0052:  ldloc.s    V_6
      IL_0054:  ldelem     !T
      IL_0059:  box        !T
      IL_005e:  ldloca.s   V_7
      IL_0060:  initobj    !T
      IL_0066:  ldloc.s    V_7
      IL_0068:  box        !T
      IL_006d:  call       bool [System.Runtime]System.Object::Equals(object,
                                                                      object)
      IL_0072:  brtrue.s   IL_00ae

      IL_0074:  ldloc.s    V_6
      IL_0076:  ldc.i4.s   15
      IL_0078:  and
      IL_0079:  stloc.s    V_8
      IL_007b:  ldloc.s    V_6
      IL_007d:  ldc.i4.4
      IL_007e:  shr
      IL_007f:  ldc.i4.s   15
      IL_0081:  and
      IL_0082:  stloc.s    V_9
      IL_0084:  ldloc.s    V_6
      IL_0086:  ldc.i4.8
      IL_0087:  shr
      IL_0088:  ldc.i4.s   15
      IL_008a:  and
      IL_008b:  stloc.s    V_10
      IL_008d:  ldloc.0
      IL_008e:  ldloc.3
      IL_008f:  ldloc.s    V_8
      IL_0091:  add
      IL_0092:  ldloc.s    V_4
      IL_0094:  ldloc.s    V_9
      IL_0096:  add
      IL_0097:  ldloc.s    V_5
      IL_0099:  ldloc.s    V_10
      IL_009b:  add
      IL_009c:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                      int32,
                                                                      int32)
      IL_00a1:  ldloc.2
      IL_00a2:  ldloc.s    V_6
      IL_00a4:  ldelem     !T
      IL_00a9:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!T>::Add(!0,
                                                                                                                                                    !1)
      IL_00ae:  ldloc.s    V_6
      IL_00b0:  ldc.i4.1
      IL_00b1:  add
      IL_00b2:  stloc.s    V_6
      IL_00b4:  ldloc.s    V_6
      IL_00b6:  ldloc.2
      IL_00b7:  ldlen
      IL_00b8:  conv.i4
      IL_00b9:  blt.s      IL_0051

      IL_00bb:  ldloc.1
      IL_00bc:  ldc.i4.1
      IL_00bd:  add
      IL_00be:  stloc.1
      IL_00bf:  ldloc.1
      IL_00c0:  ldarg.0
      IL_00c1:  ldfld      !0[][] class Game.SubsystemExplosions/SparseSpatialArray`1<!T>::m_data
      IL_00c6:  ldlen
      IL_00c7:  conv.i4
      IL_00c8:  blt        IL_000d

      IL_00cd:  ldloc.0
      IL_00ce:  ret
    } // end of method SparseSpatialArray`1::ToDictionary

  } // end of class SparseSpatialArray`1

  .class sequential ansi sealed nested private beforefieldinit ExplosionData
         extends [System.Runtime]System.ValueType
  {
    .field public int32 X
    .field public int32 Y
    .field public int32 Z
    .field public float32 Pressure
    .field public bool IsIncendiary
    .field public bool NoExplosionSound
  } // end of class ExplosionData

  .class sequential ansi sealed nested private beforefieldinit ProcessPoint
         extends [System.Runtime]System.ValueType
  {
    .field public int32 X
    .field public int32 Y
    .field public int32 Z
    .field public int32 Axis
  } // end of class ProcessPoint

  .class sequential ansi sealed nested private beforefieldinit SurroundingPressurePoint
         extends [System.Runtime]System.ValueType
  {
    .field public float32 Pressure
    .field public bool IsIncendiary
  } // end of class SurroundingPressurePoint

  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemNoise m_subsystemNoise
  .field private class Game.SubsystemBodies m_subsystemBodies
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.SubsystemProjectiles m_subsystemProjectiles
  .field private class Game.SubsystemBlockBehaviors m_subsystemBlockBehaviors
  .field private class Game.SubsystemFireBlockBehavior m_subsystemFireBlockBehavior
  .field private class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> m_queuedExplosions
  .field private class Game.SubsystemExplosions/SparseSpatialArray`1<float32> m_pressureByPoint
  .field private class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint> m_surroundingPressureByPoint
  .field private int32 m_projectilesCount
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> m_generatedProjectiles
  .field private class Game.Random m_random
  .field private class Game.ExplosionParticleSystem m_explosionParticleSystem
  .field public bool ShowExplosionPressure
  .method public hidebysig instance bool 
          TryExplodeBlock(int32 x,
                          int32 y,
                          int32 z,
                          int32 'value') cil managed
  {
    // 代码大小       56 (0x38)
    .maxstack  7
    .locals init (int32 V_0,
             float32 V_1,
             bool V_2)
    IL_0000:  ldarg.s    'value'
    IL_0002:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0007:  stloc.0
    IL_0008:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldloc.0
    IL_000e:  ldelem.ref
    IL_000f:  dup
    IL_0010:  ldarg.s    'value'
    IL_0012:  callvirt   instance float32 Game.Block::GetExplosionPressure(int32)
    IL_0017:  stloc.1
    IL_0018:  ldarg.s    'value'
    IL_001a:  callvirt   instance bool Game.Block::GetExplosionIncendiary(int32)
    IL_001f:  stloc.2
    IL_0020:  ldloc.1
    IL_0021:  ldc.r4     0.0
    IL_0026:  ble.un.s   IL_0036

    IL_0028:  ldarg.0
    IL_0029:  ldarg.1
    IL_002a:  ldarg.2
    IL_002b:  ldarg.3
    IL_002c:  ldloc.1
    IL_002d:  ldloc.2
    IL_002e:  ldc.i4.0
    IL_002f:  call       instance void Game.SubsystemExplosions::AddExplosion(int32,
                                                                              int32,
                                                                              int32,
                                                                              float32,
                                                                              bool,
                                                                              bool)
    IL_0034:  ldc.i4.1
    IL_0035:  ret

    IL_0036:  ldc.i4.0
    IL_0037:  ret
  } // end of method SubsystemExplosions::TryExplodeBlock

  .method public hidebysig instance void 
          AddExplosion(int32 x,
                       int32 y,
                       int32 z,
                       float32 pressure,
                       bool isIncendiary,
                       bool noExplosionSound) cil managed
  {
    // 代码大小       81 (0x51)
    .maxstack  3
    .locals init (valuetype Game.SubsystemExplosions/ExplosionData V_0)
    IL_0000:  ldarg.s    pressure
    IL_0002:  ldc.r4     0.0
    IL_0007:  ble.un.s   IL_0050

    IL_0009:  ldarg.0
    IL_000a:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_000f:  ldloca.s   V_0
    IL_0011:  initobj    Game.SubsystemExplosions/ExplosionData
    IL_0017:  ldloca.s   V_0
    IL_0019:  ldarg.1
    IL_001a:  stfld      int32 Game.SubsystemExplosions/ExplosionData::X
    IL_001f:  ldloca.s   V_0
    IL_0021:  ldarg.2
    IL_0022:  stfld      int32 Game.SubsystemExplosions/ExplosionData::Y
    IL_0027:  ldloca.s   V_0
    IL_0029:  ldarg.3
    IL_002a:  stfld      int32 Game.SubsystemExplosions/ExplosionData::Z
    IL_002f:  ldloca.s   V_0
    IL_0031:  ldarg.s    pressure
    IL_0033:  stfld      float32 Game.SubsystemExplosions/ExplosionData::Pressure
    IL_0038:  ldloca.s   V_0
    IL_003a:  ldarg.s    isIncendiary
    IL_003c:  stfld      bool Game.SubsystemExplosions/ExplosionData::IsIncendiary
    IL_0041:  ldloca.s   V_0
    IL_0043:  ldarg.s    noExplosionSound
    IL_0045:  stfld      bool Game.SubsystemExplosions/ExplosionData::NoExplosionSound
    IL_004a:  ldloc.0
    IL_004b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::Add(!0)
    IL_0050:  ret
  } // end of method SubsystemExplosions::AddExplosion

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemExplosions::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  6
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             bool V_3,
             valuetype Game.SubsystemExplosions/SurroundingPressurePoint V_4,
             int32 V_5,
             valuetype Game.SubsystemExplosions/ExplosionData V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_0006:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Count()
    IL_000b:  ldc.i4.0
    IL_000c:  ble        IL_015e

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_0017:  ldc.i4.0
    IL_0018:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Item(int32)
    IL_001d:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::X
    IL_0022:  stloc.0
    IL_0023:  ldarg.0
    IL_0024:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_0029:  ldc.i4.0
    IL_002a:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Item(int32)
    IL_002f:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Y
    IL_0034:  stloc.1
    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_003b:  ldc.i4.0
    IL_003c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Item(int32)
    IL_0041:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Z
    IL_0046:  stloc.2
    IL_0047:  ldarg.0
    IL_0048:  ldloc.0
    IL_0049:  ldloc.1
    IL_004a:  ldloc.2
    IL_004b:  ldc.r4     0.0
    IL_0050:  newobj     instance void class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::.ctor(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           !0)
    IL_0055:  stfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_005a:  ldarg.0
    IL_005b:  ldloc.0
    IL_005c:  ldloc.1
    IL_005d:  ldloc.2
    IL_005e:  ldloca.s   V_4
    IL_0060:  initobj    Game.SubsystemExplosions/SurroundingPressurePoint
    IL_0066:  ldloca.s   V_4
    IL_0068:  ldc.i4.0
    IL_0069:  stfld      bool Game.SubsystemExplosions/SurroundingPressurePoint::IsIncendiary
    IL_006e:  ldloca.s   V_4
    IL_0070:  ldc.r4     0.0
    IL_0075:  stfld      float32 Game.SubsystemExplosions/SurroundingPressurePoint::Pressure
    IL_007a:  ldloc.s    V_4
    IL_007c:  newobj     instance void class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::.ctor(int32,
                                                                                                                                                               int32,
                                                                                                                                                               int32,
                                                                                                                                                               !0)
    IL_0081:  stfld      class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint> Game.SubsystemExplosions::m_surroundingPressureByPoint
    IL_0086:  ldarg.0
    IL_0087:  ldc.i4.0
    IL_0088:  stfld      int32 Game.SubsystemExplosions::m_projectilesCount
    IL_008d:  ldarg.0
    IL_008e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemExplosions::m_generatedProjectiles
    IL_0093:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::Clear()
    IL_0098:  ldc.i4.0
    IL_0099:  stloc.3
    IL_009a:  ldc.i4.0
    IL_009b:  stloc.s    V_5
    IL_009d:  br         IL_012f

    IL_00a2:  ldarg.0
    IL_00a3:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_00a8:  ldloc.s    V_5
    IL_00aa:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Item(int32)
    IL_00af:  stloc.s    V_6
    IL_00b1:  ldloc.s    V_6
    IL_00b3:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::X
    IL_00b8:  ldloc.0
    IL_00b9:  sub
    IL_00ba:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_00bf:  ldc.i4.2
    IL_00c0:  bgt.s      IL_0129

    IL_00c2:  ldloc.s    V_6
    IL_00c4:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Y
    IL_00c9:  ldloc.1
    IL_00ca:  sub
    IL_00cb:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_00d0:  ldc.i4.2
    IL_00d1:  bgt.s      IL_0129

    IL_00d3:  ldloc.s    V_6
    IL_00d5:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Z
    IL_00da:  ldloc.2
    IL_00db:  sub
    IL_00dc:  call       int32 [Engine]Engine.MathUtils::Abs(int32)
    IL_00e1:  ldc.i4.2
    IL_00e2:  bgt.s      IL_0129

    IL_00e4:  ldarg.0
    IL_00e5:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_00ea:  ldloc.s    V_5
    IL_00ec:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::RemoveAt(int32)
    IL_00f1:  ldarg.0
    IL_00f2:  ldloc.s    V_6
    IL_00f4:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::X
    IL_00f9:  ldloc.s    V_6
    IL_00fb:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Y
    IL_0100:  ldloc.s    V_6
    IL_0102:  ldfld      int32 Game.SubsystemExplosions/ExplosionData::Z
    IL_0107:  ldloc.s    V_6
    IL_0109:  ldfld      float32 Game.SubsystemExplosions/ExplosionData::Pressure
    IL_010e:  ldloc.s    V_6
    IL_0110:  ldfld      bool Game.SubsystemExplosions/ExplosionData::IsIncendiary
    IL_0115:  call       instance void Game.SubsystemExplosions::SimulateExplosion(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   float32,
                                                                                   bool)
    IL_011a:  ldloc.3
    IL_011b:  ldloc.s    V_6
    IL_011d:  ldfld      bool Game.SubsystemExplosions/ExplosionData::NoExplosionSound
    IL_0122:  ldc.i4.0
    IL_0123:  ceq
    IL_0125:  or
    IL_0126:  stloc.3
    IL_0127:  br.s       IL_012f

    IL_0129:  ldloc.s    V_5
    IL_012b:  ldc.i4.1
    IL_012c:  add
    IL_012d:  stloc.s    V_5
    IL_012f:  ldloc.s    V_5
    IL_0131:  ldarg.0
    IL_0132:  ldfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_0137:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::get_Count()
    IL_013c:  blt        IL_00a2

    IL_0141:  ldarg.0
    IL_0142:  ldloc.3
    IL_0143:  call       instance void Game.SubsystemExplosions::PostprocessExplosions(bool)
    IL_0148:  ldarg.0
    IL_0149:  ldfld      bool Game.SubsystemExplosions::ShowExplosionPressure
    IL_014e:  brtrue.s   IL_015e

    IL_0150:  ldarg.0
    IL_0151:  ldnull
    IL_0152:  stfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_0157:  ldarg.0
    IL_0158:  ldnull
    IL_0159:  stfld      class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint> Game.SubsystemExplosions::m_surroundingPressureByPoint
    IL_015e:  ret
  } // end of method SubsystemExplosions::Update

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       191 (0xbf)
    .maxstack  3
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_000d:  stfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_001f:  stfld      class Game.SubsystemParticles Game.SubsystemExplosions::m_subsystemParticles
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0031:  stfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNoise>(bool)
    IL_0043:  stfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBodies>(bool)
    IL_0055:  stfld      class Game.SubsystemBodies Game.SubsystemExplosions::m_subsystemBodies
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0067:  stfld      class Game.SubsystemPickables Game.SubsystemExplosions::m_subsystemPickables
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemProjectiles>(bool)
    IL_0079:  stfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemBlockBehaviors>(bool)
    IL_008b:  stfld      class Game.SubsystemBlockBehaviors Game.SubsystemExplosions::m_subsystemBlockBehaviors
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemFireBlockBehavior>(bool)
    IL_009d:  stfld      class Game.SubsystemFireBlockBehavior Game.SubsystemExplosions::m_subsystemFireBlockBehavior
    IL_00a2:  ldarg.0
    IL_00a3:  newobj     instance void Game.ExplosionParticleSystem::.ctor()
    IL_00a8:  stfld      class Game.ExplosionParticleSystem Game.SubsystemExplosions::m_explosionParticleSystem
    IL_00ad:  ldarg.0
    IL_00ae:  ldfld      class Game.SubsystemParticles Game.SubsystemExplosions::m_subsystemParticles
    IL_00b3:  ldarg.0
    IL_00b4:  ldfld      class Game.ExplosionParticleSystem Game.SubsystemExplosions::m_explosionParticleSystem
    IL_00b9:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_00be:  ret
  } // end of method SubsystemExplosions::Load

  .method private hidebysig instance void 
          SimulateExplosion(int32 x,
                            int32 y,
                            int32 z,
                            float32 pressure,
                            bool isIncendiary) cil managed
  {
    // 代码大小       1264 (0x4f0)
    .maxstack  9
    .locals init (float32 V_0,
             class Game.SubsystemExplosions/SparseSpatialArray`1<bool> V_1,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint> V_2,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint> V_3,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint> V_4,
             int32 V_5,
             int32 V_6,
             float32 V_7,
             float32 V_8,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.SubsystemExplosions/ProcessPoint> V_9,
             valuetype Game.SubsystemExplosions/ProcessPoint V_10,
             float32 V_11,
             float32 V_12)
    IL_0000:  ldc.r4     0.13
    IL_0005:  ldarg.s    pressure
    IL_0007:  ldc.r4     0.5
    IL_000c:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0011:  mul
    IL_0012:  ldc.r4     1.
    IL_0017:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_001c:  stloc.0
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_0023:  ldarg.1
    IL_0024:  ldarg.2
    IL_0025:  ldarg.3
    IL_0026:  ldc.i4.0
    IL_0027:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_002c:  ldc.i4.1
    IL_002d:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0032:  ldarg.1
    IL_0033:  ldarg.2
    IL_0034:  ldarg.3
    IL_0035:  ldc.i4.1
    IL_0036:  newobj     instance void class Game.SubsystemExplosions/SparseSpatialArray`1<bool>::.ctor(int32,
                                                                                                        int32,
                                                                                                        int32,
                                                                                                        !0)
    IL_003b:  stloc.1
    IL_003c:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::.ctor()
    IL_0041:  stloc.2
    IL_0042:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::.ctor()
    IL_0047:  stloc.3
    IL_0048:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::.ctor()
    IL_004d:  stloc.s    V_4
    IL_004f:  ldarg.0
    IL_0050:  ldarg.1
    IL_0051:  ldarg.2
    IL_0052:  ldarg.3
    IL_0053:  ldc.i4.m1
    IL_0054:  ldarg.s    pressure
    IL_0056:  ldarg.s    isIncendiary
    IL_0058:  ldloc.2
    IL_0059:  ldloc.1
    IL_005a:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                             int32,
                                                                             int32,
                                                                             int32,
                                                                             float32,
                                                                             bool,
                                                                             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                             class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
    IL_005f:  ldc.i4.0
    IL_0060:  stloc.s    V_5
    IL_0062:  ldc.i4.0
    IL_0063:  stloc.s    V_6
    IL_0065:  br         IL_04d7

    IL_006a:  ldloc.s    V_5
    IL_006c:  ldloc.2
    IL_006d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::get_Count()
    IL_0072:  add
    IL_0073:  stloc.s    V_5
    IL_0075:  ldloc.s    V_6
    IL_0077:  ldc.i4.1
    IL_0078:  add
    IL_0079:  stloc.s    V_6
    IL_007b:  ldc.r4     5.
    IL_0080:  ldloc.s    V_6
    IL_0082:  ldc.i4.7
    IL_0083:  sub
    IL_0084:  ldc.i4.0
    IL_0085:  call       int32 [Engine]Engine.MathUtils::Max(int32,
                                                             int32)
    IL_008a:  conv.r4
    IL_008b:  mul
    IL_008c:  stloc.s    V_7
    IL_008e:  ldarg.s    pressure
    IL_0090:  ldloc.s    V_5
    IL_0092:  conv.r4
    IL_0093:  ldc.r4     0.66000003
    IL_0098:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_009d:  ldloc.s    V_7
    IL_009f:  add
    IL_00a0:  div
    IL_00a1:  stloc.s    V_8
    IL_00a3:  ldloc.s    V_8
    IL_00a5:  ldloc.0
    IL_00a6:  blt.un     IL_04c9

    IL_00ab:  ldloc.2
    IL_00ac:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::GetEnumerator()
    IL_00b1:  stloc.s    V_9
    .try
    {
      IL_00b3:  br         IL_04ad

      IL_00b8:  ldloca.s   V_9
      IL_00ba:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.SubsystemExplosions/ProcessPoint>::get_Current()
      IL_00bf:  stloc.s    V_10
      IL_00c1:  ldarg.0
      IL_00c2:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
      IL_00c7:  ldloc.s    V_10
      IL_00c9:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_00ce:  ldloc.s    V_10
      IL_00d0:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_00d5:  ldloc.s    V_10
      IL_00d7:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_00dc:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                         int32,
                                                                                                         int32)
      IL_00e1:  stloc.s    V_11
      IL_00e3:  ldloc.s    V_8
      IL_00e5:  ldloc.s    V_11
      IL_00e7:  add
      IL_00e8:  stloc.s    V_12
      IL_00ea:  ldarg.0
      IL_00eb:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
      IL_00f0:  ldloc.s    V_10
      IL_00f2:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_00f7:  ldloc.s    V_10
      IL_00f9:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_00fe:  ldloc.s    V_10
      IL_0100:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0105:  ldloc.s    V_12
      IL_0107:  callvirt   instance void class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Set(int32,
                                                                                                           int32,
                                                                                                           int32,
                                                                                                           !0)
      IL_010c:  ldloc.s    V_10
      IL_010e:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Axis
      IL_0113:  brtrue     IL_01f7

      IL_0118:  ldarg.0
      IL_0119:  ldloc.s    V_10
      IL_011b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0120:  ldc.i4.1
      IL_0121:  sub
      IL_0122:  ldloc.s    V_10
      IL_0124:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0129:  ldloc.s    V_10
      IL_012b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0130:  ldc.i4.0
      IL_0131:  ldloc.s    V_12
      IL_0133:  ldarg.s    isIncendiary
      IL_0135:  ldloc.s    V_4
      IL_0137:  ldloc.1
      IL_0138:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_013d:  ldarg.0
      IL_013e:  ldloc.s    V_10
      IL_0140:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0145:  ldc.i4.1
      IL_0146:  add
      IL_0147:  ldloc.s    V_10
      IL_0149:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_014e:  ldloc.s    V_10
      IL_0150:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0155:  ldc.i4.0
      IL_0156:  ldloc.s    V_12
      IL_0158:  ldarg.s    isIncendiary
      IL_015a:  ldloc.s    V_4
      IL_015c:  ldloc.1
      IL_015d:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0162:  ldarg.0
      IL_0163:  ldloc.s    V_10
      IL_0165:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_016a:  ldloc.s    V_10
      IL_016c:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0171:  ldc.i4.1
      IL_0172:  sub
      IL_0173:  ldloc.s    V_10
      IL_0175:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_017a:  ldc.i4.m1
      IL_017b:  ldloc.s    V_12
      IL_017d:  ldarg.s    isIncendiary
      IL_017f:  ldloc.3
      IL_0180:  ldloc.1
      IL_0181:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0186:  ldarg.0
      IL_0187:  ldloc.s    V_10
      IL_0189:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_018e:  ldloc.s    V_10
      IL_0190:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0195:  ldc.i4.1
      IL_0196:  add
      IL_0197:  ldloc.s    V_10
      IL_0199:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_019e:  ldc.i4.m1
      IL_019f:  ldloc.s    V_12
      IL_01a1:  ldarg.s    isIncendiary
      IL_01a3:  ldloc.3
      IL_01a4:  ldloc.1
      IL_01a5:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_01aa:  ldarg.0
      IL_01ab:  ldloc.s    V_10
      IL_01ad:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_01b2:  ldloc.s    V_10
      IL_01b4:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_01b9:  ldloc.s    V_10
      IL_01bb:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_01c0:  ldc.i4.1
      IL_01c1:  sub
      IL_01c2:  ldc.i4.m1
      IL_01c3:  ldloc.s    V_12
      IL_01c5:  ldarg.s    isIncendiary
      IL_01c7:  ldloc.3
      IL_01c8:  ldloc.1
      IL_01c9:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_01ce:  ldarg.0
      IL_01cf:  ldloc.s    V_10
      IL_01d1:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_01d6:  ldloc.s    V_10
      IL_01d8:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_01dd:  ldloc.s    V_10
      IL_01df:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_01e4:  ldc.i4.1
      IL_01e5:  add
      IL_01e6:  ldc.i4.m1
      IL_01e7:  ldloc.s    V_12
      IL_01e9:  ldarg.s    isIncendiary
      IL_01eb:  ldloc.3
      IL_01ec:  ldloc.1
      IL_01ed:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_01f2:  br         IL_04ad

      IL_01f7:  ldloc.s    V_10
      IL_01f9:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Axis
      IL_01fe:  ldc.i4.1
      IL_01ff:  bne.un     IL_02e3

      IL_0204:  ldarg.0
      IL_0205:  ldloc.s    V_10
      IL_0207:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_020c:  ldc.i4.1
      IL_020d:  sub
      IL_020e:  ldloc.s    V_10
      IL_0210:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0215:  ldloc.s    V_10
      IL_0217:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_021c:  ldc.i4.m1
      IL_021d:  ldloc.s    V_12
      IL_021f:  ldarg.s    isIncendiary
      IL_0221:  ldloc.3
      IL_0222:  ldloc.1
      IL_0223:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0228:  ldarg.0
      IL_0229:  ldloc.s    V_10
      IL_022b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0230:  ldc.i4.1
      IL_0231:  add
      IL_0232:  ldloc.s    V_10
      IL_0234:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0239:  ldloc.s    V_10
      IL_023b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0240:  ldc.i4.m1
      IL_0241:  ldloc.s    V_12
      IL_0243:  ldarg.s    isIncendiary
      IL_0245:  ldloc.3
      IL_0246:  ldloc.1
      IL_0247:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_024c:  ldarg.0
      IL_024d:  ldloc.s    V_10
      IL_024f:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0254:  ldloc.s    V_10
      IL_0256:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_025b:  ldc.i4.1
      IL_025c:  sub
      IL_025d:  ldloc.s    V_10
      IL_025f:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0264:  ldc.i4.1
      IL_0265:  ldloc.s    V_12
      IL_0267:  ldarg.s    isIncendiary
      IL_0269:  ldloc.s    V_4
      IL_026b:  ldloc.1
      IL_026c:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0271:  ldarg.0
      IL_0272:  ldloc.s    V_10
      IL_0274:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0279:  ldloc.s    V_10
      IL_027b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0280:  ldc.i4.1
      IL_0281:  add
      IL_0282:  ldloc.s    V_10
      IL_0284:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0289:  ldc.i4.1
      IL_028a:  ldloc.s    V_12
      IL_028c:  ldarg.s    isIncendiary
      IL_028e:  ldloc.s    V_4
      IL_0290:  ldloc.1
      IL_0291:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0296:  ldarg.0
      IL_0297:  ldloc.s    V_10
      IL_0299:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_029e:  ldloc.s    V_10
      IL_02a0:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_02a5:  ldloc.s    V_10
      IL_02a7:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_02ac:  ldc.i4.1
      IL_02ad:  sub
      IL_02ae:  ldc.i4.m1
      IL_02af:  ldloc.s    V_12
      IL_02b1:  ldarg.s    isIncendiary
      IL_02b3:  ldloc.3
      IL_02b4:  ldloc.1
      IL_02b5:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_02ba:  ldarg.0
      IL_02bb:  ldloc.s    V_10
      IL_02bd:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_02c2:  ldloc.s    V_10
      IL_02c4:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_02c9:  ldloc.s    V_10
      IL_02cb:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_02d0:  ldc.i4.1
      IL_02d1:  add
      IL_02d2:  ldc.i4.m1
      IL_02d3:  ldloc.s    V_12
      IL_02d5:  ldarg.s    isIncendiary
      IL_02d7:  ldloc.3
      IL_02d8:  ldloc.1
      IL_02d9:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_02de:  br         IL_04ad

      IL_02e3:  ldloc.s    V_10
      IL_02e5:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Axis
      IL_02ea:  ldc.i4.2
      IL_02eb:  bne.un     IL_03cf

      IL_02f0:  ldarg.0
      IL_02f1:  ldloc.s    V_10
      IL_02f3:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_02f8:  ldc.i4.1
      IL_02f9:  sub
      IL_02fa:  ldloc.s    V_10
      IL_02fc:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0301:  ldloc.s    V_10
      IL_0303:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0308:  ldc.i4.m1
      IL_0309:  ldloc.s    V_12
      IL_030b:  ldarg.s    isIncendiary
      IL_030d:  ldloc.3
      IL_030e:  ldloc.1
      IL_030f:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0314:  ldarg.0
      IL_0315:  ldloc.s    V_10
      IL_0317:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_031c:  ldc.i4.1
      IL_031d:  add
      IL_031e:  ldloc.s    V_10
      IL_0320:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0325:  ldloc.s    V_10
      IL_0327:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_032c:  ldc.i4.m1
      IL_032d:  ldloc.s    V_12
      IL_032f:  ldarg.s    isIncendiary
      IL_0331:  ldloc.3
      IL_0332:  ldloc.1
      IL_0333:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0338:  ldarg.0
      IL_0339:  ldloc.s    V_10
      IL_033b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0340:  ldloc.s    V_10
      IL_0342:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0347:  ldc.i4.1
      IL_0348:  sub
      IL_0349:  ldloc.s    V_10
      IL_034b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0350:  ldc.i4.m1
      IL_0351:  ldloc.s    V_12
      IL_0353:  ldarg.s    isIncendiary
      IL_0355:  ldloc.3
      IL_0356:  ldloc.1
      IL_0357:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_035c:  ldarg.0
      IL_035d:  ldloc.s    V_10
      IL_035f:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0364:  ldloc.s    V_10
      IL_0366:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_036b:  ldc.i4.1
      IL_036c:  add
      IL_036d:  ldloc.s    V_10
      IL_036f:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0374:  ldc.i4.m1
      IL_0375:  ldloc.s    V_12
      IL_0377:  ldarg.s    isIncendiary
      IL_0379:  ldloc.3
      IL_037a:  ldloc.1
      IL_037b:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0380:  ldarg.0
      IL_0381:  ldloc.s    V_10
      IL_0383:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0388:  ldloc.s    V_10
      IL_038a:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_038f:  ldloc.s    V_10
      IL_0391:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0396:  ldc.i4.1
      IL_0397:  sub
      IL_0398:  ldc.i4.2
      IL_0399:  ldloc.s    V_12
      IL_039b:  ldarg.s    isIncendiary
      IL_039d:  ldloc.s    V_4
      IL_039f:  ldloc.1
      IL_03a0:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_03a5:  ldarg.0
      IL_03a6:  ldloc.s    V_10
      IL_03a8:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_03ad:  ldloc.s    V_10
      IL_03af:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_03b4:  ldloc.s    V_10
      IL_03b6:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_03bb:  ldc.i4.1
      IL_03bc:  add
      IL_03bd:  ldc.i4.2
      IL_03be:  ldloc.s    V_12
      IL_03c0:  ldarg.s    isIncendiary
      IL_03c2:  ldloc.s    V_4
      IL_03c4:  ldloc.1
      IL_03c5:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_03ca:  br         IL_04ad

      IL_03cf:  ldarg.0
      IL_03d0:  ldloc.s    V_10
      IL_03d2:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_03d7:  ldc.i4.1
      IL_03d8:  sub
      IL_03d9:  ldloc.s    V_10
      IL_03db:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_03e0:  ldloc.s    V_10
      IL_03e2:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_03e7:  ldc.i4.0
      IL_03e8:  ldloc.s    V_12
      IL_03ea:  ldarg.s    isIncendiary
      IL_03ec:  ldloc.s    V_4
      IL_03ee:  ldloc.1
      IL_03ef:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_03f4:  ldarg.0
      IL_03f5:  ldloc.s    V_10
      IL_03f7:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_03fc:  ldc.i4.1
      IL_03fd:  add
      IL_03fe:  ldloc.s    V_10
      IL_0400:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0405:  ldloc.s    V_10
      IL_0407:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_040c:  ldc.i4.0
      IL_040d:  ldloc.s    V_12
      IL_040f:  ldarg.s    isIncendiary
      IL_0411:  ldloc.s    V_4
      IL_0413:  ldloc.1
      IL_0414:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0419:  ldarg.0
      IL_041a:  ldloc.s    V_10
      IL_041c:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0421:  ldloc.s    V_10
      IL_0423:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0428:  ldc.i4.1
      IL_0429:  sub
      IL_042a:  ldloc.s    V_10
      IL_042c:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0431:  ldc.i4.1
      IL_0432:  ldloc.s    V_12
      IL_0434:  ldarg.s    isIncendiary
      IL_0436:  ldloc.s    V_4
      IL_0438:  ldloc.1
      IL_0439:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_043e:  ldarg.0
      IL_043f:  ldloc.s    V_10
      IL_0441:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0446:  ldloc.s    V_10
      IL_0448:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_044d:  ldc.i4.1
      IL_044e:  add
      IL_044f:  ldloc.s    V_10
      IL_0451:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0456:  ldc.i4.1
      IL_0457:  ldloc.s    V_12
      IL_0459:  ldarg.s    isIncendiary
      IL_045b:  ldloc.s    V_4
      IL_045d:  ldloc.1
      IL_045e:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0463:  ldarg.0
      IL_0464:  ldloc.s    V_10
      IL_0466:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_046b:  ldloc.s    V_10
      IL_046d:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0472:  ldloc.s    V_10
      IL_0474:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_0479:  ldc.i4.1
      IL_047a:  sub
      IL_047b:  ldc.i4.2
      IL_047c:  ldloc.s    V_12
      IL_047e:  ldarg.s    isIncendiary
      IL_0480:  ldloc.s    V_4
      IL_0482:  ldloc.1
      IL_0483:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_0488:  ldarg.0
      IL_0489:  ldloc.s    V_10
      IL_048b:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::X
      IL_0490:  ldloc.s    V_10
      IL_0492:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
      IL_0497:  ldloc.s    V_10
      IL_0499:  ldfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
      IL_049e:  ldc.i4.1
      IL_049f:  add
      IL_04a0:  ldc.i4.2
      IL_04a1:  ldloc.s    V_12
      IL_04a3:  ldarg.s    isIncendiary
      IL_04a5:  ldloc.s    V_4
      IL_04a7:  ldloc.1
      IL_04a8:  call       instance void Game.SubsystemExplosions::TryAddPoint(int32,
                                                                               int32,
                                                                               int32,
                                                                               int32,
                                                                               float32,
                                                                               bool,
                                                                               class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>,
                                                                               class Game.SubsystemExplosions/SparseSpatialArray`1<bool>)
      IL_04ad:  ldloca.s   V_9
      IL_04af:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.SubsystemExplosions/ProcessPoint>::MoveNext()
      IL_04b4:  brtrue     IL_00b8

      IL_04b9:  leave.s    IL_04c9

    }  // end .try
    finally
    {
      IL_04bb:  ldloca.s   V_9
      IL_04bd:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.SubsystemExplosions/ProcessPoint>
      IL_04c3:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_04c8:  endfinally
    }  // end handler
    IL_04c9:  ldloc.2
    IL_04ca:  dup
    IL_04cb:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::Clear()
    IL_04d0:  ldloc.3
    IL_04d1:  stloc.2
    IL_04d2:  ldloc.s    V_4
    IL_04d4:  stloc.3
    IL_04d5:  stloc.s    V_4
    IL_04d7:  ldloc.2
    IL_04d8:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::get_Count()
    IL_04dd:  ldc.i4.0
    IL_04de:  bgt        IL_006a

    IL_04e3:  ldloc.3
    IL_04e4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::get_Count()
    IL_04e9:  ldc.i4.0
    IL_04ea:  bgt        IL_006a

    IL_04ef:  ret
  } // end of method SubsystemExplosions::SimulateExplosion

  .method private hidebysig instance void 
          TryAddPoint(int32 x,
                      int32 y,
                      int32 z,
                      int32 axis,
                      float32 currentPressure,
                      bool isIncendiary,
                      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint> toProcess,
                      class Game.SubsystemExplosions/SparseSpatialArray`1<bool> processed) cil managed
  {
    // 代码大小       1257 (0x4e9)
    .maxstack  9
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             class Game.Block V_4,
             float32 V_5,
             float32 V_6,
             float32 V_7,
             int32 V_8,
             bool V_9,
             float32 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             float32 V_12,
             bool V_13,
             class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> V_14,
             bool V_15,
             valuetype Game.BlockDropValue V_16,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.BlockDropValue> V_17,
             valuetype Game.BlockDropValue V_18,
             int32 V_19,
             float32 V_20,
             valuetype [Engine]Engine.Vector3 V_21,
             float32 V_22,
             class Game.Projectile V_23,
             float32 V_24,
             valuetype Game.SubsystemExplosions/SurroundingPressurePoint V_25,
             valuetype Game.SubsystemExplosions/ProcessPoint V_26)
    IL_0000:  ldarg.s    processed
    IL_0002:  ldarg.1
    IL_0003:  ldarg.2
    IL_0004:  ldarg.3
    IL_0005:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<bool>::Get(int32,
                                                                                                    int32,
                                                                                                    int32)
    IL_000a:  brfalse.s  IL_000d

    IL_000c:  ret

    IL_000d:  ldarg.0
    IL_000e:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_0013:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0018:  ldarg.1
    IL_0019:  ldarg.2
    IL_001a:  ldarg.3
    IL_001b:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0020:  stloc.0
    IL_0021:  ldloc.0
    IL_0022:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0027:  stloc.1
    IL_0028:  ldloc.1
    IL_0029:  brfalse    IL_04ab

    IL_002e:  ldarg.1
    IL_002f:  ldc.i4     0x391
    IL_0034:  ldarg.2
    IL_0035:  mul
    IL_0036:  add
    IL_0037:  ldc.i4     0x351ca
    IL_003c:  ldarg.3
    IL_003d:  mul
    IL_003e:  add
    IL_003f:  call       uint32 [Engine]Engine.MathUtils::Hash(uint32)
    IL_0044:  ldc.i4.s   100
    IL_0046:  rem.un
    IL_0047:  stloc.2
    IL_0048:  ldc.r4     1.
    IL_004d:  ldc.r4     2.
    IL_0052:  ldloc.2
    IL_0053:  conv.r4
    IL_0054:  ldc.r4     100.
    IL_0059:  div
    IL_005a:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                float32,
                                                                float32)
    IL_005f:  stloc.3
    IL_0060:  ldloc.2
    IL_0061:  ldc.i4.8
    IL_0062:  rem
    IL_0063:  brtrue.s   IL_006d

    IL_0065:  ldloc.3
    IL_0066:  ldc.r4     3.
    IL_006b:  mul
    IL_006c:  stloc.3
    IL_006d:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0072:  ldloc.1
    IL_0073:  ldelem.ref
    IL_0074:  stloc.s    V_4
    IL_0076:  ldarg.0
    IL_0077:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_007c:  ldarg.1
    IL_007d:  ldc.i4.1
    IL_007e:  sub
    IL_007f:  ldarg.2
    IL_0080:  ldarg.3
    IL_0081:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_008c:  ldarg.1
    IL_008d:  ldc.i4.1
    IL_008e:  add
    IL_008f:  ldarg.2
    IL_0090:  ldarg.3
    IL_0091:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_0096:  add
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_009d:  ldarg.1
    IL_009e:  ldarg.2
    IL_009f:  ldc.i4.1
    IL_00a0:  sub
    IL_00a1:  ldarg.3
    IL_00a2:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_00a7:  add
    IL_00a8:  ldarg.0
    IL_00a9:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_00ae:  ldarg.1
    IL_00af:  ldarg.2
    IL_00b0:  ldc.i4.1
    IL_00b1:  add
    IL_00b2:  ldarg.3
    IL_00b3:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_00b8:  add
    IL_00b9:  ldarg.0
    IL_00ba:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_00bf:  ldarg.1
    IL_00c0:  ldarg.2
    IL_00c1:  ldarg.3
    IL_00c2:  ldc.i4.1
    IL_00c3:  sub
    IL_00c4:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_00c9:  add
    IL_00ca:  ldarg.0
    IL_00cb:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_00d0:  ldarg.1
    IL_00d1:  ldarg.2
    IL_00d2:  ldarg.3
    IL_00d3:  ldc.i4.1
    IL_00d4:  add
    IL_00d5:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_00da:  add
    IL_00db:  stloc.s    V_5
    IL_00dd:  ldloc.s    V_4
    IL_00df:  ldfld      float32 Game.Block::ExplosionResilience
    IL_00e4:  ldloc.3
    IL_00e5:  mul
    IL_00e6:  ldc.r4     1.
    IL_00eb:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_00f0:  stloc.s    V_6
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldloc.s    V_6
    IL_00f6:  div
    IL_00f7:  stloc.s    V_7
    IL_00f9:  ldloc.s    V_7
    IL_00fb:  ldc.r4     1.
    IL_0100:  ble.un     IL_0477

    IL_0105:  ldc.i4.0
    IL_0106:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_010b:  stloc.s    V_8
    IL_010d:  ldarg.0
    IL_010e:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_0113:  ldc.i4.0
    IL_0114:  ldarg.1
    IL_0115:  ldarg.2
    IL_0116:  ldarg.3
    IL_0117:  ldloc.s    V_8
    IL_0119:  ldc.i4.1
    IL_011a:  ldc.i4.1
    IL_011b:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0120:  ldc.i4.0
    IL_0121:  stloc.s    V_9
    IL_0123:  ldloc.s    V_7
    IL_0125:  ldc.r4     5.
    IL_012a:  bgt.s      IL_0133

    IL_012c:  ldc.r4     0.75
    IL_0131:  br.s       IL_0138

    IL_0133:  ldc.r4     0.94999999
    IL_0138:  stloc.s    V_10
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_0140:  ldloc.s    V_10
    IL_0142:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0147:  brfalse.s  IL_0155

    IL_0149:  ldarg.0
    IL_014a:  ldarg.1
    IL_014b:  ldarg.2
    IL_014c:  ldarg.3
    IL_014d:  ldloc.0
    IL_014e:  call       instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_0153:  stloc.s    V_9
    IL_0155:  ldloc.s    V_9
    IL_0157:  brtrue     IL_04ab

    IL_015c:  ldarg.0
    IL_015d:  ldarg.1
    IL_015e:  conv.r4
    IL_015f:  ldc.r4     0.5
    IL_0164:  add
    IL_0165:  ldarg.2
    IL_0166:  conv.r4
    IL_0167:  ldc.r4     0.5
    IL_016c:  add
    IL_016d:  ldarg.3
    IL_016e:  conv.r4
    IL_016f:  ldc.r4     0.5
    IL_0174:  add
    IL_0175:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_017a:  ldc.r4     60.
    IL_017f:  ldc.r4     2.
    IL_0184:  ldloc.s    V_5
    IL_0186:  mul
    IL_0187:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_018c:  ldloca.s   V_11
    IL_018e:  ldloca.s   V_12
    IL_0190:  call       instance void Game.SubsystemExplosions::CalculateImpulseAndDamage(valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                                           valuetype [Engine]Engine.Vector3&,
                                                                                           float32&)
    IL_0195:  ldc.i4.0
    IL_0196:  stloc.s    V_13
    IL_0198:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::.ctor()
    IL_019d:  stloc.s    V_14
    IL_019f:  ldloc.s    V_4
    IL_01a1:  ldarg.0
    IL_01a2:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_01a7:  ldloc.0
    IL_01a8:  ldloc.s    V_8
    IL_01aa:  ldc.i4.0
    IL_01ab:  ldloc.s    V_14
    IL_01ad:  ldloca.s   V_15
    IL_01af:  callvirt   instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_01b4:  ldloc.s    V_14
    IL_01b6:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::get_Count()
    IL_01bb:  brtrue.s   IL_01e1

    IL_01bd:  ldloc.s    V_14
    IL_01bf:  ldloca.s   V_16
    IL_01c1:  initobj    Game.BlockDropValue
    IL_01c7:  ldloca.s   V_16
    IL_01c9:  ldloc.0
    IL_01ca:  stfld      int32 Game.BlockDropValue::Value
    IL_01cf:  ldloca.s   V_16
    IL_01d1:  ldc.i4.1
    IL_01d2:  stfld      int32 Game.BlockDropValue::Count
    IL_01d7:  ldloc.s    V_16
    IL_01d9:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_01de:  ldc.i4.1
    IL_01df:  stloc.s    V_13
    IL_01e1:  ldloc.s    V_14
    IL_01e3:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::GetEnumerator()
    IL_01e8:  stloc.s    V_17
    .try
    {
      IL_01ea:  br         IL_045b

      IL_01ef:  ldloca.s   V_17
      IL_01f1:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.BlockDropValue>::get_Current()
      IL_01f6:  stloc.s    V_18
      IL_01f8:  ldloc.s    V_18
      IL_01fa:  ldfld      int32 Game.BlockDropValue::Value
      IL_01ff:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0204:  stloc.s    V_19
      IL_0206:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_020b:  ldloc.s    V_19
      IL_020d:  ldelem.ref
      IL_020e:  isinst     Game.FluidBlock
      IL_0213:  brtrue     IL_045b

      IL_0218:  ldarg.0
      IL_0219:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_021e:  ldc.i4.s   40
      IL_0220:  bge.s      IL_022b

      IL_0222:  ldc.r4     1.
      IL_0227:  stloc.s    V_20
      IL_0229:  br.s       IL_0258

      IL_022b:  ldarg.0
      IL_022c:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_0231:  ldc.i4.s   60
      IL_0233:  bge.s      IL_023e

      IL_0235:  ldc.r4     0.5
      IL_023a:  stloc.s    V_20
      IL_023c:  br.s       IL_0258

      IL_023e:  ldarg.0
      IL_023f:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_0244:  ldc.i4.s   80
      IL_0246:  bge.s      IL_0251

      IL_0248:  ldc.r4     0.25
      IL_024d:  stloc.s    V_20
      IL_024f:  br.s       IL_0258

      IL_0251:  ldc.r4     0.125
      IL_0256:  stloc.s    V_20
      IL_0258:  ldarg.0
      IL_0259:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_025e:  ldc.r4     0.0
      IL_0263:  ldc.r4     1.
      IL_0268:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_026d:  ldloc.s    V_20
      IL_026f:  bge.un     IL_045b

      IL_0274:  ldloc.s    V_11
      IL_0276:  ldarg.0
      IL_0277:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_027c:  ldc.r4     5.0000001e-002
      IL_0281:  ldloca.s   V_11
      IL_0283:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0288:  mul
      IL_0289:  ldc.i4.0
      IL_028a:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_028f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0294:  stloc.s    V_21
      IL_0296:  ldarg.0
      IL_0297:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_029c:  ldc.i4.1
      IL_029d:  blt.s      IL_02df

      IL_029f:  ldloc.s    V_21
      IL_02a1:  ldarg.0
      IL_02a2:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_02a7:  ldc.r4     0.5
      IL_02ac:  ldc.r4     1.
      IL_02b1:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_02b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_02bb:  stloc.s    V_21
      IL_02bd:  ldloc.s    V_21
      IL_02bf:  ldarg.0
      IL_02c0:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_02c5:  ldc.r4     0.2
      IL_02ca:  ldloca.s   V_21
      IL_02cc:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_02d1:  mul
      IL_02d2:  ldc.i4.0
      IL_02d3:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::Vector3(float32,
                                                                                          bool)
      IL_02d8:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_02dd:  stloc.s    V_21
      IL_02df:  ldloc.s    V_13
      IL_02e1:  brtrue.s   IL_0301

      IL_02e3:  ldc.r4     1.
      IL_02e8:  ldc.r4     0.0
      IL_02ed:  ldarg.0
      IL_02ee:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_02f3:  conv.r4
      IL_02f4:  ldc.r4     20.
      IL_02f9:  div
      IL_02fa:  call       float32 [Engine]Engine.MathUtils::Lerp(float32,
                                                                  float32,
                                                                  float32)
      IL_02ff:  br.s       IL_0306

      IL_0301:  ldc.r4     0.0
      IL_0306:  stloc.s    V_22
      IL_0308:  ldarg.0
      IL_0309:  ldfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
      IL_030e:  ldloc.s    V_18
      IL_0310:  ldfld      int32 Game.BlockDropValue::Value
      IL_0315:  ldarg.1
      IL_0316:  conv.r4
      IL_0317:  ldc.r4     0.5
      IL_031c:  add
      IL_031d:  ldarg.2
      IL_031e:  conv.r4
      IL_031f:  ldc.r4     0.5
      IL_0324:  add
      IL_0325:  ldarg.3
      IL_0326:  conv.r4
      IL_0327:  ldc.r4     0.5
      IL_032c:  add
      IL_032d:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0332:  ldloc.s    V_21
      IL_0334:  ldarg.0
      IL_0335:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_033a:  ldc.r4     0.0
      IL_033f:  ldc.r4     20.
      IL_0344:  ldc.i4.0
      IL_0345:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                                 float32,
                                                                                                 bool)
      IL_034a:  ldnull
      IL_034b:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::AddProjectile(int32,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   class Game.ComponentCreature)
      IL_0350:  stloc.s    V_23
      IL_0352:  ldloc.s    V_23
      IL_0354:  ldarg.0
      IL_0355:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_035a:  ldc.r4     0.0
      IL_035f:  ldc.r4     1.
      IL_0364:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0369:  ldloc.s    V_22
      IL_036b:  blt.s      IL_0370

      IL_036d:  ldc.i4.1
      IL_036e:  br.s       IL_0371

      IL_0370:  ldc.i4.0
      IL_0371:  stfld      valuetype Game.ProjectileStoppedAction Game.Projectile::ProjectileStoppedAction
      IL_0376:  ldarg.0
      IL_0377:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_037c:  ldc.r4     0.0
      IL_0381:  ldc.r4     1.
      IL_0386:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_038b:  ldc.r4     0.5
      IL_0390:  bge.un     IL_043f

      IL_0395:  ldarg.0
      IL_0396:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_039b:  ldc.i4.s   35
      IL_039d:  bge        IL_043f

      IL_03a2:  ldloc.s    V_5
      IL_03a4:  ldc.r4     60.
      IL_03a9:  bgt.s      IL_03c2

      IL_03ab:  ldarg.0
      IL_03ac:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_03b1:  ldc.r4     1.
      IL_03b6:  ldc.r4     3.
      IL_03bb:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_03c0:  br.s       IL_03d7

      IL_03c2:  ldarg.0
      IL_03c3:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_03c8:  ldc.r4     3.
      IL_03cd:  ldc.r4     7.
      IL_03d2:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_03d7:  stloc.s    V_24
      IL_03d9:  ldarg.s    isIncendiary
      IL_03db:  brfalse.s  IL_03e7

      IL_03dd:  ldloc.s    V_24
      IL_03df:  ldc.r4     10.
      IL_03e4:  add
      IL_03e5:  stloc.s    V_24
      IL_03e7:  ldarg.0
      IL_03e8:  ldfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
      IL_03ed:  ldloc.s    V_23
      IL_03ef:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_03f4:  ldc.i4.s   15
      IL_03f6:  ldarg.0
      IL_03f7:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_03fc:  ldc.r4     0.75
      IL_0401:  ldc.r4     1.5
      IL_0406:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_040b:  ldloc.s    V_24
      IL_040d:  ldarg.s    isIncendiary
      IL_040f:  brtrue.s   IL_0418

      IL_0411:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0416:  br.s       IL_042c

      IL_0418:  ldc.i4     0xff
      IL_041d:  ldc.i4     0x8c
      IL_0422:  ldc.i4     0xc0
      IL_0427:  newobj     instance void [Engine]Engine.Color::.ctor(int32,
                                                                     int32,
                                                                     int32)
      IL_042c:  newobj     instance void Game.SmokeTrailParticleSystem::.ctor(int32,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Color)
      IL_0431:  callvirt   instance void Game.SubsystemProjectiles::AddTrail(class Game.Projectile,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             class Game.ITrailParticleSystem)
      IL_0436:  ldloc.s    V_23
      IL_0438:  ldarg.s    isIncendiary
      IL_043a:  stfld      bool Game.Projectile::IsIncendiary
      IL_043f:  ldarg.0
      IL_0440:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemExplosions::m_generatedProjectiles
      IL_0445:  ldloc.s    V_23
      IL_0447:  ldc.i4.1
      IL_0448:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::Add(!0,
                                                                                                                                            !1)
      IL_044d:  ldarg.0
      IL_044e:  ldarg.0
      IL_044f:  ldfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_0454:  ldc.i4.1
      IL_0455:  add
      IL_0456:  stfld      int32 Game.SubsystemExplosions::m_projectilesCount
      IL_045b:  ldloca.s   V_17
      IL_045d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.BlockDropValue>::MoveNext()
      IL_0462:  brtrue     IL_01ef

      IL_0467:  leave.s    IL_04ab

    }  // end .try
    finally
    {
      IL_0469:  ldloca.s   V_17
      IL_046b:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Game.BlockDropValue>
      IL_0471:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0476:  endfinally
    }  // end handler
    IL_0477:  ldarg.0
    IL_0478:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint> Game.SubsystemExplosions::m_surroundingPressureByPoint
    IL_047d:  ldarg.1
    IL_047e:  ldarg.2
    IL_047f:  ldarg.3
    IL_0480:  ldloca.s   V_25
    IL_0482:  initobj    Game.SubsystemExplosions/SurroundingPressurePoint
    IL_0488:  ldloca.s   V_25
    IL_048a:  ldloc.s    V_5
    IL_048c:  stfld      float32 Game.SubsystemExplosions/SurroundingPressurePoint::Pressure
    IL_0491:  ldloca.s   V_25
    IL_0493:  ldarg.s    isIncendiary
    IL_0495:  stfld      bool Game.SubsystemExplosions/SurroundingPressurePoint::IsIncendiary
    IL_049a:  ldloc.s    V_25
    IL_049c:  callvirt   instance void class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::Set(int32,
                                                                                                                                                             int32,
                                                                                                                                                             int32,
                                                                                                                                                             !0)
    IL_04a1:  ldloc.s    V_4
    IL_04a3:  ldfld      bool Game.Block::IsCollidable
    IL_04a8:  brfalse.s  IL_04ab

    IL_04aa:  ret

    IL_04ab:  ldarg.s    toProcess
    IL_04ad:  ldloca.s   V_26
    IL_04af:  initobj    Game.SubsystemExplosions/ProcessPoint
    IL_04b5:  ldloca.s   V_26
    IL_04b7:  ldarg.1
    IL_04b8:  stfld      int32 Game.SubsystemExplosions/ProcessPoint::X
    IL_04bd:  ldloca.s   V_26
    IL_04bf:  ldarg.2
    IL_04c0:  stfld      int32 Game.SubsystemExplosions/ProcessPoint::Y
    IL_04c5:  ldloca.s   V_26
    IL_04c7:  ldarg.3
    IL_04c8:  stfld      int32 Game.SubsystemExplosions/ProcessPoint::Z
    IL_04cd:  ldloca.s   V_26
    IL_04cf:  ldarg.s    axis
    IL_04d1:  stfld      int32 Game.SubsystemExplosions/ProcessPoint::Axis
    IL_04d6:  ldloc.s    V_26
    IL_04d8:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ProcessPoint>::Add(!0)
    IL_04dd:  ldarg.s    processed
    IL_04df:  ldarg.1
    IL_04e0:  ldarg.2
    IL_04e1:  ldarg.3
    IL_04e2:  ldc.i4.1
    IL_04e3:  callvirt   instance void class Game.SubsystemExplosions/SparseSpatialArray`1<bool>::Set(int32,
                                                                                                      int32,
                                                                                                      int32,
                                                                                                      !0)
    IL_04e8:  ret
  } // end of method SubsystemExplosions::TryAddPoint

  .method private hidebysig instance void 
          PostprocessExplosions(bool playExplosionSound) cil managed
  {
    // 代码大小       2259 (0x8d3)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Point3 V_0,
             float32 V_1,
             float32 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             float32 V_4,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32> V_5,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32> V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint> V_10,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint> V_11,
             int32 V_12,
             int32 V_13,
             class Game.SubsystemBlockBehavior[] V_14,
             float32 V_15,
             class Game.Block V_16,
             int32 V_17,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2> V_18,
             class Game.ComponentBody V_19,
             valuetype [Engine]Engine.Vector3 V_20,
             float32 V_21,
             class Game.ComponentHealth V_22,
             class Game.ComponentDamage V_23,
             class Game.ComponentOnFire V_24,
             valuetype [System.Runtime]System.Nullable`1<float32> V_25,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable> V_26,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> V_27,
             class Game.Pickable V_28,
             class Game.Block V_29,
             valuetype [Engine]Engine.Vector3 V_30,
             float32 V_31,
             valuetype [Engine]Engine.Vector3 V_32,
             class Game.Projectile V_33,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile> V_34,
             valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> V_35,
             class Game.Projectile V_36,
             valuetype [Engine]Engine.Vector3 V_37,
             float32 V_38)
    IL_0000:  ldsfld     valuetype [Engine]Engine.Point3 [Engine]Engine.Point3::Zero
    IL_0005:  stloc.0
    IL_0006:  ldc.r4     3.4028235e+038
    IL_000b:  stloc.1
    IL_000c:  ldc.r4     0.0
    IL_0011:  stloc.2
    IL_0012:  ldarg.0
    IL_0013:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_0018:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::ToDictionary()
    IL_001d:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,float32>::GetEnumerator()
    IL_0022:  stloc.s    V_5
    .try
    {
      IL_0024:  br         IL_011b

      IL_0029:  ldloca.s   V_5
      IL_002b:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::get_Current()
      IL_0030:  stloc.s    V_6
      IL_0032:  ldloc.2
      IL_0033:  ldloca.s   V_6
      IL_0035:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_003a:  add
      IL_003b:  stloc.2
      IL_003c:  ldloca.s   V_6
      IL_003e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0043:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0048:  conv.r4
      IL_0049:  ldarg.0
      IL_004a:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
      IL_004f:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
      IL_0054:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0059:  sub
      IL_005a:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_005f:  ldloca.s   V_6
      IL_0061:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0066:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_006b:  conv.r4
      IL_006c:  ldarg.0
      IL_006d:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
      IL_0072:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
      IL_0077:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_007c:  sub
      IL_007d:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_0082:  add
      IL_0083:  ldloca.s   V_6
      IL_0085:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_008a:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_008f:  conv.r4
      IL_0090:  ldarg.0
      IL_0091:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
      IL_0096:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.SubsystemAudio::get_ListenerPosition()
      IL_009b:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_00a0:  sub
      IL_00a1:  call       float32 [Engine]Engine.MathUtils::Sqr(float32)
      IL_00a6:  add
      IL_00a7:  call       float32 [Engine]Engine.MathUtils::Sqrt(float32)
      IL_00ac:  stloc.s    V_7
      IL_00ae:  ldloc.s    V_7
      IL_00b0:  ldloc.1
      IL_00b1:  bge.un.s   IL_00be

      IL_00b3:  ldloc.s    V_7
      IL_00b5:  stloc.1
      IL_00b6:  ldloca.s   V_6
      IL_00b8:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_00bd:  stloc.0
      IL_00be:  ldc.r4     1.e-003
      IL_00c3:  ldloc.2
      IL_00c4:  ldc.r4     0.5
      IL_00c9:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                                 float32)
      IL_00ce:  mul
      IL_00cf:  stloc.s    V_8
      IL_00d1:  ldloca.s   V_6
      IL_00d3:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Value()
      IL_00d8:  ldc.r4     15.
      IL_00dd:  div
      IL_00de:  ldloc.s    V_8
      IL_00e0:  sub
      IL_00e1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
      IL_00e6:  ldarg.0
      IL_00e7:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_00ec:  ldc.r4     0.2
      IL_00f1:  ldc.r4     1.
      IL_00f6:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_00fb:  mul
      IL_00fc:  stloc.s    V_9
      IL_00fe:  ldloc.s    V_9
      IL_0100:  ldc.r4     0.1
      IL_0105:  ble.un.s   IL_011b

      IL_0107:  ldarg.0
      IL_0108:  ldfld      class Game.ExplosionParticleSystem Game.SubsystemExplosions::m_explosionParticleSystem
      IL_010d:  ldloca.s   V_6
      IL_010f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,float32>::get_Key()
      IL_0114:  ldloc.s    V_9
      IL_0116:  callvirt   instance void Game.ExplosionParticleSystem::SetExplosionCell(valuetype [Engine]Engine.Point3,
                                                                                        float32)
      IL_011b:  ldloca.s   V_5
      IL_011d:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>::MoveNext()
      IL_0122:  brtrue     IL_0029

      IL_0127:  leave.s    IL_0137

    }  // end .try
    finally
    {
      IL_0129:  ldloca.s   V_5
      IL_012b:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,float32>
      IL_0131:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0136:  endfinally
    }  // end handler
    IL_0137:  ldarg.0
    IL_0138:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint> Game.SubsystemExplosions::m_surroundingPressureByPoint
    IL_013d:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,!0> class Game.SubsystemExplosions/SparseSpatialArray`1<valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::ToDictionary()
    IL_0142:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::GetEnumerator()
    IL_0147:  stloc.s    V_10
    .try
    {
      IL_0149:  br         IL_02a1

      IL_014e:  ldloca.s   V_10
      IL_0150:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Current()
      IL_0155:  stloc.s    V_11
      IL_0157:  ldarg.0
      IL_0158:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
      IL_015d:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0162:  ldloca.s   V_11
      IL_0164:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_0169:  ldfld      int32 [Engine]Engine.Point3::X
      IL_016e:  ldloca.s   V_11
      IL_0170:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_0175:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_017a:  ldloca.s   V_11
      IL_017c:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_0181:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0186:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                         int32,
                                                                         int32)
      IL_018b:  stloc.s    V_12
      IL_018d:  ldloc.s    V_12
      IL_018f:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_0194:  stloc.s    V_13
      IL_0196:  ldarg.0
      IL_0197:  ldfld      class Game.SubsystemBlockBehaviors Game.SubsystemExplosions::m_subsystemBlockBehaviors
      IL_019c:  ldloc.s    V_13
      IL_019e:  callvirt   instance class Game.SubsystemBlockBehavior[] Game.SubsystemBlockBehaviors::GetBlockBehaviors(int32)
      IL_01a3:  stloc.s    V_14
      IL_01a5:  ldloc.s    V_14
      IL_01a7:  ldlen
      IL_01a8:  brfalse.s  IL_01f9

      IL_01aa:  ldc.i4.0
      IL_01ab:  stloc.s    V_17
      IL_01ad:  br.s       IL_01f1

      IL_01af:  ldloc.s    V_14
      IL_01b1:  ldloc.s    V_17
      IL_01b3:  ldelem.ref
      IL_01b4:  ldloc.s    V_12
      IL_01b6:  ldloca.s   V_11
      IL_01b8:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_01bd:  ldfld      int32 [Engine]Engine.Point3::X
      IL_01c2:  ldloca.s   V_11
      IL_01c4:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_01c9:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_01ce:  ldloca.s   V_11
      IL_01d0:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_01d5:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_01da:  ldloca.s   V_11
      IL_01dc:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Value()
      IL_01e1:  ldfld      float32 Game.SubsystemExplosions/SurroundingPressurePoint::Pressure
      IL_01e6:  callvirt   instance void Game.SubsystemBlockBehavior::OnExplosion(int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  int32,
                                                                                  float32)
      IL_01eb:  ldloc.s    V_17
      IL_01ed:  ldc.i4.1
      IL_01ee:  add
      IL_01ef:  stloc.s    V_17
      IL_01f1:  ldloc.s    V_17
      IL_01f3:  ldloc.s    V_14
      IL_01f5:  ldlen
      IL_01f6:  conv.i4
      IL_01f7:  blt.s      IL_01af

      IL_01f9:  ldloca.s   V_11
      IL_01fb:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Value()
      IL_0200:  ldfld      bool Game.SubsystemExplosions/SurroundingPressurePoint::IsIncendiary
      IL_0205:  brtrue.s   IL_020e

      IL_0207:  ldc.r4     0.2
      IL_020c:  br.s       IL_0213

      IL_020e:  ldc.r4     0.5
      IL_0213:  stloc.s    V_15
      IL_0215:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_021a:  ldloc.s    V_13
      IL_021c:  ldelem.ref
      IL_021d:  stloc.s    V_16
      IL_021f:  ldloc.s    V_16
      IL_0221:  ldfld      float32 Game.Block::FireDuration
      IL_0226:  ldc.r4     0.0
      IL_022b:  ble.un.s   IL_02a1

      IL_022d:  ldloca.s   V_11
      IL_022f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Value()
      IL_0234:  ldfld      float32 Game.SubsystemExplosions/SurroundingPressurePoint::Pressure
      IL_0239:  ldloc.s    V_16
      IL_023b:  ldfld      float32 Game.Block::ExplosionResilience
      IL_0240:  div
      IL_0241:  ldc.r4     0.2
      IL_0246:  ble.un.s   IL_02a1

      IL_0248:  ldarg.0
      IL_0249:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_024e:  ldloc.s    V_15
      IL_0250:  callvirt   instance bool Game.Random::Bool(float32)
      IL_0255:  brfalse.s  IL_02a1

      IL_0257:  ldarg.0
      IL_0258:  ldfld      class Game.SubsystemFireBlockBehavior Game.SubsystemExplosions::m_subsystemFireBlockBehavior
      IL_025d:  ldloca.s   V_11
      IL_025f:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_0264:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0269:  ldloca.s   V_11
      IL_026b:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_0270:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_0275:  ldloca.s   V_11
      IL_0277:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Key()
      IL_027c:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0281:  ldloca.s   V_11
      IL_0283:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::get_Value()
      IL_0288:  ldfld      bool Game.SubsystemExplosions/SurroundingPressurePoint::IsIncendiary
      IL_028d:  brtrue.s   IL_0296

      IL_028f:  ldc.r4     0.30000001
      IL_0294:  br.s       IL_029b

      IL_0296:  ldc.r4     1.
      IL_029b:  callvirt   instance bool Game.SubsystemFireBlockBehavior::SetCellOnFire(int32,
                                                                                        int32,
                                                                                        int32,
                                                                                        float32)
      IL_02a0:  pop
      IL_02a1:  ldloca.s   V_10
      IL_02a3:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>::MoveNext()
      IL_02a8:  brtrue     IL_014e

      IL_02ad:  leave.s    IL_02bd

    }  // end .try
    finally
    {
      IL_02af:  ldloca.s   V_10
      IL_02b1:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,valuetype Game.SubsystemExplosions/SurroundingPressurePoint>
      IL_02b7:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02bc:  endfinally
    }  // end handler
    IL_02bd:  ldarg.0
    IL_02be:  ldfld      class Game.SubsystemBodies Game.SubsystemExplosions::m_subsystemBodies
    IL_02c3:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2> Game.SubsystemBodies::get_Bodies()
    IL_02c8:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::GetEnumerator()
    IL_02cd:  stloc.s    V_18
    .try
    {
      IL_02cf:  br         IL_03c9

      IL_02d4:  ldloca.s   V_18
      IL_02d6:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::get_Current()
      IL_02db:  stloc.s    V_19
      IL_02dd:  ldarg.0
      IL_02de:  ldloc.s    V_19
      IL_02e0:  ldloca.s   V_25
      IL_02e2:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_02e8:  ldloc.s    V_25
      IL_02ea:  ldloca.s   V_20
      IL_02ec:  ldloca.s   V_21
      IL_02ee:  call       instance void Game.SubsystemExplosions::CalculateImpulseAndDamage(class Game.ComponentBody,
                                                                                             valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                                             valuetype [Engine]Engine.Vector3&,
                                                                                             float32&)
      IL_02f3:  ldloc.s    V_20
      IL_02f5:  ldarg.0
      IL_02f6:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_02fb:  ldc.r4     0.5
      IL_0300:  ldc.r4     1.5
      IL_0305:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_030a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_030f:  stloc.s    V_20
      IL_0311:  ldloc.s    V_21
      IL_0313:  ldarg.0
      IL_0314:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_0319:  ldc.r4     0.5
      IL_031e:  ldc.r4     1.5
      IL_0323:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0328:  mul
      IL_0329:  stloc.s    V_21
      IL_032b:  ldloc.s    V_19
      IL_032d:  ldloc.s    V_20
      IL_032f:  callvirt   instance void Game.ComponentBody::ApplyImpulse(valuetype [Engine]Engine.Vector3)
      IL_0334:  ldloc.s    V_19
      IL_0336:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_033b:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHealth>()
      IL_0340:  stloc.s    V_22
      IL_0342:  ldloc.s    V_22
      IL_0344:  brfalse.s  IL_0356

      IL_0346:  ldloc.s    V_22
      IL_0348:  ldloc.s    V_21
      IL_034a:  ldnull
      IL_034b:  ldc.i4.0
      IL_034c:  ldstr      "Blasted by explosion"
      IL_0351:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                      class Game.ComponentCreature,
                                                                      bool,
                                                                      string)
      IL_0356:  ldloc.s    V_19
      IL_0358:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_035d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentDamage>()
      IL_0362:  stloc.s    V_23
      IL_0364:  ldloc.s    V_23
      IL_0366:  brfalse.s  IL_0371

      IL_0368:  ldloc.s    V_23
      IL_036a:  ldloc.s    V_21
      IL_036c:  callvirt   instance void Game.ComponentDamage::Damage(float32)
      IL_0371:  ldloc.s    V_19
      IL_0373:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
      IL_0378:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOnFire>()
      IL_037d:  stloc.s    V_24
      IL_037f:  ldloc.s    V_24
      IL_0381:  brfalse.s  IL_03c9

      IL_0383:  ldarg.0
      IL_0384:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_0389:  ldc.r4     0.0
      IL_038e:  ldc.r4     1.
      IL_0393:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0398:  ldloc.s    V_21
      IL_039a:  ldc.r4     0.1
      IL_039f:  sub
      IL_03a0:  ldc.r4     0.5
      IL_03a5:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                                 float32)
      IL_03aa:  bge.un.s   IL_03c9

      IL_03ac:  ldloc.s    V_24
      IL_03ae:  ldnull
      IL_03af:  ldarg.0
      IL_03b0:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_03b5:  ldc.r4     6.
      IL_03ba:  ldc.r4     8.
      IL_03bf:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_03c4:  callvirt   instance void Game.ComponentOnFire::SetOnFire(class Game.ComponentCreature,
                                                                         float32)
      IL_03c9:  ldloca.s   V_18
      IL_03cb:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>::MoveNext()
      IL_03d0:  brtrue     IL_02d4

      IL_03d5:  leave.s    IL_03e5

    }  // end .try
    finally
    {
      IL_03d7:  ldloca.s   V_18
      IL_03d9:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<class Game.ComponentBody,valuetype [Engine]Engine.Point2>
      IL_03df:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03e4:  endfinally
    }  // end handler
    IL_03e5:  ldarg.0
    IL_03e6:  ldfld      class Game.SubsystemPickables Game.SubsystemExplosions::m_subsystemPickables
    IL_03eb:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable> Game.SubsystemPickables::get_Pickables()
    IL_03f0:  stloc.s    V_27
    IL_03f2:  ldloca.s   V_27
    IL_03f4:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Pickable>::GetEnumerator()
    IL_03f9:  stloc.s    V_26
    .try
    {
      IL_03fb:  br         IL_05bb

      IL_0400:  ldloca.s   V_26
      IL_0402:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::get_Current()
      IL_0407:  stloc.s    V_28
      IL_0409:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
      IL_040e:  ldloc.s    V_28
      IL_0410:  ldfld      int32 Game.WorldItem::Value
      IL_0415:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_041a:  ldelem.ref
      IL_041b:  stloc.s    V_29
      IL_041d:  ldarg.0
      IL_041e:  ldloc.s    V_28
      IL_0420:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0425:  ldc.r4     0.0
      IL_042a:  ldc.r4     0.5
      IL_042f:  ldc.r4     0.0
      IL_0434:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0439:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_043e:  ldc.r4     20.
      IL_0443:  ldloca.s   V_25
      IL_0445:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_044b:  ldloc.s    V_25
      IL_044d:  ldloca.s   V_30
      IL_044f:  ldloca.s   V_31
      IL_0451:  call       instance void Game.SubsystemExplosions::CalculateImpulseAndDamage(valuetype [Engine]Engine.Vector3,
                                                                                             float32,
                                                                                             valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                                             valuetype [Engine]Engine.Vector3&,
                                                                                             float32&)
      IL_0456:  ldloc.s    V_31
      IL_0458:  ldloc.s    V_29
      IL_045a:  ldfld      float32 Game.Block::ExplosionResilience
      IL_045f:  div
      IL_0460:  ldc.r4     0.1
      IL_0465:  ble.un.s   IL_04a9

      IL_0467:  ldarg.0
      IL_0468:  ldloc.s    V_28
      IL_046a:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_046f:  ldfld      float32 [Engine]Engine.Vector3::X
      IL_0474:  conv.i4
      IL_0475:  ldloc.s    V_28
      IL_0477:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_047c:  ldfld      float32 [Engine]Engine.Vector3::Y
      IL_0481:  conv.i4
      IL_0482:  ldloc.s    V_28
      IL_0484:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0489:  ldfld      float32 [Engine]Engine.Vector3::Z
      IL_048e:  conv.i4
      IL_048f:  ldloc.s    V_28
      IL_0491:  ldfld      int32 Game.WorldItem::Value
      IL_0496:  call       instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                   int32,
                                                                                   int32,
                                                                                   int32)
      IL_049b:  pop
      IL_049c:  ldloc.s    V_28
      IL_049e:  ldc.i4.1
      IL_049f:  stfld      bool Game.WorldItem::ToRemove
      IL_04a4:  br         IL_05bb

      IL_04a9:  ldloc.s    V_30
      IL_04ab:  ldc.r4     0.0
      IL_04b0:  ldc.r4     0.1
      IL_04b5:  ldloca.s   V_30
      IL_04b7:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_04bc:  mul
      IL_04bd:  ldc.r4     0.0
      IL_04c2:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_04c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_04cc:  ldarg.0
      IL_04cd:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_04d2:  ldc.r4     0.75
      IL_04d7:  ldc.r4     1.
      IL_04dc:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_04e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_04e6:  stloc.s    V_32
      IL_04e8:  ldloca.s   V_32
      IL_04ea:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_04ef:  ldc.r4     10.
      IL_04f4:  ble.un     IL_05a7

      IL_04f9:  ldarg.0
      IL_04fa:  ldfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
      IL_04ff:  ldloc.s    V_28
      IL_0501:  ldfld      int32 Game.WorldItem::Value
      IL_0506:  ldloc.s    V_28
      IL_0508:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_050d:  ldloc.s    V_28
      IL_050f:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0514:  ldloc.s    V_32
      IL_0516:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_051b:  ldarg.0
      IL_051c:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_0521:  ldc.r4     0.0
      IL_0526:  ldc.r4     20.
      IL_052b:  ldc.i4.0
      IL_052c:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                                 float32,
                                                                                                 bool)
      IL_0531:  ldnull
      IL_0532:  callvirt   instance class Game.Projectile Game.SubsystemProjectiles::AddProjectile(int32,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   valuetype [Engine]Engine.Vector3,
                                                                                                   class Game.ComponentCreature)
      IL_0537:  stloc.s    V_33
      IL_0539:  ldarg.0
      IL_053a:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_053f:  ldc.r4     0.0
      IL_0544:  ldc.r4     1.
      IL_0549:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_054e:  ldc.r4     0.33000001
      IL_0553:  bge.un.s   IL_059d

      IL_0555:  ldarg.0
      IL_0556:  ldfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
      IL_055b:  ldloc.s    V_33
      IL_055d:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
      IL_0562:  ldc.i4.s   15
      IL_0564:  ldarg.0
      IL_0565:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_056a:  ldc.r4     0.75
      IL_056f:  ldc.r4     1.5
      IL_0574:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0579:  ldarg.0
      IL_057a:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_057f:  ldc.r4     1.
      IL_0584:  ldc.r4     6.
      IL_0589:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_058e:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0593:  newobj     instance void Game.SmokeTrailParticleSystem::.ctor(int32,
                                                                              float32,
                                                                              float32,
                                                                              valuetype [Engine]Engine.Color)
      IL_0598:  callvirt   instance void Game.SubsystemProjectiles::AddTrail(class Game.Projectile,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             class Game.ITrailParticleSystem)
      IL_059d:  ldloc.s    V_28
      IL_059f:  ldc.i4.1
      IL_05a0:  stfld      bool Game.WorldItem::ToRemove
      IL_05a5:  br.s       IL_05bb

      IL_05a7:  ldloc.s    V_28
      IL_05a9:  dup
      IL_05aa:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_05af:  ldloc.s    V_32
      IL_05b1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_05b6:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_05bb:  ldloca.s   V_26
      IL_05bd:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>::MoveNext()
      IL_05c2:  brtrue     IL_0400

      IL_05c7:  leave.s    IL_05d7

    }  // end .try
    finally
    {
      IL_05c9:  ldloca.s   V_26
      IL_05cb:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Pickable>
      IL_05d1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_05d6:  endfinally
    }  // end handler
    IL_05d7:  ldarg.0
    IL_05d8:  ldfld      class Game.SubsystemProjectiles Game.SubsystemExplosions::m_subsystemProjectiles
    IL_05dd:  callvirt   instance valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile> Game.SubsystemProjectiles::get_Projectiles()
    IL_05e2:  stloc.s    V_35
    IL_05e4:  ldloca.s   V_35
    IL_05e6:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<class Game.Projectile>::GetEnumerator()
    IL_05eb:  stloc.s    V_34
    .try
    {
      IL_05ed:  br         IL_0695

      IL_05f2:  ldloca.s   V_34
      IL_05f4:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::get_Current()
      IL_05f9:  stloc.s    V_36
      IL_05fb:  ldarg.0
      IL_05fc:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemExplosions::m_generatedProjectiles
      IL_0601:  ldloc.s    V_36
      IL_0603:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::ContainsKey(!0)
      IL_0608:  brtrue     IL_0695

      IL_060d:  ldarg.0
      IL_060e:  ldloc.s    V_36
      IL_0610:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Position
      IL_0615:  ldc.r4     0.0
      IL_061a:  ldc.r4     0.5
      IL_061f:  ldc.r4     0.0
      IL_0624:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_0629:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_062e:  ldc.r4     20.
      IL_0633:  ldloca.s   V_25
      IL_0635:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_063b:  ldloc.s    V_25
      IL_063d:  ldloca.s   V_37
      IL_063f:  ldloca.s   V_38
      IL_0641:  call       instance void Game.SubsystemExplosions::CalculateImpulseAndDamage(valuetype [Engine]Engine.Vector3,
                                                                                             float32,
                                                                                             valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                                             valuetype [Engine]Engine.Vector3&,
                                                                                             float32&)
      IL_0646:  ldloc.s    V_36
      IL_0648:  dup
      IL_0649:  ldfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_064e:  ldloc.s    V_37
      IL_0650:  ldc.r4     0.0
      IL_0655:  ldc.r4     0.1
      IL_065a:  ldloca.s   V_37
      IL_065c:  call       instance float32 [Engine]Engine.Vector3::Length()
      IL_0661:  mul
      IL_0662:  ldc.r4     0.0
      IL_0667:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                       float32,
                                                                       float32)
      IL_066c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0671:  ldarg.0
      IL_0672:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
      IL_0677:  ldc.r4     0.75
      IL_067c:  ldc.r4     1.
      IL_0681:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_0686:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_068b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0690:  stfld      valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
      IL_0695:  ldloca.s   V_34
      IL_0697:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>::MoveNext()
      IL_069c:  brtrue     IL_05f2

      IL_06a1:  leave.s    IL_06b1

    }  // end .try
    finally
    {
      IL_06a3:  ldloca.s   V_34
      IL_06a5:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<class Game.Projectile>
      IL_06ab:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_06b0:  endfinally
    }  // end handler
    IL_06b1:  ldloca.s   V_3
    IL_06b3:  ldloc.0
    IL_06b4:  ldfld      int32 [Engine]Engine.Point3::X
    IL_06b9:  conv.r4
    IL_06ba:  ldloc.0
    IL_06bb:  ldfld      int32 [Engine]Engine.Point3::Y
    IL_06c0:  conv.r4
    IL_06c1:  ldloc.0
    IL_06c2:  ldfld      int32 [Engine]Engine.Point3::Z
    IL_06c7:  conv.r4
    IL_06c8:  call       instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_06cd:  ldarg.0
    IL_06ce:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_06d3:  ldloc.1
    IL_06d4:  callvirt   instance float32 Game.SubsystemAudio::CalculateDelay(float32)
    IL_06d9:  stloc.s    V_4
    IL_06db:  ldloc.2
    IL_06dc:  ldc.r4     1000000.
    IL_06e1:  ble.un.s   IL_072f

    IL_06e3:  ldarg.1
    IL_06e4:  brfalse.s  IL_0718

    IL_06e6:  ldarg.0
    IL_06e7:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_06ec:  ldstr      "Audio/ExplosionEnormous"
    IL_06f1:  ldc.r4     1.
    IL_06f6:  ldarg.0
    IL_06f7:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_06fc:  ldc.r4     -0.1
    IL_0701:  ldc.r4     0.1
    IL_0706:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_070b:  ldloc.3
    IL_070c:  ldc.r4     40.
    IL_0711:  ldloc.s    V_4
    IL_0713:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0718:  ldarg.0
    IL_0719:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_071e:  ldloc.3
    IL_071f:  ldc.r4     1.
    IL_0724:  ldc.r4     100.
    IL_0729:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_072e:  ret

    IL_072f:  ldloc.2
    IL_0730:  ldc.r4     100000.
    IL_0735:  ble.un.s   IL_0783

    IL_0737:  ldarg.1
    IL_0738:  brfalse.s  IL_076c

    IL_073a:  ldarg.0
    IL_073b:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_0740:  ldstr      "Audio/ExplosionHuge"
    IL_0745:  ldc.r4     1.
    IL_074a:  ldarg.0
    IL_074b:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_0750:  ldc.r4     -0.2
    IL_0755:  ldc.r4     0.2
    IL_075a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_075f:  ldloc.3
    IL_0760:  ldc.r4     30.
    IL_0765:  ldloc.s    V_4
    IL_0767:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_076c:  ldarg.0
    IL_076d:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_0772:  ldloc.3
    IL_0773:  ldc.r4     1.
    IL_0778:  ldc.r4     70.
    IL_077d:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0782:  ret

    IL_0783:  ldloc.2
    IL_0784:  ldc.r4     20000.
    IL_0789:  ble.un.s   IL_07d7

    IL_078b:  ldarg.1
    IL_078c:  brfalse.s  IL_07c0

    IL_078e:  ldarg.0
    IL_078f:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_0794:  ldstr      "Audio/ExplosionLarge"
    IL_0799:  ldc.r4     1.
    IL_079e:  ldarg.0
    IL_079f:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_07a4:  ldc.r4     -0.2
    IL_07a9:  ldc.r4     0.2
    IL_07ae:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_07b3:  ldloc.3
    IL_07b4:  ldc.r4     26.
    IL_07b9:  ldloc.s    V_4
    IL_07bb:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_07c0:  ldarg.0
    IL_07c1:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_07c6:  ldloc.3
    IL_07c7:  ldc.r4     1.
    IL_07cc:  ldc.r4     50.
    IL_07d1:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_07d6:  ret

    IL_07d7:  ldloc.2
    IL_07d8:  ldc.r4     4000.
    IL_07dd:  ble.un.s   IL_082b

    IL_07df:  ldarg.1
    IL_07e0:  brfalse.s  IL_0814

    IL_07e2:  ldarg.0
    IL_07e3:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_07e8:  ldstr      "Audio/ExplosionMedium"
    IL_07ed:  ldc.r4     1.
    IL_07f2:  ldarg.0
    IL_07f3:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_07f8:  ldc.r4     -0.2
    IL_07fd:  ldc.r4     0.2
    IL_0802:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0807:  ldloc.3
    IL_0808:  ldc.r4     24.
    IL_080d:  ldloc.s    V_4
    IL_080f:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0814:  ldarg.0
    IL_0815:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_081a:  ldloc.3
    IL_081b:  ldc.r4     1.
    IL_0820:  ldc.r4     40.
    IL_0825:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_082a:  ret

    IL_082b:  ldloc.2
    IL_082c:  ldc.r4     100.
    IL_0831:  ble.un.s   IL_087f

    IL_0833:  ldarg.1
    IL_0834:  brfalse.s  IL_0868

    IL_0836:  ldarg.0
    IL_0837:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_083c:  ldstr      "Audio/ExplosionSmall"
    IL_0841:  ldc.r4     1.
    IL_0846:  ldarg.0
    IL_0847:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_084c:  ldc.r4     -0.2
    IL_0851:  ldc.r4     0.2
    IL_0856:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_085b:  ldloc.3
    IL_085c:  ldc.r4     22.
    IL_0861:  ldloc.s    V_4
    IL_0863:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_0868:  ldarg.0
    IL_0869:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_086e:  ldloc.3
    IL_086f:  ldc.r4     1.
    IL_0874:  ldc.r4     35.
    IL_0879:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_087e:  ret

    IL_087f:  ldloc.2
    IL_0880:  ldc.r4     0.0
    IL_0885:  ble.un.s   IL_08d2

    IL_0887:  ldarg.1
    IL_0888:  brfalse.s  IL_08bc

    IL_088a:  ldarg.0
    IL_088b:  ldfld      class Game.SubsystemAudio Game.SubsystemExplosions::m_subsystemAudio
    IL_0890:  ldstr      "Audio/ExplosionTiny"
    IL_0895:  ldc.r4     1.
    IL_089a:  ldarg.0
    IL_089b:  ldfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_08a0:  ldc.r4     -0.2
    IL_08a5:  ldc.r4     0.2
    IL_08aa:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_08af:  ldloc.3
    IL_08b0:  ldc.r4     20.
    IL_08b5:  ldloc.s    V_4
    IL_08b7:  callvirt   instance void Game.SubsystemAudio::PlaySound(string,
                                                                      float32,
                                                                      float32,
                                                                      valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_08bc:  ldarg.0
    IL_08bd:  ldfld      class Game.SubsystemNoise Game.SubsystemExplosions::m_subsystemNoise
    IL_08c2:  ldloc.3
    IL_08c3:  ldc.r4     1.
    IL_08c8:  ldc.r4     30.
    IL_08cd:  callvirt   instance void Game.SubsystemNoise::MakeNoise(valuetype [Engine]Engine.Vector3,
                                                                      float32,
                                                                      float32)
    IL_08d2:  ret
  } // end of method SubsystemExplosions::PostprocessExplosions

  .method private hidebysig instance void 
          CalculateImpulseAndDamage(class Game.ComponentBody componentBody,
                                    valuetype [System.Runtime]System.Nullable`1<float32> obstaclePressure,
                                    [out] valuetype [Engine]Engine.Vector3& impulse,
                                    [out] float32& damage) cil managed
  {
    // 代码大小       54 (0x36)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.r4     0.5
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_000c:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Min
    IL_0011:  ldarg.1
    IL_0012:  callvirt   instance valuetype [Engine]Engine.BoundingBox Game.ComponentBody::get_BoundingBox()
    IL_0017:  ldfld      valuetype [Engine]Engine.Vector3 [Engine]Engine.BoundingBox::Max
    IL_001c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0021:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0026:  ldarg.1
    IL_0027:  callvirt   instance float32 Game.ComponentBody::get_Mass()
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    damage
    IL_0030:  call       instance void Game.SubsystemExplosions::CalculateImpulseAndDamage(valuetype [Engine]Engine.Vector3,
                                                                                           float32,
                                                                                           valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                                           valuetype [Engine]Engine.Vector3&,
                                                                                           float32&)
    IL_0035:  ret
  } // end of method SubsystemExplosions::CalculateImpulseAndDamage

  .method private hidebysig instance void 
          CalculateImpulseAndDamage(valuetype [Engine]Engine.Vector3 position,
                                    float32 mass,
                                    valuetype [System.Runtime]System.Nullable`1<float32> obstaclePressure,
                                    [out] valuetype [Engine]Engine.Vector3& impulse,
                                    [out] float32& damage) cil managed
  {
    // 代码大小       407 (0x197)
    .maxstack  6
    .locals init (float32 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             float32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             int32 V_8,
             float32 V_9)
    IL_0000:  ldarga.s   position
    IL_0002:  ldarg.1
    IL_0003:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0008:  conv.i4
    IL_0009:  conv.r4
    IL_000a:  stfld      float32 [Engine]Engine.Vector3::X
    IL_000f:  ldarga.s   position
    IL_0011:  ldarg.1
    IL_0012:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0017:  conv.i4
    IL_0018:  conv.r4
    IL_0019:  stfld      float32 [Engine]Engine.Vector3::Y
    IL_001e:  ldarga.s   position
    IL_0020:  ldarg.1
    IL_0021:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0026:  conv.i4
    IL_0027:  conv.r4
    IL_0028:  stfld      float32 [Engine]Engine.Vector3::Z
    IL_002d:  ldarga.s   obstaclePressure
    IL_002f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float32>::get_HasValue()
    IL_0034:  brtrue.s   IL_005d

    IL_0036:  ldarga.s   obstaclePressure
    IL_0038:  ldarg.0
    IL_0039:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_003e:  ldarg.1
    IL_003f:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0044:  conv.i4
    IL_0045:  ldarg.1
    IL_0046:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_004b:  conv.i4
    IL_004c:  ldarg.1
    IL_004d:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_0052:  conv.i4
    IL_0053:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_0058:  call       instance void valuetype [System.Runtime]System.Nullable`1<float32>::.ctor(!0)
    IL_005d:  ldc.r4     0.0
    IL_0062:  stloc.0
    IL_0063:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0068:  stloc.1
    IL_0069:  ldc.i4.m1
    IL_006a:  stloc.3
    IL_006b:  br         IL_0130

    IL_0070:  ldc.i4.m1
    IL_0071:  stloc.s    V_4
    IL_0073:  br         IL_0124

    IL_0078:  ldc.i4.m1
    IL_0079:  stloc.s    V_5
    IL_007b:  br         IL_0116

    IL_0080:  ldarg.1
    IL_0081:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0086:  conv.i4
    IL_0087:  ldloc.3
    IL_0088:  add
    IL_0089:  stloc.s    V_6
    IL_008b:  ldarg.1
    IL_008c:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_0091:  conv.i4
    IL_0092:  ldloc.s    V_4
    IL_0094:  add
    IL_0095:  stloc.s    V_7
    IL_0097:  ldarg.1
    IL_0098:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009d:  conv.i4
    IL_009e:  ldloc.s    V_5
    IL_00a0:  add
    IL_00a1:  stloc.s    V_8
    IL_00a3:  ldarg.0
    IL_00a4:  ldfld      class Game.SubsystemTerrain Game.SubsystemExplosions::m_subsystemTerrain
    IL_00a9:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_00ae:  ldloc.s    V_6
    IL_00b0:  ldloc.s    V_7
    IL_00b2:  ldloc.s    V_8
    IL_00b4:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_00b9:  brtrue.s   IL_00d0

    IL_00bb:  ldarg.0
    IL_00bc:  ldfld      class Game.SubsystemExplosions/SparseSpatialArray`1<float32> Game.SubsystemExplosions::m_pressureByPoint
    IL_00c1:  ldloc.s    V_6
    IL_00c3:  ldloc.s    V_7
    IL_00c5:  ldloc.s    V_8
    IL_00c7:  callvirt   instance !0 class Game.SubsystemExplosions/SparseSpatialArray`1<float32>::Get(int32,
                                                                                                       int32,
                                                                                                       int32)
    IL_00cc:  stloc.s    V_9
    IL_00ce:  br.s       IL_00d9

    IL_00d0:  ldarga.s   obstaclePressure
    IL_00d2:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float32>::get_Value()
    IL_00d7:  stloc.s    V_9
    IL_00d9:  ldloc.3
    IL_00da:  brtrue.s   IL_00e4

    IL_00dc:  ldloc.s    V_4
    IL_00de:  brtrue.s   IL_00e4

    IL_00e0:  ldloc.s    V_5
    IL_00e2:  brfalse.s  IL_010b

    IL_00e4:  ldloc.1
    IL_00e5:  ldloc.s    V_9
    IL_00e7:  ldarg.1
    IL_00e8:  ldloc.s    V_6
    IL_00ea:  conv.r4
    IL_00eb:  ldloc.s    V_7
    IL_00ed:  conv.r4
    IL_00ee:  ldloc.s    V_8
    IL_00f0:  conv.r4
    IL_00f1:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_00f6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00fb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0105:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010a:  stloc.1
    IL_010b:  ldloc.0
    IL_010c:  ldloc.s    V_9
    IL_010e:  add
    IL_010f:  stloc.0
    IL_0110:  ldloc.s    V_5
    IL_0112:  ldc.i4.1
    IL_0113:  add
    IL_0114:  stloc.s    V_5
    IL_0116:  ldloc.s    V_5
    IL_0118:  ldc.i4.1
    IL_0119:  ble        IL_0080

    IL_011e:  ldloc.s    V_4
    IL_0120:  ldc.i4.1
    IL_0121:  add
    IL_0122:  stloc.s    V_4
    IL_0124:  ldloc.s    V_4
    IL_0126:  ldc.i4.1
    IL_0127:  ble        IL_0078

    IL_012c:  ldloc.3
    IL_012d:  ldc.i4.1
    IL_012e:  add
    IL_012f:  stloc.3
    IL_0130:  ldloc.3
    IL_0131:  ldc.i4.1
    IL_0132:  ble        IL_0070

    IL_0137:  ldarg.2
    IL_0138:  ldc.r4     0.5
    IL_013d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0142:  ldc.r4     1.
    IL_0147:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_014c:  stloc.2
    IL_014d:  ldarg.s    impulse
    IL_014f:  ldc.r4     9.2592592
    IL_0154:  ldloc.1
    IL_0155:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_015a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015f:  ldloca.s   V_1
    IL_0161:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_0166:  ldc.r4     0.5
    IL_016b:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0170:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_0175:  ldloc.2
    IL_0176:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_017b:  stobj      [Engine]Engine.Vector3
    IL_0180:  ldarg.s    damage
    IL_0182:  ldc.r4     2.5925925
    IL_0187:  ldloc.0
    IL_0188:  ldc.r4     0.5
    IL_018d:  call       float32 [Engine]Engine.MathUtils::Pow(float32,
                                                               float32)
    IL_0192:  mul
    IL_0193:  ldloc.2
    IL_0194:  div
    IL_0195:  stind.r4
    IL_0196:  ret
  } // end of method SubsystemExplosions::CalculateImpulseAndDamage

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.List`1<valuetype Game.SubsystemExplosions/ExplosionData> Game.SubsystemExplosions::m_queuedExplosions
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool>::.ctor()
    IL_0011:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<class Game.Projectile,bool> Game.SubsystemExplosions::m_generatedProjectiles
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void Game.Random::.ctor()
    IL_001c:  stfld      class Game.Random Game.SubsystemExplosions::m_random
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0027:  ret
  } // end of method SubsystemExplosions::.ctor

  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemExplosions::get_UpdateOrder()
  } // end of property SubsystemExplosions::UpdateOrder
} // end of class Game.SubsystemExplosions