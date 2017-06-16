.class public auto ansi beforefieldinit Game.ZipArchiveEntry
       extends [System.Runtime]System.Object
{
  .field public valuetype Game.ZipArchive/Compression Method
  .field public string FilenameInZip
  .field public uint32 FileSize
  .field public uint32 CompressedSize
  .field public uint32 HeaderOffset
  .field public uint32 FileOffset
  .field public uint32 HeaderSize
  .field public uint32 Crc32
  .field public valuetype [System.Runtime]System.DateTime ModifyTime
  .field public string Comment
  .field public bool EncodeUTF8
  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      string Game.ZipArchiveEntry::FilenameInZip
    IL_0006:  ret
  } // end of method ZipArchiveEntry::ToString

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Runtime]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ZipArchiveEntry::.ctor

} // end of class Game.ZipArchiveEntry