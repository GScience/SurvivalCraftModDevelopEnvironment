.class public auto ansi beforefieldinit Game.GravelBlock
       extends Game.CubeBlock
{
  .field public static literal int32 Index = int32(0x00000006)
  .method public hidebysig virtual instance void 
          GetDropValues(class Game.SubsystemTerrain subsystemTerrain,
                        int32 oldValue,
                        int32 newValue,
                        int32 toolLevel,
                        class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue> dropValues,
                        [out] bool& showDebris) cil managed
  {
    // 代码大小       123 (0x7b)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             valuetype Game.BlockDropValue V_2)
    IL_0000:  ldarg.s    showDebris
    IL_0002:  ldc.i4.1
    IL_0003:  stind.i1
    IL_0004:  ldarg.s    toolLevel
    IL_0006:  ldarg.0
    IL_0007:  ldfld      int32 Game.Block::RequiredToolLevel
    IL_000c:  blt.s      IL_007a

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class Game.Random Game.Block::Random
    IL_0014:  ldc.r4     0.0
    IL_0019:  ldc.r4     1.
    IL_001e:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0023:  ldc.r4     0.33000001
    IL_0028:  bge.un.s   IL_003a

    IL_002a:  ldarg.0
    IL_002b:  ldarg.1
    IL_002c:  ldarg.2
    IL_002d:  ldarg.3
    IL_002e:  ldarg.s    toolLevel
    IL_0030:  ldarg.s    dropValues
    IL_0032:  ldarg.s    showDebris
    IL_0034:  call       instance void Game.Block::GetDropValues(class Game.SubsystemTerrain,
                                                                 int32,
                                                                 int32,
                                                                 int32,
                                                                 class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>,
                                                                 bool&)
    IL_0039:  ret

    IL_003a:  ldarg.0
    IL_003b:  ldfld      class Game.Random Game.Block::Random
    IL_0040:  ldc.i4.1
    IL_0041:  ldc.i4.3
    IL_0042:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0047:  stloc.0
    IL_0048:  ldc.i4.0
    IL_0049:  stloc.1
    IL_004a:  br.s       IL_0076

    IL_004c:  ldarg.s    dropValues
    IL_004e:  ldloca.s   V_2
    IL_0050:  initobj    Game.BlockDropValue
    IL_0056:  ldloca.s   V_2
    IL_0058:  ldc.i4.s   79
    IL_005a:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_005f:  stfld      int32 Game.BlockDropValue::Value
    IL_0064:  ldloca.s   V_2
    IL_0066:  ldc.i4.1
    IL_0067:  stfld      int32 Game.BlockDropValue::Count
    IL_006c:  ldloc.2
    IL_006d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Game.BlockDropValue>::Add(!0)
    IL_0072:  ldloc.1
    IL_0073:  ldc.i4.1
    IL_0074:  add
    IL_0075:  stloc.1
    IL_0076:  ldloc.1
    IL_0077:  ldloc.0
    IL_0078:  blt.s      IL_004c

    IL_007a:  ret
  } // end of method GravelBlock::GetDropValues

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void Game.CubeBlock::.ctor()
    IL_0006:  ret
  } // end of method GravelBlock::.ctor

} // end of class Game.GravelBlock