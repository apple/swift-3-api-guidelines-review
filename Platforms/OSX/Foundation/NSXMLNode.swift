
enum XMLNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case InvalidKind
  case DocumentKind
  case ElementKind
  case AttributeKind
  case NamespaceKind
  case ProcessingInstructionKind
  case CommentKind
  case TextKind
  case DTDKind
  case EntityDeclarationKind
  case AttributeDeclarationKind
  case ElementDeclarationKind
  case NotationDeclarationKind
}
class XMLNode : Object, Copying {
  init()
  convenience init(kind: XMLNodeKind)
  init(kind: XMLNodeKind, options: Int)
  class func document() -> AnyObject
  class func documentWithRootElement(element: XMLElement) -> AnyObject
  class func elementWithName(name: String) -> AnyObject
  class func elementWithName(name: String, uri URI: String) -> AnyObject
  class func elementWithName(name: String, stringValue string: String) -> AnyObject
  class func elementWithName(name: String, children: [XMLNode]?, attributes: [XMLNode]?) -> AnyObject
  class func attributeWithName(name: String, stringValue: String) -> AnyObject
  class func attributeWithName(name: String, uri URI: String, stringValue: String) -> AnyObject
  class func namespaceWithName(name: String, stringValue: String) -> AnyObject
  class func processingInstructionWithName(name: String, stringValue: String) -> AnyObject
  class func commentWithStringValue(stringValue: String) -> AnyObject
  class func textWithStringValue(stringValue: String) -> AnyObject
  class func dtdNodeWithXMLString(string: String) -> AnyObject?
  var kind: XMLNodeKind { get }
  var name: String?
  var objectValue: AnyObject?
  var stringValue: String?
  func setStringValue(string: String, resolvingEntities resolve: Bool)
  var index: Int { get }
  var level: Int { get }
  var rootDocument: XMLDocument? { get }
  @NSCopying var parent: XMLNode? { get }
  var childCount: Int { get }
  var children: [XMLNode]? { get }
  func childAt(index: Int) -> XMLNode?
  @NSCopying var previousSibling: XMLNode? { get }
  @NSCopying var nextSibling: XMLNode? { get }
  @NSCopying var previous: XMLNode? { get }
  @NSCopying var next: XMLNode? { get }
  func detach()
  var xPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var uri: String?
  class func localNameForName(name: String) -> String
  class func prefixForName(name: String) -> String?
  class func predefinedNamespaceForPrefix(name: String) -> XMLNode?
  var description: String { get }
  var xmlString: String { get }
  func xmlStringWithOptions(options: Int) -> String
  func canonicalXMLStringPreservingComments(comments: Bool) -> String
  func nodesForXPath(xpath: String) throws -> [XMLNode]
  func objectsForXQuery(xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(xquery: String) throws -> [AnyObject]
  func copy(zone zone: Zone = nil) -> AnyObject
}
