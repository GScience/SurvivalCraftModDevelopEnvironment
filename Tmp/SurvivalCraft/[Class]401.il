.class public abstract auto ansi sealed Game.BlocksManager
       extends [System.Runtime]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass14_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass14_0'::.ctor

    .method assembly hidebysig instance bool 
            '<FindBlockByTypeName>b__0'(class [Survivalcraft]Game.Block b) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass14_0'::'<FindBlockByTypeName>b__0'

  } // end of class '<>c__DisplayClass14_0'

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.BlocksManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> '<>9__15_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.BlocksManager/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
      IL_000a:  ret
    } // end of method '<>c'::.cctor

    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::.ctor

    .method assembly hidebysig instance class [Survivalcraft]Game.Block 
            '<FindBlocksByCraftingId>b__15_0'(class [Survivalcraft]Game.Block b) cil managed
    {
      // 代码大小       2 (0x2)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ret
    } // end of method '<>c'::'<FindBlocksByCraftingId>b__15_0'

  } // end of class '<>c'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_0'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string typeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass17_0'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__0'(class [Survivalcraft]Game.Block v) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass17_0'::'<LoadBlocksData>b__0'

  } // end of class '<>c__DisplayClass17_0'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass17_1'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string refTypeName
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c__DisplayClass17_1'::.ctor

    .method assembly hidebysig instance bool 
            '<LoadBlocksData>b__1'(class [Survivalcraft]Game.Block v) cil managed
    {
      // 代码大小       28 (0x1c)
      .maxstack  2
      .locals init (bool V_0)
      IL_0000:  nop
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0007:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_000c:  ldarg.0
      IL_000d:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
      IL_0012:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                           string)
      IL_0017:  stloc.0
      IL_0018:  br.s       IL_001a

      IL_001a:  ldloc.0
      IL_001b:  ret
    } // end of method '<>c__DisplayClass17_1'::'<LoadBlocksData>b__1'

  } // end of class '<>c__DisplayClass17_1'

  .field private static class [Survivalcraft]Game.Block[] m_blocks
  .field private static class [System.Collections]System.Collections.Generic.List`1<string> m_categories
  .field private static class [Survivalcraft]Game.DrawBlockEnvironmentData m_defaultEnvironmentData
  .field private static class [Survivalcraft]Game.FluidBlock[] m_fluidBlocks
  .field private static class [Engine]Engine.Graphics.RasterizerState m_rasterizerState
  .field private static valuetype [Engine]Engine.Vector4[] m_slotTexCoords
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  3
    .locals init (class [Engine]Engine.Graphics.RasterizerState V_0)
    IL_0000:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<string>::.ctor()
    IL_0005:  stsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_000a:  newobj     instance void [Survivalcraft]Game.DrawBlockEnvironmentData::.ctor()
    IL_000f:  stsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_0014:  nop
    IL_0015:  newobj     instance void [Engine]Engine.Graphics.RasterizerState::.ctor()
    IL_001a:  dup
    IL_001b:  ldc.i4.2
    IL_001c:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_CullMode(valuetype [Engine]Engine.Graphics.CullMode)
    IL_0021:  nop
    IL_0022:  dup
    IL_0023:  ldc.i4.1
    IL_0024:  callvirt   instance void [Engine]Engine.Graphics.RasterizerState::set_ScissorTestEnable(bool)
    IL_0029:  nop
    IL_002a:  stloc.0
    IL_002b:  ldloc.0
    IL_002c:  stsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_0031:  ldc.i4     0x100
    IL_0036:  newarr     [Engine]Engine.Vector4
    IL_003b:  stsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0040:  ret
  } // end of method BlocksManager::.cctor

  .method private hidebysig static void  CalculateSlotTexCoordTables() cil managed
  {
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_001c

    IL_0005:  nop
    IL_0006:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_000b:  ldloc.0
    IL_000c:  ldloc.0
    IL_000d:  call       valuetype [Engine]Engine.Vector4 Game.BlocksManager::TextureSlotToTextureCoords(int32)
    IL_0012:  stelem     [Engine]Engine.Vector4
    IL_0017:  nop
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.1
    IL_001a:  add
    IL_001b:  stloc.0
    IL_001c:  ldloc.0
    IL_001d:  ldc.i4     0x100
    IL_0022:  clt
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  brtrue.s   IL_0005

    IL_0028:  ret
  } // end of method BlocksManager::CalculateSlotTexCoordTables

  .method public hidebysig static int32  DamageItem(int32 'value',
                                                    int32 damageCount) cil managed
  {
    // 代码大小       90 (0x5a)
    .maxstack  3
    .locals init (int32 V_0,
             class [Survivalcraft]Game.Block V_1,
             int32 V_2,
             bool V_3,
             int32 V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_0007:  stloc.0
    IL_0008:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_000d:  ldloc.0
    IL_000e:  ldelem.ref
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  ldfld      int32 [Survivalcraft]Game.Block::Durability
    IL_0016:  ldc.i4.0
    IL_0017:  clt
    IL_0019:  stloc.3
    IL_001a:  ldloc.3
    IL_001b:  brfalse.s  IL_0023

    IL_001d:  nop
    IL_001e:  ldarg.0
    IL_001f:  stloc.s    V_4
    IL_0021:  br.s       IL_0057

    IL_0023:  ldloc.1
    IL_0024:  ldarg.0
    IL_0025:  callvirt   instance int32 [Survivalcraft]Game.Block::GetDamage(int32)
    IL_002a:  ldarg.1
    IL_002b:  add
    IL_002c:  stloc.2
    IL_002d:  ldloc.2
    IL_002e:  ldloc.1
    IL_002f:  ldfld      int32 [Survivalcraft]Game.Block::Durability
    IL_0034:  cgt
    IL_0036:  ldc.i4.0
    IL_0037:  ceq
    IL_0039:  stloc.s    V_5
    IL_003b:  ldloc.s    V_5
    IL_003d:  brfalse.s  IL_004c

    IL_003f:  nop
    IL_0040:  ldloc.1
    IL_0041:  ldarg.0
    IL_0042:  ldloc.2
    IL_0043:  callvirt   instance int32 [Survivalcraft]Game.Block::SetDamage(int32,
                                                                             int32)
    IL_0048:  stloc.s    V_4
    IL_004a:  br.s       IL_0057

    IL_004c:  ldloc.1
    IL_004d:  ldarg.0
    IL_004e:  callvirt   instance int32 [Survivalcraft]Game.Block::GetDamageDestructionValue(int32)
    IL_0053:  stloc.s    V_4
    IL_0055:  br.s       IL_0057

    IL_0057:  ldloc.s    V_4
    IL_0059:  ret
  } // end of method BlocksManager::DamageItem

  .method public hidebysig static void  DrawCubeBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      valuetype [Engine]Engine.Vector3 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      valuetype [Engine]Engine.Color topColor,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       1530 (0x5fa)
    .maxstack  10
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector3 V_2,
             valuetype [Engine]Engine.Vector3 V_3,
             valuetype [Engine]Engine.Vector3 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             valuetype [Engine]Engine.Vector3 V_10,
             valuetype [Engine]Engine.Vector3 V_11,
             valuetype [Engine]Engine.Vector3 V_12,
             valuetype [Engine]Engine.Vector3 V_13,
             int32 V_14,
             class [Survivalcraft]Game.Block V_15,
             valuetype [Engine]Engine.Vector4 V_16,
             valuetype [Engine]Engine.Color V_17,
             class [Engine]Engine.Graphics.TexturedBatch3D V_18,
             bool V_19,
             valuetype [Engine]Engine.Matrix V_20)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_0035:  ldarg.s    environmentData
    IL_0037:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_003c:  ldelem.r4
    IL_003d:  stloc.1
    IL_003e:  ldarg.s    color
    IL_0040:  ldloc.1
    IL_0041:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0046:  starg.s    color
    IL_0048:  ldarga.s   color
    IL_004a:  ldc.i4     0xff
    IL_004f:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0054:  nop
    IL_0055:  ldarg.s    topColor
    IL_0057:  ldloc.1
    IL_0058:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005d:  starg.s    topColor
    IL_005f:  ldarga.s   topColor
    IL_0061:  ldc.i4     0xff
    IL_0066:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006b:  nop
    IL_006c:  ldarg.3
    IL_006d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0072:  ldarg.2
    IL_0073:  ldfld      float32 [Engine]Engine.Vector3::X
    IL_0078:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_007d:  stloc.2
    IL_007e:  ldarg.3
    IL_007f:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0084:  ldarg.2
    IL_0085:  ldfld      float32 [Engine]Engine.Vector3::Y
    IL_008a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_008f:  stloc.3
    IL_0090:  ldarg.3
    IL_0091:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0096:  ldarg.2
    IL_0097:  ldfld      float32 [Engine]Engine.Vector3::Z
    IL_009c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_00a1:  stloc.s    V_4
    IL_00a3:  ldarg.3
    IL_00a4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00a9:  stloc.s    V_5
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  ldc.r4     0.5
    IL_00b2:  ldloc.2
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00b8:  ldloc.3
    IL_00b9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00be:  ldloc.s    V_4
    IL_00c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00c5:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ca:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00cf:  stloc.s    V_6
    IL_00d1:  ldloc.s    V_5
    IL_00d3:  ldc.r4     0.5
    IL_00d8:  ldloc.2
    IL_00d9:  ldloc.3
    IL_00da:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00df:  ldloc.s    V_4
    IL_00e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00eb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f0:  stloc.s    V_7
    IL_00f2:  ldloc.s    V_5
    IL_00f4:  ldc.r4     0.5
    IL_00f9:  ldloc.2
    IL_00fa:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00ff:  ldloc.3
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0105:  ldloc.s    V_4
    IL_0107:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_010c:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0111:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0116:  stloc.s    V_8
    IL_0118:  ldloc.s    V_5
    IL_011a:  ldc.r4     0.5
    IL_011f:  ldloc.2
    IL_0120:  ldloc.3
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  ldloc.s    V_4
    IL_0128:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_012d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0132:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0137:  stloc.s    V_9
    IL_0139:  ldloc.s    V_5
    IL_013b:  ldc.r4     0.5
    IL_0140:  ldloc.2
    IL_0141:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0146:  ldloc.3
    IL_0147:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_014c:  ldloc.s    V_4
    IL_014e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0153:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0158:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_015d:  stloc.s    V_10
    IL_015f:  ldloc.s    V_5
    IL_0161:  ldc.r4     0.5
    IL_0166:  ldloc.2
    IL_0167:  ldloc.3
    IL_0168:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_016d:  ldloc.s    V_4
    IL_016f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0174:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0179:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_017e:  stloc.s    V_11
    IL_0180:  ldloc.s    V_5
    IL_0182:  ldc.r4     0.5
    IL_0187:  ldloc.2
    IL_0188:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_018d:  ldloc.3
    IL_018e:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0193:  ldloc.s    V_4
    IL_0195:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01a4:  stloc.s    V_12
    IL_01a6:  ldloc.s    V_5
    IL_01a8:  ldc.r4     0.5
    IL_01ad:  ldloc.2
    IL_01ae:  ldloc.3
    IL_01af:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01b4:  ldloc.s    V_4
    IL_01b6:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01bb:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c0:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01c5:  stloc.s    V_13
    IL_01c7:  ldarg.s    environmentData
    IL_01c9:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01ce:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_01d3:  stloc.s    V_19
    IL_01d5:  ldloc.s    V_19
    IL_01d7:  brfalse.s  IL_0249

    IL_01d9:  nop
    IL_01da:  ldarg.s    environmentData
    IL_01dc:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_01e1:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_01e6:  stloc.s    V_20
    IL_01e8:  ldloca.s   V_6
    IL_01ea:  ldloca.s   V_20
    IL_01ec:  ldloca.s   V_6
    IL_01ee:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01f3:  nop
    IL_01f4:  ldloca.s   V_7
    IL_01f6:  ldloca.s   V_20
    IL_01f8:  ldloca.s   V_7
    IL_01fa:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01ff:  nop
    IL_0200:  ldloca.s   V_8
    IL_0202:  ldloca.s   V_20
    IL_0204:  ldloca.s   V_8
    IL_0206:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_020b:  nop
    IL_020c:  ldloca.s   V_9
    IL_020e:  ldloca.s   V_20
    IL_0210:  ldloca.s   V_9
    IL_0212:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0217:  nop
    IL_0218:  ldloca.s   V_10
    IL_021a:  ldloca.s   V_20
    IL_021c:  ldloca.s   V_10
    IL_021e:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0223:  nop
    IL_0224:  ldloca.s   V_11
    IL_0226:  ldloca.s   V_20
    IL_0228:  ldloca.s   V_11
    IL_022a:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_022f:  nop
    IL_0230:  ldloca.s   V_12
    IL_0232:  ldloca.s   V_20
    IL_0234:  ldloca.s   V_12
    IL_0236:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_023b:  nop
    IL_023c:  ldloca.s   V_13
    IL_023e:  ldloca.s   V_20
    IL_0240:  ldloca.s   V_13
    IL_0242:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0247:  nop
    IL_0248:  nop
    IL_0249:  ldarg.1
    IL_024a:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_024f:  stloc.s    V_14
    IL_0251:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0256:  ldloc.s    V_14
    IL_0258:  ldelem.ref
    IL_0259:  stloc.s    V_15
    IL_025b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0260:  ldloc.s    V_15
    IL_0262:  ldc.i4.0
    IL_0263:  ldarg.1
    IL_0264:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0269:  ldelem     [Engine]Engine.Vector4
    IL_026e:  stloc.s    V_16
    IL_0270:  ldarg.s    color
    IL_0272:  ldarg.3
    IL_0273:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0278:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_027d:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0282:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0287:  stloc.s    V_17
    IL_0289:  ldloca.s   V_17
    IL_028b:  ldc.i4     0xff
    IL_0290:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0295:  nop
    IL_0296:  ldarg.0
    IL_0297:  ldloc.0
    IL_0298:  ldc.i4.1
    IL_0299:  ldc.i4.0
    IL_029a:  ldnull
    IL_029b:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_02a0:  ldnull
    IL_02a1:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_02a6:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_02ab:  stloc.s    V_18
    IL_02ad:  ldloc.s    V_18
    IL_02af:  ldloc.s    V_6
    IL_02b1:  ldloc.s    V_8
    IL_02b3:  ldloc.s    V_9
    IL_02b5:  ldloc.s    V_7
    IL_02b7:  ldloc.s    V_16
    IL_02b9:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_02be:  ldloc.s    V_16
    IL_02c0:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02c5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02ca:  ldloc.s    V_16
    IL_02cc:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_02d1:  ldloc.s    V_16
    IL_02d3:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02d8:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02dd:  ldloc.s    V_16
    IL_02df:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02e4:  ldloc.s    V_16
    IL_02e6:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_02eb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_02f0:  ldloc.s    V_16
    IL_02f2:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_02f7:  ldloc.s    V_16
    IL_02f9:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_02fe:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0303:  ldloc.s    V_17
    IL_0305:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_030a:  nop
    IL_030b:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_0310:  ldloc.s    V_15
    IL_0312:  ldc.i4.2
    IL_0313:  ldarg.1
    IL_0314:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0319:  ldelem     [Engine]Engine.Vector4
    IL_031e:  stloc.s    V_16
    IL_0320:  ldarg.s    color
    IL_0322:  ldarg.3
    IL_0323:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Forward()
    IL_0328:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_032d:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_0332:  stloc.s    V_17
    IL_0334:  ldloca.s   V_17
    IL_0336:  ldc.i4     0xff
    IL_033b:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0340:  nop
    IL_0341:  ldloc.s    V_18
    IL_0343:  ldloc.s    V_10
    IL_0345:  ldloc.s    V_11
    IL_0347:  ldloc.s    V_13
    IL_0349:  ldloc.s    V_12
    IL_034b:  ldloc.s    V_16
    IL_034d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0352:  ldloc.s    V_16
    IL_0354:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0359:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_035e:  ldloc.s    V_16
    IL_0360:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0365:  ldloc.s    V_16
    IL_0367:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_036c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0371:  ldloc.s    V_16
    IL_0373:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0378:  ldloc.s    V_16
    IL_037a:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_037f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0384:  ldloc.s    V_16
    IL_0386:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_038b:  ldloc.s    V_16
    IL_038d:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0392:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0397:  ldloc.s    V_17
    IL_0399:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_039e:  nop
    IL_039f:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_03a4:  ldloc.s    V_15
    IL_03a6:  ldc.i4.5
    IL_03a7:  ldarg.1
    IL_03a8:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_03ad:  ldelem     [Engine]Engine.Vector4
    IL_03b2:  stloc.s    V_16
    IL_03b4:  ldarg.s    color
    IL_03b6:  ldarg.3
    IL_03b7:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_03bc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_03c1:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_03c6:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_03cb:  stloc.s    V_17
    IL_03cd:  ldloca.s   V_17
    IL_03cf:  ldc.i4     0xff
    IL_03d4:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_03d9:  nop
    IL_03da:  ldloc.s    V_18
    IL_03dc:  ldloc.s    V_6
    IL_03de:  ldloc.s    V_7
    IL_03e0:  ldloc.s    V_11
    IL_03e2:  ldloc.s    V_10
    IL_03e4:  ldloc.s    V_16
    IL_03e6:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_03eb:  ldloc.s    V_16
    IL_03ed:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_03f2:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_03f7:  ldloc.s    V_16
    IL_03f9:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_03fe:  ldloc.s    V_16
    IL_0400:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0405:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_040a:  ldloc.s    V_16
    IL_040c:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0411:  ldloc.s    V_16
    IL_0413:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0418:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_041d:  ldloc.s    V_16
    IL_041f:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0424:  ldloc.s    V_16
    IL_0426:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_042b:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0430:  ldloc.s    V_17
    IL_0432:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0437:  nop
    IL_0438:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_043d:  ldloc.s    V_15
    IL_043f:  ldc.i4.4
    IL_0440:  ldarg.1
    IL_0441:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0446:  ldelem     [Engine]Engine.Vector4
    IL_044b:  stloc.s    V_16
    IL_044d:  ldarg.s    topColor
    IL_044f:  ldarg.3
    IL_0450:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_0455:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_045a:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_045f:  stloc.s    V_17
    IL_0461:  ldloca.s   V_17
    IL_0463:  ldc.i4     0xff
    IL_0468:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_046d:  nop
    IL_046e:  ldloc.s    V_18
    IL_0470:  ldloc.s    V_8
    IL_0472:  ldloc.s    V_12
    IL_0474:  ldloc.s    V_13
    IL_0476:  ldloc.s    V_9
    IL_0478:  ldloc.s    V_16
    IL_047a:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_047f:  ldloc.s    V_16
    IL_0481:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0486:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_048b:  ldloc.s    V_16
    IL_048d:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0492:  ldloc.s    V_16
    IL_0494:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0499:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_049e:  ldloc.s    V_16
    IL_04a0:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04a5:  ldloc.s    V_16
    IL_04a7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_04ac:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04b1:  ldloc.s    V_16
    IL_04b3:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_04b8:  ldloc.s    V_16
    IL_04ba:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_04bf:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_04c4:  ldloc.s    V_17
    IL_04c6:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_04cb:  nop
    IL_04cc:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_04d1:  ldloc.s    V_15
    IL_04d3:  ldc.i4.1
    IL_04d4:  ldarg.1
    IL_04d5:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_04da:  ldelem     [Engine]Engine.Vector4
    IL_04df:  stloc.s    V_16
    IL_04e1:  ldarg.s    color
    IL_04e3:  ldarg.3
    IL_04e4:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_04e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_04ee:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_04f3:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_04f8:  stloc.s    V_17
    IL_04fa:  ldloca.s   V_17
    IL_04fc:  ldc.i4     0xff
    IL_0501:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_0506:  nop
    IL_0507:  ldloc.s    V_18
    IL_0509:  ldloc.s    V_6
    IL_050b:  ldloc.s    V_10
    IL_050d:  ldloc.s    V_12
    IL_050f:  ldloc.s    V_8
    IL_0511:  ldloc.s    V_16
    IL_0513:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0518:  ldloc.s    V_16
    IL_051a:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_051f:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0524:  ldloc.s    V_16
    IL_0526:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_052b:  ldloc.s    V_16
    IL_052d:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0532:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0537:  ldloc.s    V_16
    IL_0539:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_053e:  ldloc.s    V_16
    IL_0540:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0545:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_054a:  ldloc.s    V_16
    IL_054c:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0551:  ldloc.s    V_16
    IL_0553:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0558:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_055d:  ldloc.s    V_17
    IL_055f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0564:  nop
    IL_0565:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_056a:  ldloc.s    V_15
    IL_056c:  ldc.i4.3
    IL_056d:  ldarg.1
    IL_056e:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_0573:  ldelem     [Engine]Engine.Vector4
    IL_0578:  stloc.s    V_16
    IL_057a:  ldarg.s    color
    IL_057c:  ldarg.3
    IL_057d:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_0582:  call       float32 [Survivalcraft]Game.LightingManager::CalculateLighting(valuetype [Engine]Engine.Vector3)
    IL_0587:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_058c:  stloc.s    V_17
    IL_058e:  ldloca.s   V_17
    IL_0590:  ldc.i4     0xff
    IL_0595:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_059a:  nop
    IL_059b:  ldloc.s    V_18
    IL_059d:  ldloc.s    V_7
    IL_059f:  ldloc.s    V_9
    IL_05a1:  ldloc.s    V_13
    IL_05a3:  ldloc.s    V_11
    IL_05a5:  ldloc.s    V_16
    IL_05a7:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_05ac:  ldloc.s    V_16
    IL_05ae:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_05b3:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05b8:  ldloc.s    V_16
    IL_05ba:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_05bf:  ldloc.s    V_16
    IL_05c1:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_05c6:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05cb:  ldloc.s    V_16
    IL_05cd:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05d2:  ldloc.s    V_16
    IL_05d4:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_05d9:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05de:  ldloc.s    V_16
    IL_05e0:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_05e5:  ldloc.s    V_16
    IL_05e7:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_05ec:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_05f1:  ldloc.s    V_17
    IL_05f3:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_05f8:  nop
    IL_05f9:  ret
  } // end of method BlocksManager::DrawCubeBlock

  .method public hidebysig static void  DrawFlatBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      int32 'value',
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      valuetype [Engine]Engine.Color color,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       665 (0x299)
    .maxstack  10
    .locals init (valuetype [Engine]Engine.Vector3 V_0,
             valuetype [Engine]Engine.Vector3 V_1,
             class [Engine]Engine.Graphics.Texture2D V_2,
             class [Engine]Engine.Graphics.TexturedBatch3D V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector3 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [Engine]Engine.Vector3 V_7,
             valuetype [Engine]Engine.Vector3 V_8,
             valuetype [Engine]Engine.Vector3 V_9,
             int32 V_10,
             class [Survivalcraft]Game.Block V_11,
             valuetype [Engine]Engine.Vector4 V_12,
             bool V_13,
             bool V_14,
             valuetype [Engine]Engine.Matrix V_15,
             bool V_16)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.2
    IL_0030:  ldarg.0
    IL_0031:  ldloc.2
    IL_0032:  ldc.i4.1
    IL_0033:  ldc.i4.0
    IL_0034:  ldnull
    IL_0035:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_003a:  ldnull
    IL_003b:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0040:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_0045:  stloc.3
    IL_0046:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_004b:  ldarg.s    environmentData
    IL_004d:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_0052:  ldelem.r4
    IL_0053:  stloc.s    V_4
    IL_0055:  ldarg.s    color
    IL_0057:  ldloc.s    V_4
    IL_0059:  call       valuetype [Engine]Engine.Color [Engine]Engine.Color::op_Multiply(valuetype [Engine]Engine.Color,
                                                                                          float32)
    IL_005e:  starg.s    color
    IL_0060:  ldarga.s   color
    IL_0062:  ldc.i4     0xff
    IL_0067:  call       instance void [Engine]Engine.Color::set_A(uint8)
    IL_006c:  nop
    IL_006d:  ldarg.s    environmentData
    IL_006f:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0074:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0079:  stloc.s    V_13
    IL_007b:  ldloc.s    V_13
    IL_007d:  brfalse.s  IL_00bc

    IL_007f:  nop
    IL_0080:  ldarg.s    environmentData
    IL_0082:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_0087:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_008c:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::UnitY
    IL_0091:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_0096:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_009b:  stloc.0
    IL_009c:  ldarg.s    environmentData
    IL_009e:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_00a3:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_00a8:  ldloc.0
    IL_00a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Cross(valuetype [Engine]Engine.Vector3,
                                                                                        valuetype [Engine]Engine.Vector3)
    IL_00ae:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_00b3:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00b8:  stloc.1
    IL_00b9:  nop
    IL_00ba:  br.s       IL_00cc

    IL_00bc:  nop
    IL_00bd:  ldarg.3
    IL_00be:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Right()
    IL_00c3:  stloc.0
    IL_00c4:  ldarg.3
    IL_00c5:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Up()
    IL_00ca:  stloc.1
    IL_00cb:  nop
    IL_00cc:  ldarg.3
    IL_00cd:  call       instance valuetype [Engine]Engine.Vector3 [Engine]Engine.Matrix::get_Translation()
    IL_00d2:  stloc.s    V_5
    IL_00d4:  ldloc.s    V_5
    IL_00d6:  ldc.r4     0.85000002
    IL_00db:  ldarg.2
    IL_00dc:  mul
    IL_00dd:  ldloc.0
    IL_00de:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_00e3:  ldloc.1
    IL_00e4:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_00e9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00ee:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_00f3:  stloc.s    V_6
    IL_00f5:  ldloc.s    V_5
    IL_00f7:  ldc.r4     0.85000002
    IL_00fc:  ldarg.2
    IL_00fd:  mul
    IL_00fe:  ldloc.0
    IL_00ff:  ldloc.1
    IL_0100:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Subtraction(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Vector3)
    IL_0105:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_010f:  stloc.s    V_7
    IL_0111:  ldloc.s    V_5
    IL_0113:  ldc.r4     0.85000002
    IL_0118:  ldarg.2
    IL_0119:  mul
    IL_011a:  ldloc.0
    IL_011b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_UnaryNegation(valuetype [Engine]Engine.Vector3)
    IL_0120:  ldloc.1
    IL_0121:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0126:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_012b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0130:  stloc.s    V_8
    IL_0132:  ldloc.s    V_5
    IL_0134:  ldc.r4     0.85000002
    IL_0139:  ldarg.2
    IL_013a:  mul
    IL_013b:  ldloc.0
    IL_013c:  ldloc.1
    IL_013d:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0142:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0147:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_014c:  stloc.s    V_9
    IL_014e:  ldarg.s    environmentData
    IL_0150:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0155:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_015a:  stloc.s    V_14
    IL_015c:  ldloc.s    V_14
    IL_015e:  brfalse.s  IL_01a0

    IL_0160:  nop
    IL_0161:  ldarg.s    environmentData
    IL_0163:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0168:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_016d:  stloc.s    V_15
    IL_016f:  ldloca.s   V_6
    IL_0171:  ldloca.s   V_15
    IL_0173:  ldloca.s   V_6
    IL_0175:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_017a:  nop
    IL_017b:  ldloca.s   V_7
    IL_017d:  ldloca.s   V_15
    IL_017f:  ldloca.s   V_7
    IL_0181:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0186:  nop
    IL_0187:  ldloca.s   V_8
    IL_0189:  ldloca.s   V_15
    IL_018b:  ldloca.s   V_8
    IL_018d:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_0192:  nop
    IL_0193:  ldloca.s   V_9
    IL_0195:  ldloca.s   V_15
    IL_0197:  ldloca.s   V_9
    IL_0199:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_019e:  nop
    IL_019f:  nop
    IL_01a0:  ldarg.1
    IL_01a1:  call       int32 [Survivalcraft]Game.TerrainData::ExtractContents(int32)
    IL_01a6:  stloc.s    V_10
    IL_01a8:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01ad:  ldloc.s    V_10
    IL_01af:  ldelem.ref
    IL_01b0:  stloc.s    V_11
    IL_01b2:  ldsfld     valuetype [Engine]Engine.Vector4[] Game.BlocksManager::m_slotTexCoords
    IL_01b7:  ldloc.s    V_11
    IL_01b9:  ldc.i4.m1
    IL_01ba:  ldarg.1
    IL_01bb:  callvirt   instance int32 [Survivalcraft]Game.Block::GetFaceTextureSlot(int32,
                                                                                      int32)
    IL_01c0:  ldelem     [Engine]Engine.Vector4
    IL_01c5:  stloc.s    V_12
    IL_01c7:  ldloc.3
    IL_01c8:  ldloc.s    V_6
    IL_01ca:  ldloc.s    V_8
    IL_01cc:  ldloc.s    V_9
    IL_01ce:  ldloc.s    V_7
    IL_01d0:  ldloc.s    V_12
    IL_01d2:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01d7:  ldloc.s    V_12
    IL_01d9:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_01de:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01e3:  ldloc.s    V_12
    IL_01e5:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01ea:  ldloc.s    V_12
    IL_01ec:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01f1:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_01f6:  ldloc.s    V_12
    IL_01f8:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01fd:  ldloc.s    V_12
    IL_01ff:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0204:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0209:  ldloc.s    V_12
    IL_020b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0210:  ldloc.s    V_12
    IL_0212:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0217:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_021c:  ldarg.s    color
    IL_021e:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0223:  nop
    IL_0224:  ldarg.s    environmentData
    IL_0226:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> [Survivalcraft]Game.DrawBlockEnvironmentData::BillboardDirection
    IL_022b:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0230:  ldc.i4.0
    IL_0231:  ceq
    IL_0233:  stloc.s    V_16
    IL_0235:  ldloc.s    V_16
    IL_0237:  brfalse.s  IL_0298

    IL_0239:  nop
    IL_023a:  ldloc.3
    IL_023b:  ldloc.s    V_6
    IL_023d:  ldloc.s    V_7
    IL_023f:  ldloc.s    V_9
    IL_0241:  ldloc.s    V_8
    IL_0243:  ldloc.s    V_12
    IL_0245:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_024a:  ldloc.s    V_12
    IL_024c:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0251:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0256:  ldloc.s    V_12
    IL_0258:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_025d:  ldloc.s    V_12
    IL_025f:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_0264:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_0269:  ldloc.s    V_12
    IL_026b:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0270:  ldloc.s    V_12
    IL_0272:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_0277:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_027c:  ldloc.s    V_12
    IL_027e:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0283:  ldloc.s    V_12
    IL_0285:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_028a:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                     float32)
    IL_028f:  ldarg.s    color
    IL_0291:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch3D::QueueQuad(valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector3,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Vector2,
                                                                                          valuetype [Engine]Engine.Color)
    IL_0296:  nop
    IL_0297:  nop
    IL_0298:  ret
  } // end of method BlocksManager::DrawFlatBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       67 (0x43)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldloc.0
    IL_0033:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_0038:  ldarg.2
    IL_0039:  ldarg.3
    IL_003a:  ldarg.s    environmentData
    IL_003c:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class [Survivalcraft]Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Survivalcraft]Game.DrawBlockEnvironmentData)
    IL_0041:  nop
    IL_0042:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       64 (0x40)
    .maxstack  7
    .locals init (class [Engine]Engine.Graphics.Texture2D V_0)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldarg.s    environmentData
    IL_0010:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0015:  brtrue.s   IL_001e

    IL_0017:  call       class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.BlocksTexturesManager::get_DefaultBlocksTexture()
    IL_001c:  br.s       IL_002f

    IL_001e:  ldarg.s    environmentData
    IL_0020:  ldfld      class [Survivalcraft]Game.SubsystemTerrain [Survivalcraft]Game.DrawBlockEnvironmentData::SubsystemTerrain
    IL_0025:  callvirt   instance class [Survivalcraft]Game.SubsystemAnimatedTextures [Survivalcraft]Game.SubsystemTerrain::get_SubsystemAnimatedTextures()
    IL_002a:  callvirt   instance class [Engine]Engine.Graphics.Texture2D [Survivalcraft]Game.SubsystemAnimatedTextures::get_AnimatedBlocksTexture()
    IL_002f:  stloc.0
    IL_0030:  ldarg.0
    IL_0031:  ldarg.1
    IL_0032:  ldloc.0
    IL_0033:  ldarg.2
    IL_0034:  ldarg.3
    IL_0035:  ldarg.s    matrix
    IL_0037:  ldarg.s    environmentData
    IL_0039:  call       void Game.BlocksManager::DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D,
                                                                class [Survivalcraft]Game.BlockMesh,
                                                                class [Engine]Engine.Graphics.Texture2D,
                                                                valuetype [Engine]Engine.Color,
                                                                float32,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                class [Survivalcraft]Game.DrawBlockEnvironmentData)
    IL_003e:  nop
    IL_003f:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static void  DrawMeshBlock(class [Engine]Engine.Graphics.PrimitivesRenderer3D primitivesRenderer,
                                                      class [Survivalcraft]Game.BlockMesh blockMesh,
                                                      class [Engine]Engine.Graphics.Texture2D texture,
                                                      valuetype [Engine]Engine.Color color,
                                                      float32 size,
                                                      valuetype [Engine]Engine.Matrix& matrix,
                                                      class [Survivalcraft]Game.DrawBlockEnvironmentData environmentData) cil managed
  {
    // 代码大小       765 (0x2fd)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Matrix V_0,
             float32 V_1,
             valuetype [Engine]Engine.Vector4 V_2,
             bool V_3,
             class [Engine]Engine.Graphics.TexturedBatch3D V_4,
             bool V_5,
             int32 V_6,
             valuetype [Survivalcraft]Game.BlockMeshVertex[] V_7,
             int32 V_8,
             uint16[] V_9,
             class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> V_10,
             int32 V_11,
             int32 V_12,
             class [Engine]Engine.DynamicArray`1<uint16> V_13,
             int32 V_14,
             bool V_15,
             bool V_16,
             bool V_17,
             int32 V_18,
             valuetype [Survivalcraft]Game.BlockMeshVertex V_19,
             bool V_20,
             valuetype [Engine]Engine.Vector4 V_21,
             float32 V_22,
             bool V_23,
             valuetype [Engine]Engine.Color V_24,
             bool V_25,
             int32 V_26,
             bool V_27)
    IL_0000:  nop
    IL_0001:  ldarg.s    environmentData
    IL_0003:  dup
    IL_0004:  brtrue.s   IL_000c

    IL_0006:  pop
    IL_0007:  ldsfld     class [Survivalcraft]Game.DrawBlockEnvironmentData Game.BlocksManager::m_defaultEnvironmentData
    IL_000c:  starg.s    environmentData
    IL_000e:  ldsfld     float32[] [Survivalcraft]Game.LightingManager::LightIntensityByLightValue
    IL_0013:  ldarg.s    environmentData
    IL_0015:  ldfld      int32 [Survivalcraft]Game.DrawBlockEnvironmentData::Light
    IL_001a:  ldelem.r4
    IL_001b:  stloc.1
    IL_001c:  ldarg.3
    IL_001d:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
    IL_0022:  ldloc.1
    IL_0023:  call       valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::op_Multiply(valuetype [Engine]Engine.Vector4,
                                                                                              float32)
    IL_0028:  stloc.2
    IL_0029:  ldloc.2
    IL_002a:  ldsfld     valuetype [Engine]Engine.Vector4 [Engine]Engine.Vector4::One
    IL_002f:  call       bool [Engine]Engine.Vector4::op_Equality(valuetype [Engine]Engine.Vector4,
                                                                  valuetype [Engine]Engine.Vector4)
    IL_0034:  stloc.3
    IL_0035:  ldarg.0
    IL_0036:  ldarg.2
    IL_0037:  ldc.i4.1
    IL_0038:  ldc.i4.0
    IL_0039:  ldnull
    IL_003a:  ldsfld     class [Engine]Engine.Graphics.RasterizerState Game.BlocksManager::m_rasterizerState
    IL_003f:  ldnull
    IL_0040:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
    IL_0045:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch3D [Engine]Engine.Graphics.PrimitivesRenderer3D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                            bool,
                                                                                                                                            int32,
                                                                                                                                            class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                            class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                            class [Engine]Engine.Graphics.BlendState,
                                                                                                                                            class [Engine]Engine.Graphics.SamplerState)
    IL_004a:  stloc.s    V_4
    IL_004c:  ldc.i4.0
    IL_004d:  stloc.s    V_5
    IL_004f:  ldarg.s    environmentData
    IL_0051:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0056:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_HasValue()
    IL_005b:  stloc.s    V_15
    IL_005d:  ldloc.s    V_15
    IL_005f:  brfalse.s  IL_007e

    IL_0061:  nop
    IL_0062:  ldarg.s    matrix
    IL_0064:  ldobj      [Engine]Engine.Matrix
    IL_0069:  ldarg.s    environmentData
    IL_006b:  ldflda     valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> [Survivalcraft]Game.DrawBlockEnvironmentData::ViewProjectionMatrix
    IL_0070:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>::get_Value()
    IL_0075:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_007a:  stloc.0
    IL_007b:  nop
    IL_007c:  br.s       IL_0088

    IL_007e:  nop
    IL_007f:  ldarg.s    matrix
    IL_0081:  ldobj      [Engine]Engine.Matrix
    IL_0086:  stloc.0
    IL_0087:  nop
    IL_0088:  ldarg.s    size
    IL_008a:  ldc.r4     1.
    IL_008f:  ceq
    IL_0091:  ldc.i4.0
    IL_0092:  ceq
    IL_0094:  stloc.s    V_16
    IL_0096:  ldloc.s    V_16
    IL_0098:  brfalse.s  IL_00aa

    IL_009a:  nop
    IL_009b:  ldarg.s    size
    IL_009d:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::CreateScale(float32)
    IL_00a2:  ldloc.0
    IL_00a3:  call       valuetype [Engine]Engine.Matrix [Engine]Engine.Matrix::op_Multiply(valuetype [Engine]Engine.Matrix,
                                                                                            valuetype [Engine]Engine.Matrix)
    IL_00a8:  stloc.0
    IL_00a9:  nop
    IL_00aa:  ldloc.0
    IL_00ab:  ldfld      float32 [Engine]Engine.Matrix::M14
    IL_00b0:  ldc.r4     0.0
    IL_00b5:  bne.un.s   IL_00e6

    IL_00b7:  ldloc.0
    IL_00b8:  ldfld      float32 [Engine]Engine.Matrix::M24
    IL_00bd:  ldc.r4     0.0
    IL_00c2:  bne.un.s   IL_00e6

    IL_00c4:  ldloc.0
    IL_00c5:  ldfld      float32 [Engine]Engine.Matrix::M34
    IL_00ca:  ldc.r4     0.0
    IL_00cf:  bne.un.s   IL_00e3

    IL_00d1:  ldloc.0
    IL_00d2:  ldfld      float32 [Engine]Engine.Matrix::M44
    IL_00d7:  ldc.r4     1.
    IL_00dc:  ceq
    IL_00de:  ldc.i4.0
    IL_00df:  ceq
    IL_00e1:  br.s       IL_00e4

    IL_00e3:  ldc.i4.1
    IL_00e4:  br.s       IL_00e7

    IL_00e6:  ldc.i4.1
    IL_00e7:  stloc.s    V_17
    IL_00e9:  ldloc.s    V_17
    IL_00eb:  brfalse.s  IL_00f2

    IL_00ed:  nop
    IL_00ee:  ldc.i4.1
    IL_00ef:  stloc.s    V_5
    IL_00f1:  nop
    IL_00f2:  ldarg.1
    IL_00f3:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex> [Survivalcraft]Game.BlockMesh::Vertices
    IL_00f8:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex>::get_Count()
    IL_00fd:  stloc.s    V_6
    IL_00ff:  ldarg.1
    IL_0100:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex> [Survivalcraft]Game.BlockMesh::Vertices
    IL_0105:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Survivalcraft]Game.BlockMeshVertex>::get_Array()
    IL_010a:  stloc.s    V_7
    IL_010c:  ldarg.1
    IL_010d:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Survivalcraft]Game.BlockMesh::Indices
    IL_0112:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_0117:  stloc.s    V_8
    IL_0119:  ldarg.1
    IL_011a:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Survivalcraft]Game.BlockMesh::Indices
    IL_011f:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_0124:  stloc.s    V_9
    IL_0126:  ldloc.s    V_4
    IL_0128:  ldfld      class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleVertices
    IL_012d:  stloc.s    V_10
    IL_012f:  ldloc.s    V_10
    IL_0131:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0136:  stloc.s    V_11
    IL_0138:  ldloc.s    V_10
    IL_013a:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_013f:  stloc.s    V_12
    IL_0141:  ldloc.s    V_10
    IL_0143:  dup
    IL_0144:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Count()
    IL_0149:  ldloc.s    V_6
    IL_014b:  add
    IL_014c:  callvirt   instance void class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::set_Count(int32)
    IL_0151:  nop
    IL_0152:  ldc.i4.0
    IL_0153:  stloc.s    V_18
    IL_0155:  br         IL_0299

    IL_015a:  nop
    IL_015b:  ldloc.s    V_7
    IL_015d:  ldloc.s    V_18
    IL_015f:  ldelem     [Survivalcraft]Game.BlockMeshVertex
    IL_0164:  stloc.s    V_19
    IL_0166:  ldloc.s    V_5
    IL_0168:  stloc.s    V_20
    IL_016a:  ldloc.s    V_20
    IL_016c:  brfalse.s  IL_01ca

    IL_016e:  nop
    IL_016f:  ldloca.s   V_21
    IL_0171:  ldloc.s    V_19
    IL_0173:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_0178:  ldc.r4     1.
    IL_017d:  call       instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Vector3,
                                                                     float32)
    IL_0182:  ldloca.s   V_21
    IL_0184:  ldloca.s   V_0
    IL_0186:  ldloca.s   V_21
    IL_0188:  call       void [Engine]Engine.Vector4::Transform(valuetype [Engine]Engine.Vector4&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector4&)
    IL_018d:  nop
    IL_018e:  ldc.r4     1.
    IL_0193:  ldloc.s    V_21
    IL_0195:  ldfld      float32 [Engine]Engine.Vector4::W
    IL_019a:  div
    IL_019b:  stloc.s    V_22
    IL_019d:  ldloca.s   V_19
    IL_019f:  ldloc.s    V_21
    IL_01a1:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_01a6:  ldloc.s    V_22
    IL_01a8:  mul
    IL_01a9:  ldloc.s    V_21
    IL_01ab:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_01b0:  ldloc.s    V_22
    IL_01b2:  mul
    IL_01b3:  ldloc.s    V_21
    IL_01b5:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_01ba:  ldloc.s    V_22
    IL_01bc:  mul
    IL_01bd:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_01c2:  stfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01c7:  nop
    IL_01c8:  br.s       IL_01e2

    IL_01ca:  nop
    IL_01cb:  ldloca.s   V_19
    IL_01cd:  ldflda     valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01d2:  ldloca.s   V_0
    IL_01d4:  ldloca.s   V_19
    IL_01d6:  ldflda     valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_01db:  call       void [Engine]Engine.Vector3::Transform(valuetype [Engine]Engine.Vector3&,
                                                                valuetype [Engine]Engine.Matrix&,
                                                                valuetype [Engine]Engine.Vector3&)
    IL_01e0:  nop
    IL_01e1:  nop
    IL_01e2:  ldloc.s    V_19
    IL_01e4:  ldfld      bool [Survivalcraft]Game.BlockMeshVertex::IsEmissive
    IL_01e9:  ldloc.3
    IL_01ea:  or
    IL_01eb:  stloc.s    V_23
    IL_01ed:  ldloc.s    V_23
    IL_01ef:  brfalse.s  IL_0222

    IL_01f1:  nop
    IL_01f2:  ldloc.s    V_10
    IL_01f4:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_01f9:  ldloc.s    V_12
    IL_01fb:  dup
    IL_01fc:  ldc.i4.1
    IL_01fd:  add
    IL_01fe:  stloc.s    V_12
    IL_0200:  ldloc.s    V_19
    IL_0202:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_0207:  ldloc.s    V_19
    IL_0209:  ldfld      valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_020e:  ldloc.s    V_19
    IL_0210:  ldfld      valuetype [Engine]Engine.Vector2 [Survivalcraft]Game.BlockMeshVertex::TextureCoordinates
    IL_0215:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_021a:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_021f:  nop
    IL_0220:  br.s       IL_0292

    IL_0222:  nop
    IL_0223:  ldloca.s   V_24
    IL_0225:  ldloca.s   V_19
    IL_0227:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_022c:  call       instance uint8 [Engine]Engine.Color::get_R()
    IL_0231:  conv.r4
    IL_0232:  ldloc.2
    IL_0233:  ldfld      float32 [Engine]Engine.Vector4::X
    IL_0238:  mul
    IL_0239:  conv.u1
    IL_023a:  ldloca.s   V_19
    IL_023c:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_0241:  call       instance uint8 [Engine]Engine.Color::get_G()
    IL_0246:  conv.r4
    IL_0247:  ldloc.2
    IL_0248:  ldfld      float32 [Engine]Engine.Vector4::Y
    IL_024d:  mul
    IL_024e:  conv.u1
    IL_024f:  ldloca.s   V_19
    IL_0251:  ldflda     valuetype [Engine]Engine.Color [Survivalcraft]Game.BlockMeshVertex::Color
    IL_0256:  call       instance uint8 [Engine]Engine.Color::get_B()
    IL_025b:  conv.r4
    IL_025c:  ldloc.2
    IL_025d:  ldfld      float32 [Engine]Engine.Vector4::Z
    IL_0262:  mul
    IL_0263:  conv.u1
    IL_0264:  call       instance void [Engine]Engine.Color::.ctor(uint8,
                                                                   uint8,
                                                                   uint8)
    IL_0269:  ldloc.s    V_10
    IL_026b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<valuetype [Engine]Engine.Graphics.VertexPositionColorTexture>::get_Array()
    IL_0270:  ldloc.s    V_12
    IL_0272:  dup
    IL_0273:  ldc.i4.1
    IL_0274:  add
    IL_0275:  stloc.s    V_12
    IL_0277:  ldloc.s    V_19
    IL_0279:  ldfld      valuetype [Engine]Engine.Vector3 [Survivalcraft]Game.BlockMeshVertex::Position
    IL_027e:  ldloc.s    V_24
    IL_0280:  ldloc.s    V_19
    IL_0282:  ldfld      valuetype [Engine]Engine.Vector2 [Survivalcraft]Game.BlockMeshVertex::TextureCoordinates
    IL_0287:  newobj     instance void [Engine]Engine.Graphics.VertexPositionColorTexture::.ctor(valuetype [Engine]Engine.Vector3,
                                                                                                 valuetype [Engine]Engine.Color,
                                                                                                 valuetype [Engine]Engine.Vector2)
    IL_028c:  stelem     [Engine]Engine.Graphics.VertexPositionColorTexture
    IL_0291:  nop
    IL_0292:  nop
    IL_0293:  ldloc.s    V_18
    IL_0295:  ldc.i4.1
    IL_0296:  add
    IL_0297:  stloc.s    V_18
    IL_0299:  ldloc.s    V_18
    IL_029b:  ldloc.s    V_6
    IL_029d:  clt
    IL_029f:  stloc.s    V_25
    IL_02a1:  ldloc.s    V_25
    IL_02a3:  brtrue     IL_015a

    IL_02a8:  ldloc.s    V_4
    IL_02aa:  ldfld      class [Engine]Engine.DynamicArray`1<uint16> [Engine]Engine.Graphics.BaseTexturedBatch::TriangleIndices
    IL_02af:  stloc.s    V_13
    IL_02b1:  ldloc.s    V_13
    IL_02b3:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02b8:  stloc.s    V_14
    IL_02ba:  ldloc.s    V_13
    IL_02bc:  dup
    IL_02bd:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<uint16>::get_Count()
    IL_02c2:  ldloc.s    V_8
    IL_02c4:  add
    IL_02c5:  callvirt   instance void class [Engine]Engine.DynamicArray`1<uint16>::set_Count(int32)
    IL_02ca:  nop
    IL_02cb:  ldc.i4.0
    IL_02cc:  stloc.s    V_26
    IL_02ce:  br.s       IL_02f0

    IL_02d0:  nop
    IL_02d1:  ldloc.s    V_13
    IL_02d3:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<uint16>::get_Array()
    IL_02d8:  ldloc.s    V_14
    IL_02da:  dup
    IL_02db:  ldc.i4.1
    IL_02dc:  add
    IL_02dd:  stloc.s    V_14
    IL_02df:  ldloc.s    V_11
    IL_02e1:  ldloc.s    V_9
    IL_02e3:  ldloc.s    V_26
    IL_02e5:  ldelem.u2
    IL_02e6:  add
    IL_02e7:  conv.u2
    IL_02e8:  stelem.i2
    IL_02e9:  nop
    IL_02ea:  ldloc.s    V_26
    IL_02ec:  ldc.i4.1
    IL_02ed:  add
    IL_02ee:  stloc.s    V_26
    IL_02f0:  ldloc.s    V_26
    IL_02f2:  ldloc.s    V_8
    IL_02f4:  clt
    IL_02f6:  stloc.s    V_27
    IL_02f8:  ldloc.s    V_27
    IL_02fa:  brtrue.s   IL_02d0

    IL_02fc:  ret
  } // end of method BlocksManager::DrawMeshBlock

  .method public hidebysig static class [Survivalcraft]Game.Block 
          FindBlockByTypeName(string typeName,
                              bool throwIfNotFound) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  4
    .locals init (class Game.BlocksManager/'<>c__DisplayClass14_0' V_0,
             class [Survivalcraft]Game.Block V_1,
             bool V_2,
             object[] V_3,
             class [Survivalcraft]Game.Block V_4)
    IL_0000:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass14_0'::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldloc.0
    IL_0007:  ldarg.0
    IL_0008:  stfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
    IL_000d:  nop
    IL_000e:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0013:  ldloc.0
    IL_0014:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass14_0'::'<FindBlockByTypeName>b__0'(class [Survivalcraft]Game.Block)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_001f:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  ldnull
    IL_0027:  ceq
    IL_0029:  ldarg.1
    IL_002a:  and
    IL_002b:  stloc.2
    IL_002c:  ldloc.2
    IL_002d:  brfalse.s  IL_0051

    IL_002f:  nop
    IL_0030:  ldc.i4.1
    IL_0031:  newarr     [System.Runtime]System.Object
    IL_0036:  dup
    IL_0037:  ldc.i4.0
    IL_0038:  ldloc.0
    IL_0039:  ldfld      string Game.BlocksManager/'<>c__DisplayClass14_0'::typeName
    IL_003e:  stelem.ref
    IL_003f:  stloc.3
    IL_0040:  ldstr      "Block with type {0} not found."
    IL_0045:  ldloc.3
    IL_0046:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_004b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0050:  throw

    IL_0051:  ldloc.1
    IL_0052:  stloc.s    V_4
    IL_0054:  br.s       IL_0056

    IL_0056:  ldloc.s    V_4
    IL_0058:  ret
  } // end of method BlocksManager::FindBlockByTypeName

  .method public hidebysig static class [Survivalcraft]Game.Block[] 
          FindBlocksByCraftingId(string craftingId) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  3
    .locals init (class [Survivalcraft]Game.Block[] V_0)
    IL_0000:  nop
    IL_0001:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0006:  ldsfld     class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> Game.BlocksManager/'<>c'::'<>9__15_0'
    IL_000b:  dup
    IL_000c:  brtrue.s   IL_0025

    IL_000e:  pop
    IL_000f:  ldsfld     class Game.BlocksManager/'<>c' Game.BlocksManager/'<>c'::'<>9'
    IL_0014:  ldftn      instance class [Survivalcraft]Game.Block Game.BlocksManager/'<>c'::'<FindBlocksByCraftingId>b__15_0'(class [Survivalcraft]Game.Block)
    IL_001a:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block>::.ctor(object,
                                                                                                                                                   native int)
    IL_001f:  dup
    IL_0020:  stsfld     class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block> Game.BlocksManager/'<>c'::'<>9__15_0'
    IL_0025:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<class [Survivalcraft]Game.Block,class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                          class [System.Runtime]System.Func`2<!!0,!!1>)
    IL_002a:  call       !!0[] [System.Linq]System.Linq.Enumerable::ToArray<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_002f:  stloc.0
    IL_0030:  br.s       IL_0032

    IL_0032:  ldloc.0
    IL_0033:  ret
  } // end of method BlocksManager::FindBlocksByCraftingId

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       603 (0x25b)
    .maxstack  4
    .locals init (class [Survivalcraft]Game.Block[] V_0,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block> V_1,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block> V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             bool V_6,
             bool V_7,
             int32 V_8,
             bool V_9,
             class [Survivalcraft]Game.Block[] V_10,
             int32 V_11,
             class [Survivalcraft]Game.Block V_12,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_13,
             int32 V_14,
             string V_15,
             bool V_16)
    IL_0000:  nop
    IL_0001:  call       void Game.BlocksManager::CalculateSlotTexCoordTables()
    IL_0006:  nop
    IL_0007:  call       int32 GScience.ModAPI.Block.BlockManager::getCount()
    IL_000c:  ldc.i4.1
    IL_000d:  add
    IL_000e:  newarr     [Survivalcraft]Game.Block
    IL_0013:  stsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0018:  call       int32 GScience.ModAPI.Block.BlockManager::getCount()
    IL_001d:  ldc.i4.1
    IL_001e:  add
    IL_001f:  newarr     [Survivalcraft]Game.FluidBlock
    IL_0024:  stsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_0029:  nop
    IL_002a:  call       class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block> GScience.ModAPI.Block.BlockManager::getBlockList()
    IL_002f:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<int32,class [Survivalcraft]Game.Block>::GetEnumerator()
    IL_0034:  stloc.1
    .try
    {
      IL_0035:  br.s       IL_0074

      IL_0037:  ldloca.s   V_1
      IL_0039:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>::get_Current()
      IL_003e:  stloc.2
      IL_003f:  nop
      IL_0040:  ldloca.s   V_2
      IL_0042:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Key()
      IL_0047:  stloc.3
      IL_0048:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
      IL_004d:  ldloc.3
      IL_004e:  ldloca.s   V_2
      IL_0050:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Value()
      IL_0055:  stelem.ref
      IL_0056:  ldloca.s   V_2
      IL_0058:  call       instance !0 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Key()
      IL_005d:  stloc.s    V_4
      IL_005f:  ldsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
      IL_0064:  ldloc.s    V_4
      IL_0066:  ldloca.s   V_2
      IL_0068:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<int32,class [Survivalcraft]Game.Block>::get_Value()
      IL_006d:  isinst     [Survivalcraft]Game.FluidBlock
      IL_0072:  stelem.ref
      IL_0073:  nop
      IL_0074:  ldloca.s   V_1
      IL_0076:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>::MoveNext()
      IL_007b:  brtrue.s   IL_0037

      IL_007d:  leave.s    IL_008e

    }  // end .try
    finally
    {
      IL_007f:  ldloca.s   V_1
      IL_0081:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<int32,class [Survivalcraft]Game.Block>
      IL_0087:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_008c:  nop
      IL_008d:  endfinally
    }  // end handler
    IL_008e:  ldc.i4.0
    IL_008f:  stloc.s    V_5
    IL_0091:  br.s       IL_00bd

    IL_0093:  nop
    IL_0094:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0099:  ldloc.s    V_5
    IL_009b:  ldelem.ref
    IL_009c:  ldnull
    IL_009d:  ceq
    IL_009f:  stloc.s    V_6
    IL_00a1:  ldloc.s    V_6
    IL_00a3:  brfalse.s  IL_00b6

    IL_00a5:  nop
    IL_00a6:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00ab:  ldloc.s    V_5
    IL_00ad:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00b2:  ldc.i4.0
    IL_00b3:  ldelem.ref
    IL_00b4:  stelem.ref
    IL_00b5:  nop
    IL_00b6:  nop
    IL_00b7:  ldloc.s    V_5
    IL_00b9:  ldc.i4.1
    IL_00ba:  add
    IL_00bb:  stloc.s    V_5
    IL_00bd:  ldloc.s    V_5
    IL_00bf:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00c4:  ldlen
    IL_00c5:  conv.i4
    IL_00c6:  clt
    IL_00c8:  stloc.s    V_7
    IL_00ca:  ldloc.s    V_7
    IL_00cc:  brtrue.s   IL_0093

    IL_00ce:  ldstr      "BlocksData"
    IL_00d3:  call       void [Survivalcraft]Game.ContentManager::Dispose(string)
    IL_00d8:  nop
    IL_00d9:  ldstr      "BlocksData"
    IL_00de:  call       !!0 [Survivalcraft]Game.ContentManager::Get<string>(string)
    IL_00e3:  call       void Game.BlocksManager::LoadBlocksData(string)
    IL_00e8:  nop
    IL_00e9:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_00ee:  stloc.0
    IL_00ef:  ldc.i4.0
    IL_00f0:  stloc.s    V_8
    IL_00f2:  br.s       IL_0106

    IL_00f4:  nop
    IL_00f5:  ldloc.0
    IL_00f6:  ldloc.s    V_8
    IL_00f8:  ldelem.ref
    IL_00f9:  callvirt   instance void [Survivalcraft]Game.Block::Initialize()
    IL_00fe:  nop
    IL_00ff:  nop
    IL_0100:  ldloc.s    V_8
    IL_0102:  ldc.i4.1
    IL_0103:  add
    IL_0104:  stloc.s    V_8
    IL_0106:  ldloc.s    V_8
    IL_0108:  ldloc.0
    IL_0109:  ldlen
    IL_010a:  conv.i4
    IL_010b:  clt
    IL_010d:  stloc.s    V_9
    IL_010f:  ldloc.s    V_9
    IL_0111:  brtrue.s   IL_00f4

    IL_0113:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0118:  ldstr      "Terrain"
    IL_011d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0122:  nop
    IL_0123:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0128:  ldstr      "Plants"
    IL_012d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0132:  nop
    IL_0133:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0138:  ldstr      "Construction"
    IL_013d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0142:  nop
    IL_0143:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0148:  ldstr      "Items"
    IL_014d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0152:  nop
    IL_0153:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0158:  ldstr      "Tools"
    IL_015d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0162:  nop
    IL_0163:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0168:  ldstr      "Clothes"
    IL_016d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0172:  nop
    IL_0173:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0178:  ldstr      "Electrics"
    IL_017d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0182:  nop
    IL_0183:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0188:  ldstr      "Food"
    IL_018d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_0192:  nop
    IL_0193:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0198:  ldstr      "Spawner Eggs"
    IL_019d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01a2:  nop
    IL_01a3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01a8:  ldstr      "Painted"
    IL_01ad:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01b2:  nop
    IL_01b3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01b8:  ldstr      "Dyed"
    IL_01bd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01c2:  nop
    IL_01c3:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_01c8:  ldstr      "Fireworks"
    IL_01cd:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
    IL_01d2:  nop
    IL_01d3:  nop
    IL_01d4:  call       class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
    IL_01d9:  stloc.s    V_10
    IL_01db:  ldc.i4.0
    IL_01dc:  stloc.s    V_11
    IL_01de:  br.s       IL_0252

    IL_01e0:  ldloc.s    V_10
    IL_01e2:  ldloc.s    V_11
    IL_01e4:  ldelem.ref
    IL_01e5:  stloc.s    V_12
    IL_01e7:  nop
    IL_01e8:  nop
    IL_01e9:  ldloc.s    V_12
    IL_01eb:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [Survivalcraft]Game.Block::GetCreativeValues()
    IL_01f0:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_01f5:  stloc.s    V_13
    .try
    {
      IL_01f7:  br.s       IL_0233

      IL_01f9:  ldloc.s    V_13
      IL_01fb:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_0200:  stloc.s    V_14
      IL_0202:  nop
      IL_0203:  ldloc.s    V_12
      IL_0205:  ldloc.s    V_14
      IL_0207:  callvirt   instance string [Survivalcraft]Game.Block::GetCategory(int32)
      IL_020c:  stloc.s    V_15
      IL_020e:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0213:  ldloc.s    V_15
      IL_0215:  callvirt   instance bool class [System.Collections]System.Collections.Generic.List`1<string>::Contains(!0)
      IL_021a:  ldc.i4.0
      IL_021b:  ceq
      IL_021d:  stloc.s    V_16
      IL_021f:  ldloc.s    V_16
      IL_0221:  brfalse.s  IL_0232

      IL_0223:  nop
      IL_0224:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
      IL_0229:  ldloc.s    V_15
      IL_022b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<string>::Add(!0)
      IL_0230:  nop
      IL_0231:  nop
      IL_0232:  nop
      IL_0233:  ldloc.s    V_13
      IL_0235:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_023a:  brtrue.s   IL_01f9

      IL_023c:  leave.s    IL_024b

    }  // end .try
    finally
    {
      IL_023e:  ldloc.s    V_13
      IL_0240:  brfalse.s  IL_024a

      IL_0242:  ldloc.s    V_13
      IL_0244:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0249:  nop
      IL_024a:  endfinally
    }  // end handler
    IL_024b:  nop
    IL_024c:  ldloc.s    V_11
    IL_024e:  ldc.i4.1
    IL_024f:  add
    IL_0250:  stloc.s    V_11
    IL_0252:  ldloc.s    V_11
    IL_0254:  ldloc.s    V_10
    IL_0256:  ldlen
    IL_0257:  conv.i4
    IL_0258:  blt.s      IL_01e0

    IL_025a:  ret
  } // end of method BlocksManager::Initialize

  .method private hidebysig static void  LoadBlocksData(string data) cil managed
  {
    // 代码大小       938 (0x3aa)
    .maxstack  6
    .locals init (class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool> V_0,
             char[] V_1,
             string[] V_2,
             string[] V_3,
             int32 V_4,
             char[] V_5,
             string[] V_6,
             bool V_7,
             class Game.BlocksManager/'<>c__DisplayClass17_0' V_8,
             bool V_9,
             object[] V_10,
             bool V_11,
             class [Survivalcraft]Game.Block V_12,
             class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo> V_13,
             bool V_14,
             object[] V_15,
             bool V_16,
             object[] V_17,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo> V_18,
             class [System.Reflection]System.Reflection.FieldInfo V_19,
             bool V_20,
             int32 V_21,
             string V_22,
             string V_23,
             bool V_24,
             class [System.Reflection]System.Reflection.FieldInfo V_25,
             object V_26,
             bool V_27,
             object[] V_28,
             bool V_29,
             class Game.BlocksManager/'<>c__DisplayClass17_1' V_30,
             bool V_31,
             class [Survivalcraft]Game.Block V_32,
             bool V_33,
             object[] V_34,
             bool V_35,
             bool V_36,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.Block> V_37,
             class [Survivalcraft]Game.Block V_38,
             object[] V_39)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldstr      "\r"
    IL_000d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0012:  callvirt   instance string [System.Runtime]System.String::Replace(string,
                                                                                string)
    IL_0017:  starg.s    data
    IL_0019:  ldc.i4.1
    IL_001a:  newarr     [System.Runtime]System.Char
    IL_001f:  dup
    IL_0020:  ldc.i4.0
    IL_0021:  ldc.i4.s   10
    IL_0023:  stelem.i2
    IL_0024:  stloc.1
    IL_0025:  ldarg.0
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  callvirt   instance string[] [System.Runtime]System.String::Split(char[],
                                                                                valuetype [System.Runtime]System.StringSplitOptions)
    IL_002d:  stloc.2
    IL_002e:  ldnull
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  stloc.s    V_4
    IL_0033:  br         IL_0334

    IL_0038:  nop
    IL_0039:  ldc.i4.1
    IL_003a:  newarr     [System.Runtime]System.Char
    IL_003f:  dup
    IL_0040:  ldc.i4.0
    IL_0041:  ldc.i4.s   59
    IL_0043:  stelem.i2
    IL_0044:  stloc.s    V_5
    IL_0046:  ldloc.2
    IL_0047:  ldloc.s    V_4
    IL_0049:  ldelem.ref
    IL_004a:  ldloc.s    V_5
    IL_004c:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0051:  stloc.s    V_6
    IL_0053:  ldloc.s    V_4
    IL_0055:  ldc.i4.0
    IL_0056:  ceq
    IL_0058:  stloc.s    V_7
    IL_005a:  ldloc.s    V_7
    IL_005c:  brfalse.s  IL_0082

    IL_005e:  nop
    IL_005f:  ldloc.s    V_6
    IL_0061:  ldlen
    IL_0062:  conv.i4
    IL_0063:  ldc.i4.1
    IL_0064:  sub
    IL_0065:  newarr     [System.Runtime]System.String
    IL_006a:  stloc.3
    IL_006b:  ldloc.s    V_6
    IL_006d:  ldc.i4.1
    IL_006e:  ldloc.3
    IL_006f:  ldc.i4.0
    IL_0070:  ldloc.s    V_6
    IL_0072:  ldlen
    IL_0073:  conv.i4
    IL_0074:  ldc.i4.1
    IL_0075:  sub
    IL_0076:  call       void [System.Runtime]System.Array::Copy(class [System.Runtime]System.Array,
                                                                 int32,
                                                                 class [System.Runtime]System.Array,
                                                                 int32,
                                                                 int32)
    IL_007b:  nop
    IL_007c:  nop
    IL_007d:  br         IL_032d

    IL_0082:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass17_0'::.ctor()
    IL_0087:  stloc.s    V_8
    IL_0089:  nop
    IL_008a:  ldloc.s    V_6
    IL_008c:  ldlen
    IL_008d:  conv.i4
    IL_008e:  ldloc.3
    IL_008f:  ldlen
    IL_0090:  conv.i4
    IL_0091:  ldc.i4.1
    IL_0092:  add
    IL_0093:  ceq
    IL_0095:  ldc.i4.0
    IL_0096:  ceq
    IL_0098:  stloc.s    V_9
    IL_009a:  ldloc.s    V_9
    IL_009c:  brfalse.s  IL_00cc

    IL_009e:  nop
    IL_009f:  ldc.i4.1
    IL_00a0:  newarr     [System.Runtime]System.Object
    IL_00a5:  dup
    IL_00a6:  ldc.i4.0
    IL_00a7:  ldloc.s    V_6
    IL_00a9:  ldlen
    IL_00aa:  brtrue.s   IL_00b3

    IL_00ac:  ldstr      "unknown"
    IL_00b1:  br.s       IL_00b7

    IL_00b3:  ldloc.s    V_6
    IL_00b5:  ldc.i4.0
    IL_00b6:  ldelem.ref
    IL_00b7:  stelem.ref
    IL_00b8:  stloc.s    V_10
    IL_00ba:  ldstr      "Not enough field values for block \"{0}\"."
    IL_00bf:  ldloc.s    V_10
    IL_00c1:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_00c6:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_00cb:  throw

    IL_00cc:  ldloc.s    V_8
    IL_00ce:  ldloc.s    V_6
    IL_00d0:  ldc.i4.0
    IL_00d1:  ldelem.ref
    IL_00d2:  stfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_00d7:  ldloc.s    V_8
    IL_00d9:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_00de:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_00e3:  ldc.i4.0
    IL_00e4:  ceq
    IL_00e6:  stloc.s    V_11
    IL_00e8:  ldloc.s    V_11
    IL_00ea:  brfalse    IL_032c

    IL_00ef:  nop
    IL_00f0:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_00f5:  ldloc.s    V_8
    IL_00f7:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass17_0'::'<LoadBlocksData>b__0'(class [Survivalcraft]Game.Block)
    IL_00fd:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_0102:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_0107:  stloc.s    V_12
    IL_0109:  ldloc.s    V_12
    IL_010b:  ldnull
    IL_010c:  ceq
    IL_010e:  stloc.s    V_14
    IL_0110:  ldloc.s    V_14
    IL_0112:  brfalse.s  IL_0139

    IL_0114:  nop
    IL_0115:  ldc.i4.1
    IL_0116:  newarr     [System.Runtime]System.Object
    IL_011b:  dup
    IL_011c:  ldc.i4.0
    IL_011d:  ldloc.s    V_8
    IL_011f:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_0124:  stelem.ref
    IL_0125:  stloc.s    V_15
    IL_0127:  ldstr      "Block \"{0}\" not found when loading block data."
    IL_012c:  ldloc.s    V_15
    IL_012e:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0133:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0138:  throw

    IL_0139:  ldloc.0
    IL_013a:  ldloc.s    V_12
    IL_013c:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::ContainsKey(!0)
    IL_0141:  stloc.s    V_16
    IL_0143:  ldloc.s    V_16
    IL_0145:  brfalse.s  IL_016c

    IL_0147:  nop
    IL_0148:  ldc.i4.1
    IL_0149:  newarr     [System.Runtime]System.Object
    IL_014e:  dup
    IL_014f:  ldc.i4.0
    IL_0150:  ldloc.s    V_8
    IL_0152:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_0'::typeName
    IL_0157:  stelem.ref
    IL_0158:  stloc.s    V_17
    IL_015a:  ldstr      "Data for block \"{0}\" specified more than once when"
    + " loading block data."
    IL_015f:  ldloc.s    V_17
    IL_0161:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0166:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_016b:  throw

    IL_016c:  ldloc.0
    IL_016d:  ldloc.s    V_12
    IL_016f:  ldc.i4.1
    IL_0170:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::Add(!0,
                                                                                                                                                    !1)
    IL_0175:  nop
    IL_0176:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::.ctor()
    IL_017b:  stloc.s    V_13
    IL_017d:  nop
    IL_017e:  ldloc.s    V_12
    IL_0180:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
    IL_0185:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo> [System.Reflection.Extensions]System.Reflection.RuntimeReflectionExtensions::GetRuntimeFields(class [System.Runtime]System.Type)
    IL_018a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [System.Reflection]System.Reflection.FieldInfo>::GetEnumerator()
    IL_018f:  stloc.s    V_18
    .try
    {
      IL_0191:  br.s       IL_01cd

      IL_0193:  ldloc.s    V_18
      IL_0195:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [System.Reflection]System.Reflection.FieldInfo>::get_Current()
      IL_019a:  stloc.s    V_19
      IL_019c:  nop
      IL_019d:  ldloc.s    V_19
      IL_019f:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsPublic()
      IL_01a4:  brfalse.s  IL_01b2

      IL_01a6:  ldloc.s    V_19
      IL_01a8:  callvirt   instance bool [System.Reflection]System.Reflection.FieldInfo::get_IsStatic()
      IL_01ad:  ldc.i4.0
      IL_01ae:  ceq
      IL_01b0:  br.s       IL_01b3

      IL_01b2:  ldc.i4.0
      IL_01b3:  stloc.s    V_20
      IL_01b5:  ldloc.s    V_20
      IL_01b7:  brfalse.s  IL_01cc

      IL_01b9:  nop
      IL_01ba:  ldloc.s    V_13
      IL_01bc:  ldloc.s    V_19
      IL_01be:  callvirt   instance string [System.Reflection]System.Reflection.MemberInfo::get_Name()
      IL_01c3:  ldloc.s    V_19
      IL_01c5:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::Add(!0,
                                                                                                                                                                             !1)
      IL_01ca:  nop
      IL_01cb:  nop
      IL_01cc:  nop
      IL_01cd:  ldloc.s    V_18
      IL_01cf:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_01d4:  brtrue.s   IL_0193

      IL_01d6:  leave.s    IL_01e5

    }  // end .try
    finally
    {
      IL_01d8:  ldloc.s    V_18
      IL_01da:  brfalse.s  IL_01e4

      IL_01dc:  ldloc.s    V_18
      IL_01de:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01e3:  nop
      IL_01e4:  endfinally
    }  // end handler
    IL_01e5:  ldc.i4.1
    IL_01e6:  stloc.s    V_21
    IL_01e8:  br         IL_031a

    IL_01ed:  nop
    IL_01ee:  ldloc.3
    IL_01ef:  ldloc.s    V_21
    IL_01f1:  ldc.i4.1
    IL_01f2:  sub
    IL_01f3:  ldelem.ref
    IL_01f4:  stloc.s    V_22
    IL_01f6:  ldloc.s    V_6
    IL_01f8:  ldloc.s    V_21
    IL_01fa:  ldelem.ref
    IL_01fb:  stloc.s    V_23
    IL_01fd:  ldloc.s    V_23
    IL_01ff:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0204:  ldc.i4.0
    IL_0205:  ceq
    IL_0207:  stloc.s    V_24
    IL_0209:  ldloc.s    V_24
    IL_020b:  brfalse    IL_0313

    IL_0210:  nop
    IL_0211:  ldloc.s    V_13
    IL_0213:  ldloc.s    V_22
    IL_0215:  ldloca.s   V_25
    IL_0217:  callvirt   instance bool class [System.Collections]System.Collections.Generic.Dictionary`2<string,class [System.Reflection]System.Reflection.FieldInfo>::TryGetValue(!0,
                                                                                                                                                                                   !1&)
    IL_021c:  ldc.i4.0
    IL_021d:  ceq
    IL_021f:  stloc.s    V_27
    IL_0221:  ldloc.s    V_27
    IL_0223:  brfalse.s  IL_0245

    IL_0225:  nop
    IL_0226:  ldc.i4.1
    IL_0227:  newarr     [System.Runtime]System.Object
    IL_022c:  dup
    IL_022d:  ldc.i4.0
    IL_022e:  ldloc.s    V_22
    IL_0230:  stelem.ref
    IL_0231:  stloc.s    V_28
    IL_0233:  ldstr      "Field \"{0}\" not found or not accessible when loadi"
    + "ng block data."
    IL_0238:  ldloc.s    V_28
    IL_023a:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_023f:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0244:  throw

    IL_0245:  ldnull
    IL_0246:  stloc.s    V_26
    IL_0248:  ldloc.s    V_23
    IL_024a:  ldstr      "#"
    IL_024f:  callvirt   instance bool [System.Runtime]System.String::StartsWith(string)
    IL_0254:  stloc.s    V_29
    IL_0256:  ldloc.s    V_29
    IL_0258:  brfalse    IL_02f4

    IL_025d:  newobj     instance void Game.BlocksManager/'<>c__DisplayClass17_1'::.ctor()
    IL_0262:  stloc.s    V_30
    IL_0264:  nop
    IL_0265:  ldloc.s    V_30
    IL_0267:  ldloc.s    V_23
    IL_0269:  ldc.i4.1
    IL_026a:  callvirt   instance string [System.Runtime]System.String::Substring(int32)
    IL_026f:  stfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_0274:  ldloc.s    V_30
    IL_0276:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_027b:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0280:  stloc.s    V_31
    IL_0282:  ldloc.s    V_31
    IL_0284:  brfalse.s  IL_0298

    IL_0286:  nop
    IL_0287:  ldloc.s    V_12
    IL_0289:  ldfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_028e:  box        [System.Runtime]System.Int32
    IL_0293:  stloc.s    V_26
    IL_0295:  nop
    IL_0296:  br.s       IL_02f1

    IL_0298:  nop
    IL_0299:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_029e:  ldloc.s    V_30
    IL_02a0:  ldftn      instance bool Game.BlocksManager/'<>c__DisplayClass17_1'::'<LoadBlocksData>b__1'(class [Survivalcraft]Game.Block)
    IL_02a6:  newobj     instance void class [System.Runtime]System.Func`2<class [Survivalcraft]Game.Block,bool>::.ctor(object,
                                                                                                                        native int)
    IL_02ab:  call       !!0 [System.Linq]System.Linq.Enumerable::FirstOrDefault<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                  class [System.Runtime]System.Func`2<!!0,bool>)
    IL_02b0:  stloc.s    V_32
    IL_02b2:  ldloc.s    V_32
    IL_02b4:  ldnull
    IL_02b5:  ceq
    IL_02b7:  stloc.s    V_33
    IL_02b9:  ldloc.s    V_33
    IL_02bb:  brfalse.s  IL_02e2

    IL_02bd:  nop
    IL_02be:  ldc.i4.1
    IL_02bf:  newarr     [System.Runtime]System.Object
    IL_02c4:  dup
    IL_02c5:  ldc.i4.0
    IL_02c6:  ldloc.s    V_30
    IL_02c8:  ldfld      string Game.BlocksManager/'<>c__DisplayClass17_1'::refTypeName
    IL_02cd:  stelem.ref
    IL_02ce:  stloc.s    V_34
    IL_02d0:  ldstr      "Reference block \"{0}\" not found when loading block"
    + " data."
    IL_02d5:  ldloc.s    V_34
    IL_02d7:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_02dc:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_02e1:  throw

    IL_02e2:  ldloc.s    V_32
    IL_02e4:  ldfld      int32 [Survivalcraft]Game.Block::BlockIndex
    IL_02e9:  box        [System.Runtime]System.Int32
    IL_02ee:  stloc.s    V_26
    IL_02f0:  nop
    IL_02f1:  nop
    IL_02f2:  br.s       IL_0306

    IL_02f4:  nop
    IL_02f5:  ldloc.s    V_25
    IL_02f7:  callvirt   instance class [System.Runtime]System.Type [System.Reflection]System.Reflection.FieldInfo::get_FieldType()
    IL_02fc:  ldloc.s    V_23
    IL_02fe:  call       object [Engine]Engine.Serialization.HumanReadableConverter::ConvertFromString(class [System.Runtime]System.Type,
                                                                                                       string)
    IL_0303:  stloc.s    V_26
    IL_0305:  nop
    IL_0306:  ldloc.s    V_25
    IL_0308:  ldloc.s    V_12
    IL_030a:  ldloc.s    V_26
    IL_030c:  callvirt   instance void [System.Reflection]System.Reflection.FieldInfo::SetValue(object,
                                                                                                object)
    IL_0311:  nop
    IL_0312:  nop
    IL_0313:  nop
    IL_0314:  ldloc.s    V_21
    IL_0316:  ldc.i4.1
    IL_0317:  add
    IL_0318:  stloc.s    V_21
    IL_031a:  ldloc.s    V_21
    IL_031c:  ldloc.s    V_6
    IL_031e:  ldlen
    IL_031f:  conv.i4
    IL_0320:  clt
    IL_0322:  stloc.s    V_35
    IL_0324:  ldloc.s    V_35
    IL_0326:  brtrue     IL_01ed

    IL_032b:  nop
    IL_032c:  nop
    IL_032d:  nop
    IL_032e:  ldloc.s    V_4
    IL_0330:  ldc.i4.1
    IL_0331:  add
    IL_0332:  stloc.s    V_4
    IL_0334:  ldloc.s    V_4
    IL_0336:  ldloc.2
    IL_0337:  ldlen
    IL_0338:  conv.i4
    IL_0339:  clt
    IL_033b:  stloc.s    V_36
    IL_033d:  ldloc.s    V_36
    IL_033f:  brtrue     IL_0038

    IL_0344:  nop
    IL_0345:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_034a:  ldloc.0
    IL_034b:  callvirt   instance class [System.Collections]System.Collections.Generic.Dictionary`2/KeyCollection<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<class [Survivalcraft]Game.Block,bool>::get_Keys()
    IL_0350:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0> [System.Linq]System.Linq.Enumerable::Except<class [Survivalcraft]Game.Block>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0355:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<class [Survivalcraft]Game.Block>::GetEnumerator()
    IL_035a:  stloc.s    V_37
    .try
    {
      IL_035c:  br.s       IL_0391

      IL_035e:  ldloc.s    V_37
      IL_0360:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<class [Survivalcraft]Game.Block>::get_Current()
      IL_0365:  stloc.s    V_38
      IL_0367:  nop
      IL_0368:  ldc.i4.1
      IL_0369:  newarr     [System.Runtime]System.Object
      IL_036e:  dup
      IL_036f:  ldc.i4.0
      IL_0370:  ldloc.s    V_38
      IL_0372:  callvirt   instance class [System.Runtime]System.Type [System.Runtime]System.Object::GetType()
      IL_0377:  callvirt   instance string [System.Runtime]System.Type::get_Name()
      IL_037c:  stelem.ref
      IL_037d:  stloc.s    V_39
      IL_037f:  ldstr      "Data for block \"{0}\" not found when loading blocks"
      + " data."
      IL_0384:  ldloc.s    V_39
      IL_0386:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_038b:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
      IL_0390:  throw

      IL_0391:  ldloc.s    V_37
      IL_0393:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0398:  brtrue.s   IL_035e

      IL_039a:  leave.s    IL_03a9

    }  // end .try
    finally
    {
      IL_039c:  ldloc.s    V_37
      IL_039e:  brfalse.s  IL_03a8

      IL_03a0:  ldloc.s    V_37
      IL_03a2:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_03a7:  nop
      IL_03a8:  endfinally
    }  // end handler
    IL_03a9:  ret
  } // end of method BlocksManager::LoadBlocksData

  .method private hidebysig static valuetype [Engine]Engine.Vector4 
          TextureSlotToTextureCoords(int32 slot) cil managed
  {
    // 代码大小       91 (0x5b)
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype [Engine]Engine.Vector4 V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   16
    IL_0004:  div
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.s   16
    IL_0009:  rem
    IL_000a:  stloc.1
    IL_000b:  ldloc.1
    IL_000c:  conv.r4
    IL_000d:  ldc.r4     1.e-003
    IL_0012:  add
    IL_0013:  ldc.r4     16.
    IL_0018:  div
    IL_0019:  stloc.2
    IL_001a:  ldloc.0
    IL_001b:  conv.r4
    IL_001c:  ldc.r4     1.e-003
    IL_0021:  add
    IL_0022:  ldc.r4     16.
    IL_0027:  div
    IL_0028:  stloc.3
    IL_0029:  ldloc.1
    IL_002a:  ldc.i4.1
    IL_002b:  add
    IL_002c:  conv.r4
    IL_002d:  ldc.r4     1.e-003
    IL_0032:  sub
    IL_0033:  ldc.r4     16.
    IL_0038:  div
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.2
    IL_003c:  ldloc.3
    IL_003d:  ldloc.s    V_4
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.1
    IL_0041:  add
    IL_0042:  conv.r4
    IL_0043:  ldc.r4     1.e-003
    IL_0048:  sub
    IL_0049:  ldc.r4     16.
    IL_004e:  div
    IL_004f:  newobj     instance void [Engine]Engine.Vector4::.ctor(float32,
                                                                     float32,
                                                                     float32,
                                                                     float32)
    IL_0054:  stloc.s    V_5
    IL_0056:  br.s       IL_0058

    IL_0058:  ldloc.s    V_5
    IL_005a:  ret
  } // end of method BlocksManager::TextureSlotToTextureCoords

  .method public hidebysig specialname static 
          class [Survivalcraft]Game.Block[] 
          get_Blocks() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (class [Survivalcraft]Game.Block[] V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [Survivalcraft]Game.Block[] Game.BlocksManager::m_blocks
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BlocksManager::get_Blocks

  .method public hidebysig specialname static 
          valuetype [Engine]Engine.ReadOnlyList`1<string> 
          get_Categories() cil managed
  {
    // 代码大小       16 (0x10)
    .maxstack  1
    .locals init (valuetype [Engine]Engine.ReadOnlyList`1<string> V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [System.Collections]System.Collections.Generic.List`1<string> Game.BlocksManager::m_categories
    IL_0006:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<string>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_000b:  stloc.0
    IL_000c:  br.s       IL_000e

    IL_000e:  ldloc.0
    IL_000f:  ret
  } // end of method BlocksManager::get_Categories

  .method public hidebysig specialname static 
          class [Survivalcraft]Game.FluidBlock[] 
          get_FluidBlocks() cil managed
  {
    // 代码大小       11 (0xb)
    .maxstack  1
    .locals init (class [Survivalcraft]Game.FluidBlock[] V_0)
    IL_0000:  nop
    IL_0001:  ldsfld     class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::m_fluidBlocks
    IL_0006:  stloc.0
    IL_0007:  br.s       IL_0009

    IL_0009:  ldloc.0
    IL_000a:  ret
  } // end of method BlocksManager::get_FluidBlocks

  .property class [Survivalcraft]Game.Block[]
          Blocks()
  {
    .get class [Survivalcraft]Game.Block[] Game.BlocksManager::get_Blocks()
  } // end of property BlocksManager::Blocks
  .property valuetype [Engine]Engine.ReadOnlyList`1<string>
          Categories()
  {
    .get valuetype [Engine]Engine.ReadOnlyList`1<string> Game.BlocksManager::get_Categories()
  } // end of property BlocksManager::Categories
  .property class [Survivalcraft]Game.FluidBlock[]
          FluidBlocks()
  {
    .get class [Survivalcraft]Game.FluidBlock[] Game.BlocksManager::get_FluidBlocks()
  } // end of property BlocksManager::FluidBlocks
} // end of class Game.BlocksManager
