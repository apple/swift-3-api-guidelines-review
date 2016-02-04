
enum NSXMLDTDNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NSXMLEntityGeneralKind
  case NSXMLEntityParsedKind
  case NSXMLEntityUnparsedKind
  case NSXMLEntityParameterKind
  case NSXMLEntityPredefined
  case NSXMLAttributeCDATAKind
  case NSXMLAttributeIDKind
  case NSXMLAttributeIDRefKind
  case NSXMLAttributeIDRefsKind
  case NSXMLAttributeEntityKind
  case NSXMLAttributeEntitiesKind
  case NSXMLAttributeNMTokenKind
  case NSXMLAttributeNMTokensKind
  case NSXMLAttributeEnumerationKind
  case NSXMLAttributeNotationKind
  case NSXMLElementDeclarationUndefinedKind
  case NSXMLElementDeclarationEmptyKind
  case NSXMLElementDeclarationAnyKind
  case NSXMLElementDeclarationMixedKind
  case NSXMLElementDeclarationElementKind
}
class NSXMLDTDNode : NSXMLNode {
  init?(XMLString string: String)
  init(kind: NSXMLNodeKind, options: Int)
  init()
  var DTDKind: NSXMLDTDNodeKind
  var external: Bool { get }
  var publicID: String?
  var systemID: String?
  var notationName: String?
  convenience init(kind: NSXMLNodeKind)
}
