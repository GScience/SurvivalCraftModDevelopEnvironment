.class public abstract auto ansi beforefieldinit Game.FlowerBlock
       extends Game.CrossBlock
{
  .method public hidebysig virtual instance int32 
          GetFaceTextureSlot(int32 face,
                             int32 'value') cil managed
  {
    // 代码大小       25 (0x19)
    .maxstack  8
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.FlowerBlock::GetIsSmall(int32)
    IL_000b:  brtrue.s   IL_0016

    IL_000d:  ldarg.0
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  call       instance int32 Game.Block::GetFaceTextureSlot(int32,
                                                                       int32)
    IL_0015:  ret

    IL_0016:  ldc.i4.s   11
    IL_0018:  ret
  } // end of method FlowerBlock::GetFaceTextureSlot

  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  5
    .locals init (int32 V_0,
             valuetype Game.BlockDropValue V_1)
    IL_0000:  ldarg.2
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  call       bool Game.FlowerBlock::GetIsSmall(int32)
    IL_000d:  brtrue.s   IL_003b

    IL_000f:  ldarg.s    dropValues
    IL_0011:  ldloca.s   V_1
    IL_0013:  initobj    Game.BlockDropValue
    IL_0019:  ldloca.s   V_1
    IL_001b:  ldarg.2
    IL_001c:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_0021:  ldc.i4.0
    IL_0022:  ldloc.0
    IL_0023:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0028:  stfld      int32 Game.BlockDropValue::Value
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldc.i4.1
    IL_0030:  stfld      int32 Game.BlockDropValue::Count
    IL_0035:  ldloc.1
    IL_0036:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_003b:  ldarg.s    showDebris
    IL_003d:  ldc.i4.1
    IL_003e:  stind.i1
    IL_003f:  ret
  } // end of method FlowerBlock::GetDropValues

  .method public hidebysig virtual instance int32 
          GetShadowStrength(int32 'value') cil managed
  {
    // 代码大小       29 (0x1d)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
    IL_0006:  call       bool Game.FlowerBlock::GetIsSmall(int32)
    IL_000b:  brtrue.s   IL_0014

    IL_000d:  ldarg.0
    IL_000e:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_0013:  ret

    IL_0014:  ldarg.0
    IL_0015:  ldfld      int32 Game.Block::DefaultShadowStrength
    IL_001a:  ldc.i4.2
    IL_001b:  div
    IL_001c:  ret
  } // end of method FlowerBlock::GetShadowStrength

  .method public hidebysig static bool  GetIsSmall(int32 data) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  and
    IL_0003:  ldc.i4.0
    IL_0004:  cgt.un
    IL_0006:  ret
  } // end of method FlowerBlock::GetIsSmall

  .method public hidebysig static int32  SetIsSmall(int32 data,
                                                    bool isSmall) cil managed
  {
    // 代码大小       12 (0xc)
    .maxstack  8
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_0008

    IL_0003:  ldarg.0
    IL_0004:  ldc.i4.s   -2
    IL_0006:  and
    IL_0007:  ret

    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.1
    IL_000a:  or
    IL_000b:  ret
  } // end of method FlowerBlock::SetIsSmall

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CrossBlock::.ctor()
    IL_0006:  ret
  } // end of method FlowerBlock::.ctor

} // end of class Game.FlowerBlock