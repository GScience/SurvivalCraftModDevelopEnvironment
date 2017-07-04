.class public auto ansi beforefieldinit Game.ComponentClothing
       extends [EntitySystem]GameEntitySystem.Component
       implements Game.IUpdateable,
                  Game.IInventory
{
  .field private class Game.SubsystemGameInfo m_subsystemGameInfo
  .field private class Game.SubsystemParticles m_subsystemParticles
  .field private class Game.SubsystemAudio m_subsystemAudio
  .field private class Game.SubsystemTime m_subsystemTime
  .field private class Game.SubsystemTerrain m_subsystemTerrain
  .field private class Game.SubsystemPickables m_subsystemPickables
  .field private class Game.ComponentGui m_componentGui
  .field private class Game.ComponentHumanModel m_componentHumanModel
  .field private class Game.ComponentBody m_componentBody
  .field private class Game.ComponentOuterClothingModel m_componentOuterClothingModel
  .field private class Game.ComponentVitalStats m_componentVitalStats
  .field private class Game.ComponentLocomotion m_componentLocomotion
  .field private class Game.ComponentPlayer m_componentPlayer
  .field private class [Engine]Engine.Graphics.Texture2D m_skinTexture
  .field private string m_skinTextureName
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_innerClothedTexture
  .field private class [Engine]Engine.Graphics.RenderTarget2D m_outerClothedTexture
  .field private class [Engine]Engine.Graphics.PrimitivesRenderer2D m_primitivesRenderer
  .field private class Game.Random m_random
  .field private float32 m_densityModifierApplied
  .field private valuetype [System.Runtime]System.Nullable`1<float64> m_lastTotalElapsedGameTime
  .field private bool m_clothedTexturesValid
  .field private class [System.Collections]System.Collections.Generic.List`1<int32> m_clothesList
  .field private class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> m_clothes
  .field private static valuetype Game.ClothingSlot[] m_innerSlotsOrder
  .field private static valuetype Game.ClothingSlot[] m_outerSlotsOrder
  .field public static bool ShowClothedTexture
  .field public static bool DrawClothedTexture
  .field private float32 '<Insulation>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private valuetype Game.ClothingSlot '<LeastInsulatedSlot>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private float32 '<SteedMovementSpeedFactor>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
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
    IL_000c:  newobj     instance void valuetype [Engine]Engine.ReadOnlyList`1<int32>::.ctor(class [System.Runtime]System.Collections.Generic.IList`1<!0>)
    IL_0011:  ret
  } // end of method ComponentClothing::GetClothes

  .method public hidebysig instance void 
          SetClothes(valuetype Game.ClothingSlot slot,
                     class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> clothes) cil managed
  {
    // 代码大小       759 (0x2f7)
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
        IL_0074:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_00ec:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
    IL_00f1:  ldc.r4     2.
    IL_00f6:  stloc.2
    IL_00f7:  ldc.r4     0.2
    IL_00fc:  stloc.3
    IL_00fd:  ldc.r4     0.40000001
    IL_0102:  stloc.s    V_4
    IL_0104:  ldc.r4     2.
    IL_0109:  stloc.s    V_5
    IL_010b:  ldarg.0
    IL_010c:  ldc.i4.0
    IL_010d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0112:  stloc.s    V_12
    IL_0114:  ldloca.s   V_12
    IL_0116:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_011b:  stloc.s    V_11
    .try
    {
      IL_011d:  br.s       IL_0150

      IL_011f:  ldloca.s   V_11
      IL_0121:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0126:  call       int32 Game.Terrain::ExtractData(int32)
      IL_012b:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_0130:  stloc.s    V_13
      IL_0132:  ldloc.2
      IL_0133:  ldloc.s    V_13
      IL_0135:  ldfld      float32 Game.ClothingData::Insulation
      IL_013a:  add
      IL_013b:  stloc.2
      IL_013c:  ldarg.0
      IL_013d:  ldarg.0
      IL_013e:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_0143:  ldloc.s    V_13
      IL_0145:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_014a:  mul
      IL_014b:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_0150:  ldloca.s   V_11
      IL_0152:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_0157:  brtrue.s   IL_011f

      IL_0159:  leave.s    IL_0169

    }  // end .try
    finally
    {
      IL_015b:  ldloca.s   V_11
      IL_015d:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0163:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0168:  endfinally
    }  // end handler
    IL_0169:  ldarg.0
    IL_016a:  ldc.i4.1
    IL_016b:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_0170:  stloc.s    V_12
    IL_0172:  ldloca.s   V_12
    IL_0174:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0179:  stloc.s    V_11
    .try
    {
      IL_017b:  br.s       IL_01ae

      IL_017d:  ldloca.s   V_11
      IL_017f:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0184:  call       int32 Game.Terrain::ExtractData(int32)
      IL_0189:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_018e:  stloc.s    V_14
      IL_0190:  ldloc.3
      IL_0191:  ldloc.s    V_14
      IL_0193:  ldfld      float32 Game.ClothingData::Insulation
      IL_0198:  add
      IL_0199:  stloc.3
      IL_019a:  ldarg.0
      IL_019b:  ldarg.0
      IL_019c:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_01a1:  ldloc.s    V_14
      IL_01a3:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_01a8:  mul
      IL_01a9:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_01ae:  ldloca.s   V_11
      IL_01b0:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_01b5:  brtrue.s   IL_017d

      IL_01b7:  leave.s    IL_01c7

    }  // end .try
    finally
    {
      IL_01b9:  ldloca.s   V_11
      IL_01bb:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_01c1:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_01c6:  endfinally
    }  // end handler
    IL_01c7:  ldarg.0
    IL_01c8:  ldc.i4.2
    IL_01c9:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_01ce:  stloc.s    V_12
    IL_01d0:  ldloca.s   V_12
    IL_01d2:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_01d7:  stloc.s    V_11
    .try
    {
      IL_01d9:  br.s       IL_020e

      IL_01db:  ldloca.s   V_11
      IL_01dd:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_01e2:  call       int32 Game.Terrain::ExtractData(int32)
      IL_01e7:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_01ec:  stloc.s    V_15
      IL_01ee:  ldloc.s    V_4
      IL_01f0:  ldloc.s    V_15
      IL_01f2:  ldfld      float32 Game.ClothingData::Insulation
      IL_01f7:  add
      IL_01f8:  stloc.s    V_4
      IL_01fa:  ldarg.0
      IL_01fb:  ldarg.0
      IL_01fc:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_0201:  ldloc.s    V_15
      IL_0203:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_0208:  mul
      IL_0209:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_020e:  ldloca.s   V_11
      IL_0210:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_0215:  brtrue.s   IL_01db

      IL_0217:  leave.s    IL_0227

    }  // end .try
    finally
    {
      IL_0219:  ldloca.s   V_11
      IL_021b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0221:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0226:  endfinally
    }  // end handler
    IL_0227:  ldarg.0
    IL_0228:  ldc.i4.3
    IL_0229:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
    IL_022e:  stloc.s    V_12
    IL_0230:  ldloca.s   V_12
    IL_0232:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
    IL_0237:  stloc.s    V_11
    .try
    {
      IL_0239:  br.s       IL_026e

      IL_023b:  ldloca.s   V_11
      IL_023d:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
      IL_0242:  call       int32 Game.Terrain::ExtractData(int32)
      IL_0247:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_024c:  stloc.s    V_16
      IL_024e:  ldloc.s    V_5
      IL_0250:  ldloc.s    V_16
      IL_0252:  ldfld      float32 Game.ClothingData::Insulation
      IL_0257:  add
      IL_0258:  stloc.s    V_5
      IL_025a:  ldarg.0
      IL_025b:  ldarg.0
      IL_025c:  call       instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
      IL_0261:  ldloc.s    V_16
      IL_0263:  ldfld      float32 Game.ClothingData::SteedMovementSpeedFactor
      IL_0268:  mul
      IL_0269:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
      IL_026e:  ldloca.s   V_11
      IL_0270:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
      IL_0275:  brtrue.s   IL_023b

      IL_0277:  leave.s    IL_0287

    }  // end .try
    finally
    {
      IL_0279:  ldloca.s   V_11
      IL_027b:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
      IL_0281:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0286:  endfinally
    }  // end handler
    IL_0287:  ldarg.0
    IL_0288:  ldc.r4     1.
    IL_028d:  ldc.r4     1.
    IL_0292:  ldloc.2
    IL_0293:  div
    IL_0294:  ldc.r4     1.
    IL_0299:  ldloc.3
    IL_029a:  div
    IL_029b:  add
    IL_029c:  ldc.r4     1.
    IL_02a1:  ldloc.s    V_4
    IL_02a3:  div
    IL_02a4:  add
    IL_02a5:  ldc.r4     1.
    IL_02aa:  ldloc.s    V_5
    IL_02ac:  div
    IL_02ad:  add
    IL_02ae:  div
    IL_02af:  call       instance void Game.ComponentClothing::set_Insulation(float32)
    IL_02b4:  ldloc.2
    IL_02b5:  ldloc.3
    IL_02b6:  ldloc.s    V_4
    IL_02b8:  ldloc.s    V_5
    IL_02ba:  call       float32 [Engine]Engine.MathUtils::Min(float32,
                                                               float32,
                                                               float32,
                                                               float32)
    IL_02bf:  stloc.s    V_6
    IL_02c1:  ldloc.2
    IL_02c2:  ldloc.s    V_6
    IL_02c4:  bne.un.s   IL_02ce

    IL_02c6:  ldarg.0
    IL_02c7:  ldc.i4.0
    IL_02c8:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_02cd:  ret

    IL_02ce:  ldloc.3
    IL_02cf:  ldloc.s    V_6
    IL_02d1:  bne.un.s   IL_02db

    IL_02d3:  ldarg.0
    IL_02d4:  ldc.i4.1
    IL_02d5:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_02da:  ret

    IL_02db:  ldloc.s    V_4
    IL_02dd:  ldloc.s    V_6
    IL_02df:  bne.un.s   IL_02e9

    IL_02e1:  ldarg.0
    IL_02e2:  ldc.i4.2
    IL_02e3:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_02e8:  ret

    IL_02e9:  ldloc.s    V_5
    IL_02eb:  ldloc.s    V_6
    IL_02ed:  bne.un.s   IL_02f6

    IL_02ef:  ldarg.0
    IL_02f0:  ldc.i4.3
    IL_02f1:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_02f6:  ret
  } // end of method ComponentClothing::SetClothes

  .method public hidebysig instance float32 
          ApplyArmorProtection(float32 attackPower) cil managed
  {
    // 代码大小       550 (0x226)
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
    IL_006a:  br         IL_0187

    IL_006f:  ldloc.3
    IL_0070:  ldloc.s    V_4
    IL_0072:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_0077:  stloc.s    V_5
    IL_0079:  ldloc.s    V_5
    IL_007b:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_00c7:  ble.un     IL_0181

    IL_00cc:  ldarg.1
    IL_00cd:  ldloc.s    V_8
    IL_00cf:  sub
    IL_00d0:  starg.s    attackPower
    IL_00d2:  ldarg.0
    IL_00d3:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_00d8:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_00dd:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_00e2:  brfalse.s  IL_0132

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
    IL_0105:  ldloc.s    V_9
    IL_0107:  ldc.r4     1.
    IL_010c:  call       float32 [Engine]Engine.MathUtils::Remainder(float32,
                                                                     float32)
    IL_0111:  callvirt   instance bool Game.Random::Bool(float32)
    IL_0116:  brtrue.s   IL_011b

    IL_0118:  ldc.i4.0
    IL_0119:  br.s       IL_011c

    IL_011b:  ldc.i4.1
    IL_011c:  conv.r4
    IL_011d:  add
    IL_011e:  conv.i4
    IL_011f:  stloc.s    V_10
    IL_0121:  ldloc.3
    IL_0122:  ldloc.s    V_4
    IL_0124:  ldloc.s    V_5
    IL_0126:  ldloc.s    V_10
    IL_0128:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                              int32)
    IL_012d:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                    !0)
    IL_0132:  ldloc.s    V_6
    IL_0134:  ldfld      string Game.ClothingData::ImpactSoundsFolder
    IL_0139:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_013e:  brtrue.s   IL_0181

    IL_0140:  ldarg.0
    IL_0141:  ldfld      class Game.SubsystemAudio Game.ComponentClothing::m_subsystemAudio
    IL_0146:  ldloc.s    V_6
    IL_0148:  ldfld      string Game.ClothingData::ImpactSoundsFolder
    IL_014d:  ldc.r4     1.
    IL_0152:  ldarg.0
    IL_0153:  ldfld      class Game.Random Game.ComponentClothing::m_random
    IL_0158:  ldc.r4     -0.30000001
    IL_015d:  ldc.r4     0.30000001
    IL_0162:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                    float32)
    IL_0167:  ldarg.0
    IL_0168:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_016d:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_0172:  ldc.r4     4.
    IL_0177:  ldc.r4     0.15000001
    IL_017c:  callvirt   instance void Game.SubsystemAudio::PlayRandomSound(string,
                                                                            float32,
                                                                            float32,
                                                                            valuetype [Engine]Engine.Vector3,
                                                                            float32,
                                                                            float32)
    IL_0181:  ldloc.s    V_4
    IL_0183:  ldc.i4.1
    IL_0184:  add
    IL_0185:  stloc.s    V_4
    IL_0187:  ldloc.s    V_4
    IL_0189:  ldloc.3
    IL_018a:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_018f:  blt        IL_006f

    IL_0194:  ldc.i4.0
    IL_0195:  stloc.s    V_11
    IL_0197:  br.s       IL_0208

    IL_0199:  ldloc.3
    IL_019a:  ldloc.s    V_11
    IL_019c:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
    IL_01a1:  call       int32 Game.Terrain::ExtractContents(int32)
    IL_01a6:  ldc.i4     0xcb
    IL_01ab:  beq.s      IL_0202

    IL_01ad:  ldloc.3
    IL_01ae:  ldloc.s    V_11
    IL_01b0:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
    IL_01b5:  ldarg.0
    IL_01b6:  ldfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
    IL_01bb:  ldarg.0
    IL_01bc:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
    IL_01c1:  ldarg.0
    IL_01c2:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_01c7:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
    IL_01cc:  ldarg.0
    IL_01cd:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
    IL_01d2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
    IL_01d7:  ldc.r4     2.
    IL_01dc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                              float32)
    IL_01e1:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                              valuetype [Engine]Engine.Vector3)
    IL_01e6:  ldc.r4     1.
    IL_01eb:  ldc.r4     1.
    IL_01f0:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
    IL_01f5:  ldc.i4.0
    IL_01f6:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                             valuetype [Engine]Engine.Vector3,
                                                                             float32,
                                                                             float32,
                                                                             valuetype [Engine]Engine.Color,
                                                                             int32)
    IL_01fb:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
    IL_0200:  br.s       IL_0208

    IL_0202:  ldloc.s    V_11
    IL_0204:  ldc.i4.1
    IL_0205:  add
    IL_0206:  stloc.s    V_11
    IL_0208:  ldloc.s    V_11
    IL_020a:  ldloc.3
    IL_020b:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
    IL_0210:  blt.s      IL_0199

    IL_0212:  ldarg.0
    IL_0213:  ldloc.1
    IL_0214:  ldloc.3
    IL_0215:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_021a:  ldarg.1
    IL_021b:  ldc.r4     0.0
    IL_0220:  call       float32 [Engine]Engine.MathUtils::Max(float32,
                                                               float32)
    IL_0225:  ret
  } // end of method ComponentClothing::ApplyArmorProtection

  .method family hidebysig virtual instance void 
          Load(class [EntitySystem]TemplatesDatabase.ValuesDictionary valuesDictionary,
               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap) cil managed
  {
    // 代码大小       461 (0x1cd)
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
    IL_001a:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemParticles>(bool)
    IL_001f:  stfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
    IL_0024:  ldarg.0
    IL_0025:  ldarg.0
    IL_0026:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_002b:  ldc.i4.1
    IL_002c:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemAudio>(bool)
    IL_0031:  stfld      class Game.SubsystemAudio Game.ComponentClothing::m_subsystemAudio
    IL_0036:  ldarg.0
    IL_0037:  ldarg.0
    IL_0038:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_003d:  ldc.i4.1
    IL_003e:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTime>(bool)
    IL_0043:  stfld      class Game.SubsystemTime Game.ComponentClothing::m_subsystemTime
    IL_0048:  ldarg.0
    IL_0049:  ldarg.0
    IL_004a:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_004f:  ldc.i4.1
    IL_0050:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemTerrain>(bool)
    IL_0055:  stfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
    IL_005a:  ldarg.0
    IL_005b:  ldarg.0
    IL_005c:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0061:  ldc.i4.1
    IL_0062:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemPickables>(bool)
    IL_0067:  stfld      class Game.SubsystemPickables Game.ComponentClothing::m_subsystemPickables
    IL_006c:  ldarg.0
    IL_006d:  ldarg.0
    IL_006e:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0073:  ldc.i4.1
    IL_0074:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentGui>(bool)
    IL_0079:  stfld      class Game.ComponentGui Game.ComponentClothing::m_componentGui
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
    IL_00d9:  ldarg.0
    IL_00da:  call       instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_00df:  ldc.i4.1
    IL_00e0:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentPlayer>(bool)
    IL_00e5:  stfld      class Game.ComponentPlayer Game.ComponentClothing::m_componentPlayer
    IL_00ea:  ldarg.0
    IL_00eb:  ldc.r4     1.
    IL_00f0:  call       instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
    IL_00f5:  ldarg.0
    IL_00f6:  ldc.r4     0.0
    IL_00fb:  call       instance void Game.ComponentClothing::set_Insulation(float32)
    IL_0100:  ldarg.0
    IL_0101:  ldc.i4.3
    IL_0102:  call       instance void Game.ComponentClothing::set_LeastInsulatedSlot(valuetype Game.ClothingSlot)
    IL_0107:  ldarg.0
    IL_0108:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_010d:  ldc.i4.0
    IL_010e:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0113:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0118:  ldarg.0
    IL_0119:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_011e:  ldc.i4.1
    IL_011f:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0124:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_0129:  ldarg.0
    IL_012a:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_012f:  ldc.i4.2
    IL_0130:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0135:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_0140:  ldc.i4.3
    IL_0141:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_0146:  callvirt   instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::set_Item(!0,
                                                                                                                                                                                                                   !1)
    IL_014b:  ldarg.1
    IL_014c:  ldstr      "Clothes"
    IL_0151:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<class [EntitySystem]TemplatesDatabase.ValuesDictionary>(string)
    IL_0156:  stloc.0
    IL_0157:  ldarg.0
    IL_0158:  ldc.i4.0
    IL_0159:  ldc.i4.s   59
    IL_015b:  ldloc.0
    IL_015c:  ldstr      "Head"
    IL_0161:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0166:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_016b:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0170:  ldarg.0
    IL_0171:  ldc.i4.1
    IL_0172:  ldc.i4.s   59
    IL_0174:  ldloc.0
    IL_0175:  ldstr      "Torso"
    IL_017a:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_017f:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_0184:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_0189:  ldarg.0
    IL_018a:  ldc.i4.2
    IL_018b:  ldc.i4.s   59
    IL_018d:  ldloc.0
    IL_018e:  ldstr      "Legs"
    IL_0193:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_0198:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_019d:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_01a2:  ldarg.0
    IL_01a3:  ldc.i4.3
    IL_01a4:  ldc.i4.s   59
    IL_01a6:  ldloc.0
    IL_01a7:  ldstr      "Feet"
    IL_01ac:  callvirt   instance !!0 [EntitySystem]TemplatesDatabase.ValuesDictionary::GetValue<string>(string)
    IL_01b1:  call       !!0[] [Engine]Engine.Serialization.HumanReadableConverter::ValuesListFromString<int32>(char,
                                                                                                                string)
    IL_01b6:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                          class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
    IL_01bb:  ldarg.0
    IL_01bc:  ldftn      instance void Game.ComponentClothing::Display_DeviceReset()
    IL_01c2:  newobj     instance void [System.Runtime]System.Action::.ctor(object,
                                                                            native int)
    IL_01c7:  call       void [Engine]Engine.Graphics.Display::add_DeviceReset(class [System.Runtime]System.Action)
    IL_01cc:  ret
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
    // 代码大小       1117 (0x45d)
    .maxstack  7
    .locals init (class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_0,
             valuetype Game.ClothingSlot V_1,
             bool V_2,
             int32 V_3,
             int32 V_4,
             class Game.ClothingData V_5,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> V_6,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix> V_7,
             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> V_8,
             valuetype Game.ClothingSlot V_9,
             bool V_10,
             int32 V_11,
             int32 V_12,
             class Game.ClothingData V_13,
             float32 V_14,
             float64 V_15,
             int32 V_16)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0006:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_000b:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_0010:  brfalse    IL_017e

    IL_0015:  ldarg.0
    IL_0016:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_001b:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0020:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_0025:  brfalse    IL_017e

    IL_002a:  ldarg.0
    IL_002b:  ldfld      class Game.SubsystemTime Game.ComponentClothing::m_subsystemTime
    IL_0030:  ldc.r8     0.5
    IL_0039:  ldc.r8     0.0
    IL_0042:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_0047:  brfalse    IL_017e

    IL_004c:  ldtoken    Game.ClothingSlot
    IL_0051:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0056:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_005b:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_0060:  stloc.0
    .try
    {
      IL_0061:  br         IL_0167

      IL_0066:  ldloc.0
      IL_0067:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_006c:  stloc.1
      IL_006d:  ldc.i4.0
      IL_006e:  stloc.2
      IL_006f:  ldarg.0
      IL_0070:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0075:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
      IL_007a:  ldarg.0
      IL_007b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0080:  ldarg.0
      IL_0081:  ldloc.1
      IL_0082:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_0087:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
      IL_008c:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_0091:  ldc.i4.0
      IL_0092:  stloc.3
      IL_0093:  br         IL_0146

      IL_0098:  ldarg.0
      IL_0099:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_009e:  ldloc.3
      IL_009f:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_00a4:  stloc.s    V_4
      IL_00a6:  ldloc.s    V_4
      IL_00a8:  call       int32 Game.Terrain::ExtractData(int32)
      IL_00ad:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_00b2:  stloc.s    V_5
      IL_00b4:  ldloc.s    V_5
      IL_00b6:  ldfld      int32 Game.ClothingData::PlayerLevelRequired
      IL_00bb:  conv.r4
      IL_00bc:  ldarg.0
      IL_00bd:  ldfld      class Game.ComponentPlayer Game.ComponentClothing::m_componentPlayer
      IL_00c2:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
      IL_00c7:  callvirt   instance float32 Game.PlayerData::get_Level()
      IL_00cc:  ble.un.s   IL_0142

      IL_00ce:  ldarg.0
      IL_00cf:  ldfld      class Game.ComponentGui Game.ComponentClothing::m_componentGui
      IL_00d4:  ldstr      "Must be level {0} to wear {1}"
      IL_00d9:  ldc.i4.2
      IL_00da:  newarr     [System.Runtime]System.Object
      IL_00df:  dup
      IL_00e0:  ldc.i4.0
      IL_00e1:  ldloc.s    V_5
      IL_00e3:  ldfld      int32 Game.ClothingData::PlayerLevelRequired
      IL_00e8:  box        [System.Runtime]System.Int32
      IL_00ed:  stelem.ref
      IL_00ee:  dup
      IL_00ef:  ldc.i4.1
      IL_00f0:  ldloc.s    V_5
      IL_00f2:  ldfld      string Game.ClothingData::DisplayName
      IL_00f7:  stelem.ref
      IL_00f8:  call       string [System.Runtime]System.String::Format(string,
                                                                        object[])
      IL_00fd:  ldc.i4.1
      IL_00fe:  ldc.i4.1
      IL_00ff:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                                bool,
                                                                                bool)
      IL_0104:  ldarg.0
      IL_0105:  ldfld      class Game.SubsystemPickables Game.ComponentClothing::m_subsystemPickables
      IL_010a:  ldloc.s    V_4
      IL_010c:  ldc.i4.1
      IL_010d:  ldarg.0
      IL_010e:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
      IL_0113:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_0118:  ldloca.s   V_6
      IL_011a:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>
      IL_0120:  ldloc.s    V_6
      IL_0122:  ldloca.s   V_7
      IL_0124:  initobj    valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>
      IL_012a:  ldloc.s    V_7
      IL_012c:  callvirt   instance class Game.Pickable Game.SubsystemPickables::AddPickable(int32,
                                                                                             int32,
                                                                                             valuetype [Engine]Engine.Vector3,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>,
                                                                                             valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Matrix>)
      IL_0131:  pop
      IL_0132:  ldarg.0
      IL_0133:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0138:  ldloc.3
      IL_0139:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
      IL_013e:  ldc.i4.1
      IL_013f:  stloc.2
      IL_0140:  br.s       IL_0146

      IL_0142:  ldloc.3
      IL_0143:  ldc.i4.1
      IL_0144:  add
      IL_0145:  stloc.3
      IL_0146:  ldloc.3
      IL_0147:  ldarg.0
      IL_0148:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_014d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_0152:  blt        IL_0098

      IL_0157:  ldloc.2
      IL_0158:  brfalse.s  IL_0167

      IL_015a:  ldarg.0
      IL_015b:  ldloc.1
      IL_015c:  ldarg.0
      IL_015d:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0162:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                            class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
      IL_0167:  ldloc.0
      IL_0168:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_016d:  brtrue     IL_0066

      IL_0172:  leave.s    IL_017e

    }  // end .try
    finally
    {
      IL_0174:  ldloc.0
      IL_0175:  brfalse.s  IL_017d

      IL_0177:  ldloc.0
      IL_0178:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_017d:  endfinally
    }  // end handler
    IL_017e:  ldarg.0
    IL_017f:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0184:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_0189:  ldfld      valuetype Game.GameMode Game.WorldSettings::GameMode
    IL_018e:  brfalse    IL_0456

    IL_0193:  ldarg.0
    IL_0194:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0199:  callvirt   instance class Game.WorldSettings Game.SubsystemGameInfo::get_WorldSettings()
    IL_019e:  ldfld      bool Game.WorldSettings::AreAdventureSurvivalMechanicsEnabled
    IL_01a3:  brfalse    IL_0456

    IL_01a8:  ldarg.0
    IL_01a9:  ldfld      class Game.SubsystemTime Game.ComponentClothing::m_subsystemTime
    IL_01ae:  ldc.r8     2.
    IL_01b7:  ldc.r8     0.0
    IL_01c0:  callvirt   instance bool Game.SubsystemTime::PeriodicGameTimeEvent(float64,
                                                                                 float64)
    IL_01c5:  brfalse    IL_0456

    IL_01ca:  ldarg.0
    IL_01cb:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_01d0:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_01d5:  stloc.s    V_8
    IL_01d7:  ldloca.s   V_8
    IL_01d9:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_HasValue()
    IL_01de:  brfalse.s  IL_0200

    IL_01e0:  ldarg.0
    IL_01e1:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_01e6:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2> Game.ComponentLocomotion::get_LastWalkOrder()
    IL_01eb:  stloc.s    V_8
    IL_01ed:  ldloca.s   V_8
    IL_01ef:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector2>::get_Value()
    IL_01f4:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
    IL_01f9:  call       bool [Engine]Engine.Vector2::op_Inequality(valuetype [Engine]Engine.Vector2,
                                                                    valuetype [Engine]Engine.Vector2)
    IL_01fe:  brtrue.s   IL_024b

    IL_0200:  ldarg.0
    IL_0201:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_0206:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_020b:  stloc.s    V_6
    IL_020d:  ldloca.s   V_6
    IL_020f:  call       instance bool valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_HasValue()
    IL_0214:  brfalse.s  IL_0236

    IL_0216:  ldarg.0
    IL_0217:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_021c:  callvirt   instance valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3> Game.ComponentLocomotion::get_LastSwimOrder()
    IL_0221:  stloc.s    V_6
    IL_0223:  ldloca.s   V_6
    IL_0225:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector3>::get_Value()
    IL_022a:  ldsfld     valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::Zero
    IL_022f:  call       bool [Engine]Engine.Vector3::op_Inequality(valuetype [Engine]Engine.Vector3,
                                                                    valuetype [Engine]Engine.Vector3)
    IL_0234:  brtrue.s   IL_024b

    IL_0236:  ldarg.0
    IL_0237:  ldfld      class Game.ComponentLocomotion Game.ComponentClothing::m_componentLocomotion
    IL_023c:  callvirt   instance float32 Game.ComponentLocomotion::get_LastJumpOrder()
    IL_0241:  ldc.r4     0.0
    IL_0246:  beq        IL_0456

    IL_024b:  ldarg.0
    IL_024c:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
    IL_0251:  call       instance bool valuetype [System.Runtime]System.Nullable`1<float64>::get_HasValue()
    IL_0256:  brfalse    IL_0440

    IL_025b:  ldtoken    Game.ClothingSlot
    IL_0260:  call       class [System.Runtime]System.Type [System.Runtime]System.Type::GetTypeFromHandle(valuetype [System.Runtime]System.RuntimeTypeHandle)
    IL_0265:  call       class [System.Runtime]System.Collections.Generic.IList`1<int32> Game.EnumUtils::GetEnumValues(class [System.Runtime]System.Type)
    IL_026a:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_026f:  stloc.0
    .try
    {
      IL_0270:  br         IL_0429

      IL_0275:  ldloc.0
      IL_0276:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_027b:  stloc.s    V_9
      IL_027d:  ldc.i4.0
      IL_027e:  stloc.s    V_10
      IL_0280:  ldarg.0
      IL_0281:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0286:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::Clear()
      IL_028b:  ldarg.0
      IL_028c:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0291:  ldarg.0
      IL_0292:  ldloc.s    V_9
      IL_0294:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_0299:  box        valuetype [Engine]Engine.ReadOnlyList`1<int32>
      IL_029e:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::AddRange(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!0>)
      IL_02a3:  ldc.i4.0
      IL_02a4:  stloc.s    V_11
      IL_02a6:  br         IL_0360

      IL_02ab:  ldarg.0
      IL_02ac:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_02b1:  ldloc.s    V_11
      IL_02b3:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_02b8:  stloc.s    V_12
      IL_02ba:  ldloc.s    V_12
      IL_02bc:  call       int32 Game.Terrain::ExtractData(int32)
      IL_02c1:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
      IL_02c6:  stloc.s    V_13
      IL_02c8:  ldarg.0
      IL_02c9:  ldfld      class Game.ComponentVitalStats Game.ComponentClothing::m_componentVitalStats
      IL_02ce:  callvirt   instance float32 Game.ComponentVitalStats::get_Wetness()
      IL_02d3:  ldc.r4     0.0
      IL_02d8:  bgt.s      IL_02e9

      IL_02da:  ldc.r4     20.
      IL_02df:  ldloc.s    V_13
      IL_02e1:  ldfld      float32 Game.ClothingData::Sturdiness
      IL_02e6:  mul
      IL_02e7:  br.s       IL_02f6

      IL_02e9:  ldc.r4     10.
      IL_02ee:  ldloc.s    V_13
      IL_02f0:  ldfld      float32 Game.ClothingData::Sturdiness
      IL_02f5:  mul
      IL_02f6:  stloc.s    V_14
      IL_02f8:  ldarg.0
      IL_02f9:  ldflda     valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
      IL_02fe:  call       instance !0 valuetype [System.Runtime]System.Nullable`1<float64>::get_Value()
      IL_0303:  ldloc.s    V_14
      IL_0305:  conv.r8
      IL_0306:  div
      IL_0307:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
      IL_030c:  stloc.s    V_15
      IL_030e:  ldarg.0
      IL_030f:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
      IL_0314:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
      IL_0319:  ldloc.s    V_14
      IL_031b:  conv.r8
      IL_031c:  div
      IL_031d:  call       float64 [Engine]Engine.MathUtils::Floor(float64)
      IL_0322:  ldloc.s    V_15
      IL_0324:  ble.un.s   IL_035a

      IL_0326:  ldarg.0
      IL_0327:  ldfld      class Game.Random Game.ComponentClothing::m_random
      IL_032c:  ldc.r4     0.0
      IL_0331:  ldc.r4     1.
      IL_0336:  callvirt   instance float32 Game.Random::UniformFloat(float32,
                                                                      float32)
      IL_033b:  ldc.r4     0.75
      IL_0340:  bge.un.s   IL_035a

      IL_0342:  ldarg.0
      IL_0343:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0348:  ldloc.s    V_11
      IL_034a:  ldloc.s    V_12
      IL_034c:  ldc.i4.1
      IL_034d:  call       int32 Game.BlocksManager::DamageItem(int32,
                                                                int32)
      IL_0352:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::set_Item(int32,
                                                                                                                      !0)
      IL_0357:  ldc.i4.1
      IL_0358:  stloc.s    V_10
      IL_035a:  ldloc.s    V_11
      IL_035c:  ldc.i4.1
      IL_035d:  add
      IL_035e:  stloc.s    V_11
      IL_0360:  ldloc.s    V_11
      IL_0362:  ldarg.0
      IL_0363:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0368:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_036d:  blt        IL_02ab

      IL_0372:  ldc.i4.0
      IL_0373:  stloc.s    V_16
      IL_0375:  br         IL_0405

      IL_037a:  ldarg.0
      IL_037b:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0380:  ldloc.s    V_16
      IL_0382:  callvirt   instance !0 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Item(int32)
      IL_0387:  call       int32 Game.Terrain::ExtractContents(int32)
      IL_038c:  ldc.i4     0xcb
      IL_0391:  beq.s      IL_03ff

      IL_0393:  ldarg.0
      IL_0394:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0399:  ldloc.s    V_16
      IL_039b:  callvirt   instance void class [System.Collections]System.Collections.Generic.List`1<int32>::RemoveAt(int32)
      IL_03a0:  ldarg.0
      IL_03a1:  ldfld      class Game.SubsystemParticles Game.ComponentClothing::m_subsystemParticles
      IL_03a6:  ldarg.0
      IL_03a7:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
      IL_03ac:  ldarg.0
      IL_03ad:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
      IL_03b2:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentFrame::get_Position()
      IL_03b7:  ldarg.0
      IL_03b8:  ldfld      class Game.ComponentBody Game.ComponentClothing::m_componentBody
      IL_03bd:  callvirt   instance valuetype [Engine]Engine.Vector3 Game.ComponentBody::get_BoxSize()
      IL_03c2:  ldc.r4     2.
      IL_03c7:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Division(valuetype [Engine]Engine.Vector3,
                                                                                                float32)
      IL_03cc:  call       valuetype [Engine]Engine.Vector3 [Engine]Engine.Vector3::op_Addition(valuetype [Engine]Engine.Vector3,
                                                                                                valuetype [Engine]Engine.Vector3)
      IL_03d1:  ldc.r4     1.
      IL_03d6:  ldc.r4     1.
      IL_03db:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_03e0:  ldc.i4.0
      IL_03e1:  newobj     instance void Game.BlockDebrisParticleSystem::.ctor(class Game.SubsystemTerrain,
                                                                               valuetype [Engine]Engine.Vector3,
                                                                               float32,
                                                                               float32,
                                                                               valuetype [Engine]Engine.Color,
                                                                               int32)
      IL_03e6:  callvirt   instance void Game.SubsystemParticles::AddParticleSystem(class Game.ParticleSystemBase)
      IL_03eb:  ldarg.0
      IL_03ec:  ldfld      class Game.ComponentGui Game.ComponentClothing::m_componentGui
      IL_03f1:  ldstr      "Your clothing has worn out"
      IL_03f6:  ldc.i4.1
      IL_03f7:  ldc.i4.1
      IL_03f8:  callvirt   instance void Game.ComponentGui::DisplaySmallMessage(string,
                                                                                bool,
                                                                                bool)
      IL_03fd:  br.s       IL_0405

      IL_03ff:  ldloc.s    V_16
      IL_0401:  ldc.i4.1
      IL_0402:  add
      IL_0403:  stloc.s    V_16
      IL_0405:  ldloc.s    V_16
      IL_0407:  ldarg.0
      IL_0408:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_040d:  callvirt   instance int32 class [System.Collections]System.Collections.Generic.List`1<int32>::get_Count()
      IL_0412:  blt        IL_037a

      IL_0417:  ldloc.s    V_10
      IL_0419:  brfalse.s  IL_0429

      IL_041b:  ldarg.0
      IL_041c:  ldloc.s    V_9
      IL_041e:  ldarg.0
      IL_041f:  ldfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
      IL_0424:  call       instance void Game.ComponentClothing::SetClothes(valuetype Game.ClothingSlot,
                                                                            class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>)
      IL_0429:  ldloc.0
      IL_042a:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_042f:  brtrue     IL_0275

      IL_0434:  leave.s    IL_0440

    }  // end .try
    finally
    {
      IL_0436:  ldloc.0
      IL_0437:  brfalse.s  IL_043f

      IL_0439:  ldloc.0
      IL_043a:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_043f:  endfinally
    }  // end handler
    IL_0440:  ldarg.0
    IL_0441:  ldarg.0
    IL_0442:  ldfld      class Game.SubsystemGameInfo Game.ComponentClothing::m_subsystemGameInfo
    IL_0447:  callvirt   instance float64 Game.SubsystemGameInfo::get_TotalElapsedGameTime()
    IL_044c:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<float64>::.ctor(!0)
    IL_0451:  stfld      valuetype [System.Runtime]System.Nullable`1<float64> Game.ComponentClothing::m_lastTotalElapsedGameTime
    IL_0456:  ldarg.0
    IL_0457:  call       instance void Game.ComponentClothing::UpdateRenderTargets()
    IL_045c:  ret
  } // end of method ComponentClothing::Update

  .method private hidebysig newslot specialname virtual final 
          instance class [EntitySystem]GameEntitySystem.Project 
          Game.IInventory.get_Project() cil managed
  {
    .override Game.IInventory::get_Project
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Component::get_Project()
    IL_0006:  ret
  } // end of method ComponentClothing::Game.IInventory.get_Project

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
    IL_0006:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0016:  call       int32 Game.Terrain::ExtractContents(int32)
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
    IL_0039:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003e:  call       int32 Game.Terrain::MakeBlockValue(int32,
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
    IL_0083:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_0001:  call       int32 Game.Terrain::ExtractData(int32)
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
    IL_0036:  call       int32 Game.Terrain::ExtractData(int32)
    IL_003b:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
    IL_0040:  stloc.2
    IL_0041:  ldloc.0
    IL_0042:  ldfld      int32 Game.ClothingData::Layer
    IL_0047:  ldloc.2
    IL_0048:  ldfld      int32 Game.ClothingData::Layer
    IL_004d:  cgt
    IL_004f:  ret
  } // end of method ComponentClothing::CanWearClothing

  .method private hidebysig instance void 
          UpdateRenderTargets() cil managed
  {
    // 代码大小       1136 (0x470)
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
    IL_0001:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0006:  brfalse.s  IL_0025

    IL_0008:  ldarg.0
    IL_0009:  ldfld      class Game.ComponentPlayer Game.ComponentClothing::m_componentPlayer
    IL_000e:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0013:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_0018:  ldarg.0
    IL_0019:  ldfld      string Game.ComponentClothing::m_skinTextureName
    IL_001e:  call       bool [System.Runtime]System.String::op_Inequality(string,
                                                                           string)
    IL_0023:  brfalse.s  IL_006c

    IL_0025:  ldarg.0
    IL_0026:  ldarg.0
    IL_0027:  ldfld      class Game.ComponentPlayer Game.ComponentClothing::m_componentPlayer
    IL_002c:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_0031:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_0036:  call       class [Engine]Engine.Graphics.Texture2D Game.CharacterSkinsManager::LoadTexture(string)
    IL_003b:  stfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0040:  ldarg.0
    IL_0041:  ldarg.0
    IL_0042:  ldfld      class Game.ComponentPlayer Game.ComponentClothing::m_componentPlayer
    IL_0047:  callvirt   instance class Game.PlayerData Game.ComponentPlayer::get_PlayerData()
    IL_004c:  callvirt   instance string Game.PlayerData::get_CharacterSkinName()
    IL_0051:  stfld      string Game.ComponentClothing::m_skinTextureName
    IL_0056:  ldarg.0
    IL_0057:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_005c:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_0061:  ldarg.0
    IL_0062:  ldflda     class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0067:  call       void [Engine]Engine.Utilities::Dispose<class [Engine]Engine.Graphics.RenderTarget2D>(!!0&)
    IL_006c:  ldarg.0
    IL_006d:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0072:  brfalse.s  IL_00a4

    IL_0074:  ldarg.0
    IL_0075:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_007a:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_007f:  ldarg.0
    IL_0080:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0085:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_008a:  bne.un.s   IL_00a4

    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_0092:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0097:  ldarg.0
    IL_0098:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_009d:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00a2:  beq.s      IL_00df

    IL_00a4:  ldarg.0
    IL_00a5:  ldarg.0
    IL_00a6:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00ab:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00b0:  ldarg.0
    IL_00b1:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00b6:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_00bb:  ldc.i4.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_00c2:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_00c7:  ldarg.0
    IL_00c8:  ldfld      class Game.ComponentHumanModel Game.ComponentClothing::m_componentHumanModel
    IL_00cd:  ldarg.0
    IL_00ce:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
    IL_00d3:  callvirt   instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_00d8:  ldarg.0
    IL_00d9:  ldc.i4.0
    IL_00da:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_00df:  ldarg.0
    IL_00e0:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_00e5:  brfalse.s  IL_0117

    IL_00e7:  ldarg.0
    IL_00e8:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_00ed:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00f2:  ldarg.0
    IL_00f3:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_00f8:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_00fd:  bne.un.s   IL_0117

    IL_00ff:  ldarg.0
    IL_0100:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0105:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_010a:  ldarg.0
    IL_010b:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0110:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_0115:  beq.s      IL_0152

    IL_0117:  ldarg.0
    IL_0118:  ldarg.0
    IL_0119:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_011e:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
    IL_0123:  ldarg.0
    IL_0124:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
    IL_0129:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
    IL_012e:  ldc.i4.0
    IL_012f:  ldc.i4.0
    IL_0130:  newobj     instance void [Engine]Engine.Graphics.RenderTarget2D::.ctor(int32,
                                                                                     int32,
                                                                                     valuetype [Engine]Engine.Graphics.ColorFormat,
                                                                                     valuetype [Engine]Engine.Graphics.DepthFormat)
    IL_0135:  stfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_013a:  ldarg.0
    IL_013b:  ldfld      class Game.ComponentOuterClothingModel Game.ComponentClothing::m_componentOuterClothingModel
    IL_0140:  ldarg.0
    IL_0141:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
    IL_0146:  callvirt   instance void Game.ComponentModel::set_TextureOverride(class [Engine]Engine.Graphics.Texture2D)
    IL_014b:  ldarg.0
    IL_014c:  ldc.i4.0
    IL_014d:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_0152:  ldsfld     bool Game.ComponentClothing::DrawClothedTexture
    IL_0157:  brfalse    IL_046f

    IL_015c:  ldarg.0
    IL_015d:  ldfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_0162:  brtrue     IL_046f

    IL_0167:  ldarg.0
    IL_0168:  ldc.i4.1
    IL_0169:  stfld      bool Game.ComponentClothing::m_clothedTexturesValid
    IL_016e:  call       valuetype [Engine]Engine.Rectangle [Engine]Engine.Graphics.Display::get_ScissorRectangle()
    IL_0173:  stloc.0
    IL_0174:  call       class [Engine]Engine.Graphics.RenderTarget2D [Engine]Engine.Graphics.Display::get_RenderTarget()
    IL_0179:  stloc.1
    .try
    {
      IL_017a:  ldarg.0
      IL_017b:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_0180:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0185:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_018a:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_018f:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_0194:  ldloca.s   V_4
      IL_0196:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_019c:  ldloc.s    V_4
      IL_019e:  ldloca.s   V_5
      IL_01a0:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_01a6:  ldloc.s    V_5
      IL_01a8:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_01ad:  ldc.i4.0
      IL_01ae:  stloc.2
      IL_01af:  ldarg.0
      IL_01b0:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_01b5:  ldarg.0
      IL_01b6:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ComponentClothing::m_skinTexture
      IL_01bb:  ldc.i4.0
      IL_01bc:  ldloc.2
      IL_01bd:  dup
      IL_01be:  ldc.i4.1
      IL_01bf:  add
      IL_01c0:  stloc.2
      IL_01c1:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
      IL_01c6:  ldnull
      IL_01c7:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
      IL_01cc:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
      IL_01d1:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                              bool,
                                                                                                                                              int32,
                                                                                                                                              class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                              class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                              class [Engine]Engine.Graphics.BlendState,
                                                                                                                                              class [Engine]Engine.Graphics.SamplerState)
      IL_01d6:  stloc.3
      IL_01d7:  ldloc.3
      IL_01d8:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_01dd:  ldarg.0
      IL_01de:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_01e3:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
      IL_01e8:  conv.r4
      IL_01e9:  ldarg.0
      IL_01ea:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
      IL_01ef:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
      IL_01f4:  conv.r4
      IL_01f5:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                       float32)
      IL_01fa:  ldc.r4     0.0
      IL_01ff:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
      IL_0204:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
      IL_0209:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::White
      IL_020e:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            float32,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Vector2,
                                                                                            valuetype [Engine]Engine.Color)
      IL_0213:  ldsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_innerSlotsOrder
      IL_0218:  stloc.s    V_6
      IL_021a:  ldc.i4.0
      IL_021b:  stloc.s    V_7
      IL_021d:  br         IL_0308

      IL_0222:  ldloc.s    V_6
      IL_0224:  ldloc.s    V_7
      IL_0226:  ldelem.i4
      IL_0227:  stloc.s    V_8
      IL_0229:  ldarg.0
      IL_022a:  ldloc.s    V_8
      IL_022c:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_0231:  stloc.s    V_9
      IL_0233:  ldloca.s   V_9
      IL_0235:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
      IL_023a:  stloc.s    V_10
      .try
      {
        IL_023c:  br         IL_02e6

        IL_0241:  ldloca.s   V_10
        IL_0243:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
        IL_0248:  call       int32 Game.Terrain::ExtractData(int32)
        IL_024d:  stloc.s    V_11
        IL_024f:  ldloc.s    V_11
        IL_0251:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
        IL_0256:  stloc.s    V_12
        IL_0258:  ldarg.0
        IL_0259:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
        IL_025e:  ldloc.s    V_11
        IL_0260:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
        IL_0265:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
        IL_026a:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.SubsystemTerrain,
                                                                                                  valuetype [System.Runtime]System.Nullable`1<int32>)
        IL_026f:  stloc.s    V_13
        IL_0271:  ldarg.0
        IL_0272:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
        IL_0277:  ldloc.s    V_12
        IL_0279:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
        IL_027e:  ldc.i4.0
        IL_027f:  ldloc.2
        IL_0280:  dup
        IL_0281:  ldc.i4.1
        IL_0282:  add
        IL_0283:  stloc.2
        IL_0284:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_0289:  ldnull
        IL_028a:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
        IL_028f:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
        IL_0294:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_0299:  stloc.3
        IL_029a:  ldloc.s    V_12
        IL_029c:  ldfld      bool Game.ClothingData::IsOuter
        IL_02a1:  brtrue.s   IL_02e6

        IL_02a3:  ldloc.3
        IL_02a4:  ldc.r4     0.0
        IL_02a9:  ldc.r4     0.0
        IL_02ae:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_02b3:  ldarg.0
        IL_02b4:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
        IL_02b9:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_02be:  conv.r4
        IL_02bf:  ldarg.0
        IL_02c0:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_innerClothedTexture
        IL_02c5:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_02ca:  conv.r4
        IL_02cb:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_02d0:  ldc.r4     0.0
        IL_02d5:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
        IL_02da:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
        IL_02df:  ldloc.s    V_13
        IL_02e1:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_02e6:  ldloca.s   V_10
        IL_02e8:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
        IL_02ed:  brtrue     IL_0241

        IL_02f2:  leave.s    IL_0302

      }  // end .try
      finally
      {
        IL_02f4:  ldloca.s   V_10
        IL_02f6:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
        IL_02fc:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0301:  endfinally
      }  // end handler
      IL_0302:  ldloc.s    V_7
      IL_0304:  ldc.i4.1
      IL_0305:  add
      IL_0306:  stloc.s    V_7
      IL_0308:  ldloc.s    V_7
      IL_030a:  ldloc.s    V_6
      IL_030c:  ldlen
      IL_030d:  conv.i4
      IL_030e:  blt        IL_0222

      IL_0313:  ldarg.0
      IL_0314:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_0319:  ldc.i4.1
      IL_031a:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_031f:  ldarg.0
      IL_0320:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
      IL_0325:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_032a:  ldsfld     valuetype [Engine]Engine.Color [Engine]Engine.Color::Transparent
      IL_032f:  newobj     instance void [Engine]Engine.Vector4::.ctor(valuetype [Engine]Engine.Color)
      IL_0334:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>::.ctor(!0)
      IL_0339:  ldloca.s   V_4
      IL_033b:  initobj    valuetype [System.Runtime]System.Nullable`1<float32>
      IL_0341:  ldloc.s    V_4
      IL_0343:  ldloca.s   V_5
      IL_0345:  initobj    valuetype [System.Runtime]System.Nullable`1<int32>
      IL_034b:  ldloc.s    V_5
      IL_034d:  call       void [Engine]Engine.Graphics.Display::Clear(valuetype [System.Runtime]System.Nullable`1<valuetype [Engine]Engine.Vector4>,
                                                                       valuetype [System.Runtime]System.Nullable`1<float32>,
                                                                       valuetype [System.Runtime]System.Nullable`1<int32>)
      IL_0352:  ldc.i4.0
      IL_0353:  stloc.2
      IL_0354:  ldsfld     valuetype Game.ClothingSlot[] Game.ComponentClothing::m_outerSlotsOrder
      IL_0359:  stloc.s    V_6
      IL_035b:  ldc.i4.0
      IL_035c:  stloc.s    V_7
      IL_035e:  br         IL_0449

      IL_0363:  ldloc.s    V_6
      IL_0365:  ldloc.s    V_7
      IL_0367:  ldelem.i4
      IL_0368:  stloc.s    V_14
      IL_036a:  ldarg.0
      IL_036b:  ldloc.s    V_14
      IL_036d:  call       instance valuetype [Engine]Engine.ReadOnlyList`1<int32> Game.ComponentClothing::GetClothes(valuetype Game.ClothingSlot)
      IL_0372:  stloc.s    V_15
      IL_0374:  ldloca.s   V_15
      IL_0376:  call       instance valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<!0> valuetype [Engine]Engine.ReadOnlyList`1<int32>::GetEnumerator()
      IL_037b:  stloc.s    V_10
      .try
      {
        IL_037d:  br         IL_0427

        IL_0382:  ldloca.s   V_10
        IL_0384:  call       instance !0 valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::get_Current()
        IL_0389:  call       int32 Game.Terrain::ExtractData(int32)
        IL_038e:  stloc.s    V_16
        IL_0390:  ldloc.s    V_16
        IL_0392:  call       class Game.ClothingData Game.ClothingBlock::GetClothingData(int32)
        IL_0397:  stloc.s    V_17
        IL_0399:  ldarg.0
        IL_039a:  ldfld      class Game.SubsystemTerrain Game.ComponentClothing::m_subsystemTerrain
        IL_039f:  ldloc.s    V_16
        IL_03a1:  call       int32 Game.ClothingBlock::GetClothingColor(int32)
        IL_03a6:  newobj     instance void valuetype [System.Runtime]System.Nullable`1<int32>::.ctor(!0)
        IL_03ab:  call       valuetype [Engine]Engine.Color Game.SubsystemPalette::GetFabricColor(class Game.SubsystemTerrain,
                                                                                                  valuetype [System.Runtime]System.Nullable`1<int32>)
        IL_03b0:  stloc.s    V_18
        IL_03b2:  ldarg.0
        IL_03b3:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
        IL_03b8:  ldloc.s    V_17
        IL_03ba:  ldfld      class [Engine]Engine.Graphics.Texture2D Game.ClothingData::Texture
        IL_03bf:  ldc.i4.0
        IL_03c0:  ldloc.2
        IL_03c1:  dup
        IL_03c2:  ldc.i4.1
        IL_03c3:  add
        IL_03c4:  stloc.2
        IL_03c5:  ldsfld     class [Engine]Engine.Graphics.DepthStencilState [Engine]Engine.Graphics.DepthStencilState::None
        IL_03ca:  ldnull
        IL_03cb:  ldsfld     class [Engine]Engine.Graphics.BlendState [Engine]Engine.Graphics.BlendState::NonPremultiplied
        IL_03d0:  ldsfld     class [Engine]Engine.Graphics.SamplerState [Engine]Engine.Graphics.SamplerState::PointClamp
        IL_03d5:  callvirt   instance class [Engine]Engine.Graphics.TexturedBatch2D [Engine]Engine.Graphics.PrimitivesRenderer2D::TexturedBatch(class [Engine]Engine.Graphics.Texture2D,
                                                                                                                                                bool,
                                                                                                                                                int32,
                                                                                                                                                class [Engine]Engine.Graphics.DepthStencilState,
                                                                                                                                                class [Engine]Engine.Graphics.RasterizerState,
                                                                                                                                                class [Engine]Engine.Graphics.BlendState,
                                                                                                                                                class [Engine]Engine.Graphics.SamplerState)
        IL_03da:  stloc.3
        IL_03db:  ldloc.s    V_17
        IL_03dd:  ldfld      bool Game.ClothingData::IsOuter
        IL_03e2:  brfalse.s  IL_0427

        IL_03e4:  ldloc.3
        IL_03e5:  ldc.r4     0.0
        IL_03ea:  ldc.r4     0.0
        IL_03ef:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_03f4:  ldarg.0
        IL_03f5:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
        IL_03fa:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Width()
        IL_03ff:  conv.r4
        IL_0400:  ldarg.0
        IL_0401:  ldfld      class [Engine]Engine.Graphics.RenderTarget2D Game.ComponentClothing::m_outerClothedTexture
        IL_0406:  callvirt   instance int32 [Engine]Engine.Graphics.Texture2D::get_Height()
        IL_040b:  conv.r4
        IL_040c:  newobj     instance void [Engine]Engine.Vector2::.ctor(float32,
                                                                         float32)
        IL_0411:  ldc.r4     0.0
        IL_0416:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::Zero
        IL_041b:  ldsfld     valuetype [Engine]Engine.Vector2 [Engine]Engine.Vector2::One
        IL_0420:  ldloc.s    V_18
        IL_0422:  callvirt   instance void [Engine]Engine.Graphics.TexturedBatch2D::QueueQuad(valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              float32,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Vector2,
                                                                                              valuetype [Engine]Engine.Color)
        IL_0427:  ldloca.s   V_10
        IL_0429:  call       instance bool valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>::MoveNext()
        IL_042e:  brtrue     IL_0382

        IL_0433:  leave.s    IL_0443

      }  // end .try
      finally
      {
        IL_0435:  ldloca.s   V_10
        IL_0437:  constrained. valuetype [Engine]Engine.ReadOnlyList`1/Enumerator<int32>
        IL_043d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
        IL_0442:  endfinally
      }  // end handler
      IL_0443:  ldloc.s    V_7
      IL_0445:  ldc.i4.1
      IL_0446:  add
      IL_0447:  stloc.s    V_7
      IL_0449:  ldloc.s    V_7
      IL_044b:  ldloc.s    V_6
      IL_044d:  ldlen
      IL_044e:  conv.i4
      IL_044f:  blt        IL_0363

      IL_0454:  ldarg.0
      IL_0455:  ldfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
      IL_045a:  ldc.i4.1
      IL_045b:  callvirt   instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::Flush(bool)
      IL_0460:  leave.s    IL_046f

    }  // end .try
    finally
    {
      IL_0462:  ldloc.1
      IL_0463:  call       void [Engine]Engine.Graphics.Display::set_RenderTarget(class [Engine]Engine.Graphics.RenderTarget2D)
      IL_0468:  ldloc.0
      IL_0469:  call       void [Engine]Engine.Graphics.Display::set_ScissorRectangle(valuetype [Engine]Engine.Rectangle)
      IL_046e:  endfinally
    }  // end handler
    IL_046f:  ret
  } // end of method ComponentClothing::UpdateRenderTargets

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void [Engine]Engine.Graphics.PrimitivesRenderer2D::.ctor()
    IL_0006:  stfld      class [Engine]Engine.Graphics.PrimitivesRenderer2D Game.ComponentClothing::m_primitivesRenderer
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void Game.Random::.ctor()
    IL_0011:  stfld      class Game.Random Game.ComponentClothing::m_random
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [System.Collections]System.Collections.Generic.List`1<int32>::.ctor()
    IL_001c:  stfld      class [System.Collections]System.Collections.Generic.List`1<int32> Game.ComponentClothing::m_clothesList
    IL_0021:  ldarg.0
    IL_0022:  newobj     instance void class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>>::.ctor()
    IL_0027:  stfld      class [System.Collections]System.Collections.Generic.Dictionary`2<valuetype Game.ClothingSlot,class [System.Collections]System.Collections.Generic.List`1<int32>> Game.ComponentClothing::m_clothes
    IL_002c:  ldarg.0
    IL_002d:  call       instance void [EntitySystem]GameEntitySystem.Component::.ctor()
    IL_0032:  ret
  } // end of method ComponentClothing::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  8
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
    IL_0038:  ret
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
  .property instance float32 SteedMovementSpeedFactor()
  {
    .get instance float32 Game.ComponentClothing::get_SteedMovementSpeedFactor()
    .set instance void Game.ComponentClothing::set_SteedMovementSpeedFactor(float32)
  } // end of property ComponentClothing::SteedMovementSpeedFactor
  .property instance int32 UpdateOrder()
  {
    .get instance int32 Game.ComponentClothing::get_UpdateOrder()
  } // end of property ComponentClothing::UpdateOrder
  .property instance class [EntitySystem]GameEntitySystem.Project
          Game.IInventory.Project()
  {
    .get instance class [EntitySystem]GameEntitySystem.Project Game.ComponentClothing::Game.IInventory.get_Project()
  } // end of property ComponentClothing::Game.IInventory.Project
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