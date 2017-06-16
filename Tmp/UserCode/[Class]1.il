.class private auto ansi beforefieldinit GScience.ModAPI.Debug.InputManager
       extends [System.Runtime]System.Object
{
  .class auto ansi serializable sealed nested private beforefieldinit '<>c'
         extends [System.Runtime]System.Object
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class GScience.ModAPI.Debug.InputManager/'<>c' '<>9'
    .field public static class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> '<>9__0_0'
    .method private hidebysig specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // 代码大小       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void GScience.ModAPI.Debug.InputManager/'<>c'::.ctor()
      IL_0005:  stsfld     class GScience.ModAPI.Debug.InputManager/'<>c' GScience.ModAPI.Debug.InputManager/'<>c'::'<>9'
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

    .method assembly hidebysig instance void 
            '<Initialize>b__0_0'(valuetype [Engine]Engine.Input.Key key) cil managed
    {
      // 代码大小       8 (0x8)
      .maxstack  8
      IL_0000:  ldarg.1
      IL_0001:  call       void GScience.ModAPI.Debug.InputManager::onKeyboardDown(valuetype [Engine]Engine.Input.Key)
      IL_0006:  nop
      IL_0007:  ret
    } // end of method '<>c'::'<Initialize>b__0_0'

  } // end of class '<>c'

  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       39 (0x27)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldsfld     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> GScience.ModAPI.Debug.InputManager/'<>c'::'<>9__0_0'
    IL_0006:  dup
    IL_0007:  brtrue.s   IL_0020

    IL_0009:  pop
    IL_000a:  ldsfld     class GScience.ModAPI.Debug.InputManager/'<>c' GScience.ModAPI.Debug.InputManager/'<>c'::'<>9'
    IL_000f:  ldftn      instance void GScience.ModAPI.Debug.InputManager/'<>c'::'<Initialize>b__0_0'(valuetype [Engine]Engine.Input.Key)
    IL_0015:  newobj     instance void class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>::.ctor(object,
                                                                                                                        native int)
    IL_001a:  dup
    IL_001b:  stsfld     class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key> GScience.ModAPI.Debug.InputManager/'<>c'::'<>9__0_0'
    IL_0020:  call       void [Engine]Engine.Input.Keyboard::add_KeyDown(class [System.Runtime]System.Action`1<valuetype [Engine]Engine.Input.Key>)
    IL_0025:  nop
    IL_0026:  ret
  } // end of method InputManager::Initialize

  .method public hidebysig static void  onKeyboardDown(valuetype [Engine]Engine.Input.Key key) cil managed
  {
    // 代码大小       30 (0x1e)
    .maxstack  2
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.s   14
    IL_0004:  ceq
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_001d

    IL_000a:  nop
    IL_000b:  call       void [Survivalcraft]Game.DialogsManager::HideAllDialogs()
    IL_0010:  nop
    IL_0011:  newobj     instance void [Survivalcraft]Game.ViewGameLogDialog::.ctor()
    IL_0016:  call       void [Survivalcraft]Game.DialogsManager::ShowDialog(class [Survivalcraft]Game.Dialog)
    IL_001b:  nop
    IL_001c:  nop
    IL_001d:  ret
  } // end of method InputManager::onKeyboardDown

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method InputManager::.ctor

} // end of class GScience.ModAPI.Debug.InputManager