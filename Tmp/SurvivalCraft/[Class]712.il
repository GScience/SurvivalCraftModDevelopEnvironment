.class public auto ansi beforefieldinit Game.SubsystemOcean
       extends [EntitySystem]GameEntitySystem.Subsystem
       implements Game.IDrawable
{
  .field private static int32[] m_drawOrders
  .method public hidebysig newslot specialname virtual final 
          instance int32[]  get_DrawOrders() cil managed
  {
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     int32[] Game.SubsystemOcean::m_drawOrders
    IL_0005:  ret
  } // end of method SubsystemOcean::get_DrawOrders

  .method public hidebysig newslot virtual final 
          instance void  Draw(class Game.SubsystemDrawing subsystemDrawing,
                              int32 drawOrder) cil managed
  {
    // 代码大小       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method SubsystemOcean::Draw

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [EntitySystem]GameEntitySystem.Subsystem::.ctor()
    IL_0006:  ret
  } // end of method SubsystemOcean::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       17 (0x11)
    .maxstack  8
    IL_0000:  ldc.i4.1
    IL_0001:  newarr     [System.Runtime]System.Int32
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.s   -10
    IL_000a:  stelem.i4
    IL_000b:  stsfld     int32[] Game.SubsystemOcean::m_drawOrders
    IL_0010:  ret
  } // end of method SubsystemOcean::.cctor

  .property instance int32[] DrawOrders()
  {
    .get instance int32[] Game.SubsystemOcean::get_DrawOrders()
  } // end of property SubsystemOcean::DrawOrders
} // end of class Game.SubsystemOcean