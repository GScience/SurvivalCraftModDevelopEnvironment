.class public auto ansi beforefieldinit Game.Subtexture
       extends [System.Runtime]System.Object
{
  .field public initonly class [Engine]Engine.Graphics.Texture2D Texture
  .field public initonly valuetype [Engine]Engine.Vector2 TopLeft
  .field public initonly valuetype [Engine]Engine.Vector2 BottomRight
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(class [Engine]Engine.Graphics.Texture2D texture,
                               valuetype [Engine]Engine.Vector2 topLeft,
                               valuetype [Engine]Engine.Vector2 bottomRight) cil managed
  {
    // ´úÂë´óÐ¡       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      class [Engine]Engine.Graphics.Texture2D Game.Subtexture::Texture
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::TopLeft
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      valuetype [Engine]Engine.Vector2 Game.Subtexture::BottomRight
    IL_001b:  ret
  } // end of method Subtexture::.ctor

} // end of class Game.Subtexture