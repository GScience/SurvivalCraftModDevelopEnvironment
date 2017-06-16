.class public auto ansi beforefieldinit Game.AStar`1<T>
       extends [System.Runtime]System.Object
{
  .class auto ansi nested private beforefieldinit Node<T>
         extends [System.Runtime]System.Object
  {
    .field public !T Position
    .field public !T PreviousPosition
    .field public float32 F
    .field public float32 G
    .field public float32 H
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 代码大小       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
      IL_0006:  ret
    } // end of method Node::.ctor

  } // end of class Node

  .field private int32 m_nodesCacheIndex
  .field private class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>> m_nodesCache
  .field private class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>> m_openHeap
  .field private class [Engine]Engine.DynamicArray`1<!T> m_neighbors
  .field private float32 '<PathCost>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class [Engine]Engine.DynamicArray`1<!T> '<Path>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.IAStarWorld`1<!T> '<World>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.IAStarStorage`1<!T> '<OpenStorage>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private class Game.IAStarStorage`1<!T> '<ClosedStorage>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname instance float32 
          get_PathCost() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      float32 class Game.AStar`1<!T>::'<PathCost>k__BackingField'
    IL_0006:  ret
  } // end of method AStar`1::get_PathCost

  .method private hidebysig specialname instance void 
          set_PathCost(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      float32 class Game.AStar`1<!T>::'<PathCost>k__BackingField'
    IL_0007:  ret
  } // end of method AStar`1::set_PathCost

  .method public hidebysig specialname instance class [Engine]Engine.DynamicArray`1<!T> 
          get_Path() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::'<Path>k__BackingField'
    IL_0006:  ret
  } // end of method AStar`1::get_Path

  .method public hidebysig specialname instance void 
          set_Path(class [Engine]Engine.DynamicArray`1<!T> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::'<Path>k__BackingField'
    IL_0007:  ret
  } // end of method AStar`1::set_Path

  .method public hidebysig specialname instance class Game.IAStarWorld`1<!T> 
          get_World() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::'<World>k__BackingField'
    IL_0006:  ret
  } // end of method AStar`1::get_World

  .method public hidebysig specialname instance void 
          set_World(class Game.IAStarWorld`1<!T> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::'<World>k__BackingField'
    IL_0007:  ret
  } // end of method AStar`1::set_World

  .method public hidebysig specialname instance class Game.IAStarStorage`1<!T> 
          get_OpenStorage() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::'<OpenStorage>k__BackingField'
    IL_0006:  ret
  } // end of method AStar`1::get_OpenStorage

  .method public hidebysig specialname instance void 
          set_OpenStorage(class Game.IAStarStorage`1<!T> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::'<OpenStorage>k__BackingField'
    IL_0007:  ret
  } // end of method AStar`1::set_OpenStorage

  .method public hidebysig specialname instance class Game.IAStarStorage`1<!T> 
          get_ClosedStorage() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::'<ClosedStorage>k__BackingField'
    IL_0006:  ret
  } // end of method AStar`1::get_ClosedStorage

  .method public hidebysig specialname instance void 
          set_ClosedStorage(class Game.IAStarStorage`1<!T> 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  stfld      class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::'<ClosedStorage>k__BackingField'
    IL_0007:  ret
  } // end of method AStar`1::set_ClosedStorage

  .method private hidebysig instance void 
          BuildPathFromEndNode(class Game.AStar`1/Node<!T> startNode,
                               class Game.AStar`1/Node<!T> endNode) cil managed
  {
    // 代码大小       72 (0x48)
    .maxstack  2
    .locals init (class Game.AStar`1/Node<!T> V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.2
    IL_0002:  ldfld      float32 class Game.AStar`1/Node<!T>::G
    IL_0007:  call       instance void class Game.AStar`1<!T>::set_PathCost(float32)
    IL_000c:  ldarg.0
    IL_000d:  call       instance class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::get_Path()
    IL_0012:  callvirt   instance void class [Engine]Engine.DynamicArray`1<!T>::Clear()
    IL_0017:  ldarg.2
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_0043

    IL_001b:  ldarg.0
    IL_001c:  call       instance class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::get_Path()
    IL_0021:  ldloc.0
    IL_0022:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_0027:  callvirt   instance void class [Engine]Engine.DynamicArray`1<!T>::Add(!0)
    IL_002c:  ldarg.0
    IL_002d:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_ClosedStorage()
    IL_0032:  ldloc.0
    IL_0033:  ldfld      !0 class Game.AStar`1/Node<!T>::PreviousPosition
    IL_0038:  callvirt   instance object class Game.IAStarStorage`1<!T>::Get(!0)
    IL_003d:  castclass  class Game.AStar`1/Node<!T>
    IL_0042:  stloc.0
    IL_0043:  ldloc.0
    IL_0044:  ldarg.1
    IL_0045:  bne.un.s   IL_001b

    IL_0047:  ret
  } // end of method AStar`1::BuildPathFromEndNode

  .method public hidebysig instance void 
          FindPath(!T start,
                   !T end,
                   float32 minHeuristic,
                   int32 maxPositionsToCheck) cil managed
  {
    // 代码大小       631 (0x277)
    .maxstack  5
    .locals init (class Game.AStar`1/Node<!T> V_0,
             class Game.AStar`1/Node<!T> V_1,
             int32 V_2,
             !T V_3,
             class Game.AStar`1/Node<!T> V_4,
             int32 V_5,
             !T V_6,
             float32 V_7,
             float32 V_8,
             float32 V_9,
             class Game.AStar`1/Node<!T> V_10)
    IL_0000:  ldarg.0
    IL_0001:  call       instance class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::get_Path()
    IL_0006:  brtrue.s   IL_0013

    IL_0008:  ldstr      "Path not specified."
    IL_000d:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0012:  throw

    IL_0013:  ldarg.0
    IL_0014:  call       instance class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::get_World()
    IL_0019:  brtrue.s   IL_0026

    IL_001b:  ldstr      "AStar World not specified."
    IL_0020:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0025:  throw

    IL_0026:  ldarg.0
    IL_0027:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_002c:  brtrue.s   IL_0039

    IL_002e:  ldstr      "AStar OpenStorage not specified."
    IL_0033:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_0038:  throw

    IL_0039:  ldarg.0
    IL_003a:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_003f:  brtrue.s   IL_004c

    IL_0041:  ldstr      "AStar ClosedStorage not specified."
    IL_0046:  newobj     instance void [System.Runtime]System.InvalidOperationException::.ctor(string)
    IL_004b:  throw

    IL_004c:  ldarg.0
    IL_004d:  ldc.i4.0
    IL_004e:  stfld      int32 class Game.AStar`1<!T>::m_nodesCacheIndex
    IL_0053:  ldarg.0
    IL_0054:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0059:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::Clear()
    IL_005e:  ldarg.0
    IL_005f:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_0064:  callvirt   instance void class Game.IAStarStorage`1<!T>::Clear()
    IL_0069:  ldarg.0
    IL_006a:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_ClosedStorage()
    IL_006f:  callvirt   instance void class Game.IAStarStorage`1<!T>::Clear()
    IL_0074:  ldarg.0
    IL_0075:  ldarg.1
    IL_0076:  ldloca.s   V_3
    IL_0078:  initobj    !T
    IL_007e:  ldloc.3
    IL_007f:  ldc.r4     0.0
    IL_0084:  ldc.r4     0.0
    IL_0089:  call       instance class Game.AStar`1/Node<!0> class Game.AStar`1<!T>::NewNode(!0,
                                                                                              !0,
                                                                                              float32,
                                                                                              float32)
    IL_008e:  stloc.0
    IL_008f:  ldarg.0
    IL_0090:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_0095:  ldarg.1
    IL_0096:  ldloc.0
    IL_0097:  callvirt   instance void class Game.IAStarStorage`1<!T>::Set(!0,
                                                                           object)
    IL_009c:  ldarg.0
    IL_009d:  ldloc.0
    IL_009e:  call       instance void class Game.AStar`1<!T>::HeapEnqueue(class Game.AStar`1/Node<!0>)
    IL_00a3:  ldnull
    IL_00a4:  stloc.1
    IL_00a5:  ldc.i4.0
    IL_00a6:  stloc.2
    IL_00a7:  ldarg.0
    IL_00a8:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_00ad:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_00b2:  ldc.i4.0
    IL_00b3:  bgt.s      IL_00b8

    IL_00b5:  ldnull
    IL_00b6:  br.s       IL_00be

    IL_00b8:  ldarg.0
    IL_00b9:  call       instance class Game.AStar`1/Node<!0> class Game.AStar`1<!T>::HeapDequeue()
    IL_00be:  stloc.s    V_4
    IL_00c0:  ldloc.s    V_4
    IL_00c2:  brfalse.s  IL_00c9

    IL_00c4:  ldloc.2
    IL_00c5:  ldarg.s    maxPositionsToCheck
    IL_00c7:  blt.s      IL_00ec

    IL_00c9:  ldloc.1
    IL_00ca:  brfalse.s  IL_00d5

    IL_00cc:  ldarg.0
    IL_00cd:  ldloc.0
    IL_00ce:  ldloc.1
    IL_00cf:  call       instance void class Game.AStar`1<!T>::BuildPathFromEndNode(class Game.AStar`1/Node<!0>,
                                                                                    class Game.AStar`1/Node<!0>)
    IL_00d4:  ret

    IL_00d5:  ldarg.0
    IL_00d6:  call       instance class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::get_Path()
    IL_00db:  callvirt   instance void class [Engine]Engine.DynamicArray`1<!T>::Clear()
    IL_00e0:  ldarg.0
    IL_00e1:  ldc.r4     0.0
    IL_00e6:  call       instance void class Game.AStar`1<!T>::set_PathCost(float32)
    IL_00eb:  ret

    IL_00ec:  ldarg.0
    IL_00ed:  call       instance class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::get_World()
    IL_00f2:  ldloc.s    V_4
    IL_00f4:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_00f9:  callvirt   instance bool class Game.IAStarWorld`1<!T>::IsGoal(!0)
    IL_00fe:  brfalse.s  IL_010a

    IL_0100:  ldarg.0
    IL_0101:  ldloc.0
    IL_0102:  ldloc.s    V_4
    IL_0104:  call       instance void class Game.AStar`1<!T>::BuildPathFromEndNode(class Game.AStar`1/Node<!0>,
                                                                                    class Game.AStar`1/Node<!0>)
    IL_0109:  ret

    IL_010a:  ldarg.0
    IL_010b:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_ClosedStorage()
    IL_0110:  ldloc.s    V_4
    IL_0112:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_0117:  ldloc.s    V_4
    IL_0119:  callvirt   instance void class Game.IAStarStorage`1<!T>::Set(!0,
                                                                           object)
    IL_011e:  ldarg.0
    IL_011f:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_0124:  ldloc.s    V_4
    IL_0126:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_012b:  ldnull
    IL_012c:  callvirt   instance void class Game.IAStarStorage`1<!T>::Set(!0,
                                                                           object)
    IL_0131:  ldloc.2
    IL_0132:  ldc.i4.1
    IL_0133:  add
    IL_0134:  stloc.2
    IL_0135:  ldarg.0
    IL_0136:  ldfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::m_neighbors
    IL_013b:  callvirt   instance void class [Engine]Engine.DynamicArray`1<!T>::Clear()
    IL_0140:  ldarg.0
    IL_0141:  call       instance class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::get_World()
    IL_0146:  ldloc.s    V_4
    IL_0148:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_014d:  ldarg.0
    IL_014e:  ldfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::m_neighbors
    IL_0153:  callvirt   instance void class Game.IAStarWorld`1<!T>::Neighbors(!0,
                                                                               class [Engine]Engine.DynamicArray`1<!0>)
    IL_0158:  ldc.i4.0
    IL_0159:  stloc.s    V_5
    IL_015b:  br         IL_0260

    IL_0160:  ldarg.0
    IL_0161:  ldfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::m_neighbors
    IL_0166:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<!T>::get_Array()
    IL_016b:  ldloc.s    V_5
    IL_016d:  ldelem     !T
    IL_0172:  stloc.s    V_6
    IL_0174:  ldarg.0
    IL_0175:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_ClosedStorage()
    IL_017a:  ldloc.s    V_6
    IL_017c:  callvirt   instance object class Game.IAStarStorage`1<!T>::Get(!0)
    IL_0181:  brtrue     IL_025a

    IL_0186:  ldarg.0
    IL_0187:  call       instance class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::get_World()
    IL_018c:  ldloc.s    V_4
    IL_018e:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_0193:  ldloc.s    V_6
    IL_0195:  callvirt   instance float32 class Game.IAStarWorld`1<!T>::Cost(!0,
                                                                             !0)
    IL_019a:  stloc.s    V_7
    IL_019c:  ldloc.s    V_7
    IL_019e:  ldc.r4     (00 00 80 7F)
    IL_01a3:  beq        IL_025a

    IL_01a8:  ldloc.s    V_4
    IL_01aa:  ldfld      float32 class Game.AStar`1/Node<!T>::G
    IL_01af:  ldloc.s    V_7
    IL_01b1:  add
    IL_01b2:  stloc.s    V_8
    IL_01b4:  ldarg.0
    IL_01b5:  call       instance class Game.IAStarWorld`1<!0> class Game.AStar`1<!T>::get_World()
    IL_01ba:  ldloc.s    V_6
    IL_01bc:  ldarg.2
    IL_01bd:  callvirt   instance float32 class Game.IAStarWorld`1<!T>::Heuristic(!0,
                                                                                  !0)
    IL_01c2:  stloc.s    V_9
    IL_01c4:  ldloc.s    V_4
    IL_01c6:  ldloc.0
    IL_01c7:  beq.s      IL_01d9

    IL_01c9:  ldloc.1
    IL_01ca:  brfalse.s  IL_01d6

    IL_01cc:  ldloc.s    V_9
    IL_01ce:  ldloc.1
    IL_01cf:  ldfld      float32 class Game.AStar`1/Node<!T>::H
    IL_01d4:  bge.un.s   IL_01d9

    IL_01d6:  ldloc.s    V_4
    IL_01d8:  stloc.1
    IL_01d9:  ldarg.0
    IL_01da:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_01df:  ldloc.s    V_6
    IL_01e1:  callvirt   instance object class Game.IAStarStorage`1<!T>::Get(!0)
    IL_01e6:  castclass  class Game.AStar`1/Node<!T>
    IL_01eb:  stloc.s    V_10
    IL_01ed:  ldloc.s    V_10
    IL_01ef:  brfalse.s  IL_022e

    IL_01f1:  ldloc.s    V_8
    IL_01f3:  ldloc.s    V_10
    IL_01f5:  ldfld      float32 class Game.AStar`1/Node<!T>::G
    IL_01fa:  bge.un.s   IL_025a

    IL_01fc:  ldloc.s    V_10
    IL_01fe:  ldloc.s    V_8
    IL_0200:  stfld      float32 class Game.AStar`1/Node<!T>::G
    IL_0205:  ldloc.s    V_10
    IL_0207:  ldloc.s    V_8
    IL_0209:  ldloc.s    V_10
    IL_020b:  ldfld      float32 class Game.AStar`1/Node<!T>::H
    IL_0210:  add
    IL_0211:  stfld      float32 class Game.AStar`1/Node<!T>::F
    IL_0216:  ldloc.s    V_10
    IL_0218:  ldloc.s    V_4
    IL_021a:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_021f:  stfld      !0 class Game.AStar`1/Node<!T>::PreviousPosition
    IL_0224:  ldarg.0
    IL_0225:  ldloc.s    V_10
    IL_0227:  call       instance void class Game.AStar`1<!T>::HeapUpdate(class Game.AStar`1/Node<!0>)
    IL_022c:  br.s       IL_025a

    IL_022e:  ldarg.0
    IL_022f:  ldloc.s    V_6
    IL_0231:  ldloc.s    V_4
    IL_0233:  ldfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_0238:  ldloc.s    V_8
    IL_023a:  ldloc.s    V_9
    IL_023c:  call       instance class Game.AStar`1/Node<!0> class Game.AStar`1<!T>::NewNode(!0,
                                                                                              !0,
                                                                                              float32,
                                                                                              float32)
    IL_0241:  stloc.s    V_10
    IL_0243:  ldarg.0
    IL_0244:  call       instance class Game.IAStarStorage`1<!0> class Game.AStar`1<!T>::get_OpenStorage()
    IL_0249:  ldloc.s    V_6
    IL_024b:  ldloc.s    V_10
    IL_024d:  callvirt   instance void class Game.IAStarStorage`1<!T>::Set(!0,
                                                                           object)
    IL_0252:  ldarg.0
    IL_0253:  ldloc.s    V_10
    IL_0255:  call       instance void class Game.AStar`1<!T>::HeapEnqueue(class Game.AStar`1/Node<!0>)
    IL_025a:  ldloc.s    V_5
    IL_025c:  ldc.i4.1
    IL_025d:  add
    IL_025e:  stloc.s    V_5
    IL_0260:  ldloc.s    V_5
    IL_0262:  ldarg.0
    IL_0263:  ldfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::m_neighbors
    IL_0268:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<!T>::get_Count()
    IL_026d:  blt        IL_0160

    IL_0272:  br         IL_00a7
  } // end of method AStar`1::FindPath

  .method private hidebysig instance void 
          HeapEnqueue(class Game.AStar`1/Node<!T> node) cil managed
  {
    // 代码大小       32 (0x20)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::Add(!0)
    IL_000c:  ldarg.0
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0013:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0018:  ldc.i4.1
    IL_0019:  sub
    IL_001a:  call       instance void class Game.AStar`1<!T>::HeapifyFromPosToStart(int32)
    IL_001f:  ret
  } // end of method AStar`1::HeapEnqueue

  .method private hidebysig instance class Game.AStar`1/Node<!T> 
          HeapDequeue() cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  6
    .locals init (int32 V_0)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0006:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_000b:  ldc.i4.0
    IL_000c:  ldelem.ref
    IL_000d:  ldarg.0
    IL_000e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0013:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0018:  ldc.i4.1
    IL_0019:  bgt.s      IL_0027

    IL_001b:  ldarg.0
    IL_001c:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0021:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::Clear()
    IL_0026:  ret

    IL_0027:  ldarg.0
    IL_0028:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_002d:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0032:  ldc.i4.0
    IL_0033:  ldarg.0
    IL_0034:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0039:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_003e:  ldarg.0
    IL_003f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0044:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  ldelem.ref
    IL_004c:  stelem.ref
    IL_004d:  ldarg.0
    IL_004e:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0053:  dup
    IL_0054:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0059:  ldc.i4.1
    IL_005a:  sub
    IL_005b:  stloc.0
    IL_005c:  ldloc.0
    IL_005d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::set_Count(int32)
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4.0
    IL_0064:  call       instance void class Game.AStar`1<!T>::HeapifyFromPosToEnd(int32)
    IL_0069:  ret
  } // end of method AStar`1::HeapDequeue

  .method private hidebysig instance void 
          HeapUpdate(class Game.AStar`1/Node<!T> node) cil managed
  {
    // 代码大小       52 (0x34)
    .maxstack  2
    .locals init (int32 V_0,
             int32 V_1)
    IL_0000:  ldc.i4.m1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_001e

    IL_0006:  ldarg.0
    IL_0007:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_000c:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0011:  ldloc.1
    IL_0012:  ldelem.ref
    IL_0013:  ldarg.1
    IL_0014:  bne.un.s   IL_001a

    IL_0016:  ldloc.1
    IL_0017:  stloc.0
    IL_0018:  br.s       IL_002c

    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.1
    IL_001c:  add
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  ldarg.0
    IL_0020:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0025:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_002a:  blt.s      IL_0006

    IL_002c:  ldarg.0
    IL_002d:  ldloc.0
    IL_002e:  call       instance void class Game.AStar`1<!T>::HeapifyFromPosToStart(int32)
    IL_0033:  ret
  } // end of method AStar`1::HeapUpdate

  .method private hidebysig instance void 
          HeapifyFromPosToEnd(int32 pos) cil managed
  {
    // 代码大小       189 (0xbd)
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class Game.AStar`1/Node<!T> V_3)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.2
    IL_0003:  ldarg.1
    IL_0004:  mul
    IL_0005:  ldc.i4.1
    IL_0006:  add
    IL_0007:  stloc.1
    IL_0008:  ldc.i4.2
    IL_0009:  ldarg.1
    IL_000a:  mul
    IL_000b:  ldc.i4.2
    IL_000c:  add
    IL_000d:  stloc.2
    IL_000e:  ldloc.1
    IL_000f:  ldarg.0
    IL_0010:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0015:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_001a:  bge.s      IL_0044

    IL_001c:  ldarg.0
    IL_001d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0022:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0027:  ldloc.1
    IL_0028:  ldelem.ref
    IL_0029:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_002e:  ldarg.0
    IL_002f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0034:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0039:  ldloc.0
    IL_003a:  ldelem.ref
    IL_003b:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_0040:  bge.un.s   IL_0044

    IL_0042:  ldloc.1
    IL_0043:  stloc.0
    IL_0044:  ldloc.2
    IL_0045:  ldarg.0
    IL_0046:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_004b:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0050:  bge.s      IL_007a

    IL_0052:  ldarg.0
    IL_0053:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0058:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_005d:  ldloc.2
    IL_005e:  ldelem.ref
    IL_005f:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_0064:  ldarg.0
    IL_0065:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_006a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_006f:  ldloc.0
    IL_0070:  ldelem.ref
    IL_0071:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_0076:  bge.un.s   IL_007a

    IL_0078:  ldloc.2
    IL_0079:  stloc.0
    IL_007a:  ldloc.0
    IL_007b:  ldarg.1
    IL_007c:  beq.s      IL_00bc

    IL_007e:  ldarg.0
    IL_007f:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0084:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0089:  ldloc.0
    IL_008a:  ldelem.ref
    IL_008b:  stloc.3
    IL_008c:  ldarg.0
    IL_008d:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0092:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0097:  ldloc.0
    IL_0098:  ldarg.0
    IL_0099:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_009e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_00a3:  ldarg.1
    IL_00a4:  ldelem.ref
    IL_00a5:  stelem.ref
    IL_00a6:  ldarg.0
    IL_00a7:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_00ac:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_00b1:  ldarg.1
    IL_00b2:  ldloc.3
    IL_00b3:  stelem.ref
    IL_00b4:  ldloc.0
    IL_00b5:  starg.s    pos
    IL_00b7:  br         IL_0000

    IL_00bc:  ret
  } // end of method AStar`1::HeapifyFromPosToEnd

  .method private hidebysig instance void 
          HeapifyFromPosToStart(int32 pos) cil managed
  {
    // 代码大小       87 (0x57)
    .maxstack  3
    .locals init (int32 V_0,
             int32 V_1,
             class Game.AStar`1/Node<!T> V_2,
             class Game.AStar`1/Node<!T> V_3)
    IL_0000:  ldarg.1
    IL_0001:  stloc.0
    IL_0002:  br.s       IL_0052

    IL_0004:  ldloc.0
    IL_0005:  ldc.i4.1
    IL_0006:  sub
    IL_0007:  ldc.i4.2
    IL_0008:  div
    IL_0009:  stloc.1
    IL_000a:  ldarg.0
    IL_000b:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0010:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0015:  ldloc.1
    IL_0016:  ldelem.ref
    IL_0017:  stloc.2
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_001e:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0023:  ldloc.0
    IL_0024:  ldelem.ref
    IL_0025:  stloc.3
    IL_0026:  ldloc.2
    IL_0027:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_002c:  ldloc.3
    IL_002d:  ldfld      float32 class Game.AStar`1/Node<!T>::F
    IL_0032:  ble.un.s   IL_0056

    IL_0034:  ldarg.0
    IL_0035:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_003a:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_003f:  ldloc.1
    IL_0040:  ldloc.3
    IL_0041:  stelem.ref
    IL_0042:  ldarg.0
    IL_0043:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0048:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_004d:  ldloc.0
    IL_004e:  ldloc.2
    IL_004f:  stelem.ref
    IL_0050:  ldloc.1
    IL_0051:  stloc.0
    IL_0052:  ldloc.0
    IL_0053:  ldc.i4.0
    IL_0054:  bgt.s      IL_0004

    IL_0056:  ret
  } // end of method AStar`1::HeapifyFromPosToStart

  .method private hidebysig instance class Game.AStar`1/Node<!T> 
          NewNode(!T position,
                  !T previousPosition,
                  float32 g,
                  float32 h) cil managed
  {
    // 代码大小       106 (0x6a)
    .maxstack  4
    .locals init (int32 V_0)
    IL_0000:  br.s       IL_0012

    IL_0002:  ldarg.0
    IL_0003:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_nodesCache
    IL_0008:  newobj     instance void class Game.AStar`1/Node<!T>::.ctor()
    IL_000d:  callvirt   instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::Add(!0)
    IL_0012:  ldarg.0
    IL_0013:  ldfld      int32 class Game.AStar`1<!T>::m_nodesCacheIndex
    IL_0018:  ldarg.0
    IL_0019:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_nodesCache
    IL_001e:  callvirt   instance int32 class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Count()
    IL_0023:  bge.s      IL_0002

    IL_0025:  ldarg.0
    IL_0026:  ldfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_nodesCache
    IL_002b:  callvirt   instance !0[] class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::get_Array()
    IL_0030:  ldarg.0
    IL_0031:  ldarg.0
    IL_0032:  ldfld      int32 class Game.AStar`1<!T>::m_nodesCacheIndex
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stfld      int32 class Game.AStar`1<!T>::m_nodesCacheIndex
    IL_0040:  ldloc.0
    IL_0041:  ldelem.ref
    IL_0042:  dup
    IL_0043:  ldarg.1
    IL_0044:  stfld      !0 class Game.AStar`1/Node<!T>::Position
    IL_0049:  dup
    IL_004a:  ldarg.2
    IL_004b:  stfld      !0 class Game.AStar`1/Node<!T>::PreviousPosition
    IL_0050:  dup
    IL_0051:  ldarg.3
    IL_0052:  ldarg.s    h
    IL_0054:  add
    IL_0055:  stfld      float32 class Game.AStar`1/Node<!T>::F
    IL_005a:  dup
    IL_005b:  ldarg.3
    IL_005c:  stfld      float32 class Game.AStar`1/Node<!T>::G
    IL_0061:  dup
    IL_0062:  ldarg.s    h
    IL_0064:  stfld      float32 class Game.AStar`1/Node<!T>::H
    IL_0069:  ret
  } // end of method AStar`1::NewNode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       40 (0x28)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::.ctor()
    IL_0006:  stfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_nodesCache
    IL_000b:  ldarg.0
    IL_000c:  newobj     instance void class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!T>>::.ctor()
    IL_0011:  stfld      class [Engine]Engine.DynamicArray`1<class Game.AStar`1/Node<!0>> class Game.AStar`1<!T>::m_openHeap
    IL_0016:  ldarg.0
    IL_0017:  newobj     instance void class [Engine]Engine.DynamicArray`1<!T>::.ctor()
    IL_001c:  stfld      class [Engine]Engine.DynamicArray`1<!0> class Game.AStar`1<!T>::m_neighbors
    IL_0021:  ldarg.0
    IL_0022:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0027:  ret
  } // end of method AStar`1::.ctor

  .property instance float32 PathCost()
  {
    .get instance float32 Game.AStar`1::get_PathCost()
    .set instance void Game.AStar`1::set_PathCost(float32)
  } // end of property AStar`1::PathCost
  .property instance class [Engine]Engine.DynamicArray`1<!T>
          Path()
  {
    .get instance class [Engine]Engine.DynamicArray`1<!T> Game.AStar`1::get_Path()
    .set instance void Game.AStar`1::set_Path(class [Engine]Engine.DynamicArray`1<!T>)
  } // end of property AStar`1::Path
  .property instance class Game.IAStarWorld`1<!T>
          World()
  {
    .get instance class Game.IAStarWorld`1<!T> Game.AStar`1::get_World()
    .set instance void Game.AStar`1::set_World(class Game.IAStarWorld`1<!T>)
  } // end of property AStar`1::World
  .property instance class Game.IAStarStorage`1<!T>
          OpenStorage()
  {
    .get instance class Game.IAStarStorage`1<!T> Game.AStar`1::get_OpenStorage()
    .set instance void Game.AStar`1::set_OpenStorage(class Game.IAStarStorage`1<!T>)
  } // end of property AStar`1::OpenStorage
  .property instance class Game.IAStarStorage`1<!T>
          ClosedStorage()
  {
    .get instance class Game.IAStarStorage`1<!T> Game.AStar`1::get_ClosedStorage()
    .set instance void Game.AStar`1::set_ClosedStorage(class Game.IAStarStorage`1<!T>)
  } // end of property AStar`1::ClosedStorage
} // end of class Game.AStar`1