.class public auto ansi beforefieldinit Game.SubsystemCactusBlockBehavior
       extends Game.SubsystemPollableBlockBehavior
       implements Game.IUpdateable
{
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> m_toUpdate
  .field private class Game.Random m_random
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   127
    IL_000a:  stelem.i4
    IL_000b:  ret
  } // end of method SubsystemCactusBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  8
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_000b:  ldarg.1
    IL_000c:  ldarg.2
    IL_000d:  ldc.i4.1
    IL_000e:  sub
    IL_000f:  ldarg.3
    IL_0010:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.7
    IL_0018:  beq.s      IL_0031

    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.s   127
    IL_001d:  beq.s      IL_0031

    IL_001f:  ldarg.0
    IL_0020:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0025:  ldc.i4.0
    IL_0026:  ldarg.1
    IL_0027:  ldarg.2
    IL_0028:  ldarg.3
    IL_0029:  ldc.i4.0
    IL_002a:  ldc.i4.0
    IL_002b:  ldc.i4.0
    IL_002c:  callvirt   instance void Game.SubsystemTerrain::DestroyCell(int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          int32,
                                                                          bool,
                                                                          bool)
    IL_0031:  ret
  } // end of method SubsystemCactusBlockBehavior::OnNeighborBlockChanged

  .method public hidebysig virtual instance void 
          OnPoll(int32 'value',
                 int32 x,
                 int32 y,
                 int32 z,
                 int32 pollPass) cil managed
  {
    // 代码大小       174 (0xae)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.SubsystemCactusBlockBehavior::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.EnvironmentBehaviorMode Game.WorldInfo::EnvironmentBehaviorMode
    IL_0010:  brfalse.s  IL_0013

    IL_0012:  ret

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0019:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_001e:  ldarg.2
    IL_001f:  ldarg.3
    IL_0020:  ldc.i4.1
    IL_0021:  add
    IL_0022:  ldarg.s    z
    IL_0024:  callvirt   instance int32 Game.TerrainData::GetCellValue(int32,
                                                                       int32,
                                                                       int32)
    IL_0029:  stloc.0
    IL_002a:  ldloc.0
    IL_002b:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_0030:  brtrue.s   IL_00ad

    IL_0032:  ldloc.0
    IL_0033:  call       int32 Game.TerrainData::ExtractLight(int32)
    IL_0038:  ldc.i4.s   12
    IL_003a:  blt.s      IL_00ad

    IL_003c:  ldarg.0
    IL_003d:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0042:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_0047:  ldarg.2
    IL_0048:  ldarg.3
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  ldarg.s    z
    IL_004d:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0052:  ldarg.0
    IL_0053:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0058:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
    IL_005d:  ldarg.2
    IL_005e:  ldarg.3
    IL_005f:  ldc.i4.2
    IL_0060:  sub
    IL_0061:  ldarg.s    z
    IL_0063:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                          int32,
                                                                          int32)
    IL_0068:  stloc.1
    IL_0069:  ldc.i4.s   127
    IL_006b:  bne.un.s   IL_0072

    IL_006d:  ldloc.1
    IL_006e:  ldc.i4.s   127
    IL_0070:  beq.s      IL_00ad

    IL_0072:  ldarg.0
    IL_0073:  ldfld      class Game.Random Game.SubsystemCactusBlockBehavior::m_random
    IL_0078:  ldc.r4     0.0
    IL_007d:  ldc.r4     1.
    IL_0082:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0087:  ldc.r4     0.25
    IL_008c:  bge.un.s   IL_00ad

    IL_008e:  ldarg.0
    IL_008f:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemCactusBlockBehavior::m_toUpdate
    IL_0094:  ldarg.2
    IL_0095:  ldarg.3
    IL_0096:  ldc.i4.1
    IL_0097:  add
    IL_0098:  ldarg.s    z
    IL_009a:  newobj     instance void [Engine]Engine.Point3::.ctor(int32,
                                                                    int32,
                                                                    int32)
    IL_009f:  ldc.i4.s   127
    IL_00a1:  ldc.i4.0
    IL_00a2:  ldc.i4.0
    IL_00a3:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_00a8:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::set_Item(!0,
                                                                                                                                                          !1)
    IL_00ad:  ret
  } // end of method SubsystemCactusBlockBehavior::OnPoll

  .method public hidebysig virtual instance void 
          OnCollide(valuetype Game.CellFace cellFace,
                    float32 velocity,
                    class Game.ComponentBody componentBody) cil managed
  {
    // 代码大小       46 (0x2e)
    .maxstack  5
    .locals init (class Game.ComponentCreature V_0)
    IL_0000:  ldarg.3
    IL_0001:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0006:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentCreature>()
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_002d

    IL_000f:  ldloc.0
    IL_0010:  callvirt   instance class Game.ComponentHealth Game.ComponentCreature::get_ComponentHealth()
    IL_0015:  ldc.r4     9.9999998e-003
    IL_001a:  ldarg.2
    IL_001b:  call       float32 [Engine]Engine.MathUtils::Abs(float32)
    IL_0020:  mul
    IL_0021:  ldnull
    IL_0022:  ldc.i4.0
    IL_0023:  ldstr      "Spiked by cactus"
    IL_0028:  callvirt   instance void Game.ComponentHealth::Injure(float32,
                                                                    class Game.ComponentCreature,
                                                                    bool,
                                                                    string)
    IL_002d:  ret
  } // end of method SubsystemCactusBlockBehavior::OnCollide

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       44 (0x2c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_000d:  stfld      class Game.SubsystemTime Game.SubsystemCactusBlockBehavior::m_subsystemTime
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_001f:  stfld      class Game.SubsystemGameInfo Game.SubsystemCactusBlockBehavior::m_subsystemGameInfo
    IL_0024:  ldarg.0
    IL_0025:  ldarg.1
    IL_0026:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_002b:  ret
  } // end of method SubsystemCactusBlockBehavior::Load

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method SubsystemCactusBlockBehavior::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       202 (0xca)
    .maxstack  6
    .locals init (valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32> V_0,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32> V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemTime Game.SubsystemCactusBlockBehavior::m_subsystemTime
    IL_0006:  ldc.r8     60.
    IL_000f:  ldc.r8     0.0
    IL_0018:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_001d:  brfalse    IL_00c9

    IL_0022:  ldarg.0
    IL_0023:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemCactusBlockBehavior::m_toUpdate
    IL_0028:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::GetEnumerator()
    IL_002d:  stloc.0
    .try
    {
      IL_002e:  br.s       IL_00a5

      IL_0030:  ldloca.s   V_0
      IL_0032:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::get_Current()
      IL_0037:  stloc.1
      IL_0038:  ldarg.0
      IL_0039:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_003e:  callvirt   instance class Game.TerrainData Game.SubsystemTerrain::get_TerrainData()
      IL_0043:  ldloca.s   V_1
      IL_0045:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_004a:  ldfld      int32 [Engine]Engine.Point3::X
      IL_004f:  ldloca.s   V_1
      IL_0051:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0056:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_005b:  ldloca.s   V_1
      IL_005d:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0062:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0067:  callvirt   instance int32 Game.TerrainData::GetCellContents(int32,
                                                                            int32,
                                                                            int32)
      IL_006c:  brtrue.s   IL_00a5

      IL_006e:  ldarg.0
      IL_006f:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
      IL_0074:  ldloca.s   V_1
      IL_0076:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_007b:  ldfld      int32 [Engine]Engine.Point3::X
      IL_0080:  ldloca.s   V_1
      IL_0082:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0087:  ldfld      int32 [Engine]Engine.Point3::Y
      IL_008c:  ldloca.s   V_1
      IL_008e:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Key()
      IL_0093:  ldfld      int32 [Engine]Engine.Point3::Z
      IL_0098:  ldloca.s   V_1
      IL_009a:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype [Engine]Engine.Point3,int32>::get_Value()
      IL_009f:  ldc.i4.1
      IL_00a0:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                           int32,
                                                                           int32,
                                                                           int32,
                                                                           bool)
      IL_00a5:  ldloca.s   V_0
      IL_00a7:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>::MoveNext()
      IL_00ac:  brtrue.s   IL_0030

      IL_00ae:  leave.s    IL_00be

    }  // end .try
    finally
    {
      IL_00b0:  ldloca.s   V_0
      IL_00b2:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype [Engine]Engine.Point3,int32>
      IL_00b8:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00bd:  endfinally
    }  // end handler
    IL_00be:  ldarg.0
    IL_00bf:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemCactusBlockBehavior::m_toUpdate
    IL_00c4:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::Clear()
    IL_00c9:  ret
  } // end of method SubsystemCactusBlockBehavior::Update

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32>::.ctor()
    IL_0006:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype [Engine]Engine.Point3,int32> Game.SubsystemCactusBlockBehavior::m_toUpdate
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.SubsystemCactusBlockBehavior::m_random
    IL_0016:  ldarg.0
    IL_0017:  call       instance void Game.SubsystemPollableBlockBehavior::.ctor()
    IL_001c:  ret
  } // end of method SubsystemCactusBlockBehavior::.ctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemCactusBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemCactusBlockBehavior::HandledBlocks
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.SubsystemCactusBlockBehavior::get_UpdateOrder()
  } // end of property SubsystemCactusBlockBehavior::UpdateOrder
} // end of class Game.SubsystemCactusBlockBehavior