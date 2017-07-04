.class public auto ansi beforefieldinit Game.LargeDryBushBlock
       extends Game.CrossBlock
{
  .field public static literal int32 Index = int32(0x00000063)
  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       38 (0x26)
    .maxstack  3
    .locals init (valuetype Game.BlockDropValue V_0)
    IL_0000:  ldarg.s    dropValues
    IL_0002:  ldloca.s   V_0
    IL_0004:  initobj    Game.BlockDropValue
    IL_000a:  ldloca.s   V_0
    IL_000c:  ldc.i4.s   23
    IL_000e:  stfld      int32 Game.BlockDropValue::Value
    IL_0013:  ldloca.s   V_0
    IL_0015:  ldc.i4.1
    IL_0016:  stfld      int32 Game.BlockDropValue::Count
    IL_001b:  ldloc.0
    IL_001c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0021:  ldarg.s    showDebris
    IL_0023:  ldc.i4.1
    IL_0024:  stind.i1
    IL_0025:  ret
  } // end of method LargeDryBushBlock::GetDropValues

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CrossBlock::.ctor()
    IL_0006:  ret
  } // end of method LargeDryBushBlock::.ctor

} // end of class Game.LargeDryBushBlock