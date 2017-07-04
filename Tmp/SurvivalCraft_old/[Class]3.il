.class interface private abstract auto ansi SimpleJson.IJsonSerializerStrategy
{
  .custom instance void [System.Diagnostics.Tools]System.CodeDom.Compiler.GeneratedCodeAttribute::.ctor(string,
                                                                                                        string) = ( 01 00 0B 73 69 6D 70 6C 65 2D 6A 73 6F 6E 05 31   // ...simple-json.1
                                                                                                                    2E 30 2E 30 00 00 )                               // .0.0..
  .method public hidebysig newslot abstract virtual 
          instance bool  TrySerializeNonPrimitiveObject(object input,
                                                        [out] object& output) cil managed
  {
  } // end of method IJsonSerializerStrategy::TrySerializeNonPrimitiveObject

  .method public hidebysig newslot abstract virtual 
          instance object  DeserializeObject(object 'value',
                                             class [System.Runtime]System.Type 'type') cil managed
  {
  } // end of method IJsonSerializerStrategy::DeserializeObject

} // end of class SimpleJson.IJsonSerializerStrategy