.class public auto ansi beforefieldinit Game.MarketplaceManager
       extends [System.Runtime]System.Object
{
  .method public hidebysig static void  Initialize() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MarketplaceManager::Initialize

  .method public hidebysig static void  ShowMarketplace() cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method MarketplaceManager::ShowMarketplace

  .method public hidebysig specialname static 
          bool  get_IsTrialMode() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method MarketplaceManager::get_IsTrialMode

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method MarketplaceManager::.ctor

  .property bool IsTrialMode()
  {
    .get bool Game.MarketplaceManager::get_IsTrialMode()
  } // end of property MarketplaceManager::IsTrialMode
} // end of class Game.MarketplaceManager
