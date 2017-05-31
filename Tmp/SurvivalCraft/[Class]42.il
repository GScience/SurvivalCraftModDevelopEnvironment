.class public auto ansi beforefieldinit Game.ComponentClothing
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IDrawable,
                  Game.IUpdateable,
                  Game.IInventory
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemInventory m_subsystemInventory
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemGui m_subsystemGui
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.ComponentHumanModel m_componentHumanModel
  .field private class Game.ComponentBody m_componentBody
  .field private class Game.ComponentOuterClothingModel m_componentOuterClothingModel
  .field private class Game.ComponentVitalStats m_componentVitalStats
  .field private class Game.ComponentLocomotion m_componentLocomotion
  .field private class [Engine]Engine.Graphics.Texture2D m_skinTexture
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_innerClothedTexture
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_outerClothedTexture
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private class Game.Random m_random
  .field private float32 m_densityModifierApplied
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastTotalElapsedGameTime
  .field private bool m_clothedTexturesValid
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> m_clothes
  .field private static valuetype Game.ClothingSlot[] m_innerSlotsOrder
  .field private static valuetype Game.ClothingSlot[] m_outerSlotsOrder
  .field public static bool ShowClothedTexture
  .field public static bool DrawClothedTexture
  .field private float32 '<Insulation>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.ClothingSlot '<LeastInsulatedSlot>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<MovementSpeedFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<SteedMovementSpeedFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static int32[] m_drawOrders
  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_InnerClothedTexture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0006:  ret
  } // end of method ComponentClothing::get_InnerClothedTexture

  .method public hidebysig specialname instance class [Engine]Engine.Graphics.Texture2D 
          get_OuterClothedTexture() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0006:  ret
  } // end of method ComponentClothing::get_OuterClothedTexture

  .method public hidebysig specialname instance float32 
          get_Insulation() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentClothing::'<Insulation>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentClothing::get_Insulation

  .method private hidebysig specialname instance void 
          set_Insulation(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentClothing::'<Insulation>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentClothing::set_Insulation

  .method public hidebysig specialname instance valuetype Game.ClothingSlot 
          get_LeastInsulatedSlot() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.ClothingSlot Game.ComponentClothing::'<LeastInsulatedSlot>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentClothing::get_LeastInsulatedSlot

  .method private hidebysig specialname instance void 
          set_LeastInsulatedSlot(valuetype Game.ClothingSlot 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      valuetype Game.ClothingSlot Game.ComponentClothing::'<LeastInsulatedSlot>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentClothing::set_LeastInsulatedSlot

  .method public hidebysig specialname instance float32 
          get_MovementSpeedFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentClothing::'<MovementSpeedFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentClothing::get_MovementSpeedFactor

  .method private hidebysig specialname instance void 
          set_MovementSpeedFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentClothing::'<MovementSpeedFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentClothing::set_MovementSpeedFactor

  .method public hidebysig specialname instance float32 
          get_SteedMovementSpeedFactor() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 Game.ComponentClothing::'<SteedMovementSpeedFactor>k__BackingField'
    IL_0006:  ret
  } // end of method ComponentClothing::get_SteedMovementSpeedFactor

  .method private hidebysig specialname instance void 
          set_SteedMovementSpeedFactor(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 Game.ComponentClothing::'<SteedMovementSpeedFactor>k__BackingField'
    IL_0007:  ret
  } // end of method ComponentClothing::set_SteedMovementSpeedFactor

  .method public hidebysig instance valuetype [Engine]Engine.ReadOnlyList`1<int32> 
          GetClothes(valuetype Game.ClothingSlot slot) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_000c:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<int32>::.ctor(class [System.Collections]System.Collections.Generic.List`1<!0>)
    IL_0011:  ret
  } // end of method ComponentClothing::GetClothes

  .method public hidebysig instance void 
          SetClothes(valuetype Game.ClothingSlot slot,
                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> clothes) cil managed
  {
    // 代码大小       850 (0x352)
    .maxstack  5
    .locals init (float32 V_0,
             float32 V_1,
             float32 V_2,
             float32 V_3,
             float32 V_4,
             float32 V_5,
             float32 V_6,
             valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> V_7,
             valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> V_8,
             valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32> V_9,
             class Game.ClothingData V_10,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32> V_11,
             valuetype [Engine]Engine.ReadOnlyList`1<int32> V_12,
             class Game.ClothingData V_13,
             class Game.ClothingData V_14,
             class Game.ClothingData V_15,
             class Game.ClothingData V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_000c:  ldarg.2
    IL_000d:  call       bool [System.Linq]System.Linq.Enumerable::SequenceEqual<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                        class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0012:  brfalse.s  IL_0015

    IL_0014:  ret

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_001b:  ldarg.1
    IL_001c:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_0021:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_002c:  ldarg.1
    IL_002d:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_0032:  ldarg.2
    IL_0033:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.0
    IL_003a:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_003f:  ldc.r4     0.0
    IL_0044:  stloc.0
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_004b:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<!0,!1> class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::GetEnumerator()
    IL_0050:  stloc.s    V_7
    .try
    {
      IL_0052:  br.s       IL_00a3

      IL_0054:  ldloca.s   V_7
      IL_0056:  call       instance valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<!0,!1> valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Current()
      IL_005b:  stloc.s    V_8
      IL_005d:  ldloca.s   V_8
      IL_005f:  call       instance !1 valuetype [System.Runtime]System.Collections.Generic.KeyValuePair`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Value()
      IL_0064:  callvirt   instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<int32>::GetEnumerator()
      IL_0069:  stloc.s    V_9
      .try
      {
        IL_006b:  br.s       IL_008a

        IL_006d:  ldloca.s   V_9
        IL_006f:  call       instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>::get_Current()
        IL_0074:  call       int32 Game.TerrainData::ExtractData(int32)
        IL_0079:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
        IL_007e:  stloc.s    V_10
        IL_0080:  ldloc.0
        IL_0081:  ldloc.s    V_10
        IL_0083:  ldfld      float32 Game.ClothingData::DensityModifier
        IL_0088:  add
        IL_0089:  stloc.0
        IL_008a:  ldloca.s   V_9
        IL_008c:  call       instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>::MoveNext()
        IL_0091:  brtrue.s   IL_006d

        IL_0093:  leave.s    IL_00a3

      }  // end .try
      finally
      {
        IL_0095:  ldloca.s   V_9
        IL_0097:  constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<int32>
        IL_009d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_00a2:  endfinally
      }  // end handler
      IL_00a3:  ldloca.s   V_7
      IL_00a5:  call       instance bool valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::MoveNext()
      IL_00aa:  brtrue.s   IL_0054

      IL_00ac:  leave.s    IL_00bc

    }  // end .try
    finally
    {
      IL_00ae:  ldloca.s   V_7
      IL_00b0:  constrained. valuetype [System.Collections]System.Collections.Generic.Dictionary`2/Enumerator<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>
      IL_00b6:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_00bb:  endfinally
    }  // end handler
    IL_00bc:  ldloc.0
    IL_00bd:  ldarg.0
    IL_00be:  ldfld      float32 Game.ComponentClothing::m_densityModifierApplied
    IL_00c3:  sub
    IL_00c4:  stloc.1
    IL_00c5:  ldarg.0
    IL_00c6:  ldarg.0
    IL_00c7:  ldfld      float32 Game.ComponentClothing::m_densityModifierApplied
    IL_00cc:  ldloc.1
    IL_00cd:  add
    IL_00ce:  stfld      float32 Game.ComponentClothing::m_densityModifierApplied
    IL_00d3:  ldarg.0
    IL_00d4:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_00d9:  dup
    IL_00da:  callvirt   instance float32 Game.ComponentBody::get_Density()
    IL_00df:  ldloc.1
    IL_00e0:  add
    IL_00e1:  callvirt   instance void Game.ComponentBody::set_Density(float32)
    IL_00e6:  ldarg.0
    IL_00e7:  ldc.r4     1.
    IL_00ec:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
    IL_00f1:  ldarg.0
    IL_00f2:  ldc.r4     1.
    IL_00f7:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
    IL_00fc:  ldc.r4     2.
    IL_0101:  stloc.2
    IL_0102:  ldc.r4     0.2
    IL_0107:  stloc.3
    IL_0108:  ldc.r4     0.40000001
    IL_010d:  stloc.s    V_4
    IL_010f:  ldc.r4     2.
    IL_0114:  stloc.s    V_5
    IL_0116:  ldarg.0
    IL_0117:  ldc.i4.0
    IL_0118:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_011d:  stloc.s    V_12
    IL_011f:  ldloca.s   V_12
    IL_0121:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0126:  stloc.s    V_11
    .try
    {
      IL_0128:  br.s       IL_016f

      IL_012a:  ldloca.s   V_11
      IL_012c:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0131:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_0136:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_013b:  stloc.s    V_13
      IL_013d:  ldloc.2
      IL_013e:  ldloc.s    V_13
      IL_0140:  ldfld      float32 Game.ClothingData::Insulation
      IL_0145:  add
      IL_0146:  stloc.2
      IL_0147:  ldarg.0
      IL_0148:  ldarg.0
      IL_0149:  call       instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
      IL_014e:  ldloc.s    V_13
      IL_0150:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_0155:  mul
      IL_0156:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
      IL_015b:  ldarg.0
      IL_015c:  ldarg.0
      IL_015d:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_0162:  ldloc.s    V_13
      IL_0164:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_0169:  mul
      IL_016a:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_016f:  ldloca.s   V_11
      IL_0171:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_0176:  brtrue.s   IL_012a

      IL_0178:  leave.s    IL_0188

    }  // end .try
    finally
    {
      IL_017a:  ldloca.s   V_11
      IL_017c:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0182:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0187:  endfinally
    }  // end handler
    IL_0188:  ldarg.0
    IL_0189:  ldc.i4.1
    IL_018a:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_018f:  stloc.s    V_12
    IL_0191:  ldloca.s   V_12
    IL_0193:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0198:  stloc.s    V_11
    .try
    {
      IL_019a:  br.s       IL_01e1

      IL_019c:  ldloca.s   V_11
      IL_019e:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_01a3:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_01a8:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_01ad:  stloc.s    V_14
      IL_01af:  ldloc.3
      IL_01b0:  ldloc.s    V_14
      IL_01b2:  ldfld      float32 Game.ClothingData::Insulation
      IL_01b7:  add
      IL_01b8:  stloc.3
      IL_01b9:  ldarg.0
      IL_01ba:  ldarg.0
      IL_01bb:  call       instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
      IL_01c0:  ldloc.s    V_14
      IL_01c2:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_01c7:  mul
      IL_01c8:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
      IL_01cd:  ldarg.0
      IL_01ce:  ldarg.0
      IL_01cf:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_01d4:  ldloc.s    V_14
      IL_01d6:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_01db:  mul
      IL_01dc:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_01e1:  ldloca.s   V_11
      IL_01e3:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_01e8:  brtrue.s   IL_019c

      IL_01ea:  leave.s    IL_01fa

    }  // end .try
    finally
    {
      IL_01ec:  ldloca.s   V_11
      IL_01ee:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_01f4:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01f9:  endfinally
    }  // end handler
    IL_01fa:  ldarg.0
    IL_01fb:  ldc.i4.2
    IL_01fc:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0201:  stloc.s    V_12
    IL_0203:  ldloca.s   V_12
    IL_0205:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_020a:  stloc.s    V_11
    .try
    {
      IL_020c:  br.s       IL_0255

      IL_020e:  ldloca.s   V_11
      IL_0210:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0215:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_021a:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_021f:  stloc.s    V_15
      IL_0221:  ldloc.s    V_4
      IL_0223:  ldloc.s    V_15
      IL_0225:  ldfld      float32 Game.ClothingData::Insulation
      IL_022a:  add
      IL_022b:  stloc.s    V_4
      IL_022d:  ldarg.0
      IL_022e:  ldarg.0
      IL_022f:  call       instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
      IL_0234:  ldloc.s    V_15
      IL_0236:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_023b:  mul
      IL_023c:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
      IL_0241:  ldarg.0
      IL_0242:  ldarg.0
      IL_0243:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_0248:  ldloc.s    V_15
      IL_024a:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_024f:  mul
      IL_0250:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_0255:  ldloca.s   V_11
      IL_0257:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_025c:  brtrue.s   IL_020e

      IL_025e:  leave.s    IL_026e

    }  // end .try
    finally
    {
      IL_0260:  ldloca.s   V_11
      IL_0262:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0268:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_026d:  endfinally
    }  // end handler
    IL_026e:  ldarg.0
    IL_026f:  ldc.i4.3
    IL_0270:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0275:  stloc.s    V_12
    IL_0277:  ldloca.s   V_12
    IL_0279:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_027e:  stloc.s    V_11
    .try
    {
      IL_0280:  br.s       IL_02c9

      IL_0282:  ldloca.s   V_11
      IL_0284:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0289:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_028e:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_0293:  stloc.s    V_16
      IL_0295:  ldloc.s    V_5
      IL_0297:  ldloc.s    V_16
      IL_0299:  ldfld      float32 Game.ClothingData::Insulation
      IL_029e:  add
      IL_029f:  stloc.s    V_5
      IL_02a1:  ldarg.0
      IL_02a2:  ldarg.0
      IL_02a3:  call       instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
      IL_02a8:  ldloc.s    V_16
      IL_02aa:  ldfld      float32 Game.ClothingData::MovementSpeedFactor
      IL_02af:  mul
      IL_02b0:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
      IL_02b5:  ldarg.0
      IL_02b6:  ldarg.0
      IL_02b7:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_02bc:  ldloc.s    V_16
      IL_02be:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_02c3:  mul
      IL_02c4:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_02c9:  ldloca.s   V_11
      IL_02cb:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_02d0:  brtrue.s   IL_0282

      IL_02d2:  leave.s    IL_02e2

    }  // end .try
    finally
    {
      IL_02d4:  ldloca.s   V_11
      IL_02d6:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_02dc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_02e1:  endfinally
    }  // end handler
    IL_02e2:  ldarg.0
    IL_02e3:  ldc.r4     1.
    IL_02e8:  ldc.r4     1.
    IL_02ed:  ldloc.2
    IL_02ee:  div
    IL_02ef:  ldc.r4     1.
    IL_02f4:  ldloc.3
    IL_02f5:  div
    IL_02f6:  add
    IL_02f7:  ldc.r4     1.
    IL_02fc:  ldloc.s    V_4
    IL_02fe:  div
    IL_02ff:  add
    IL_0300:  ldc.r4     1.
    IL_0305:  ldloc.s    V_5
    IL_0307:  div
    IL_0308:  add
    IL_0309:  div
    IL_030a:  call       instance void Game.ComponentClothing::set_Insulation(float32)
    IL_030f:  ldloc.2
    IL_0310:  ldloc.3
    IL_0311:  ldloc.s    V_4
    IL_0313:  ldloc.s    V_5
    IL_0315:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_031a:  stloc.s    V_6
    IL_031c:  ldloc.2
    IL_031d:  ldloc.s    V_6
    IL_031f:  bne.un.s   IL_0329

    IL_0321:  ldarg.0
    IL_0322:  ldc.i4.0
    IL_0323:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0328:  ret

    IL_0329:  ldloc.3
    IL_032a:  ldloc.s    V_6
    IL_032c:  bne.un.s   IL_0336

    IL_032e:  ldarg.0
    IL_032f:  ldc.i4.1
    IL_0330:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0335:  ret

    IL_0336:  ldloc.s    V_4
    IL_0338:  ldloc.s    V_6
    IL_033a:  bne.un.s   IL_0344

    IL_033c:  ldarg.0
    IL_033d:  ldc.i4.2
    IL_033e:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0343:  ret

    IL_0344:  ldloc.s    V_5
    IL_0346:  ldloc.s    V_6
    IL_0348:  bne.un.s   IL_0351

    IL_034a:  ldarg.0
    IL_034b:  ldc.i4.3
    IL_034c:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0351:  ret
  } // end of method ComponentClothing::SetClothes

  .method public hidebysig instance float32 
          ApplyArmorProtection(float32 attackPower) cil managed
  {
    // 代码大小       572 (0x23c)
    .maxstack  7
    .locals init (float32 V_0,
             valuetype Game.ClothingSlot V_1,
             float32 V_2,
             class [System.Collections]System.Collections.Generic.List`1<int32> V_3,
             int32 V_4,
             int32 V_5,
             class Game.ClothingData V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             int32 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.Random Game.ComponentClothing::m_random
    IL_0006:  ldc.r4     0.0
    IL_000b:  ldc.r4     1.
    IL_0010:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.r4     0.1
    IL_001c:  bge.un.s   IL_0022

    IL_001e:  ldc.i4.3
    IL_001f:  stloc.1
    IL_0020:  br.s       IL_003c

    IL_0022:  ldloc.0
    IL_0023:  ldc.r4     0.30000001
    IL_0028:  bge.un.s   IL_002e

    IL_002a:  ldc.i4.2
    IL_002b:  stloc.1
    IL_002c:  br.s       IL_003c

    IL_002e:  ldloc.0
    IL_002f:  ldc.r4     0.89999998
    IL_0034:  bge.un.s   IL_003a

    IL_0036:  ldc.i4.1
    IL_0037:  stloc.1
    IL_0038:  br.s       IL_003c

    IL_003a:  ldc.i4.0
    IL_003b:  stloc.1
    IL_003c:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0041:  ldc.i4     0xcb
    IL_0046:  ldelem.ref
    IL_0047:  castclass  Game.ClothingBlock
    IL_004c:  ldfld      int32 Game.Block::Durability
    IL_0051:  ldc.i4.1
    IL_0052:  add
    IL_0053:  conv.r4
    IL_0054:  stloc.2
    IL_0055:  ldarg.0
    IL_0056:  ldloc.1
    IL_0057:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_005c:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_0061:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0066:  stloc.3
    IL_0067:  ldc.i4.0
    IL_0068:  stloc.s    V_4
    IL_006a:  br         IL_019d

    IL_006f:  ldloc.3
    IL_0070:  ldloc.s    V_4
    IL_0072:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0077:  stloc.s    V_5
    IL_0079:  ldloc.s    V_5
    IL_007b:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0080:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0085:  stloc.s    V_6
    IL_0087:  ldloc.2
    IL_0088:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_008d:  ldc.i4     0xcb
    IL_0092:  ldelem.ref
    IL_0093:  ldloc.s    V_5
    IL_0095:  callvirt   instance int32 Game.Block::GetDamage(int32)
    IL_009a:  conv.r4
    IL_009b:  sub
    IL_009c:  conv.r4
    IL_009d:  ldloc.2
    IL_009e:  div
    IL_009f:  ldloc.s    V_6
    IL_00a1:  ldfld      float32 Game.ClothingData::Sturdiness
    IL_00a6:  mul
    IL_00a7:  stloc.s    V_7
    IL_00a9:  ldarg.1
    IL_00aa:  ldloc.s    V_6
    IL_00ac:  ldfld      float32 Game.ClothingData::ArmorProtection
    IL_00b1:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_00b6:  mul
    IL_00b7:  ldloc.s    V_7
    IL_00b9:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32)
    IL_00be:  stloc.s    V_8
    IL_00c0:  ldloc.s    V_8
    IL_00c2:  ldc.r4     0.0
    IL_00c7:  ble.un     IL_0197

    IL_00cc:  ldarg.1
    IL_00cd:  ldloc.s    V_8
    IL_00cf:  sub
    IL_00d0:  starg.s    attackPower
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_00d8:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_00dd:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_00e2:  brfalse.s  IL_013c

    IL_00e4:  ldloc.s    V_8
    IL_00e6:  ldloc.s    V_6
    IL_00e8:  ldfld      float32 Game.ClothingData::Sturdiness
    IL_00ed:  div
    IL_00ee:  ldloc.2
    IL_00ef:  mul
    IL_00f0:  ldc.r4     1.e-003
    IL_00f5:  add
    IL_00f6:  stloc.s    V_9
    IL_00f8:  ldloc.s    V_9
    IL_00fa:  call       float32 [Engine]Engine.MathUtils::Floor(float32)
    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class Game.Random Game.ComponentClothing::m_random
    IL_0105:  ldc.r4     0.0
    IL_010a:  ldc.r4     1.
    IL_010f:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0114:  ldloc.s    V_9
    IL_0116:  ldc.r4     1.
    IL_011b:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0120:  blt.s      IL_0125

    IL_0122:  ldc.i4.0
    IL_0123:  br.s       IL_0126

    IL_0125:  ldc.i4.1
    IL_0126:  conv.r4
    IL_0127:  add
    IL_0128:  conv.i4
    IL_0129:  stloc.s    V_10
    IL_012b:  ldloc.3
    IL_012c:  ldloc.s    V_4
    IL_012e:  ldloc.s    V_5
    IL_0130:  ldloc.s    V_10
    IL_0132:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_0137:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_013c:  ldloc.s    V_6
    IL_013e:  ldfld      string Game.ClothingData::ImpactSoundsFolder
    IL_0143:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_0148:  brtrue.s   IL_0197

    IL_014a:  ldarg.0
    IL_014b:  ldfld      class Game.SubsystemAudio Game.ComponentClothing::m_subsystemAudio
    IL_0150:  ldloc.s    V_6
    IL_0152:  ldfld      string Game.ClothingData::ImpactSoundsFolder
    IL_0157:  ldarg.0
    IL_0158:  ldfld      class Game.Random Game.ComponentClothing::m_random
    IL_015d:  ldc.r4     0.69999999
    IL_0162:  ldc.r4     1.
    IL_0167:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_016c:  ldarg.0
    IL_016d:  ldfld      class Game.Random Game.ComponentClothing::m_random
    IL_0172:  ldc.r4     -0.30000001
    IL_0177:  ldc.r4     0.30000001
    IL_017c:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0181:  ldarg.0
    IL_0182:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_0187:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_018c:  ldc.r4     4.
    IL_0191:  ldc.i4.0
    IL_0192:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            bool)
    IL_0197:  ldloc.s    V_4
    IL_0199:  ldc.i4.1
    IL_019a:  add
    IL_019b:  stloc.s    V_4
    IL_019d:  ldloc.s    V_4
    IL_019f:  ldloc.3
    IL_01a0:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_01a5:  blt        IL_006f

    IL_01aa:  ldc.i4.0
    IL_01ab:  stloc.s    V_11
    IL_01ad:  br.s       IL_021e

    IL_01af:  ldloc.3
    IL_01b0:  ldloc.s    V_11
    IL_01b2:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_01b7:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_01bc:  ldc.i4     0xcb
    IL_01c1:  beq.s      IL_0218

    IL_01c3:  ldloc.3
    IL_01c4:  ldloc.s    V_11
    IL_01c6:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
    IL_01cb:  ldarg.0
    IL_01cc:  ldfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
    IL_01d1:  ldarg.0
    IL_01d2:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
    IL_01d7:  ldarg.0
    IL_01d8:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_01dd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01e2:  ldarg.0
    IL_01e3:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_01e8:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_01ed:  ldc.r4     2.
    IL_01f2:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01f7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01fc:  ldc.r4     1.
    IL_0201:  ldc.r4     1.
    IL_0206:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_020b:  ldc.i4.0
    IL_020c:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_0211:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0216:  br.s       IL_021e

    IL_0218:  ldloc.s    V_11
    IL_021a:  ldc.i4.1
    IL_021b:  add
    IL_021c:  stloc.s    V_11
    IL_021e:  ldloc.s    V_11
    IL_0220:  ldloc.3
    IL_0221:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0226:  blt.s      IL_01af

    IL_0228:  ldarg.0
    IL_0229:  ldloc.1
    IL_022a:  ldloc.3
    IL_022b:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0230:  ldarg.1
    IL_0231:  ldc.r4     0.0
    IL_0236:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_023b:  ret
  } // end of method ComponentClothing::ApplyArmorProtection

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       481 (0x1e1)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.0
    IL_0002:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0007:  ldc.i4.1
    IL_0008:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGameInfo>(bool)
    IL_000d:  stfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0012:  ldarg.0
    IL_0013:  ldarg.0
    IL_0014:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0019:  ldc.i4.1
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemInventory>(bool)
    IL_001f:  stfld      class Game.SubsystemInventory Game.ComponentClothing::m_subsystemInventory
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_0031:  stfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0043:  stfld      class Game.SubsystemAudio Game.ComponentClothing::m_subsystemAudio
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemGui>(bool)
    IL_0055:  stfld      class Game.SubsystemGui Game.ComponentClothing::m_subsystemGui
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0067:  stfld      class Game.SubsystemTime Game.ComponentClothing::m_subsystemTime
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0079:  stfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
    IL_007e:  ldarg.0
    IL_007f:  ldarg.0
    IL_0080:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0085:  ldc.i4.1
    IL_0086:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentHumanModel>(bool)
    IL_008b:  stfld      class Game.ComponentHumanModel Game.ComponentClothing::m_componentHumanModel
    IL_0090:  ldarg.0
    IL_0091:  ldarg.0
    IL_0092:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0097:  ldc.i4.1
    IL_0098:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentBody>(bool)
    IL_009d:  stfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_00a2:  ldarg.0
    IL_00a3:  ldarg.0
    IL_00a4:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00a9:  ldc.i4.1
    IL_00aa:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentOuterClothingModel>(bool)
    IL_00af:  stfld      class Game.ComponentOuterClothingModel Game.ComponentClothing::m_componentOuterClothingModel
    IL_00b4:  ldarg.0
    IL_00b5:  ldarg.0
    IL_00b6:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00bb:  ldc.i4.1
    IL_00bc:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentVitalStats>(bool)
    IL_00c1:  stfld      class Game.ComponentVitalStats Game.ComponentClothing::m_componentVitalStats
    IL_00c6:  ldarg.0
    IL_00c7:  ldarg.0
    IL_00c8:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00cd:  ldc.i4.1
    IL_00ce:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentLocomotion>(bool)
    IL_00d3:  stfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_00d8:  ldarg.0
    IL_00d9:  ldc.r4     1.
    IL_00de:  call       instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
    IL_00e3:  ldarg.0
    IL_00e4:  ldc.r4     1.
    IL_00e9:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
    IL_00ee:  ldarg.0
    IL_00ef:  ldc.r4     0.0
    IL_00f4:  call       instance void Game.ComponentClothing::set_Insulation(float32)
    IL_00f9:  ldarg.0
    IL_00fa:  ldc.i4.3
    IL_00fb:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0100:  ldarg.0
    IL_0101:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0106:  ldc.i4.0
    IL_0107:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_010c:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0111:  ldarg.0
    IL_0112:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0117:  ldc.i4.1
    IL_0118:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_011d:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0122:  ldarg.0
    IL_0123:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0128:  ldc.i4.2
    IL_0129:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_012e:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0133:  ldarg.0
    IL_0134:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0139:  ldc.i4.3
    IL_013a:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_013f:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0144:  ldarg.1
    IL_0145:  ldstr      "Clothes"
    IL_014a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_014f:  stloc.0
    IL_0150:  ldarg.0
    IL_0151:  ldc.i4.0
    IL_0152:  ldc.i4.s   59
    IL_0154:  ldloc.0
    IL_0155:  ldstr      "Head"
    IL_015a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_015f:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_0164:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0169:  ldarg.0
    IL_016a:  ldc.i4.1
    IL_016b:  ldc.i4.s   59
    IL_016d:  ldloc.0
    IL_016e:  ldstr      "Torso"
    IL_0173:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0178:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_017d:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0182:  ldarg.0
    IL_0183:  ldc.i4.2
    IL_0184:  ldc.i4.s   59
    IL_0186:  ldloc.0
    IL_0187:  ldstr      "Legs"
    IL_018c:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0191:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_0196:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_019b:  ldarg.0
    IL_019c:  ldc.i4.3
    IL_019d:  ldc.i4.s   59
    IL_019f:  ldloc.0
    IL_01a0:  ldstr      "Feet"
    IL_01a5:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_01aa:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_01af:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_01b4:  ldarg.0
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_01bb:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_01c0:  ldfld      string Game.WorldInfo::CharacterSkinName
    IL_01c5:  call       class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsManager::LoadTexture(string)
    IL_01ca:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_01cf:  ldarg.0
    IL_01d0:  ldftn      instance void Game.ComponentClothing::Display_DeviceReset()
    IL_01d6:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01db:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_01e0:  ret
  } // end of method ComponentClothing::Load

  .method family hidebysig virtual instance void 
          Save(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       159 (0x9f)
    .maxstack  5
    .locals init (class [EntitySystem]TemplatesDatabase.ValuesDictionary V_0)
    IL_0000:  newobj     instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.1
    IL_0007:  ldstr      "Clothes"
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string,
                                                                                                                                                          !!0)
    IL_0012:  ldloc.0
    IL_0013:  ldstr      "Head"
    IL_0018:  ldc.i4.s   59
    IL_001a:  ldarg.0
    IL_001b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0020:  ldc.i4.0
    IL_0021:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_0026:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_002b:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                               !!0[])
    IL_0030:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0035:  ldloc.0
    IL_0036:  ldstr      "Torso"
    IL_003b:  ldc.i4.s   59
    IL_003d:  ldarg.0
    IL_003e:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0043:  ldc.i4.1
    IL_0044:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_0049:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_004e:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                               !!0[])
    IL_0053:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_0058:  ldloc.0
    IL_0059:  ldstr      "Legs"
    IL_005e:  ldc.i4.s   59
    IL_0060:  ldarg.0
    IL_0061:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0066:  ldc.i4.2
    IL_0067:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_006c:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0071:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                               !!0[])
    IL_0076:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_007b:  ldloc.0
    IL_007c:  ldstr      "Feet"
    IL_0081:  ldc.i4.s   59
    IL_0083:  ldarg.0
    IL_0084:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0089:  ldc.i4.3
    IL_008a:  callvirt   instance !1 class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::get_Item(!0)
    IL_008f:  callvirt   instance !0[] class [System.Collections]System.Collections.Generic.List`1<int32>::ToArray()
    IL_0094:  call       string [Engine]Engine.Serialization.HumanReadableConverter::ValuesListToString<int32>(char,
                                                                                                               !!0[])
    IL_0099:  callvirt   instance void [EntitySystem]TemplatesDatabase.ValuesDictionary::SetValue<string>(string,
                                                                                                          !!0)
    IL_009e:  ret
  } // end of method ComponentClothing::Save

  .method public hidebysig virtual instance void 
          Dispose() cil managed
  {
    // 代码大小       115 (0x73)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Component::Dispose()
    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_000c:  brfalse.s  IL_002d

    IL_000e:  ldarg.0
    IL_000f:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0014:  call       bool Game.ContentManager::IsContent(object)
    IL_0019:  brtrue.s   IL_002d

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0021:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
    IL_0026:  ldarg.0
    IL_0027:  ldnull
    IL_0028:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_002d:  ldarg.0
    IL_002e:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0033:  brfalse.s  IL_0047

    IL_0035:  ldarg.0
    IL_0036:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_003b:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
    IL_0040:  ldarg.0
    IL_0041:  ldnull
    IL_0042:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0047:  ldarg.0
    IL_0048:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_004d:  brfalse.s  IL_0061

    IL_004f:  ldarg.0
    IL_0050:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0055:  callvirt   instance void [Engine]Engine.Graphics.GraphicsResource::Dispose()
    IL_005a:  ldarg.0
    IL_005b:  ldnull
    IL_005c:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0061:  ldarg.0
    IL_0062:  ldftn      instance void Game.ComponentClothing::Display_DeviceReset()
    IL_0068:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_006d:  call       void [Engine]Engine.Graphics.Display::remove_DeviceReset(class [System.Runtime]System.Action)
    IL_0072:  ret
  } // end of method ComponentClothing::Dispose

  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.ComponentClothing::m_drawOrders
    IL_0005:  ret
  } // end of method ComponentClothing::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       1016 (0x3f8)
    .maxstack  8
    .locals init (valuetype [Engine]Engine.Rectangle V_0,
             class [Engine]Engine.Graphics.RenderTarget2D V_1,
             int32 V_2,
             class [Engine]Engine.Graphics.TexturedBatch2D V_3,
             valuetype [System.Runtime]System.Nullable`1<float32> V_4,
             valuetype [System.Runtime]System.Nullable`1<int32> V_5,
             valuetype Game.ClothingSlot[] V_6,
             int32 V_7,
             valuetype Game.ClothingSlot V_8,
             valuetype [Engine]Engine.ReadOnlyList`1<int32> V_9,
             valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32> V_10,
             int32 V_11,
             class Game.ClothingData V_12,
             valuetype [Engine]Engine.Color V_13,
             valuetype Game.ClothingSlot V_14,
             valuetype [Engine]Engine.ReadOnlyList`1<int32> V_15,
             int32 V_16,
             class Game.ClothingData V_17,
             valuetype [Engine]Engine.Color V_18)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0006:  brfalse.s  IL_0038

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_000e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0019:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_001e:  bne.un.s   IL_0038

    IL_0020:  ldarg.0
    IL_0021:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0026:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_002b:  ldarg.0
    IL_002c:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0031:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0036:  beq.s      IL_0073

    IL_0038:  ldarg.0
    IL_0039:  ldarg.0
    IL_003a:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_003f:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0044:  ldarg.0
    IL_0045:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_004a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_004f:  ldc.i4.0
    IL_0050:  ldc.i4.0
    IL_0051:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0056:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_005b:  ldarg.0
    IL_005c:  ldfld      class Game.ComponentHumanModel Game.ComponentClothing::m_componentHumanModel
    IL_0061:  ldarg.0
    IL_0062:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0067:  callvirt   instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_006c:  ldarg.0
    IL_006d:  ldc.i4.0
    IL_006e:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_0073:  ldarg.0
    IL_0074:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0079:  brfalse.s  IL_00ab

    IL_007b:  ldarg.0
    IL_007c:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0081:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0086:  ldarg.0
    IL_0087:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_008c:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0091:  bne.un.s   IL_00ab

    IL_0093:  ldarg.0
    IL_0094:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0099:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_009e:  ldarg.0
    IL_009f:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00a4:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00a9:  beq.s      IL_00e6

    IL_00ab:  ldarg.0
    IL_00ac:  ldarg.0
    IL_00ad:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00b2:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00b7:  ldarg.0
    IL_00b8:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00bd:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00c2:  ldc.i4.0
    IL_00c3:  ldc.i4.0
    IL_00c4:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_00c9:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_00ce:  ldarg.0
    IL_00cf:  ldfld      class Game.ComponentOuterClothingModel Game.ComponentClothing::m_componentOuterClothingModel
    IL_00d4:  ldarg.0
    IL_00d5:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_00da:  callvirt   instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_00df:  ldarg.0
    IL_00e0:  ldc.i4.0
    IL_00e1:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_00e6:  ldsfld     bool Game.ComponentClothing::DrawClothedTexture
    IL_00eb:  brfalse    IL_03f7

    IL_00f0:  ldarg.0
    IL_00f1:  ldfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_00f6:  brtrue     IL_03f7

    IL_00fb:  ldarg.0
    IL_00fc:  ldc.i4.1
    IL_00fd:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_0102:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
    IL_0107:  stloc.0
    IL_0108:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_010d:  stloc.1
    .try
    {
      IL_010e:  ldarg.0
      IL_010f:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_0114:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0119:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_011e:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_0123:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_0128:  ldloca.s   V_4
      IL_012a:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_0130:  ldloc.s    V_4
      IL_0132:  ldloca.s   V_5
      IL_0134:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_013a:  ldloc.s    V_5
      IL_013c:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0141:  ldc.i4.0
      IL_0142:  stloc.2
      IL_0143:  ldarg.0
      IL_0144:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_0149:  ldarg.0
      IL_014a:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
      IL_014f:  ldc.i4.0
      IL_0150:  ldloc.2
      IL_0151:  dup
      IL_0152:  ldc.i4.1
      IL_0153:  add
      IL_0154:  stloc.2
      IL_0155:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_015a:  ldnull
      IL_015b:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
      IL_0160:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_0165:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                              bool,
                                                                                                                                              int32,
                                                                                                                                              class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                              class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                              class [Engine]Engine.Graphics.BlendState,
                                                                                                                                              class [Engine]Engine.Graphics.SamplerState)
      IL_016a:  stloc.3
      IL_016b:  ldloc.3
      IL_016c:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0171:  ldarg.0
      IL_0172:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_0177:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_017c:  conv.r4
      IL_017d:  ldarg.0
      IL_017e:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_0183:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_0188:  conv.r4
      IL_0189:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_018e:  ldc.r4     0.0
      IL_0193:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0198:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
      IL_019d:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_01a2:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            float32,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Color)
      IL_01a7:  ldsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_innerSlotsOrder
      IL_01ac:  stloc.s    V_6
      IL_01ae:  ldc.i4.0
      IL_01af:  stloc.s    V_7
      IL_01b1:  br         IL_0296

      IL_01b6:  ldloc.s    V_6
      IL_01b8:  ldloc.s    V_7
      IL_01ba:  ldelem.i4
      IL_01bb:  stloc.s    V_8
      IL_01bd:  ldarg.0
      IL_01be:  ldloc.s    V_8
      IL_01c0:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_01c5:  stloc.s    V_9
      IL_01c7:  ldloca.s   V_9
      IL_01c9:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
      IL_01ce:  stloc.s    V_10
      .try
      {
        IL_01d0:  br         IL_0274

        IL_01d5:  ldloca.s   V_10
        IL_01d7:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
        IL_01dc:  call       int32 Game.TerrainData::ExtractData(int32)
        IL_01e1:  stloc.s    V_11
        IL_01e3:  ldloc.s    V_11
        IL_01e5:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
        IL_01ea:  stloc.s    V_12
        IL_01ec:  ldsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
        IL_01f1:  ldloc.s    V_11
        IL_01f3:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
        IL_01f8:  ldelem     [Engine]Engine.Color
        IL_01fd:  stloc.s    V_13
        IL_01ff:  ldarg.0
        IL_0200:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
        IL_0205:  ldloc.s    V_12
        IL_0207:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
        IL_020c:  ldc.i4.0
        IL_020d:  ldloc.2
        IL_020e:  dup
        IL_020f:  ldc.i4.1
        IL_0210:  add
        IL_0211:  stloc.2
        IL_0212:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_0217:  ldnull
        IL_0218:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
        IL_021d:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
        IL_0222:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_0227:  stloc.3
        IL_0228:  ldloc.s    V_12
        IL_022a:  ldfld      bool Game.ClothingData::IsOuter
        IL_022f:  brtrue.s   IL_0274

        IL_0231:  ldloc.3
        IL_0232:  ldc.r4     0.0
        IL_0237:  ldc.r4     0.0
        IL_023c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0241:  ldarg.0
        IL_0242:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
        IL_0247:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_024c:  conv.r4
        IL_024d:  ldarg.0
        IL_024e:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
        IL_0253:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_0258:  conv.r4
        IL_0259:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_025e:  ldc.r4     0.0
        IL_0263:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
        IL_0268:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
        IL_026d:  ldloc.s    V_13
        IL_026f:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_0274:  ldloca.s   V_10
        IL_0276:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
        IL_027b:  brtrue     IL_01d5

        IL_0280:  leave.s    IL_0290

      }  // end .try
      finally
      {
        IL_0282:  ldloca.s   V_10
        IL_0284:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
        IL_028a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_028f:  endfinally
      }  // end handler
      IL_0290:  ldloc.s    V_7
      IL_0292:  ldc.i4.1
      IL_0293:  add
      IL_0294:  stloc.s    V_7
      IL_0296:  ldloc.s    V_7
      IL_0298:  ldloc.s    V_6
      IL_029a:  ldlen
      IL_029b:  conv.i4
      IL_029c:  blt        IL_01b6

      IL_02a1:  ldarg.0
      IL_02a2:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_02a7:  ldc.i4.1
      IL_02a8:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_02ad:  ldarg.0
      IL_02ae:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
      IL_02b3:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_02b8:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_02bd:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_02c2:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_02c7:  ldloca.s   V_4
      IL_02c9:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_02cf:  ldloc.s    V_4
      IL_02d1:  ldloca.s   V_5
      IL_02d3:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_02d9:  ldloc.s    V_5
      IL_02db:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_02e0:  ldc.i4.0
      IL_02e1:  stloc.2
      IL_02e2:  ldsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_outerSlotsOrder
      IL_02e7:  stloc.s    V_6
      IL_02e9:  ldc.i4.0
      IL_02ea:  stloc.s    V_7
      IL_02ec:  br         IL_03d1

      IL_02f1:  ldloc.s    V_6
      IL_02f3:  ldloc.s    V_7
      IL_02f5:  ldelem.i4
      IL_02f6:  stloc.s    V_14
      IL_02f8:  ldarg.0
      IL_02f9:  ldloc.s    V_14
      IL_02fb:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_0300:  stloc.s    V_15
      IL_0302:  ldloca.s   V_15
      IL_0304:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
      IL_0309:  stloc.s    V_10
      .try
      {
        IL_030b:  br         IL_03af

        IL_0310:  ldloca.s   V_10
        IL_0312:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
        IL_0317:  call       int32 Game.TerrainData::ExtractData(int32)
        IL_031c:  stloc.s    V_16
        IL_031e:  ldloc.s    V_16
        IL_0320:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
        IL_0325:  stloc.s    V_17
        IL_0327:  ldsfld     valuetype [Engine]Engine.Color[] Game.ClothingBlock::ClothingColors
        IL_032c:  ldloc.s    V_16
        IL_032e:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
        IL_0333:  ldelem     [Engine]Engine.Color
        IL_0338:  stloc.s    V_18
        IL_033a:  ldarg.0
        IL_033b:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
        IL_0340:  ldloc.s    V_17
        IL_0342:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
        IL_0347:  ldc.i4.0
        IL_0348:  ldloc.2
        IL_0349:  dup
        IL_034a:  ldc.i4.1
        IL_034b:  add
        IL_034c:  stloc.2
        IL_034d:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_0352:  ldnull
        IL_0353:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
        IL_0358:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
        IL_035d:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_0362:  stloc.3
        IL_0363:  ldloc.s    V_17
        IL_0365:  ldfld      bool Game.ClothingData::IsOuter
        IL_036a:  brfalse.s  IL_03af

        IL_036c:  ldloc.3
        IL_036d:  ldc.r4     0.0
        IL_0372:  ldc.r4     0.0
        IL_0377:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_037c:  ldarg.0
        IL_037d:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
        IL_0382:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_0387:  conv.r4
        IL_0388:  ldarg.0
        IL_0389:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
        IL_038e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_0393:  conv.r4
        IL_0394:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0399:  ldc.r4     0.0
        IL_039e:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
        IL_03a3:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
        IL_03a8:  ldloc.s    V_18
        IL_03aa:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_03af:  ldloca.s   V_10
        IL_03b1:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
        IL_03b6:  brtrue     IL_0310

        IL_03bb:  leave.s    IL_03cb

      }  // end .try
      finally
      {
        IL_03bd:  ldloca.s   V_10
        IL_03bf:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
        IL_03c5:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_03ca:  endfinally
      }  // end handler
      IL_03cb:  ldloc.s    V_7
      IL_03cd:  ldc.i4.1
      IL_03ce:  add
      IL_03cf:  stloc.s    V_7
      IL_03d1:  ldloc.s    V_7
      IL_03d3:  ldloc.s    V_6
      IL_03d5:  ldlen
      IL_03d6:  conv.i4
      IL_03d7:  blt        IL_02f1

      IL_03dc:  ldarg.0
      IL_03dd:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_03e2:  ldc.i4.1
      IL_03e3:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_03e8:  leave.s    IL_03f7

    }  // end .try
    finally
    {
      IL_03ea:  ldloc.1
      IL_03eb:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_03f0:  ldloc.0
      IL_03f1:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_03f6:  endfinally
    }  // end handler
    IL_03f7:  ret
  } // end of method ComponentClothing::Draw

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_UpdateOrder() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentClothing::get_UpdateOrder

  .method public hidebysig newslot virtual final 
          instance void  Update(float32 dt) cil managed
  {
    // 代码大小       658 (0x292)
    .maxstack  7
    .locals init (valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_0,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_2,
             valuetype Game.ClothingSlot V_3,
             bool V_4,
             class [System.Collections]System.Collections.Generic.List`1<int32> V_5,
             int32 V_6,
             int32 V_7,
             class Game.ClothingData V_8,
             float32 V_9,
             float64 V_10,
             int32 V_11)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldInfo Game.SubsystemGameInfo::get_WorldInfo()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldInfo::GameMode
    IL_0010:  brfalse    IL_0291

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemTime Game.ComponentClothing::m_subsystemTime
    IL_001b:  ldc.r8     2.
    IL_0024:  ldc.r8     0.0
    IL_002d:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0032:  brfalse    IL_0291

    IL_0037:  ldarg.0
    IL_0038:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_003d:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0042:  stloc.0
    IL_0043:  ldloca.s   V_0
    IL_0045:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_004a:  brfalse.s  IL_006b

    IL_004c:  ldarg.0
    IL_004d:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_0052:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_0057:  stloc.0
    IL_0058:  ldloca.s   V_0
    IL_005a:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_005f:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_0064:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_0069:  brtrue.s   IL_00b4

    IL_006b:  ldarg.0
    IL_006c:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_0071:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_0076:  stloc.1
    IL_0077:  ldloca.s   V_1
    IL_0079:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_007e:  brfalse.s  IL_009f

    IL_0080:  ldarg.0
    IL_0081:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_0086:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_008b:  stloc.1
    IL_008c:  ldloca.s   V_1
    IL_008e:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_0093:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_0098:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_009d:  brtrue.s   IL_00b4

    IL_009f:  ldarg.0
    IL_00a0:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_00a5:  callvirt   instance float32 Game.ComponentLocomotion::get_LastJumpOrder()
    IL_00aa:  ldc.r4     0.0
    IL_00af:  beq        IL_0291

    IL_00b4:  ldarg.0
    IL_00b5:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
    IL_00ba:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_00bf:  brfalse    IL_027b

    IL_00c4:  ldtoken    Game.ClothingSlot
    IL_00c9:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_00ce:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_00d3:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_00d8:  stloc.2
    .try
    {
      IL_00d9:  br         IL_0264

      IL_00de:  ldloc.2
      IL_00df:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_00e4:  stloc.3
      IL_00e5:  ldc.i4.0
      IL_00e6:  stloc.s    V_4
      IL_00e8:  ldarg.0
      IL_00e9:  ldloc.3
      IL_00ea:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_00ef:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
      IL_00f4:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_00f9:  stloc.s    V_5
      IL_00fb:  ldc.i4.0
      IL_00fc:  stloc.s    V_6
      IL_00fe:  br         IL_01b0

      IL_0103:  ldloc.s    V_5
      IL_0105:  ldloc.s    V_6
      IL_0107:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_010c:  stloc.s    V_7
      IL_010e:  ldloc.s    V_7
      IL_0110:  call       int32 Game.TerrainData::ExtractData(int32)
      IL_0115:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_011a:  stloc.s    V_8
      IL_011c:  ldarg.0
      IL_011d:  ldfld      class Game.ComponentVitalStats Game.ComponentClothing::m_componentVitalStats
      IL_0122:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
      IL_0127:  ldc.r4     0.0
      IL_012c:  bgt.s      IL_013d

      IL_012e:  ldc.r4     20.
      IL_0133:  ldloc.s    V_8
      IL_0135:  ldfld      float32 Game.ClothingData::Sturdiness
      IL_013a:  mul
      IL_013b:  br.s       IL_014a

      IL_013d:  ldc.r4     10.
      IL_0142:  ldloc.s    V_8
      IL_0144:  ldfld      float32 Game.ClothingData::Sturdiness
      IL_0149:  mul
      IL_014a:  stloc.s    V_9
      IL_014c:  ldarg.0
      IL_014d:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
      IL_0152:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
      IL_0157:  ldloc.s    V_9
      IL_0159:  conv.r8
      IL_015a:  div
      IL_015b:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
      IL_0160:  stloc.s    V_10
      IL_0162:  ldarg.0
      IL_0163:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
      IL_0168:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
      IL_016d:  ldloc.s    V_9
      IL_016f:  conv.r8
      IL_0170:  div
      IL_0171:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
      IL_0176:  ldloc.s    V_10
      IL_0178:  ble.un.s   IL_01aa

      IL_017a:  ldarg.0
      IL_017b:  ldfld      class Game.Random Game.ComponentClothing::m_random
      IL_0180:  ldc.r4     0.0
      IL_0185:  ldc.r4     1.
      IL_018a:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_018f:  ldc.r4     0.75
      IL_0194:  bge.un.s   IL_01aa

      IL_0196:  ldloc.s    V_5
      IL_0198:  ldloc.s    V_6
      IL_019a:  ldloc.s    V_7
      IL_019c:  ldc.i4.1
      IL_019d:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                                int32)
      IL_01a2:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                      !0)
      IL_01a7:  ldc.i4.1
      IL_01a8:  stloc.s    V_4
      IL_01aa:  ldloc.s    V_6
      IL_01ac:  ldc.i4.1
      IL_01ad:  add
      IL_01ae:  stloc.s    V_6
      IL_01b0:  ldloc.s    V_6
      IL_01b2:  ldloc.s    V_5
      IL_01b4:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_01b9:  blt        IL_0103

      IL_01be:  ldc.i4.0
      IL_01bf:  stloc.s    V_11
      IL_01c1:  br         IL_0249

      IL_01c6:  ldloc.s    V_5
      IL_01c8:  ldloc.s    V_11
      IL_01ca:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_01cf:  call       int32 Game.TerrainData::ExtractContents(int32)
      IL_01d4:  ldc.i4     0xcb
      IL_01d9:  beq.s      IL_0243

      IL_01db:  ldloc.s    V_5
      IL_01dd:  ldloc.s    V_11
      IL_01df:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
      IL_01e4:  ldarg.0
      IL_01e5:  ldfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
      IL_01ea:  ldarg.0
      IL_01eb:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
      IL_01f0:  ldarg.0
      IL_01f1:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
      IL_01f6:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_01fb:  ldarg.0
      IL_01fc:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
      IL_0201:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
      IL_0206:  ldc.r4     2.
      IL_020b:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_0210:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_0215:  ldc.r4     1.
      IL_021a:  ldc.r4     1.
      IL_021f:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_0224:  ldc.i4.0
      IL_0225:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               float32,
                                                                               float32,
                                                                               valuetype [Engine]Engine.Color,
                                                                               int32)
      IL_022a:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_022f:  ldarg.0
      IL_0230:  ldfld      class Game.SubsystemGui Game.ComponentClothing::m_subsystemGui
      IL_0235:  ldstr      "Your clothing has worn out"
      IL_023a:  ldc.i4.1
      IL_023b:  ldc.i4.1
      IL_023c:  callvirt   instance void Game.SubsystemGui::DisplaySmallMessage(string,
                                                                                bool,
                                                                                bool)
      IL_0241:  br.s       IL_0249

      IL_0243:  ldloc.s    V_11
      IL_0245:  ldc.i4.1
      IL_0246:  add
      IL_0247:  stloc.s    V_11
      IL_0249:  ldloc.s    V_11
      IL_024b:  ldloc.s    V_5
      IL_024d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_0252:  blt        IL_01c6

      IL_0257:  ldloc.s    V_4
      IL_0259:  brfalse.s  IL_0264

      IL_025b:  ldarg.0
      IL_025c:  ldloc.3
      IL_025d:  ldloc.s    V_5
      IL_025f:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                            class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
      IL_0264:  ldloc.2
      IL_0265:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_026a:  brtrue     IL_00de

      IL_026f:  leave.s    IL_027b

    }  // end .try
    finally
    {
      IL_0271:  ldloc.2
      IL_0272:  brfalse.s  IL_027a

      IL_0274:  ldloc.2
      IL_0275:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_027a:  endfinally
    }  // end handler
    IL_027b:  ldarg.0
    IL_027c:  ldarg.0
    IL_027d:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0282:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_0287:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_028c:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
    IL_0291:  ret
  } // end of method ComponentClothing::Update

  .method public hidebysig newslot specialname virtual final 
          instance class Game.SubsystemInventory 
          get_SubsystemInventory() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemInventory Game.ComponentClothing::m_subsystemInventory
    IL_0006:  ret
  } // end of method ComponentClothing::get_SubsystemInventory

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_SlotsCount() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.4
    IL_0001:  ret
  } // end of method ComponentClothing::get_SlotsCount

  .method public hidebysig newslot specialname virtual final 
          instance int32  get_ActiveSlotIndex() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.m1
    IL_0001:  ret
  } // end of method ComponentClothing::get_ActiveSlotIndex

  .method public hidebysig newslot specialname virtual final 
          instance void  set_ActiveSlotIndex(int32 'value') cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentClothing::set_ActiveSlotIndex

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotValue(int32 slotIndex) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0007:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_000c:  call       !!0 [System.Linq]System.Linq.Enumerable::LastOrDefault<int32>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
    IL_0011:  ret
  } // end of method ComponentClothing::GetSlotValue

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotCount(int32 slotIndex) cil managed
  {
    // 代码大小       24 (0x18)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0007:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_000c:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0011:  ldc.i4.0
    IL_0012:  bgt.s      IL_0016

    IL_0014:  ldc.i4.0
    IL_0015:  ret

    IL_0016:  ldc.i4.1
    IL_0017:  ret
  } // end of method ComponentClothing::GetSlotCount

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotCapacity(int32 slotIndex,
                                          int32 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  ret
  } // end of method ComponentClothing::GetSlotCapacity

  .method public hidebysig newslot virtual final 
          instance int32  GetSlotProcessCapacity(int32 slotIndex,
                                                 int32 'value') cil managed
  {
    // 代码大小       50 (0x32)
    .maxstack  2
    .locals init (class Game.Block V_0)
    IL_0000:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0005:  ldarg.2
    IL_0006:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_000b:  ldelem.ref
    IL_000c:  stloc.0
    IL_000d:  ldloc.0
    IL_000e:  ldarg.2
    IL_000f:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_0014:  ldc.r4     0.0
    IL_0019:  ble.un.s   IL_001d

    IL_001b:  ldc.i4.1
    IL_001c:  ret

    IL_001d:  ldloc.0
    IL_001e:  isinst     Game.ClothingBlock
    IL_0023:  brfalse.s  IL_0030

    IL_0025:  ldarg.0
    IL_0026:  ldarg.2
    IL_0027:  call       instance bool Game.ComponentClothing::CanWearClothing(int32)
    IL_002c:  brfalse.s  IL_0030

    IL_002e:  ldc.i4.1
    IL_002f:  ret

    IL_0030:  ldc.i4.0
    IL_0031:  ret
  } // end of method ComponentClothing::GetSlotProcessCapacity

  .method public hidebysig newslot virtual final 
          instance void  AddSlotItems(int32 slotIndex,
                                      int32 'value',
                                      int32 count) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method ComponentClothing::AddSlotItems

  .method public hidebysig newslot virtual final 
          instance void  ProcessSlotItems(int32 slotIndex,
                                          int32 'value',
                                          int32 count,
                                          int32 processCount,
                                          [out] int32& processedValue,
                                          [out] int32& processedCount) cil managed
  {
    // 代码大小       186 (0xba)
    .maxstack  4
    .locals init (class Game.Block V_0,
             class Game.ClothingData V_1,
             class [System.Collections]System.Collections.Generic.List`1<int32> V_2)
    IL_0000:  ldarg.s    processedCount
    IL_0002:  ldc.i4.0
    IL_0003:  stind.i4
    IL_0004:  ldarg.s    processedValue
    IL_0006:  ldc.i4.0
    IL_0007:  stind.i4
    IL_0008:  ldarg.s    processCount
    IL_000a:  ldc.i4.1
    IL_000b:  bne.un     IL_00b9

    IL_0010:  call       class Game.Block[] Game.BlocksManager::get_Blocks()
    IL_0015:  ldarg.2
    IL_0016:  call       int32 Game.TerrainData::ExtractContents(int32)
    IL_001b:  ldelem.ref
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.2
    IL_001f:  callvirt   instance float32 Game.Block::GetNutritionalValue(int32)
    IL_0024:  ldc.r4     0.0
    IL_0029:  ble.un.s   IL_007a

    IL_002b:  ldloc.0
    IL_002c:  isinst     Game.BucketBlock
    IL_0031:  brfalse.s  IL_0048

    IL_0033:  ldarg.s    processedValue
    IL_0035:  ldc.i4.s   90
    IL_0037:  ldc.i4.0
    IL_0038:  ldarg.2
    IL_0039:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_003e:  call       int32 Game.TerrainData::MakeBlockValue(int32,
                                                                int32,
                                                                int32)
    IL_0043:  stind.i4
    IL_0044:  ldarg.s    processedCount
    IL_0046:  ldc.i4.1
    IL_0047:  stind.i4
    IL_0048:  ldarg.3
    IL_0049:  ldc.i4.1
    IL_004a:  ble.s      IL_0063

    IL_004c:  ldarg.s    processedCount
    IL_004e:  ldind.i4
    IL_004f:  ldc.i4.0
    IL_0050:  ble.s      IL_0063

    IL_0052:  ldarg.s    processedValue
    IL_0054:  ldind.i4
    IL_0055:  ldarg.2
    IL_0056:  beq.s      IL_0063

    IL_0058:  ldarg.s    processedValue
    IL_005a:  ldarg.2
    IL_005b:  stind.i4
    IL_005c:  ldarg.s    processedCount
    IL_005e:  ldarg.s    processCount
    IL_0060:  stind.i4
    IL_0061:  br.s       IL_007a

    IL_0063:  ldarg.0
    IL_0064:  ldfld      class Game.ComponentVitalStats Game.ComponentClothing::m_componentVitalStats
    IL_0069:  ldarg.2
    IL_006a:  callvirt   instance bool Game.ComponentVitalStats::Eat(int32)
    IL_006f:  brtrue.s   IL_007a

    IL_0071:  ldarg.s    processedValue
    IL_0073:  ldarg.2
    IL_0074:  stind.i4
    IL_0075:  ldarg.s    processedCount
    IL_0077:  ldarg.s    processCount
    IL_0079:  stind.i4
    IL_007a:  ldloc.0
    IL_007b:  isinst     Game.ClothingBlock
    IL_0080:  brfalse.s  IL_00b9

    IL_0082:  ldarg.2
    IL_0083:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0088:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_008d:  stloc.1
    IL_008e:  ldarg.0
    IL_008f:  ldloc.1
    IL_0090:  ldfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
    IL_0095:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_009a:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_009f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_00a4:  stloc.2
    IL_00a5:  ldloc.2
    IL_00a6:  ldarg.2
    IL_00a7:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Add(!0)
    IL_00ac:  ldarg.0
    IL_00ad:  ldloc.1
    IL_00ae:  ldfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
    IL_00b3:  ldloc.2
    IL_00b4:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_00b9:  ret
  } // end of method ComponentClothing::ProcessSlotItems

  .method public hidebysig newslot virtual final 
          instance int32  RemoveSlotItems(int32 slotIndex,
                                          int32 count) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  3
    .locals init (class [System.Collections]System.Collections.Generic.List`1<int32> V_0)
    IL_0000:  ldarg.2
    IL_0001:  ldc.i4.1
    IL_0002:  bne.un.s   IL_0037

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_000b:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_0010:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_001c:  ldc.i4.0
    IL_001d:  ble.s      IL_0037

    IL_001f:  ldloc.0
    IL_0020:  ldloc.0
    IL_0021:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0026:  ldc.i4.1
    IL_0027:  sub
    IL_0028:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
    IL_002d:  ldarg.0
    IL_002e:  ldarg.1
    IL_002f:  ldloc.0
    IL_0030:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0035:  ldc.i4.1
    IL_0036:  ret

    IL_0037:  ldc.i4.0
    IL_0038:  ret
  } // end of method ComponentClothing::RemoveSlotItems

  .method public hidebysig newslot virtual final 
          instance void  DropAllItems(valuetype [Engine]Engine.Vector3 position) cil managed
  {
    // 代码大小       187 (0xbb)
    .maxstack  6
    .locals init (class Game.Random V_0,
             class Game.SubsystemPickables V_1,
             int32 V_2,
             int32 V_3,
             int32 V_4,
             int32 V_5,
             valuetype [Engine]Engine.Vector3 V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_7)
    IL_0000:  newobj     instance void Game.Random::.ctor()
    IL_0005:  stloc.0
    IL_0006:  ldarg.0
    IL_0007:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0012:  stloc.1
    IL_0013:  ldc.i4.0
    IL_0014:  stloc.2
    IL_0015:  br         IL_00ae

    IL_001a:  ldarg.0
    IL_001b:  ldloc.2
    IL_001c:  call       instance int32 Game.ComponentClothing::GetSlotCount(int32)
    IL_0021:  stloc.3
    IL_0022:  ldloc.3
    IL_0023:  ldc.i4.0
    IL_0024:  ble        IL_00aa

    IL_0029:  ldarg.0
    IL_002a:  ldloc.2
    IL_002b:  call       instance int32 Game.ComponentClothing::GetSlotValue(int32)
    IL_0030:  stloc.s    V_4
    IL_0032:  ldarg.0
    IL_0033:  ldloc.2
    IL_0034:  ldloc.3
    IL_0035:  call       instance int32 Game.ComponentClothing::RemoveSlotItems(int32,
                                                                                int32)
    IL_003a:  stloc.s    V_5
    IL_003c:  ldloc.0
    IL_003d:  ldc.r4     5.
    IL_0042:  ldc.r4     10.
    IL_0047:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_004c:  ldloc.0
    IL_004d:  ldc.r4     -1.
    IL_0052:  ldc.r4     1.
    IL_0057:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_005c:  ldloc.0
    IL_005d:  ldc.r4     1.
    IL_0062:  ldc.r4     2.
    IL_0067:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_006c:  ldloc.0
    IL_006d:  ldc.r4     -1.
    IL_0072:  ldc.r4     1.
    IL_0077:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_007c:  newobj     instance void [Engine]Engine.Vector3::.ctor(float32,
                                                                     float32,
                                                                     float32)
    IL_0081:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Normalize(valuetype [Engine]Engine.Vector3)
    IL_0086:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Multiply(float32,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_008b:  stloc.s    V_6
    IL_008d:  ldloc.1
    IL_008e:  ldloc.s    V_4
    IL_0090:  ldloc.s    V_5
    IL_0092:  ldarg.1
    IL_0093:  ldloc.s    V_6
    IL_0095:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::.ctor(!0)
    IL_009a:  ldloca.s   V_7
    IL_009c:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
    IL_00a2:  ldloc.s    V_7
    IL_00a4:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                           int32,
                                                                                           valuetype [Engine]Engine.Vector3,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                           valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
    IL_00a9:  pop
    IL_00aa:  ldloc.2
    IL_00ab:  ldc.i4.1
    IL_00ac:  add
    IL_00ad:  stloc.2
    IL_00ae:  ldloc.2
    IL_00af:  ldarg.0
    IL_00b0:  call       instance int32 Game.ComponentClothing::get_SlotsCount()
    IL_00b5:  blt        IL_001a

    IL_00ba:  ret
  } // end of method ComponentClothing::DropAllItems

  .method private hidebysig instance void 
          Display_DeviceReset() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.0
    IL_0002:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_0007:  ret
  } // end of method ComponentClothing::Display_DeviceReset

  .method private hidebysig instance bool 
          CanWearClothing(int32 'value') cil managed
  {
    // 代码大小       80 (0x50)
    .maxstack  3
    .locals init (class Game.ClothingData V_0,
             class [System.Runtime]System.Collections.Generic.IList`1<int32> V_1,
             class Game.ClothingData V_2)
    IL_0000:  ldarg.1
    IL_0001:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_0006:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_000b:  stloc.0
    IL_000c:  ldarg.0
    IL_000d:  ldloc.0
    IL_000e:  ldfld      valuetype Game.ClothingSlot Game.ClothingData::Slot
    IL_0013:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0018:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_0024:  brtrue.s   IL_0028

    IL_0026:  ldc.i4.1
    IL_0027:  ret

    IL_0028:  ldloc.1
    IL_0029:  ldloc.1
    IL_002a:  callvirt   instance int32 class [System.Runtime]System.Collections.Generic.ICollection`1<int32>::get_Count()
    IL_002f:  ldc.i4.1
    IL_0030:  sub
    IL_0031:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IList`1<int32>::get_Item(int32)
    IL_0036:  call       int32 Game.TerrainData::ExtractData(int32)
    IL_003b:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0040:  stloc.2
    IL_0041:  ldloc.0
    IL_0042:  ldfld      int32 Game.ClothingData::Layer
    IL_0047:  ldloc.2
    IL_0048:  ldfld      int32 Game.ClothingData::Layer
    IL_004d:  cgt
    IL_004f:  ret
  } // end of method ComponentClothing::CanWearClothing

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentClothing::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0027:  ret
  } // end of method ComponentClothing::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       76 (0x4c)
    .maxstack  4
    IL_0000:  ldc.i4.4
    IL_0001:  newarr     Game.ClothingSlot
    IL_0006:  dup
    IL_0007:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'3AF033CF3264B808760C3A2CDCFBD390AF81C8BE'
    IL_000c:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0011:  stsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_innerSlotsOrder
    IL_0016:  ldc.i4.4
    IL_0017:  newarr     Game.ClothingSlot
    IL_001c:  dup
    IL_001d:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=16' '<PrivateImplementationDetails>'::'02E4414E7DFA0F3AA2387EE8EA7AB31431CB406A'
    IL_0022:  call       void [System.Runtime]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [System.Runtime]System.Array,
                                                                                                              valuetype [System.Runtime]System.RuntimeFieldHandle)
    IL_0027:  stsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_outerSlotsOrder
    IL_002c:  ldc.i4.0
    IL_002d:  stsfld     bool Game.ComponentClothing::ShowClothedTexture
    IL_0032:  ldc.i4.1
    IL_0033:  stsfld     bool Game.ComponentClothing::DrawClothedTexture
    IL_0038:  ldc.i4.1
    IL_0039:  newarr     [System.Runtime]System.Int32
    IL_003e:  dup
    IL_003f:  ldc.i4.0
    IL_0040:  ldc.i4     0xffffd8ef
    IL_0045:  stelem.i4
    IL_0046:  stsfld     int32[] Game.ComponentClothing::m_drawOrders
    IL_004b:  ret
  } // end of method ComponentClothing::.cctor

  .property instance class [Engine]Engine.Graphics.Texture2D
          InnerClothedTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_InnerClothedTexture()
  } // end of property ComponentClothing::InnerClothedTexture
  .property instance class [Engine]Engine.Graphics.Texture2D
          OuterClothedTexture()
  {
    .get instance class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::get_OuterClothedTexture()
  } // end of property ComponentClothing::OuterClothedTexture
  .property instance float32 Insulation()
  {
    .get instance float32 Game.ComponentClothing::get_Insulation()
    .set instance void Game.ComponentClothing::set_Insulation(float32)
  } // end of property ComponentClothing::Insulation
  .property instance valuetype Game.ClothingSlot
          LeastInsulatedSlot()
  {
    .get instance valuetype Game.ClothingSlot Game.ComponentClothing::get_LeastInsulatedSlot()
    .set instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
  } // end of property ComponentClothing::LeastInsulatedSlot
  .property instance float32 MovementSpeedFactor()
  {
    .get instance float32 Game.ComponentClothing::get_MovementSpeedFactor()
    .set instance void Game.ComponentClothing::set_MovementSpeedFactor(float32)
  } // end of property ComponentClothing::MovementSpeedFactor
  .property instance float32 SteedMovementSpeedFactor()
  {
    .get instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
    .set instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
  } // end of property ComponentClothing::SteedMovementSpeedFactor
  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.ComponentClothing::get_DrawOrders()
  } // end of property ComponentClothing::DrawOrders
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentClothing::get_UpdateOrder()
  } // end of property ComponentClothing::UpdateOrder
  .property instance class Game.SubsystemInventory
          SubsystemInventory()
  {
    .get instance class Game.SubsystemInventory Game.ComponentClothing::get_SubsystemInventory()
  } // end of property ComponentClothing::SubsystemInventory
  .property instance int32 SlotsCount()
  {
    .get instance int32 Game.ComponentClothing::get_SlotsCount()
  } // end of property ComponentClothing::SlotsCount
  .property instance int32 ActiveSlotIndex()
  {
    .get instance int32 Game.ComponentClothing::get_ActiveSlotIndex()
    .set instance void Game.ComponentClothing::set_ActiveSlotIndex(int32)
  } // end of property ComponentClothing::ActiveSlotIndex
} // end of class Game.ComponentClothing