.class interface public abstract auto ansi Game.IExternalContentProvider
       implements [System.Runtime]System.IDisposable
{
  .method public hidebysig newslot specialname abstract virtual 
          instance string  get_DisplayName() cil managed
  {
  } // end of method IExternalContentProvider::get_DisplayName

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_SupportsLinks() cil managed
  {
  } // end of method IExternalContentProvider::get_SupportsLinks

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_SupportsListing() cil managed
  {
  } // end of method IExternalContentProvider::get_SupportsListing

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_RequiresLogin() cil managed
  {
  } // end of method IExternalContentProvider::get_RequiresLogin

  .method public hidebysig newslot specialname abstract virtual 
          instance bool  get_IsLoggedIn() cil managed
  {
  } // end of method IExternalContentProvider::get_IsLoggedIn

  .method public hidebysig newslot abstract virtual 
          instance void  Login(class Game.CancellableProgress progress,
                               class [System.Runtime]System.Action success,
                               class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
  } // end of method IExternalContentProvider::Login

  .method public hidebysig newslot abstract virtual 
          instance void  Logout() cil managed
  {
  } // end of method IExternalContentProvider::Logout

  .method public hidebysig newslot abstract virtual 
          instance void  List(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<class Game.ExternalContentEntry> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
  } // end of method IExternalContentProvider::List

  .method public hidebysig newslot abstract virtual 
          instance void  Download(string path,
                                  class Game.CancellableProgress progress,
                                  class [System.Runtime]System.Action`1<class [System.IO]System.IO.Stream> success,
                                  class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
  } // end of method IExternalContentProvider::Download

  .method public hidebysig newslot abstract virtual 
          instance void  Upload(string path,
                                class [System.IO]System.IO.Stream 'stream',
                                class Game.CancellableProgress progress,
                                class [System.Runtime]System.Action`1<string> success,
                                class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
  } // end of method IExternalContentProvider::Upload

  .method public hidebysig newslot abstract virtual 
          instance void  Link(string path,
                              class Game.CancellableProgress progress,
                              class [System.Runtime]System.Action`1<string> success,
                              class [System.Runtime]System.Action`1<class [System.Runtime]System.Exception> failure) cil managed
  {
  } // end of method IExternalContentProvider::Link

  .property instance string DisplayName()
  {
    .get instance string Game.IExternalContentProvider::get_DisplayName()
  } // end of property IExternalContentProvider::DisplayName
  .property instance bool SupportsLinks()
  {
    .get instance bool Game.IExternalContentProvider::get_SupportsLinks()
  } // end of property IExternalContentProvider::SupportsLinks
  .property instance bool SupportsListing()
  {
    .get instance bool Game.IExternalContentProvider::get_SupportsListing()
  } // end of property IExternalContentProvider::SupportsListing
  .property instance bool RequiresLogin()
  {
    .get instance bool Game.IExternalContentProvider::get_RequiresLogin()
  } // end of property IExternalContentProvider::RequiresLogin
  .property instance bool IsLoggedIn()
  {
    .get instance bool Game.IExternalContentProvider::get_IsLoggedIn()
  } // end of property IExternalContentProvider::IsLoggedIn
} // end of class Game.IExternalContentProvider