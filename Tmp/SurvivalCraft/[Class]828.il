.class public sequential ansi sealed beforefieldinit Game.EntityReference
       extends [System.Runtime]System.ValueType
{
  .class auto ansi sealed nested public ReferenceType
         extends [System.Runtime]System.Enum
  {
    .field public specialname rtspecialname int32 value__
    .field public static literal valuetype Game.EntityReference/ReferenceType Null = int32(0x00000000)
    .field public static literal valuetype Game.EntityReference/ReferenceType Local = int32(0x00000001)
    .field public static literal valuetype Game.EntityReference/ReferenceType ByEntityId = int32(0x00000002)
    .field public static literal valuetype Game.EntityReference/ReferenceType ByEntityName = int32(0x00000003)
  } // end of class ReferenceType

  .field private valuetype Game.EntityReference/ReferenceType m_referenceType
  .field private string m_entityReference
  .field private string m_componentReference
  .method public hidebysig specialname instance string 
          get_ReferenceString() cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0006:  brtrue.s   IL_000e

    IL_0008:  ldstr      "null:"
    IL_000d:  ret

    IL_000e:  ldarg.0
    IL_000f:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0014:  ldc.i4.1
    IL_0015:  bne.un.s   IL_0031

    IL_0017:  ldstr      "local:{0}"
    IL_001c:  ldc.i4.1
    IL_001d:  newarr     [System.Runtime]System.Object
    IL_0022:  dup
    IL_0023:  ldc.i4.0
    IL_0024:  ldarg.0
    IL_0025:  ldfld      string Game.EntityReference::m_componentReference
    IL_002a:  stelem.ref
    IL_002b:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0030:  ret

    IL_0031:  ldarg.0
    IL_0032:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0037:  ldc.i4.2
    IL_0038:  bne.un.s   IL_005d

    IL_003a:  ldstr      "id:{0}:{1}"
    IL_003f:  ldc.i4.2
    IL_0040:  newarr     [System.Runtime]System.Object
    IL_0045:  dup
    IL_0046:  ldc.i4.0
    IL_0047:  ldarg.0
    IL_0048:  ldfld      string Game.EntityReference::m_entityReference
    IL_004d:  stelem.ref
    IL_004e:  dup
    IL_004f:  ldc.i4.1
    IL_0050:  ldarg.0
    IL_0051:  ldfld      string Game.EntityReference::m_componentReference
    IL_0056:  stelem.ref
    IL_0057:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_005c:  ret

    IL_005d:  ldarg.0
    IL_005e:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0063:  ldc.i4.3
    IL_0064:  bne.un.s   IL_0089

    IL_0066:  ldstr      "name:{0}:{1}"
    IL_006b:  ldc.i4.2
    IL_006c:  newarr     [System.Runtime]System.Object
    IL_0071:  dup
    IL_0072:  ldc.i4.0
    IL_0073:  ldarg.0
    IL_0074:  ldfld      string Game.EntityReference::m_entityReference
    IL_0079:  stelem.ref
    IL_007a:  dup
    IL_007b:  ldc.i4.1
    IL_007c:  ldarg.0
    IL_007d:  ldfld      string Game.EntityReference::m_componentReference
    IL_0082:  stelem.ref
    IL_0083:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_0088:  ret

    IL_0089:  ldstr      "Unknown entity reference type."
    IL_008e:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0093:  throw
  } // end of method EntityReference::get_ReferenceString

  .method public hidebysig instance class [EntitySystem]GameEntitySystem.Entity 
          GetEntity(class [EntitySystem]GameEntitySystem.Entity localEntity,
                    class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap,
                    bool throwIfNotFound) cil managed
  {
    // 代码大小       148 (0x94)
    .maxstack  5
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             int32 V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0006:  brtrue.s   IL_000c

    IL_0008:  ldnull
    IL_0009:  stloc.0
    IL_000a:  br.s       IL_006b

    IL_000c:  ldarg.0
    IL_000d:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0012:  ldc.i4.1
    IL_0013:  bne.un.s   IL_0019

    IL_0015:  ldarg.1
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_006b

    IL_0019:  ldarg.0
    IL_001a:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_001f:  ldc.i4.2
    IL_0020:  bne.un.s   IL_003d

    IL_0022:  ldarg.0
    IL_0023:  ldfld      string Game.EntityReference::m_entityReference
    IL_0028:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_002d:  call       int32 [System.Runtime]System.Int32::Parse(string,
                                                                   class [System.Runtime]System.IFormatProvider)
    IL_0032:  stloc.1
    IL_0033:  ldarg.2
    IL_0034:  ldloc.1
    IL_0035:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.IdToEntityMap::FindEntity(int32)
    IL_003a:  stloc.0
    IL_003b:  br.s       IL_006b

    IL_003d:  ldarg.0
    IL_003e:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0043:  ldc.i4.3
    IL_0044:  bne.un.s   IL_0060

    IL_0046:  ldarg.1
    IL_0047:  callvirt   instance class [EntitySystem]GameEntitySystem.Project [EntitySystem]GameEntitySystem.Entity::get_Project()
    IL_004c:  ldc.i4.1
    IL_004d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Project::FindSubsystem<class Game.SubsystemNames>(bool)
    IL_0052:  ldarg.0
    IL_0053:  ldfld      string Game.EntityReference::m_entityReference
    IL_0058:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity Game.SubsystemNames::FindEntityByName(string)
    IL_005d:  stloc.0
    IL_005e:  br.s       IL_006b

    IL_0060:  ldstr      "Unknown entity reference type."
    IL_0065:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_006a:  throw

    IL_006b:  ldloc.0
    IL_006c:  brfalse.s  IL_0070

    IL_006e:  ldloc.0
    IL_006f:  ret

    IL_0070:  ldarg.3
    IL_0071:  brfalse.s  IL_0092

    IL_0073:  ldstr      "Required entity \"{0}\" not found."
    IL_0078:  ldc.i4.1
    IL_0079:  newarr     [System.Runtime]System.Object
    IL_007e:  dup
    IL_007f:  ldc.i4.0
    IL_0080:  ldarg.0
    IL_0081:  call       instance string Game.EntityReference::get_ReferenceString()
    IL_0086:  stelem.ref
    IL_0087:  call       string [System.Runtime]System.String::Format(string,
                                                                      object[])
    IL_008c:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0091:  throw

    IL_0092:  ldnull
    IL_0093:  ret
  } // end of method EntityReference::GetEntity

  .method public hidebysig instance !!T  GetComponent<class T>(class [EntitySystem]GameEntitySystem.Entity localEntity,
                                                               class [EntitySystem]GameEntitySystem.IdToEntityMap idToEntityMap,
                                                               bool throwIfNotFound) cil managed
  {
    // 代码大小       37 (0x25)
    .maxstack  4
    .locals init (class [EntitySystem]GameEntitySystem.Entity V_0,
             !!T V_1)
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  ldarg.3
    IL_0004:  call       instance class [EntitySystem]GameEntitySystem.Entity Game.EntityReference::GetEntity(class [EntitySystem]GameEntitySystem.Entity,
                                                                                                              class [EntitySystem]GameEntitySystem.IdToEntityMap,
                                                                                                              bool)
    IL_0009:  stloc.0
    IL_000a:  ldloc.0
    IL_000b:  brtrue.s   IL_0017

    IL_000d:  ldloca.s   V_1
    IL_000f:  initobj    !!T
    IL_0015:  ldloc.1
    IL_0016:  ret

    IL_0017:  ldloc.0
    IL_0018:  ldarg.0
    IL_0019:  ldfld      string Game.EntityReference::m_componentReference
    IL_001e:  ldarg.3
    IL_001f:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<!!0>(string,
                                                                                                bool)
    IL_0024:  ret
  } // end of method EntityReference::GetComponent

  .method public hidebysig instance bool 
          IsNullOrEmpty() cil managed
  {
    // 代码大小       82 (0x52)
    .maxstack  2
    IL_0000:  ldarg.0
    IL_0001:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0006:  brfalse.s  IL_0050

    IL_0008:  ldarg.0
    IL_0009:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_000e:  ldc.i4.1
    IL_000f:  bne.un.s   IL_001e

    IL_0011:  ldarg.0
    IL_0012:  ldfld      string Game.EntityReference::m_componentReference
    IL_0017:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_001c:  brtrue.s   IL_0050

    IL_001e:  ldarg.0
    IL_001f:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0024:  ldc.i4.2
    IL_0025:  bne.un.s   IL_0039

    IL_0027:  ldarg.0
    IL_0028:  ldfld      string Game.EntityReference::m_entityReference
    IL_002d:  ldstr      "0"
    IL_0032:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_0037:  brtrue.s   IL_0050

    IL_0039:  ldarg.0
    IL_003a:  ldfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_003f:  ldc.i4.3
    IL_0040:  bne.un.s   IL_004e

    IL_0042:  ldarg.0
    IL_0043:  ldfld      string Game.EntityReference::m_entityReference
    IL_0048:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_004d:  ret

    IL_004e:  ldc.i4.0
    IL_004f:  ret

    IL_0050:  ldc.i4.1
    IL_0051:  ret
  } // end of method EntityReference::IsNullOrEmpty

  .method public hidebysig specialname static 
          valuetype Game.EntityReference 
          get_Null() cil managed
  {
    // 代码大小       10 (0xa)
    .maxstack  1
    .locals init (valuetype Game.EntityReference V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.EntityReference
    IL_0008:  ldloc.0
    IL_0009:  ret
  } // end of method EntityReference::get_Null

  .method public hidebysig static valuetype Game.EntityReference 
          Local(class [EntitySystem]GameEntitySystem.Component component) cil managed
  {
    // 代码大小       51 (0x33)
    .maxstack  2
    .locals init (valuetype Game.EntityReference V_0)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.EntityReference
    IL_0008:  ldloca.s   V_0
    IL_000a:  ldc.i4.1
    IL_000b:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0010:  ldloca.s   V_0
    IL_0012:  ldarg.0
    IL_0013:  brtrue.s   IL_001c

    IL_0015:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001a:  br.s       IL_002c

    IL_001c:  ldarg.0
    IL_001d:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Component::get_ValuesDictionary()
    IL_0022:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_0027:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_002c:  stfld      string Game.EntityReference::m_componentReference
    IL_0031:  ldloc.0
    IL_0032:  ret
  } // end of method EntityReference::Local

  .method public hidebysig static valuetype Game.EntityReference 
          FromId(class [EntitySystem]GameEntitySystem.Component component,
                 class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       89 (0x59)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype Game.EntityReference V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  brtrue.s   IL_0007

    IL_0004:  ldnull
    IL_0005:  br.s       IL_000d

    IL_0007:  ldarg.0
    IL_0008:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_000d:  callvirt   instance int32 [EntitySystem]GameEntitySystem.EntityToIdMap::FindId(class [EntitySystem]GameEntitySystem.Entity)
    IL_0012:  stloc.0
    IL_0013:  ldloca.s   V_1
    IL_0015:  initobj    Game.EntityReference
    IL_001b:  ldloca.s   V_1
    IL_001d:  ldc.i4.2
    IL_001e:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0023:  ldloca.s   V_1
    IL_0025:  ldloca.s   V_0
    IL_0027:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_002c:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0031:  stfld      string Game.EntityReference::m_entityReference
    IL_0036:  ldloca.s   V_1
    IL_0038:  ldarg.0
    IL_0039:  brtrue.s   IL_0042

    IL_003b:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0040:  br.s       IL_0052

    IL_0042:  ldarg.0
    IL_0043:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Component::get_ValuesDictionary()
    IL_0048:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_004d:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_0052:  stfld      string Game.EntityReference::m_componentReference
    IL_0057:  ldloc.1
    IL_0058:  ret
  } // end of method EntityReference::FromId

  .method public hidebysig static valuetype Game.EntityReference 
          FromId(class [EntitySystem]GameEntitySystem.Entity entity,
                 class [EntitySystem]GameEntitySystem.EntityToIdMap entityToIdMap) cil managed
  {
    // 代码大小       57 (0x39)
    .maxstack  3
    .locals init (int32 V_0,
             valuetype Game.EntityReference V_1)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  callvirt   instance int32 [EntitySystem]GameEntitySystem.EntityToIdMap::FindId(class [EntitySystem]GameEntitySystem.Entity)
    IL_0007:  stloc.0
    IL_0008:  ldloca.s   V_1
    IL_000a:  initobj    Game.EntityReference
    IL_0010:  ldloca.s   V_1
    IL_0012:  ldc.i4.2
    IL_0013:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0018:  ldloca.s   V_1
    IL_001a:  ldloca.s   V_0
    IL_001c:  call       class [System.Globalization]System.Globalization.CultureInfo [System.Globalization]System.Globalization.CultureInfo::get_InvariantCulture()
    IL_0021:  call       instance string [System.Runtime]System.Int32::ToString(class [System.Runtime]System.IFormatProvider)
    IL_0026:  stfld      string Game.EntityReference::m_entityReference
    IL_002b:  ldloca.s   V_1
    IL_002d:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0032:  stfld      string Game.EntityReference::m_componentReference
    IL_0037:  ldloc.1
    IL_0038:  ret
  } // end of method EntityReference::FromId

  .method public hidebysig static valuetype Game.EntityReference 
          FromName(class [EntitySystem]GameEntitySystem.Component component) cil managed
  {
    // 代码大小       88 (0x58)
    .maxstack  3
    .locals init (string V_0,
             valuetype Game.EntityReference V_1)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000a

    IL_0003:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0008:  br.s       IL_001c

    IL_000a:  ldarg.0
    IL_000b:  callvirt   instance class [EntitySystem]GameEntitySystem.Entity [EntitySystem]GameEntitySystem.Component::get_Entity()
    IL_0010:  ldnull
    IL_0011:  ldc.i4.1
    IL_0012:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentName>(string,
                                                                                                                     bool)
    IL_0017:  callvirt   instance string Game.ComponentName::get_Name()
    IL_001c:  stloc.0
    IL_001d:  ldloca.s   V_1
    IL_001f:  initobj    Game.EntityReference
    IL_0025:  ldloca.s   V_1
    IL_0027:  ldc.i4.3
    IL_0028:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_002d:  ldloca.s   V_1
    IL_002f:  ldloc.0
    IL_0030:  stfld      string Game.EntityReference::m_entityReference
    IL_0035:  ldloca.s   V_1
    IL_0037:  ldarg.0
    IL_0038:  brtrue.s   IL_0041

    IL_003a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_003f:  br.s       IL_0051

    IL_0041:  ldarg.0
    IL_0042:  callvirt   instance class [EntitySystem]TemplatesDatabase.ValuesDictionary [EntitySystem]GameEntitySystem.Component::get_ValuesDictionary()
    IL_0047:  callvirt   instance class [EntitySystem]TemplatesDatabase.DatabaseObject [EntitySystem]TemplatesDatabase.ValuesDictionary::get_DatabaseObject()
    IL_004c:  callvirt   instance string [EntitySystem]TemplatesDatabase.DatabaseObject::get_Name()
    IL_0051:  stfld      string Game.EntityReference::m_componentReference
    IL_0056:  ldloc.1
    IL_0057:  ret
  } // end of method EntityReference::FromName

  .method public hidebysig static valuetype Game.EntityReference 
          FromName(class [EntitySystem]GameEntitySystem.Entity entity) cil managed
  {
    // 代码大小       62 (0x3e)
    .maxstack  3
    .locals init (string V_0,
             valuetype Game.EntityReference V_1)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_000a

    IL_0003:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0008:  br.s       IL_0017

    IL_000a:  ldarg.0
    IL_000b:  ldnull
    IL_000c:  ldc.i4.1
    IL_000d:  callvirt   instance !!0 [EntitySystem]GameEntitySystem.Entity::FindComponent<class Game.ComponentName>(string,
                                                                                                                     bool)
    IL_0012:  callvirt   instance string Game.ComponentName::get_Name()
    IL_0017:  stloc.0
    IL_0018:  ldloca.s   V_1
    IL_001a:  initobj    Game.EntityReference
    IL_0020:  ldloca.s   V_1
    IL_0022:  ldc.i4.3
    IL_0023:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0028:  ldloca.s   V_1
    IL_002a:  ldloc.0
    IL_002b:  stfld      string Game.EntityReference::m_entityReference
    IL_0030:  ldloca.s   V_1
    IL_0032:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0037:  stfld      string Game.EntityReference::m_componentReference
    IL_003c:  ldloc.1
    IL_003d:  ret
  } // end of method EntityReference::FromName

  .method public hidebysig static valuetype Game.EntityReference 
          FromReferenceString(string referenceString) cil managed
  {
    // 代码大小       369 (0x171)
    .maxstack  5
    .locals init (valuetype Game.EntityReference V_0,
             string[] V_1)
    IL_0000:  ldloca.s   V_0
    IL_0002:  initobj    Game.EntityReference
    IL_0008:  ldarg.0
    IL_0009:  call       bool [System.Runtime]System.String::IsNullOrEmpty(string)
    IL_000e:  brfalse.s  IL_0035

    IL_0010:  ldloca.s   V_0
    IL_0012:  ldc.i4.0
    IL_0013:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0018:  ldloca.s   V_0
    IL_001a:  ldsfld     string [System.Runtime]System.String::Empty
    IL_001f:  stfld      string Game.EntityReference::m_entityReference
    IL_0024:  ldloca.s   V_0
    IL_0026:  ldsfld     string [System.Runtime]System.String::Empty
    IL_002b:  stfld      string Game.EntityReference::m_componentReference
    IL_0030:  br         IL_016f

    IL_0035:  ldarg.0
    IL_0036:  ldc.i4.1
    IL_0037:  newarr     [System.Runtime]System.Char
    IL_003c:  dup
    IL_003d:  ldc.i4.0
    IL_003e:  ldc.i4.s   58
    IL_0040:  stelem.i2
    IL_0041:  callvirt   instance string[] [System.Runtime]System.String::Split(char[])
    IL_0046:  stloc.1
    IL_0047:  ldloc.1
    IL_0048:  ldlen
    IL_0049:  conv.i4
    IL_004a:  ldc.i4.1
    IL_004b:  bne.un.s   IL_0070

    IL_004d:  ldloca.s   V_0
    IL_004f:  ldc.i4.1
    IL_0050:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0055:  ldloca.s   V_0
    IL_0057:  ldsfld     string [System.Runtime]System.String::Empty
    IL_005c:  stfld      string Game.EntityReference::m_entityReference
    IL_0061:  ldloca.s   V_0
    IL_0063:  ldloc.1
    IL_0064:  ldc.i4.0
    IL_0065:  ldelem.ref
    IL_0066:  stfld      string Game.EntityReference::m_componentReference
    IL_006b:  br         IL_016f

    IL_0070:  ldloc.1
    IL_0071:  ldlen
    IL_0072:  conv.i4
    IL_0073:  ldc.i4.2
    IL_0074:  beq.s      IL_007f

    IL_0076:  ldloc.1
    IL_0077:  ldlen
    IL_0078:  conv.i4
    IL_0079:  ldc.i4.3
    IL_007a:  bne.un     IL_0164

    IL_007f:  ldloc.1
    IL_0080:  ldc.i4.0
    IL_0081:  ldelem.ref
    IL_0082:  ldstr      "null"
    IL_0087:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_008c:  brfalse.s  IL_00b9

    IL_008e:  ldloc.1
    IL_008f:  ldlen
    IL_0090:  conv.i4
    IL_0091:  ldc.i4.2
    IL_0092:  bne.un.s   IL_00b9

    IL_0094:  ldloca.s   V_0
    IL_0096:  ldc.i4.0
    IL_0097:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_009c:  ldloca.s   V_0
    IL_009e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00a3:  stfld      string Game.EntityReference::m_entityReference
    IL_00a8:  ldloca.s   V_0
    IL_00aa:  ldsfld     string [System.Runtime]System.String::Empty
    IL_00af:  stfld      string Game.EntityReference::m_componentReference
    IL_00b4:  br         IL_016f

    IL_00b9:  ldloc.1
    IL_00ba:  ldc.i4.0
    IL_00bb:  ldelem.ref
    IL_00bc:  ldstr      "local"
    IL_00c1:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_00c6:  brfalse.s  IL_00e5

    IL_00c8:  ldloc.1
    IL_00c9:  ldlen
    IL_00ca:  conv.i4
    IL_00cb:  ldc.i4.2
    IL_00cc:  bne.un.s   IL_00e5

    IL_00ce:  ldloca.s   V_0
    IL_00d0:  ldc.i4.1
    IL_00d1:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_00d6:  ldloca.s   V_0
    IL_00d8:  ldloc.1
    IL_00d9:  ldc.i4.1
    IL_00da:  ldelem.ref
    IL_00db:  stfld      string Game.EntityReference::m_componentReference
    IL_00e0:  br         IL_016f

    IL_00e5:  ldloc.1
    IL_00e6:  ldc.i4.0
    IL_00e7:  ldelem.ref
    IL_00e8:  ldstr      "id"
    IL_00ed:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_00f2:  brfalse.s  IL_011f

    IL_00f4:  ldloca.s   V_0
    IL_00f6:  ldc.i4.2
    IL_00f7:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_00fc:  ldloca.s   V_0
    IL_00fe:  ldloc.1
    IL_00ff:  ldc.i4.1
    IL_0100:  ldelem.ref
    IL_0101:  stfld      string Game.EntityReference::m_entityReference
    IL_0106:  ldloca.s   V_0
    IL_0108:  ldloc.1
    IL_0109:  ldlen
    IL_010a:  conv.i4
    IL_010b:  ldc.i4.3
    IL_010c:  beq.s      IL_0115

    IL_010e:  ldsfld     string [System.Runtime]System.String::Empty
    IL_0113:  br.s       IL_0118

    IL_0115:  ldloc.1
    IL_0116:  ldc.i4.2
    IL_0117:  ldelem.ref
    IL_0118:  stfld      string Game.EntityReference::m_componentReference
    IL_011d:  br.s       IL_016f

    IL_011f:  ldloc.1
    IL_0120:  ldc.i4.0
    IL_0121:  ldelem.ref
    IL_0122:  ldstr      "name"
    IL_0127:  call       bool [System.Runtime]System.String::op_Equality(string,
                                                                         string)
    IL_012c:  brfalse.s  IL_0159

    IL_012e:  ldloca.s   V_0
    IL_0130:  ldc.i4.2
    IL_0131:  stfld      valuetype Game.EntityReference/ReferenceType Game.EntityReference::m_referenceType
    IL_0136:  ldloca.s   V_0
    IL_0138:  ldloc.1
    IL_0139:  ldc.i4.1
    IL_013a:  ldelem.ref
    IL_013b:  stfld      string Game.EntityReference::m_entityReference
    IL_0140:  ldloca.s   V_0
    IL_0142:  ldloc.1
    IL_0143:  ldlen
    IL_0144:  conv.i4
    IL_0145:  ldc.i4.3
    IL_0146:  beq.s      IL_014f

    IL_0148:  ldsfld     string [System.Runtime]System.String::Empty
    IL_014d:  br.s       IL_0152

    IL_014f:  ldloc.1
    IL_0150:  ldc.i4.2
    IL_0151:  ldelem.ref
    IL_0152:  stfld      string Game.EntityReference::m_componentReference
    IL_0157:  br.s       IL_016f

    IL_0159:  ldstr      "Unknown entity reference type."
    IL_015e:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_0163:  throw

    IL_0164:  ldstr      "Invalid entity reference. Too many tokens."
    IL_0169:  newobj     instance void [System.Runtime]System.Exception::.ctor(string)
    IL_016e:  throw

    IL_016f:  ldloc.0
    IL_0170:  ret
  } // end of method EntityReference::FromReferenceString

  .property instance string ReferenceString()
  {
    .get instance string Game.EntityReference::get_ReferenceString()
  } // end of property EntityReference::ReferenceString
  .property valuetype Game.EntityReference
          Null()
  {
    .get valuetype Game.EntityReference Game.EntityReference::get_Null()
  } // end of property EntityReference::Null
} // end of class Game.EntityReference