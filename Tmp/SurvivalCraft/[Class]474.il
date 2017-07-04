.class public abstract auto ansi sealed beforefieldinit Game.ProgressManager
       extends [System.Runtime]System.Object
{
  .field private static string '<OperationName>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static float32 '<Progress>k__BackingField'
  .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig specialname static 
          string  get_OperationName() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     string Game.ProgressManager::'<OperationName>k__BackingField'
    IL_0005:  ret
  } // end of method ProgressManager::get_OperationName

  .method private hidebysig specialname static 
          void  set_OperationName(string 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     string Game.ProgressManager::'<OperationName>k__BackingField'
    IL_0006:  ret
  } // end of method ProgressManager::set_OperationName

  .method public hidebysig specialname static 
          float32  get_Progress() cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       6 (0x6)
    .maxstack  8
    IL_0000:  ldsfld     float32 Game.ProgressManager::'<Progress>k__BackingField'
    IL_0005:  ret
  } // end of method ProgressManager::get_Progress

  .method private hidebysig specialname static 
          void  set_Progress(float32 'value') cil managed
  {
    .custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     float32 Game.ProgressManager::'<Progress>k__BackingField'
    IL_0006:  ret
  } // end of method ProgressManager::set_Progress

  .method public hidebysig static void  UpdateProgress(string operationName,
                                                       float32 progress) cil managed
  {
    // 代码大小       18 (0x12)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       void Game.ProgressManager::set_OperationName(string)
    IL_0006:  ldarg.1
    IL_0007:  call       float32 [Engine]Engine.MathUtils::Saturate(float32)
    IL_000c:  call       void Game.ProgressManager::set_Progress(float32)
    IL_0011:  ret
  } // end of method ProgressManager::UpdateProgress

  .property string OperationName()
  {
    .get string Game.ProgressManager::get_OperationName()
    .set void Game.ProgressManager::set_OperationName(string)
  } // end of property ProgressManager::OperationName
  .property float32 Progress()
  {
    .get float32 Game.ProgressManager::get_Progress()
    .set void Game.ProgressManager::set_Progress(float32)
  } // end of property ProgressManager::Progress
} // end of class Game.ProgressManager