
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
  class func documentWith(rootElement element: XMLElement) -> AnyObject
  class func elementWith(name name: String) -> AnyObject
  class func elementWith(name name: String, uri URI: String) -> AnyObject
  class func elementWith(name name: String, stringValue string: String) -> AnyObject
  class func elementWith(name name: String, children: [XMLNode]?, attributes: [XMLNode]?) -> AnyObject
  class func attributeWith(name name: String, stringValue: String) -> AnyObject
  class func attributeWith(name name: String, uri URI: String, stringValue: String) -> AnyObject
  class func namespaceWith(name name: String, stringValue: String) -> AnyObject
  class func processingInstructionWith(name name: String, stringValue: String) -> AnyObject
  class func commentWith(stringValue stringValue: String) -> AnyObject
  class func textWith(stringValue stringValue: String) -> AnyObject
  class func dtdNodeWith(xmlString string: String) -> AnyObject?
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
  class func localNameFor(name name: String) -> String
  class func prefixFor(name name: String) -> String?
  class func predefinedNamespaceFor(prefix name: String) -> XMLNode?
  var description: String { get }
  var xmlString: String { get }
  func xmlStringWith(options options: Int) -> String
  func canonicalXMLStringPreservingComments(comments: Bool) -> String
  func nodesFor(xPath xpath: String) throws -> [XMLNode]
  func objectsFor(xQuery xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsFor(xQuery xquery: String) throws -> [AnyObject]
  func copyWith(zone: Zone = nil) -> AnyObject
}
