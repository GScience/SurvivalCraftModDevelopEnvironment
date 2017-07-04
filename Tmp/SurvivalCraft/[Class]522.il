.class public abstract auto ansi beforefieldinit Game.VersionConverter
       extends [System.Runtime]System.Object
{
  .method public hidebysig newslot specialname abstract virtual 
          instance string  get_SourceVersion() cil managed
  {
  } // end of method VersionConverter::get_SourceVersion

  .method public hidebysig newslot specialname abstract virtual 
          instance string  get_TargetVersion() cil managed
  {
  } // end of method VersionConverter::get_TargetVersion

  .method public hidebysig newslot abstract virtual 
          instance void  ConvertProjectXml(class [System.Xml.XDocument]System.Xml.Linq.XElement projectNode) cil managed
  {
  } // end of method VersionConverter::ConvertProjectXml

  .method public hidebysig newslot abstract virtual 
          instance void  ConvertWorld(string directoryName) cil managed
  {
  } // end of method VersionConverter::ConvertWorld

  .method family hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // ´úÂë´óÐ¡       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method VersionConverter::.ctor

  .property instance string SourceVersion()
  {
    .get instance string Game.VersionConverter::get_SourceVersion()
  } // end of property VersionConverter::SourceVersion
  .property instance string TargetVersion()
  {
    .get instance string Game.VersionConverter::get_TargetVersion()
  } // end of property VersionConverter::TargetVersion
} // end of class Game.VersionConverter