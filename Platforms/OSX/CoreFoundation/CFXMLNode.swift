
var kCFXMLNodeCurrentVersion: CFIndex { get }
@available(*, deprecated, renamed="CFXMLNode")
typealias CFXMLNodeRef = CFXMLNode
class CFXMLNode {
}
typealias CFXMLTree = CFTree
@available(*, deprecated, renamed="CFXMLTree")
typealias CFXMLTreeRef = CFXMLTree
enum CFXMLNodeTypeCode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Document
  case Element
  case Attribute
  case ProcessingInstruction
  case Comment
  case Text
  case CDATASection
  case DocumentFragment
  case Entity
  case EntityReference
  case DocumentType
  case Whitespace
  case Notation
  case ElementTypeDeclaration
  case AttributeListDeclaration
}
struct CFXMLElementInfo {
  var attributes: Unmanaged<CFDictionary>!
  var attributeOrder: Unmanaged<CFArray>!
  var isEmpty: DarwinBoolean
  var _reserved: (Int8, Int8, Int8)
  init()
  init(attributes: Unmanaged<CFDictionary>!, attributeOrder: Unmanaged<CFArray>!, isEmpty: DarwinBoolean, _reserved: (Int8, Int8, Int8))
}
struct CFXMLProcessingInstructionInfo {
  var dataString: Unmanaged<CFString>!
  init()
  init(dataString: Unmanaged<CFString>!)
}
struct CFXMLDocumentInfo {
  var sourceURL: Unmanaged<CFURL>!
  var encoding: CFStringEncoding
  init()
  init(sourceURL: Unmanaged<CFURL>!, encoding: CFStringEncoding)
}
struct CFXMLExternalID {
  var systemID: Unmanaged<CFURL>!
  var publicID: Unmanaged<CFString>!
  init()
  init(systemID: Unmanaged<CFURL>!, publicID: Unmanaged<CFString>!)
}
struct CFXMLDocumentTypeInfo {
  var externalID: CFXMLExternalID
  init()
  init(externalID: CFXMLExternalID)
}
struct CFXMLNotationInfo {
  var externalID: CFXMLExternalID
  init()
  init(externalID: CFXMLExternalID)
}
struct CFXMLElementTypeDeclarationInfo {
  var contentDescription: Unmanaged<CFString>!
  init()
  init(contentDescription: Unmanaged<CFString>!)
}
struct CFXMLAttributeDeclarationInfo {
  var attributeName: Unmanaged<CFString>!
  var typeString: Unmanaged<CFString>!
  var defaultString: Unmanaged<CFString>!
  init()
  init(attributeName: Unmanaged<CFString>!, typeString: Unmanaged<CFString>!, defaultString: Unmanaged<CFString>!)
}
struct CFXMLAttributeListDeclarationInfo {
  var numberOfAttributes: CFIndex
  var attributes: UnsafeMutablePointer<CFXMLAttributeDeclarationInfo>
  init()
  init(numberOfAttributes: CFIndex, attributes: UnsafeMutablePointer<CFXMLAttributeDeclarationInfo>)
}
enum CFXMLEntityTypeCode : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case Parameter
  case ParsedInternal
  case ParsedExternal
  case Unparsed
  case Character
}
struct CFXMLEntityInfo {
  var entityType: CFXMLEntityTypeCode
  var replacementText: Unmanaged<CFString>!
  var entityID: CFXMLExternalID
  var notationName: Unmanaged<CFString>!
  init()
  init(entityType: CFXMLEntityTypeCode, replacementText: Unmanaged<CFString>!, entityID: CFXMLExternalID, notationName: Unmanaged<CFString>!)
}
struct CFXMLEntityReferenceInfo {
  var entityType: CFXMLEntityTypeCode
  init()
  init(entityType: CFXMLEntityTypeCode)
}
