.class public auto ansi beforefieldinit Game.PumpkinBlock
       extends Game.BasePumpkinBlock
{
  .field public static literal int32 Index = int32(0x00000083)
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  call       instance void Game.BasePumpkinBlock::.ctor(bool)
    IL_0007:  ret
  } // end of method PumpkinBlock::.ctor

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       94 (0x5e)
    .maxstack  7
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.s    dropValues
    IL_0008:  ldarg.s    showDebris
    IL_000a:  call       instance void Game.BasePumpkinBlock::GetDropValues(class Game.SubsystemTerrain,
                                                                            int32,
                                                                            int32,
                                                                            int32,
                                                                            class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                            bool&)
    IL_000f:  ldarg.2
    IL_0010:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  call       int32 Game.BasePumpkinBlock::GetSize(int32)
    IL_001c:  ldc.i4.7
    IL_001d:  bne.un.s   IL_005d

    IL_001f:  ldloc.0
    IL_0020:  call       bool Game.BasePumpkinBlock::GetIsDead(int32)
    IL_0025:  brtrue.s   IL_005d

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class Game.Random Game.Block::Random
    IL_002d:  ldc.r4     0.5
    IL_0032:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0037:  brfalse.s  IL_005d

    IL_0039:  ldarg.s    dropValues
    IL_003b:  ldloca.s   V_1
    IL_003d:  initobj    Game.BlockDropValue
    IL_0043:  ldloca.s   V_1
    IL_0045:  ldc.i4     0xf8
    IL_004a:  stfld      int32 Game.BlockDropValue::Value
    IL_004f:  ldloca.s   V_1
    IL_0051:  ldc.i4.1
    IL_0052:  stfld      int32 Game.BlockDropValue::Count
    IL_0057:  ldloc.1
    IL_0058:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_005d:  ret
  } // end of method PumpkinBlock::GetDropValues

} // end of class Game.PumpkinBlock