.class public auto ansi beforefieldinit Game.InstancedModelData
       extends [System.Runtime]System.Object
{
  .field public static initonly class [Engine]Engine.Graphics.VertexDeclaration VertexDeclaration
  .field public class [Engine]Engine.Graphics.VertexBuffer VertexBuffer
  .field public class [Engine]Engine.Graphics.IndexBuffer IndexBuffer
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method InstancedModelData::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 代码大小       65 (0x41)
    .maxstack  6
    IL_0000:  ldc.i4.4
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
    IL_0015:  ldc.i4.2
    IL_0016:  ldc.i4.2
    IL_0017:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_001c:  stelem.ref
    IL_001d:  dup
    IL_001e:  ldc.i4.2
    IL_001f:  ldc.i4.s   24
    IL_0021:  ldc.i4.1
    IL_0022:  ldc.i4.3
    IL_0023:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0028:  stelem.ref
    IL_0029:  dup
    IL_002a:  ldc.i4.3
    IL_002b:  ldc.i4.s   32
    IL_002d:  ldc.i4.0
    IL_002e:  ldc.i4.s   12
    IL_0030:  newobj     instance void [Engine]Engine.Graphics.VertexElement::.ctor(int32,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementFormat,
                                                                                    valuetype [Engine]Engine.Graphics.VertexElementSemantic)
    IL_0035:  stelem.ref
    IL_0036:  newobj     instance void [Engine]Engine.Graphics.VertexDeclaration::.ctor(class [Engine]Engine.Graphics.VertexElement[])
    IL_003b:  stsfld     class [Engine]Engine.Graphics.VertexDeclaration Game.InstancedModelData::VertexDeclaration
    IL_0040:  ret
  } // end of method InstancedModelData::.cctor

} // end of class Game.InstancedModelData