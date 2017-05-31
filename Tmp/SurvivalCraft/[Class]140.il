.class public auto ansi beforefieldinit Game.GravelBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x00000006)
  .field private class Game.Random m_random
  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain terrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  3
    .locals init (valuetype Game.BlockDropValue V_0,
             int32 V_1,
             int32 V_2)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_000c:  blt        IL_0093

    IL_0011:  ldarg.0
    IL_0012:  ldfld      class Game.Random Game.GravelBlock::m_random
    IL_0017:  ldc.r4     0.0
    IL_001c:  ldc.r4     1.
    IL_0021:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0026:  ldc.r4     0.33000001
    IL_002b:  bge.un.s   IL_0053

    IL_002d:  ldarg.s    dropValues
    IL_002f:  ldloca.s   V_0
    IL_0031:  initobj    Game.BlockDropValue
    IL_0037:  ldloca.s   V_0
    IL_0039:  ldc.i4.6
    IL_003a:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_003f:  stfld      int32 Game.BlockDropValue::Value
    IL_0044:  ldloca.s   V_0
    IL_0046:  ldc.i4.1
    IL_0047:  stfld      int32 Game.BlockDropValue::Count
    IL_004c:  ldloc.0
    IL_004d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0052:  ret

    IL_0053:  ldarg.0
    IL_0054:  ldfld      class Game.Random Game.GravelBlock::m_random
    IL_0059:  ldc.i4.1
    IL_005a:  ldc.i4.3
    IL_005b:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0060:  stloc.1
    IL_0061:  ldc.i4.0
    IL_0062:  stloc.2
    IL_0063:  br.s       IL_008f

    IL_0065:  ldarg.s    dropValues
    IL_0067:  ldloca.s   V_0
    IL_0069:  initobj    Game.BlockDropValue
    IL_006f:  ldloca.s   V_0
    IL_0071:  ldc.i4.s   79
    IL_0073:  call       int32 Game.TerrainData::MakeBlockValue(int32)
    IL_0078:  stfld      int32 Game.BlockDropValue::Value
    IL_007d:  ldloca.s   V_0
    IL_007f:  ldc.i4.2
    IL_0080:  stfld      int32 Game.BlockDropValue::Count
    IL_0085:  ldloc.0
    IL_0086:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_008b:  ldloc.2
    IL_008c:  ldc.i4.1
    IL_008d:  add
    IL_008e:  stloc.2
    IL_008f:  ldloc.2
    IL_0090:  ldloc.1
    IL_0091:  blt.s      IL_0065

    IL_0093:  ret
  } // end of method GravelBlock::GetDropValues

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.GravelBlock::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.CubeBlock::.ctor()
    IL_0011:  ret
  } // end of method GravelBlock::.ctor

} // end of class Game.GravelBlock