.class public sequential ansi sealed beforefieldinit Game.TerrainVertex
       extends [System.Runtime]System.ValueType
{
  .field public float32 X
  .field public float32 Y
  .field public float32 Z
  .field public int16 Tx
  .field public int16 Ty
  .field public valuetype [Engine]Engine.Color Color
  .field public static initonly class [Engine]Engine.Graphics.VertexDeclaration VertexDeclaration
  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // ´úÂë´óÐ¡       52 (0x34)
    .maxstack  8
    IL_0000:  ldc.i4.3
    IL_0001:  newarr     [Engine]Engine.Graphics.VertexElement
    IL_0006:  dup
    IL_0007:  ldc.i4.0
    IL_0008:  ldc.i4.0
    IL_0009:  ldc.i4.2
    IL_000a:  ldc.i4.0
    IL_000b:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0010:  stelem.ref
    IL_0011:  dup
    IL_0012:  ldc.i4.1
    IL_0013:  ldc.i4.s   12
    IL_0015:  ldc.i4.7
    IL_0016:  ldc.i4.3
    IL_0017:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_001c:  stelem.ref
    IL_001d:  dup
    IL_001e:  ldc.i4.2
    IL_001f:  ldc.i4.s   16
    IL_0021:  ldc.i4.5
    IL_0022:  ldc.i4.1
    IL_0023:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0028:  stelem.ref
    IL_0029:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_002e:  stsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.TerrainVertex::VertexDeclaration
    IL_0033:  ret
  } // end of method TerrainVertex::.cctor

} // end of class Game.TerrainVertex