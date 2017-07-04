.class public auto ansi beforefieldinit Game.SubsystemBulletBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemExplosions m_subsystemExplosions
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  ret
  } // end of method SubsystemBulletBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance bool 
          OnHitAsProjectile(valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace> cellFace,
                            class Game.ComponentBody componentBody,
                            class Game.WorldItem worldItem) cil managed
  {
    // 代码大小       351 (0x15f)
    .maxstack  7
    .locals init (valuetype Game.BulletBlock/BulletType V_0,
             bool V_1,
             int32 V_2,
             int32 V_3,
             float32 V_4,
             float32 V_5)
    IL_0000:  ldarg.3
    IL_0001:  ldfld      int32 Game.WorldItem::Value
    IL_0006:  call       int32 Game.Terrain::ExtractData(int32)
    IL_000b:  call       valuetype Game.BulletBlock/BulletType Game.BulletBlock::GetBulletType(int32)
    IL_0010:  stloc.0
    IL_0011:  ldc.i4.1
    IL_0012:  stloc.1
    IL_0013:  ldarga.s   cellFace
    IL_0015:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_HasValue()
    IL_001a:  brfalse    IL_015d

    IL_001f:  ldarg.0
    IL_0020:  ldfld      class Game.SubsystemTerrain Game.SubsystemBulletBlockBehavior::m_subsystemTerrain
    IL_0025:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_002a:  ldarga.s   cellFace
    IL_002c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0031:  ldfld      int32 Game.CellFace::X
    IL_0036:  ldarga.s   cellFace
    IL_0038:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_003d:  ldfld      int32 Game.CellFace::Y
    IL_0042:  ldarga.s   cellFace
    IL_0044:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0049:  ldfld      int32 Game.CellFace::Z
    IL_004e:  callvirt   instance int32 Game.Terrain::GetCellValue(int32,
                                                                   int32,
                                                                   int32)
    IL_0053:  stloc.2
    IL_0054:  ldloc.2
    IL_0055:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_005a:  stloc.3
    IL_005b:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0060:  ldloc.3
    IL_0061:  ldelem.ref
    IL_0062:  ldarg.3
    IL_0063:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_0068:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_006d:  ldc.r4     30.
    IL_0072:  ble.un.s   IL_00a5

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class Game.SubsystemExplosions Game.SubsystemBulletBlockBehavior::m_subsystemExplosions
    IL_007a:  ldarga.s   cellFace
    IL_007c:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0081:  ldfld      int32 Game.CellFace::X
    IL_0086:  ldarga.s   cellFace
    IL_0088:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_008d:  ldfld      int32 Game.CellFace::Y
    IL_0092:  ldarga.s   cellFace
    IL_0094:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0099:  ldfld      int32 Game.CellFace::Z
    IL_009e:  ldloc.2
    IL_009f:  callvirt   instance bool Game.SubsystemExplosions::TryExplodeBlock(int32,
                                                                                 int32,
                                                                                 int32,
                                                                                 int32)
    IL_00a4:  pop
    IL_00a5:  ldfld      float32 Game.Block::Density
    IL_00aa:  ldc.r4     1.5
    IL_00af:  blt.un     IL_015d

    IL_00b4:  ldarg.3
    IL_00b5:  ldflda     valuetype [Engine]Engine.Vector3 Game.WorldItem::Velocity
    IL_00ba:  call       instance float32 [Engine]Engine.Vector3::Length()
    IL_00bf:  ldc.r4     30.
    IL_00c4:  ble.un     IL_015d

    IL_00c9:  ldc.r4     1.
    IL_00ce:  stloc.s    V_4
    IL_00d0:  ldc.r4     8.
    IL_00d5:  stloc.s    V_5
    IL_00d7:  ldloc.0
    IL_00d8:  ldc.i4.2
    IL_00d9:  bne.un.s   IL_00e9

    IL_00db:  ldc.r4     0.25
    IL_00e0:  stloc.s    V_4
    IL_00e2:  ldc.r4     4.
    IL_00e7:  stloc.s    V_5
    IL_00e9:  ldarg.0
    IL_00ea:  ldfld      class Game.Random Game.SubsystemBulletBlockBehavior::m_random
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  ldc.r4     1.
    IL_00f9:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_00fe:  ldloc.s    V_4
    IL_0100:  bge.un.s   IL_015d

    IL_0102:  ldarg.0
    IL_0103:  ldfld      class Game.SubsystemAudio Game.SubsystemBulletBlockBehavior::m_subsystemAudio
    IL_0108:  ldstr      "Audio/Ricochets"
    IL_010d:  ldc.r4     1.
    IL_0112:  ldarg.0
    IL_0113:  ldfld      class Game.Random Game.SubsystemBulletBlockBehavior::m_random
    IL_0118:  ldc.r4     -0.2
    IL_011d:  ldc.r4     0.2
    IL_0122:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0127:  ldarga.s   cellFace
    IL_0129:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_012e:  ldfld      int32 Game.CellFace::X
    IL_0133:  conv.r4
    IL_0134:  ldarga.s   cellFace
    IL_0136:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_013b:  ldfld      int32 Game.CellFace::Y
    IL_0140:  conv.r4
    IL_0141:  ldarga.s   cellFace
    IL_0143:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype Game.CellFace>::get_Value()
    IL_0148:  ldfld      int32 Game.CellFace::Z
    IL_014d:  conv.r4
    IL_014e:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0153:  ldloc.s    V_5
    IL_0155:  ldc.i4.1
    IL_0156:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_015b:  ldc.i4.0
    IL_015c:  stloc.1
    IL_015d:  ldloc.1
    IL_015e:  ret
  } // end of method SubsystemBulletBlockBehavior::OnHitAsProjectile

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0014:  stfld      class Game.SubsystemTerrain Game.SubsystemBulletBlockBehavior::m_subsystemTerrain
    IL_0019:  ldarg.0
    IL_001a:  ldarg.0
    IL_001b:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0020:  ldc.i4.1
    IL_0021:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0026:  stfld      class Game.SubsystemAudio Game.SubsystemBulletBlockBehavior::m_subsystemAudio
    IL_002b:  ldarg.0
    IL_002c:  ldarg.0
    IL_002d:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0032:  ldc.i4.1
    IL_0033:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemExplosions>(bool)
    IL_0038:  stfld      class Game.SubsystemExplosions Game.SubsystemBulletBlockBehavior::m_subsystemExplosions
    IL_003d:  ret
  } // end of method SubsystemBulletBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemBulletBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemBulletBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemBulletBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemBulletBlockBehavior::HandledBlocks
} // end of class Game.SubsystemBulletBlockBehavior