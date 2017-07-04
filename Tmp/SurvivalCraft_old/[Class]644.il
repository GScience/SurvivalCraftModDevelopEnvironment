.class public auto ansi beforefieldinit Game.SubsystemTreasureGeneratorBlockBehavior
       extends Game.SubsystemBlockBehavior
{
  .class sequential ansi sealed nested private beforefieldinit TreasureData
         extends [System.Runtime]System.ValueType
  {
    .field public int32 Value
    .field public float32 Probability
    .field public int32 MaxCount
  } // end of class TreasureData

  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Game.SubsystemTreasureGeneratorBlockBehavior/'<>c' '<>9'
    .field public static class [System.Runtime]System.Func`2<valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData,float32> '<>9__6_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::.ctor()
      IL_0005:  stsfld     class Game.SubsystemTreasureGeneratorBlockBehavior/'<>c' Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::'<>9'
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

    .method assembly hidebysig instance float32 
            '<OnNeighborBlockChanged>b__6_0'(valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData t) cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  ldfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
      IL_0006:  ret
    } // end of method '<>c'::'<OnNeighborBlockChanged>b__6_0'

  } // end of class '<>c'

  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.Random m_random
  .field private static valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData[] m_treasureData
  .method public hidebysig specialname virtual 
          instance int32[]  get_HandledBlocks() cil managed
  {
    // 代码大小       15 (0xf)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4     0xbe
    IL_000d:  stelem.i4
    IL_000e:  ret
  } // end of method SubsystemTreasureGeneratorBlockBehavior::get_HandledBlocks

  .method public hidebysig virtual instance void 
          OnNeighborBlockChanged(int32 x,
                                 int32 y,
                                 int32 z,
                                 int32 neighborX,
                                 int32 neighborY,
                                 int32 neighborZ) cil managed
  {
    // 代码大小       469 (0x1d5)
    .maxstack  8
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             float32 V_3,
             float32 V_4,
             valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData[] V_5,
             int32 V_6,
             valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData V_7,
             int32 V_8,
             int32 V_9,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0006:  callvirt   instance class Game.Terrain Game.SubsystemTerrain::get_Terrain()
    IL_000b:  ldarg.s    neighborX
    IL_000d:  ldarg.s    neighborY
    IL_000f:  ldarg.s    neighborZ
    IL_0011:  callvirt   instance int32 Game.Terrain::GetCellContents(int32,
                                                                      int32,
                                                                      int32)
    IL_0016:  stloc.0
    IL_0017:  ldloc.0
    IL_0018:  brfalse.s  IL_0022

    IL_001a:  ldloc.0
    IL_001b:  ldc.i4.s   18
    IL_001d:  bne.un     IL_01d4

    IL_0022:  ldarg.0
    IL_0023:  call       instance class Game.SubsystemTerrain Game.SubsystemBlockBehavior::get_SubsystemTerrain()
    IL_0028:  ldarg.1
    IL_0029:  ldarg.2
    IL_002a:  ldarg.3
    IL_002b:  ldc.i4.0
    IL_002c:  call       int32 Game.Terrain::MakeBlockValue(int32)
    IL_0031:  ldc.i4.1
    IL_0032:  callvirt   instance void Game.SubsystemTerrain::ChangeCell(int32,
                                                                         int32,
                                                                         int32,
                                                                         int32,
                                                                         bool)
    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_003d:  ldc.r4     0.15000001
    IL_0042:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0047:  brfalse    IL_01d4

    IL_004c:  ldc.i4.0
    IL_004d:  stloc.1
    IL_004e:  ldc.i4.0
    IL_004f:  stloc.2
    IL_0050:  ldsfld     valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData[] Game.SubsystemTreasureGeneratorBlockBehavior::m_treasureData
    IL_0055:  ldsfld     class [System.Runtime]System.Func`2<valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData,float32> Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::'<>9__6_0'
    IL_005a:  dup
    IL_005b:  brtrue.s   IL_0074

    IL_005d:  pop
    IL_005e:  ldsfld     class Game.SubsystemTreasureGeneratorBlockBehavior/'<>c' Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::'<>9'
    IL_0063:  ldftn      instance float32 Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::'<OnNeighborBlockChanged>b__6_0'(valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData)
    IL_0069:  newobj     instance void class [System.Runtime]System.Func`2<valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData,float32>::.ctor(object,
                                                                                                                                                               native int)
    IL_006e:  dup
    IL_006f:  stsfld     class [System.Runtime]System.Func`2<valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData,float32> Game.SubsystemTreasureGeneratorBlockBehavior/'<>c'::'<>9__6_0'
    IL_0074:  call       float32 [System.Linq]System.Linq.Enumerable::Sum<valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                               class [System.Runtime]System.Func`2<!!0,float32>)
    IL_0079:  stloc.3
    IL_007a:  ldarg.0
    IL_007b:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_0080:  ldc.r4     0.0
    IL_0085:  ldloc.3
    IL_0086:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_008b:  stloc.s    V_4
    IL_008d:  ldsfld     valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData[] Game.SubsystemTreasureGeneratorBlockBehavior::m_treasureData
    IL_0092:  stloc.s    V_5
    IL_0094:  ldc.i4.0
    IL_0095:  stloc.s    V_6
    IL_0097:  br.s       IL_00dd

    IL_0099:  ldloc.s    V_5
    IL_009b:  ldloc.s    V_6
    IL_009d:  ldelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_00a2:  stloc.s    V_7
    IL_00a4:  ldloc.s    V_4
    IL_00a6:  ldloc.s    V_7
    IL_00a8:  ldfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_00ad:  sub
    IL_00ae:  stloc.s    V_4
    IL_00b0:  ldloc.s    V_4
    IL_00b2:  ldc.r4     0.0
    IL_00b7:  bgt.un.s   IL_00d7

    IL_00b9:  ldloc.s    V_7
    IL_00bb:  ldfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_00c0:  stloc.1
    IL_00c1:  ldarg.0
    IL_00c2:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_00c7:  ldc.i4.1
    IL_00c8:  ldloc.s    V_7
    IL_00ca:  ldfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_00cf:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_00d4:  stloc.2
    IL_00d5:  br.s       IL_00e5

    IL_00d7:  ldloc.s    V_6
    IL_00d9:  ldc.i4.1
    IL_00da:  add
    IL_00db:  stloc.s    V_6
    IL_00dd:  ldloc.s    V_6
    IL_00df:  ldloc.s    V_5
    IL_00e1:  ldlen
    IL_00e2:  conv.i4
    IL_00e3:  blt.s      IL_0099

    IL_00e5:  ldloc.1
    IL_00e6:  brfalse    IL_01d4

    IL_00eb:  ldloc.2
    IL_00ec:  ldc.i4.0
    IL_00ed:  ble        IL_01d4

    IL_00f2:  ldc.i4.0
    IL_00f3:  stloc.s    V_9
    IL_00f5:  br.s       IL_0154

    IL_00f7:  ldarg.0
    IL_00f8:  ldfld      class Game.SubsystemPickables Game.SubsystemTreasureGeneratorBlockBehavior::m_subsystemPickables
    IL_00fd:  ldloc.1
    IL_00fe:  ldc.i4.1
    IL_00ff:  ldarg.1
    IL_0100:  conv.r4
    IL_0101:  ldarg.2
    IL_0102:  conv.r4
    IL_0103:  ldarg.3
    IL_0104:  conv.r4
    IL_0105:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_0110:  ldc.r4     0.1
    IL_0115:  ldc.r4     0.40000001
    IL_011a:  ldc.i4.0
    IL_011b:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_0120:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0125:  ldc.r4     0.5
    IL_012a:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_012f:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_0134:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0139:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_013e:  ldloca.s   V_10
    IL_0140:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_0146:  ldloc.s    V_10
    IL_0148:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_014d:  pop
    IL_014e:  ldloc.s    V_9
    IL_0150:  ldc.i4.1
    IL_0151:  add
    IL_0152:  stloc.s    V_9
    IL_0154:  ldloc.s    V_9
    IL_0156:  ldloc.2
    IL_0157:  blt.s      IL_00f7

    IL_0159:  ldarg.0
    IL_015a:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_015f:  ldc.i4.3
    IL_0160:  ldc.i4.6
    IL_0161:  callvirt   instance int32 Game.Random::UniformInt(int32,
                                                                int32)
    IL_0166:  stloc.s    V_8
    IL_0168:  ldc.i4.0
    IL_0169:  stloc.s    V_11
    IL_016b:  br.s       IL_01ce

    IL_016d:  ldarg.0
    IL_016e:  ldfld      class Game.SubsystemPickables Game.SubsystemTreasureGeneratorBlockBehavior::m_subsystemPickables
    IL_0173:  ldc.i4     0xf8
    IL_0178:  ldc.i4.1
    IL_0179:  ldarg.1
    IL_017a:  conv.r4
    IL_017b:  ldarg.2
    IL_017c:  conv.r4
    IL_017d:  ldarg.3
    IL_017e:  conv.r4
    IL_017f:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0184:  ldarg.0
    IL_0185:  ldfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_018a:  ldc.r4     0.1
    IL_018f:  ldc.r4     0.40000001
    IL_0194:  ldc.i4.0
    IL_0195:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.Random::UniformVector3(float32,
                                                                                               float32,
                                                                                               bool)
    IL_019a:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_019f:  ldc.r4     0.5
    IL_01a4:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32)
    IL_01a9:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01ae:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_01b3:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_01b8:  ldloca.s   V_10
    IL_01ba:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_01c0:  ldloc.s    V_10
    IL_01c2:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_01c7:  pop
    IL_01c8:  ldloc.s    V_11
    IL_01ca:  ldc.i4.1
    IL_01cb:  add
    IL_01cc:  stloc.s    V_11
    IL_01ce:  ldloc.s    V_11
    IL_01d0:  ldloc.s    V_8
    IL_01d2:  blt.s      IL_016d

    IL_01d4:  ret
  } // end of method SubsystemTreasureGeneratorBlockBehavior::OnNeighborBlockChanged

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary) cil managed
  {
    // 代码大小       26 (0x1a)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance void Game.SubsystemBlockBehavior::Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary)
    IL_0007:  ldarg.0
    IL_0008:  ldarg.0
    IL_0009:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Subsystem::get_Project()
    IL_000e:  ldc.i4.1
    IL_000f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0014:  stfld      class Game.SubsystemPickables Game.SubsystemTreasureGeneratorBlockBehavior::m_subsystemPickables
    IL_0019:  ret
  } // end of method SubsystemTreasureGeneratorBlockBehavior::Load

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void Game.Random::.ctor()
    IL_0006:  stfld      class Game.Random Game.SubsystemTreasureGeneratorBlockBehavior::m_random
    IL_000b:  ldarg.0
    IL_000c:  call       instance void Game.SubsystemBlockBehavior::.ctor()
    IL_0011:  ret
  } // end of method SubsystemTreasureGeneratorBlockBehavior::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       3003 (0xbbb)
    .maxstack  8
    .locals init (valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData V_0)
    IL_0000:  ldc.i4.s   60
    IL_0002:  newarr     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0007:  dup
    IL_0008:  ldc.i4.0
    IL_0009:  ldloca.s   V_0
    IL_000b:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0011:  ldloca.s   V_0
    IL_0013:  ldc.i4.s   79
    IL_0015:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_001a:  ldloca.s   V_0
    IL_001c:  ldc.r4     4.
    IL_0021:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0026:  ldloca.s   V_0
    IL_0028:  ldc.i4.4
    IL_0029:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_002e:  ldloc.0
    IL_002f:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0034:  dup
    IL_0035:  ldc.i4.1
    IL_0036:  ldloca.s   V_0
    IL_0038:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_003e:  ldloca.s   V_0
    IL_0040:  ldc.i4.s   111
    IL_0042:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0047:  ldloca.s   V_0
    IL_0049:  ldc.r4     1.
    IL_004e:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0053:  ldloca.s   V_0
    IL_0055:  ldc.i4.1
    IL_0056:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_005b:  ldloc.0
    IL_005c:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0061:  dup
    IL_0062:  ldc.i4.2
    IL_0063:  ldloca.s   V_0
    IL_0065:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_006b:  ldloca.s   V_0
    IL_006d:  ldc.i4.s   43
    IL_006f:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0074:  ldloca.s   V_0
    IL_0076:  ldc.r4     4.
    IL_007b:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0080:  ldloca.s   V_0
    IL_0082:  ldc.i4.4
    IL_0083:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0088:  ldloc.0
    IL_0089:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_008e:  dup
    IL_008f:  ldc.i4.3
    IL_0090:  ldloca.s   V_0
    IL_0092:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0098:  ldloca.s   V_0
    IL_009a:  ldc.i4.s   40
    IL_009c:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_00a1:  ldloca.s   V_0
    IL_00a3:  ldc.r4     2.
    IL_00a8:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_00ad:  ldloca.s   V_0
    IL_00af:  ldc.i4.3
    IL_00b0:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_00b5:  ldloc.0
    IL_00b6:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_00bb:  dup
    IL_00bc:  ldc.i4.4
    IL_00bd:  ldloca.s   V_0
    IL_00bf:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_00c5:  ldloca.s   V_0
    IL_00c7:  ldc.i4.s   42
    IL_00c9:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_00ce:  ldloca.s   V_0
    IL_00d0:  ldc.r4     4.
    IL_00d5:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_00da:  ldloca.s   V_0
    IL_00dc:  ldc.i4.3
    IL_00dd:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_00e2:  ldloc.0
    IL_00e3:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_00e8:  dup
    IL_00e9:  ldc.i4.5
    IL_00ea:  ldloca.s   V_0
    IL_00ec:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_00f2:  ldloca.s   V_0
    IL_00f4:  ldc.i4.s   22
    IL_00f6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_00fb:  ldloca.s   V_0
    IL_00fd:  ldc.r4     4.
    IL_0102:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0107:  ldloca.s   V_0
    IL_0109:  ldc.i4.4
    IL_010a:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_010f:  ldloc.0
    IL_0110:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0115:  dup
    IL_0116:  ldc.i4.6
    IL_0117:  ldloca.s   V_0
    IL_0119:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_011f:  ldloca.s   V_0
    IL_0121:  ldc.i4.s   103
    IL_0123:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0128:  ldloca.s   V_0
    IL_012a:  ldc.r4     2.
    IL_012f:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0134:  ldloca.s   V_0
    IL_0136:  ldc.i4.4
    IL_0137:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_013c:  ldloc.0
    IL_013d:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0142:  dup
    IL_0143:  ldc.i4.7
    IL_0144:  ldloca.s   V_0
    IL_0146:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_014c:  ldloca.s   V_0
    IL_014e:  ldc.i4     0x96
    IL_0153:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0158:  ldloca.s   V_0
    IL_015a:  ldc.r4     1.
    IL_015f:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0164:  ldloca.s   V_0
    IL_0166:  ldc.i4.1
    IL_0167:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_016c:  ldloc.0
    IL_016d:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0172:  dup
    IL_0173:  ldc.i4.8
    IL_0174:  ldloca.s   V_0
    IL_0176:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_017c:  ldloca.s   V_0
    IL_017e:  ldc.i4.s   21
    IL_0180:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0185:  ldloca.s   V_0
    IL_0187:  ldc.r4     2.
    IL_018c:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0191:  ldloca.s   V_0
    IL_0193:  ldc.i4.s   16
    IL_0195:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_019a:  ldloc.0
    IL_019b:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_01a0:  dup
    IL_01a1:  ldc.i4.s   9
    IL_01a3:  ldloca.s   V_0
    IL_01a5:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_01ab:  ldloca.s   V_0
    IL_01ad:  ldc.i4     0x9f
    IL_01b2:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_01b7:  ldloca.s   V_0
    IL_01b9:  ldc.r4     2.
    IL_01be:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_01c3:  ldloca.s   V_0
    IL_01c5:  ldc.i4.4
    IL_01c6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_01cb:  ldloc.0
    IL_01cc:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_01d1:  dup
    IL_01d2:  ldc.i4.s   10
    IL_01d4:  ldloca.s   V_0
    IL_01d6:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_01dc:  ldloca.s   V_0
    IL_01de:  ldc.i4     0xcf
    IL_01e3:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_01e8:  ldloca.s   V_0
    IL_01ea:  ldc.r4     2.
    IL_01ef:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_01f4:  ldloca.s   V_0
    IL_01f6:  ldc.i4.4
    IL_01f7:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_01fc:  ldloc.0
    IL_01fd:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0202:  dup
    IL_0203:  ldc.i4.s   11
    IL_0205:  ldloca.s   V_0
    IL_0207:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_020d:  ldloca.s   V_0
    IL_020f:  ldc.i4.s   17
    IL_0211:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0216:  ldloca.s   V_0
    IL_0218:  ldc.r4     2.
    IL_021d:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0222:  ldloca.s   V_0
    IL_0224:  ldc.i4.2
    IL_0225:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_022a:  ldloc.0
    IL_022b:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0230:  dup
    IL_0231:  ldc.i4.s   12
    IL_0233:  ldloca.s   V_0
    IL_0235:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_023b:  ldloca.s   V_0
    IL_023d:  ldc.i4.s   31
    IL_023f:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0244:  ldloca.s   V_0
    IL_0246:  ldc.r4     4.
    IL_024b:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0250:  ldloca.s   V_0
    IL_0252:  ldc.i4.4
    IL_0253:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0258:  ldloc.0
    IL_0259:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_025e:  dup
    IL_025f:  ldc.i4.s   13
    IL_0261:  ldloca.s   V_0
    IL_0263:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0269:  ldloca.s   V_0
    IL_026b:  ldc.i4.s   108
    IL_026d:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0272:  ldloca.s   V_0
    IL_0274:  ldc.r4     4.
    IL_0279:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_027e:  ldloca.s   V_0
    IL_0280:  ldc.i4.8
    IL_0281:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0286:  ldloc.0
    IL_0287:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_028c:  dup
    IL_028d:  ldc.i4.s   14
    IL_028f:  ldloca.s   V_0
    IL_0291:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0297:  ldloca.s   V_0
    IL_0299:  ldc.i4.s   109
    IL_029b:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_02a0:  ldloca.s   V_0
    IL_02a2:  ldc.r4     2.
    IL_02a7:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_02ac:  ldloca.s   V_0
    IL_02ae:  ldc.i4.4
    IL_02af:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_02b4:  ldloc.0
    IL_02b5:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_02ba:  dup
    IL_02bb:  ldc.i4.s   15
    IL_02bd:  ldloca.s   V_0
    IL_02bf:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_02c5:  ldloca.s   V_0
    IL_02c7:  ldc.i4.s   105
    IL_02c9:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_02ce:  ldloca.s   V_0
    IL_02d0:  ldc.r4     1.
    IL_02d5:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_02da:  ldloca.s   V_0
    IL_02dc:  ldc.i4.4
    IL_02dd:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_02e2:  ldloc.0
    IL_02e3:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_02e8:  dup
    IL_02e9:  ldc.i4.s   16
    IL_02eb:  ldloca.s   V_0
    IL_02ed:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_02f3:  ldloca.s   V_0
    IL_02f5:  ldc.i4.s   106
    IL_02f7:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_02fc:  ldloca.s   V_0
    IL_02fe:  ldc.r4     1.
    IL_0303:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0308:  ldloca.s   V_0
    IL_030a:  ldc.i4.2
    IL_030b:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0310:  ldloc.0
    IL_0311:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0316:  dup
    IL_0317:  ldc.i4.s   17
    IL_0319:  ldloca.s   V_0
    IL_031b:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0321:  ldloca.s   V_0
    IL_0323:  ldc.i4.s   107
    IL_0325:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_032a:  ldloca.s   V_0
    IL_032c:  ldc.r4     1.
    IL_0331:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0336:  ldloca.s   V_0
    IL_0338:  ldc.i4.1
    IL_0339:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_033e:  ldloc.0
    IL_033f:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0344:  dup
    IL_0345:  ldc.i4.s   18
    IL_0347:  ldloca.s   V_0
    IL_0349:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_034f:  ldloca.s   V_0
    IL_0351:  ldc.i4     0xea
    IL_0356:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_035b:  ldloca.s   V_0
    IL_035d:  ldc.r4     1.
    IL_0362:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0367:  ldloca.s   V_0
    IL_0369:  ldc.i4.4
    IL_036a:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_036f:  ldloc.0
    IL_0370:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0375:  dup
    IL_0376:  ldc.i4.s   19
    IL_0378:  ldloca.s   V_0
    IL_037a:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0380:  ldloca.s   V_0
    IL_0382:  ldc.i4     0xeb
    IL_0387:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_038c:  ldloca.s   V_0
    IL_038e:  ldc.r4     1.
    IL_0393:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0398:  ldloca.s   V_0
    IL_039a:  ldc.i4.2
    IL_039b:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_03a0:  ldloc.0
    IL_03a1:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_03a6:  dup
    IL_03a7:  ldc.i4.s   20
    IL_03a9:  ldloca.s   V_0
    IL_03ab:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_03b1:  ldloca.s   V_0
    IL_03b3:  ldc.i4     0xec
    IL_03b8:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_03bd:  ldloca.s   V_0
    IL_03bf:  ldc.r4     1.
    IL_03c4:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_03c9:  ldloca.s   V_0
    IL_03cb:  ldc.i4.1
    IL_03cc:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_03d1:  ldloc.0
    IL_03d2:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_03d7:  dup
    IL_03d8:  ldc.i4.s   21
    IL_03da:  ldloca.s   V_0
    IL_03dc:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_03e2:  ldloca.s   V_0
    IL_03e4:  ldc.i4     0x84
    IL_03e9:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_03ee:  ldloca.s   V_0
    IL_03f0:  ldc.r4     2.
    IL_03f5:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_03fa:  ldloca.s   V_0
    IL_03fc:  ldc.i4.2
    IL_03fd:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0402:  ldloc.0
    IL_0403:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0408:  dup
    IL_0409:  ldc.i4.s   22
    IL_040b:  ldloca.s   V_0
    IL_040d:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0413:  ldloca.s   V_0
    IL_0415:  ldc.i4     0xad
    IL_041a:  ldc.i4.0
    IL_041b:  ldc.i4.6
    IL_041c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0421:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0426:  ldloca.s   V_0
    IL_0428:  ldc.r4     2.
    IL_042d:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0432:  ldloca.s   V_0
    IL_0434:  ldc.i4.8
    IL_0435:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_043a:  ldloc.0
    IL_043b:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0440:  dup
    IL_0441:  ldc.i4.s   23
    IL_0443:  ldloca.s   V_0
    IL_0445:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_044b:  ldloca.s   V_0
    IL_044d:  ldc.i4     0xad
    IL_0452:  ldc.i4.0
    IL_0453:  ldc.i4.7
    IL_0454:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0459:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_045e:  ldloca.s   V_0
    IL_0460:  ldc.r4     2.
    IL_0465:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_046a:  ldloca.s   V_0
    IL_046c:  ldc.i4.8
    IL_046d:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0472:  ldloc.0
    IL_0473:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0478:  dup
    IL_0479:  ldc.i4.s   24
    IL_047b:  ldloca.s   V_0
    IL_047d:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0483:  ldloca.s   V_0
    IL_0485:  ldc.i4     0xad
    IL_048a:  ldc.i4.0
    IL_048b:  ldc.i4.5
    IL_048c:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0491:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0496:  ldloca.s   V_0
    IL_0498:  ldc.r4     2.
    IL_049d:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_04a2:  ldloca.s   V_0
    IL_04a4:  ldc.i4.8
    IL_04a5:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_04aa:  ldloc.0
    IL_04ab:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_04b0:  dup
    IL_04b1:  ldc.i4.s   25
    IL_04b3:  ldloca.s   V_0
    IL_04b5:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_04bb:  ldloca.s   V_0
    IL_04bd:  ldc.i4     0xad
    IL_04c2:  ldc.i4.0
    IL_04c3:  ldc.i4.6
    IL_04c4:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_04c9:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_04ce:  ldloca.s   V_0
    IL_04d0:  ldc.r4     2.
    IL_04d5:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_04da:  ldloca.s   V_0
    IL_04dc:  ldc.i4.8
    IL_04dd:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_04e2:  ldloc.0
    IL_04e3:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_04e8:  dup
    IL_04e9:  ldc.i4.s   26
    IL_04eb:  ldloca.s   V_0
    IL_04ed:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_04f3:  ldloca.s   V_0
    IL_04f5:  ldc.i4.s   119
    IL_04f7:  ldc.i4.0
    IL_04f8:  ldc.i4.0
    IL_04f9:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_04fe:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0503:  ldloca.s   V_0
    IL_0505:  ldc.r4     2.
    IL_050a:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_050f:  ldloca.s   V_0
    IL_0511:  ldc.i4.8
    IL_0512:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0517:  ldloc.0
    IL_0518:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_051d:  dup
    IL_051e:  ldc.i4.s   27
    IL_0520:  ldloca.s   V_0
    IL_0522:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0528:  ldloca.s   V_0
    IL_052a:  ldc.i4.s   119
    IL_052c:  ldc.i4.0
    IL_052d:  ldc.i4.1
    IL_052e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0533:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0538:  ldloca.s   V_0
    IL_053a:  ldc.r4     2.
    IL_053f:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0544:  ldloca.s   V_0
    IL_0546:  ldc.i4.8
    IL_0547:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_054c:  ldloc.0
    IL_054d:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0552:  dup
    IL_0553:  ldc.i4.s   28
    IL_0555:  ldloca.s   V_0
    IL_0557:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_055d:  ldloca.s   V_0
    IL_055f:  ldc.i4.s   119
    IL_0561:  ldc.i4.0
    IL_0562:  ldc.i4.2
    IL_0563:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0568:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_056d:  ldloca.s   V_0
    IL_056f:  ldc.r4     2.
    IL_0574:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0579:  ldloca.s   V_0
    IL_057b:  ldc.i4.8
    IL_057c:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0581:  ldloc.0
    IL_0582:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0587:  dup
    IL_0588:  ldc.i4.s   29
    IL_058a:  ldloca.s   V_0
    IL_058c:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0592:  ldloca.s   V_0
    IL_0594:  ldc.i4.s   119
    IL_0596:  ldc.i4.0
    IL_0597:  ldc.i4.3
    IL_0598:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_059d:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_05a2:  ldloca.s   V_0
    IL_05a4:  ldc.r4     2.
    IL_05a9:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_05ae:  ldloca.s   V_0
    IL_05b0:  ldc.i4.8
    IL_05b1:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_05b6:  ldloc.0
    IL_05b7:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_05bc:  dup
    IL_05bd:  ldc.i4.s   30
    IL_05bf:  ldloca.s   V_0
    IL_05c1:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_05c7:  ldloca.s   V_0
    IL_05c9:  ldc.i4     0xbf
    IL_05ce:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_05d3:  ldloca.s   V_0
    IL_05d5:  ldc.r4     4.
    IL_05da:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_05df:  ldloca.s   V_0
    IL_05e1:  ldc.i4.1
    IL_05e2:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_05e7:  ldloc.0
    IL_05e8:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_05ed:  dup
    IL_05ee:  ldc.i4.s   31
    IL_05f0:  ldloca.s   V_0
    IL_05f2:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_05f8:  ldloca.s   V_0
    IL_05fa:  ldc.i4     0xc0
    IL_05ff:  ldc.i4.0
    IL_0600:  ldc.i4.0
    IL_0601:  ldc.i4.8
    IL_0602:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0607:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_060c:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0611:  ldloca.s   V_0
    IL_0613:  ldc.r4     2.
    IL_0618:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_061d:  ldloca.s   V_0
    IL_061f:  ldc.i4.2
    IL_0620:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0625:  ldloc.0
    IL_0626:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_062b:  dup
    IL_062c:  ldc.i4.s   32
    IL_062e:  ldloca.s   V_0
    IL_0630:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0636:  ldloca.s   V_0
    IL_0638:  ldc.i4     0xc0
    IL_063d:  ldc.i4.0
    IL_063e:  ldc.i4.0
    IL_063f:  ldc.i4.2
    IL_0640:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0645:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_064a:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_064f:  ldloca.s   V_0
    IL_0651:  ldc.r4     2.
    IL_0656:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_065b:  ldloca.s   V_0
    IL_065d:  ldc.i4.2
    IL_065e:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0663:  ldloc.0
    IL_0664:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0669:  dup
    IL_066a:  ldc.i4.s   33
    IL_066c:  ldloca.s   V_0
    IL_066e:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0674:  ldloca.s   V_0
    IL_0676:  ldc.i4     0xc0
    IL_067b:  ldc.i4.0
    IL_067c:  ldc.i4.0
    IL_067d:  ldc.i4.3
    IL_067e:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0683:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0688:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_068d:  ldloca.s   V_0
    IL_068f:  ldc.r4     1.
    IL_0694:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0699:  ldloca.s   V_0
    IL_069b:  ldc.i4.2
    IL_069c:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_06a1:  ldloc.0
    IL_06a2:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_06a7:  dup
    IL_06a8:  ldc.i4.s   34
    IL_06aa:  ldloca.s   V_0
    IL_06ac:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_06b2:  ldloca.s   V_0
    IL_06b4:  ldc.i4     0xc0
    IL_06b9:  ldc.i4.0
    IL_06ba:  ldc.i4.0
    IL_06bb:  ldc.i4.4
    IL_06bc:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_06c1:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_06c6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_06cb:  ldloca.s   V_0
    IL_06cd:  ldc.r4     2.
    IL_06d2:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_06d7:  ldloca.s   V_0
    IL_06d9:  ldc.i4.2
    IL_06da:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_06df:  ldloc.0
    IL_06e0:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_06e5:  dup
    IL_06e6:  ldc.i4.s   35
    IL_06e8:  ldloca.s   V_0
    IL_06ea:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_06f0:  ldloca.s   V_0
    IL_06f2:  ldc.i4     0xc8
    IL_06f7:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_06fc:  ldloca.s   V_0
    IL_06fe:  ldc.r4     1.
    IL_0703:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0708:  ldloca.s   V_0
    IL_070a:  ldc.i4.1
    IL_070b:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0710:  ldloc.0
    IL_0711:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0716:  dup
    IL_0717:  ldc.i4.s   36
    IL_0719:  ldloca.s   V_0
    IL_071b:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0721:  ldloca.s   V_0
    IL_0723:  ldc.i4     0xc0
    IL_0728:  ldc.i4.0
    IL_0729:  ldc.i4.0
    IL_072a:  ldc.i4.5
    IL_072b:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_0730:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0735:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_073a:  ldloca.s   V_0
    IL_073c:  ldc.r4     2.
    IL_0741:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0746:  ldloca.s   V_0
    IL_0748:  ldc.i4.2
    IL_0749:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_074e:  ldloc.0
    IL_074f:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0754:  dup
    IL_0755:  ldc.i4.s   37
    IL_0757:  ldloca.s   V_0
    IL_0759:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_075f:  ldloca.s   V_0
    IL_0761:  ldc.i4     0xc0
    IL_0766:  ldc.i4.0
    IL_0767:  ldc.i4.0
    IL_0768:  ldc.i4.6
    IL_0769:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_076e:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_0773:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0778:  ldloca.s   V_0
    IL_077a:  ldc.r4     1.
    IL_077f:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0784:  ldloca.s   V_0
    IL_0786:  ldc.i4.2
    IL_0787:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_078c:  ldloc.0
    IL_078d:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0792:  dup
    IL_0793:  ldc.i4.s   38
    IL_0795:  ldloca.s   V_0
    IL_0797:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_079d:  ldloca.s   V_0
    IL_079f:  ldc.i4     0xc0
    IL_07a4:  ldc.i4.0
    IL_07a5:  ldc.i4.0
    IL_07a6:  ldc.i4.7
    IL_07a7:  call       int32 Game.ArrowBlock::SetArrowType(int32,
                                                             valuetype Game.ArrowBlock/ArrowType)
    IL_07ac:  call       int32 Game.Terrain::MakeBlockValue(int32,
                                                            int32,
                                                            int32)
    IL_07b1:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_07b6:  ldloca.s   V_0
    IL_07b8:  ldc.r4     1.
    IL_07bd:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_07c2:  ldloca.s   V_0
    IL_07c4:  ldc.i4.2
    IL_07c5:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_07ca:  ldloc.0
    IL_07cb:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_07d0:  dup
    IL_07d1:  ldc.i4.s   39
    IL_07d3:  ldloca.s   V_0
    IL_07d5:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_07db:  ldloca.s   V_0
    IL_07dd:  ldc.i4     0xd4
    IL_07e2:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_07e7:  ldloca.s   V_0
    IL_07e9:  ldc.r4     1.
    IL_07ee:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_07f3:  ldloca.s   V_0
    IL_07f5:  ldc.i4.1
    IL_07f6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_07fb:  ldloc.0
    IL_07fc:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0801:  dup
    IL_0802:  ldc.i4.s   40
    IL_0804:  ldloca.s   V_0
    IL_0806:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_080c:  ldloca.s   V_0
    IL_080e:  ldc.i4.s   124
    IL_0810:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0815:  ldloca.s   V_0
    IL_0817:  ldc.r4     1.
    IL_081c:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0821:  ldloca.s   V_0
    IL_0823:  ldc.i4.1
    IL_0824:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0829:  ldloc.0
    IL_082a:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_082f:  dup
    IL_0830:  ldc.i4.s   41
    IL_0832:  ldloca.s   V_0
    IL_0834:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_083a:  ldloca.s   V_0
    IL_083c:  ldc.i4.s   125
    IL_083e:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0843:  ldloca.s   V_0
    IL_0845:  ldc.r4     1.
    IL_084a:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_084f:  ldloca.s   V_0
    IL_0851:  ldc.i4.1
    IL_0852:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0857:  ldloc.0
    IL_0858:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_085d:  dup
    IL_085e:  ldc.i4.s   42
    IL_0860:  ldloca.s   V_0
    IL_0862:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0868:  ldloca.s   V_0
    IL_086a:  ldc.i4.s   82
    IL_086c:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0871:  ldloca.s   V_0
    IL_0873:  ldc.r4     1.
    IL_0878:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_087d:  ldloca.s   V_0
    IL_087f:  ldc.i4.1
    IL_0880:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0885:  ldloc.0
    IL_0886:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_088b:  dup
    IL_088c:  ldc.i4.s   43
    IL_088e:  ldloca.s   V_0
    IL_0890:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0896:  ldloca.s   V_0
    IL_0898:  ldc.i4.s   116
    IL_089a:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_089f:  ldloca.s   V_0
    IL_08a1:  ldc.r4     1.
    IL_08a6:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_08ab:  ldloca.s   V_0
    IL_08ad:  ldc.i4.1
    IL_08ae:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_08b3:  ldloc.0
    IL_08b4:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_08b9:  dup
    IL_08ba:  ldc.i4.s   44
    IL_08bc:  ldloca.s   V_0
    IL_08be:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_08c4:  ldloca.s   V_0
    IL_08c6:  ldc.i4.s   36
    IL_08c8:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_08cd:  ldloca.s   V_0
    IL_08cf:  ldc.r4     1.
    IL_08d4:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_08d9:  ldloca.s   V_0
    IL_08db:  ldc.i4.1
    IL_08dc:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_08e1:  ldloc.0
    IL_08e2:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_08e7:  dup
    IL_08e8:  ldc.i4.s   45
    IL_08ea:  ldloca.s   V_0
    IL_08ec:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_08f2:  ldloca.s   V_0
    IL_08f4:  ldc.i4.s   113
    IL_08f6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_08fb:  ldloca.s   V_0
    IL_08fd:  ldc.r4     1.
    IL_0902:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0907:  ldloca.s   V_0
    IL_0909:  ldc.i4.1
    IL_090a:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_090f:  ldloc.0
    IL_0910:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0915:  dup
    IL_0916:  ldc.i4.s   46
    IL_0918:  ldloca.s   V_0
    IL_091a:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0920:  ldloca.s   V_0
    IL_0922:  ldc.i4.s   38
    IL_0924:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0929:  ldloca.s   V_0
    IL_092b:  ldc.r4     1.
    IL_0930:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0935:  ldloca.s   V_0
    IL_0937:  ldc.i4.1
    IL_0938:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_093d:  ldloc.0
    IL_093e:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0943:  dup
    IL_0944:  ldc.i4.s   47
    IL_0946:  ldloca.s   V_0
    IL_0948:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_094e:  ldloca.s   V_0
    IL_0950:  ldc.i4.s   115
    IL_0952:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0957:  ldloca.s   V_0
    IL_0959:  ldc.r4     1.
    IL_095e:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0963:  ldloca.s   V_0
    IL_0965:  ldc.i4.1
    IL_0966:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_096b:  ldloc.0
    IL_096c:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0971:  dup
    IL_0972:  ldc.i4.s   48
    IL_0974:  ldloca.s   V_0
    IL_0976:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_097c:  ldloca.s   V_0
    IL_097e:  ldc.i4.s   37
    IL_0980:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0985:  ldloca.s   V_0
    IL_0987:  ldc.r4     1.
    IL_098c:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0991:  ldloca.s   V_0
    IL_0993:  ldc.i4.1
    IL_0994:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0999:  ldloc.0
    IL_099a:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_099f:  dup
    IL_09a0:  ldc.i4.s   49
    IL_09a2:  ldloca.s   V_0
    IL_09a4:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_09aa:  ldloca.s   V_0
    IL_09ac:  ldc.i4.s   114
    IL_09ae:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_09b3:  ldloca.s   V_0
    IL_09b5:  ldc.r4     1.
    IL_09ba:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_09bf:  ldloca.s   V_0
    IL_09c1:  ldc.i4.1
    IL_09c2:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_09c7:  ldloc.0
    IL_09c8:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_09cd:  dup
    IL_09ce:  ldc.i4.s   50
    IL_09d0:  ldloca.s   V_0
    IL_09d2:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_09d8:  ldloca.s   V_0
    IL_09da:  ldc.i4     0xab
    IL_09df:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_09e4:  ldloca.s   V_0
    IL_09e6:  ldc.r4     1.
    IL_09eb:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_09f0:  ldloca.s   V_0
    IL_09f2:  ldc.i4.1
    IL_09f3:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_09f8:  ldloc.0
    IL_09f9:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_09fe:  dup
    IL_09ff:  ldc.i4.s   51
    IL_0a01:  ldloca.s   V_0
    IL_0a03:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a09:  ldloca.s   V_0
    IL_0a0b:  ldc.i4     0xac
    IL_0a10:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0a15:  ldloca.s   V_0
    IL_0a17:  ldc.r4     1.
    IL_0a1c:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0a21:  ldloca.s   V_0
    IL_0a23:  ldc.i4.1
    IL_0a24:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0a29:  ldloc.0
    IL_0a2a:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a2f:  dup
    IL_0a30:  ldc.i4.s   52
    IL_0a32:  ldloca.s   V_0
    IL_0a34:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a3a:  ldloca.s   V_0
    IL_0a3c:  ldc.i4.s   90
    IL_0a3e:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0a43:  ldloca.s   V_0
    IL_0a45:  ldc.r4     1.
    IL_0a4a:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0a4f:  ldloca.s   V_0
    IL_0a51:  ldc.i4.1
    IL_0a52:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0a57:  ldloc.0
    IL_0a58:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a5d:  dup
    IL_0a5e:  ldc.i4.s   53
    IL_0a60:  ldloca.s   V_0
    IL_0a62:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a68:  ldloca.s   V_0
    IL_0a6a:  ldc.i4     0xa0
    IL_0a6f:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0a74:  ldloca.s   V_0
    IL_0a76:  ldc.r4     1.
    IL_0a7b:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0a80:  ldloca.s   V_0
    IL_0a82:  ldc.i4.1
    IL_0a83:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0a88:  ldloc.0
    IL_0a89:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a8e:  dup
    IL_0a8f:  ldc.i4.s   54
    IL_0a91:  ldloca.s   V_0
    IL_0a93:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0a99:  ldloca.s   V_0
    IL_0a9b:  ldc.i4     0x9e
    IL_0aa0:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0aa5:  ldloca.s   V_0
    IL_0aa7:  ldc.r4     2.
    IL_0aac:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0ab1:  ldloca.s   V_0
    IL_0ab3:  ldc.i4.1
    IL_0ab4:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0ab9:  ldloc.0
    IL_0aba:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0abf:  dup
    IL_0ac0:  ldc.i4.s   55
    IL_0ac2:  ldloca.s   V_0
    IL_0ac4:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0aca:  ldloca.s   V_0
    IL_0acc:  ldc.i4     0x85
    IL_0ad1:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0ad6:  ldloca.s   V_0
    IL_0ad8:  ldc.r4     1.
    IL_0add:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0ae2:  ldloca.s   V_0
    IL_0ae4:  ldc.i4.s   10
    IL_0ae6:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0aeb:  ldloc.0
    IL_0aec:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0af1:  dup
    IL_0af2:  ldc.i4.s   56
    IL_0af4:  ldloca.s   V_0
    IL_0af6:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0afc:  ldloca.s   V_0
    IL_0afe:  ldc.i4     0xb3
    IL_0b03:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0b08:  ldloca.s   V_0
    IL_0b0a:  ldc.r4     1.
    IL_0b0f:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0b14:  ldloca.s   V_0
    IL_0b16:  ldc.i4.2
    IL_0b17:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0b1c:  ldloc.0
    IL_0b1d:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b22:  dup
    IL_0b23:  ldc.i4.s   57
    IL_0b25:  ldloca.s   V_0
    IL_0b27:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b2d:  ldloca.s   V_0
    IL_0b2f:  ldc.i4     0x8e
    IL_0b34:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0b39:  ldloca.s   V_0
    IL_0b3b:  ldc.r4     1.
    IL_0b40:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0b45:  ldloca.s   V_0
    IL_0b47:  ldc.i4.2
    IL_0b48:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0b4d:  ldloc.0
    IL_0b4e:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b53:  dup
    IL_0b54:  ldc.i4.s   58
    IL_0b56:  ldloca.s   V_0
    IL_0b58:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b5e:  ldloca.s   V_0
    IL_0b60:  ldc.i4     0x8d
    IL_0b65:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0b6a:  ldloca.s   V_0
    IL_0b6c:  ldc.r4     1.
    IL_0b71:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0b76:  ldloca.s   V_0
    IL_0b78:  ldc.i4.2
    IL_0b79:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0b7e:  ldloc.0
    IL_0b7f:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b84:  dup
    IL_0b85:  ldc.i4.s   59
    IL_0b87:  ldloca.s   V_0
    IL_0b89:  initobj    Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0b8f:  ldloca.s   V_0
    IL_0b91:  ldc.i4     0xed
    IL_0b96:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Value
    IL_0b9b:  ldloca.s   V_0
    IL_0b9d:  ldc.r4     1.
    IL_0ba2:  stfld      float32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::Probability
    IL_0ba7:  ldloca.s   V_0
    IL_0ba9:  ldc.i4.2
    IL_0baa:  stfld      int32 Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData::MaxCount
    IL_0baf:  ldloc.0
    IL_0bb0:  stelem     Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData
    IL_0bb5:  stsfld     valuetype Game.SubsystemTreasureGeneratorBlockBehavior/TreasureData[] Game.SubsystemTreasureGeneratorBlockBehavior::m_treasureData
    IL_0bba:  ret
  } // end of method SubsystemTreasureGeneratorBlockBehavior::.cctor

  .property instance int32[] HandledBlocks()
  {
    .get instance int32[] Game.SubsystemTreasureGeneratorBlockBehavior::get_HandledBlocks()
  } // end of property SubsystemTreasureGeneratorBlockBehavior::HandledBlocks
} // end of class Game.SubsystemTreasureGeneratorBlockBehavior