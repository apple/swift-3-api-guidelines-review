
enum XMLDTDNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case xmlEntityGeneralKind
  case xmlEntityParsedKind
  case xmlEntityUnparsedKind
  case xmlEntityParameterKind
  case xmlEntityPredefined
  case xmlAttributeCDATAKind
  case xmlAttributeIDKind
  case xmlAttributeIDRefKind
  case xmlAttributeIDRefsKind
  case xmlAttributeEntityKind
  case xmlAttributeEntitiesKind
  case xmlAttributeNMTokenKind
  case xmlAttributeNMTokensKind
  case xmlAttributeEnumerationKind
  case xmlAttributeNotationKind
  case xmlElementDeclarationUndefinedKind
  case xmlElementDeclarationEmptyKind
  case xmlElementDeclarationAnyKind
  case xmlElementDeclarationMixedKind
  case xmlElementDeclarationElementKind
}
class XMLDTDNode : XMLNode {
  init?(xmlString string: String)
  init(kind: XMLNodeKind, options: Int)
  init()
  var dtdKind: XMLDTDNodeKind
  var isExternal: Bool { get }
  var publicID: String?
  var systemID: String?
  var notationName: String?
  convenience init(kind: XMLNodeKind)
}
