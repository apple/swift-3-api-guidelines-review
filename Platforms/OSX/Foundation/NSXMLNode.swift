
enum NSXMLNodeKind : UInt {
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
class NSXMLNode : NSObject, NSCopying {
  init()
  convenience init(kind: NSXMLNodeKind)
  init(kind: NSXMLNodeKind, options: Int)
  class func document() -> AnyObject
  class func documentWithRootElement(element: NSXMLElement) -> AnyObject
  class func elementWithName(name: String) -> AnyObject
  class func elementWithName(name: String, URI: String) -> AnyObject
  class func elementWithName(name: String, stringValue string: String) -> AnyObject
  class func elementWithName(name: String, children: [NSXMLNode]?, attributes: [NSXMLNode]?) -> AnyObject
  class func attributeWithName(name: String, stringValue: String) -> AnyObject
  class func attributeWithName(name: String, URI: String, stringValue: String) -> AnyObject
  class func namespaceWithName(name: String, stringValue: String) -> AnyObject
  class func processingInstructionWithName(name: String, stringValue: String) -> AnyObject
  class func commentWithStringValue(stringValue: String) -> AnyObject
  class func textWithStringValue(stringValue: String) -> AnyObject
  class func DTDNodeWithXMLString(string: String) -> AnyObject?
  var kind: NSXMLNodeKind { get }
  var name: String?
  var objectValue: AnyObject?
  var stringValue: String?
  func setStringValue(string: String, resolvingEntities resolve: Bool)
  var index: Int { get }
  var level: Int { get }
  var rootDocument: NSXMLDocument? { get }
  @NSCopying var parent: NSXMLNode? { get }
  var childCount: Int { get }
  var children: [NSXMLNode]? { get }
  func childAtIndex(index: Int) -> NSXMLNode?
  @NSCopying var previousSibling: NSXMLNode? { get }
  @NSCopying var nextSibling: NSXMLNode? { get }
  @NSCopying var previousNode: NSXMLNode? { get }
  @NSCopying var nextNode: NSXMLNode? { get }
  func detach()
  var XPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var URI: String?
  class func localNameForName(name: String) -> String
  class func prefixForName(name: String) -> String?
  class func predefinedNamespaceForPrefix(name: String) -> NSXMLNode?
  var description: String { get }
  var XMLString: String { get }
  func XMLStringWithOptions(options: Int) -> String
  func canonicalXMLStringPreservingComments(comments: Bool) -> String
  func nodesForXPath(xpath: String) throws -> [NSXMLNode]
  func objectsForXQuery(xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(xquery: String) throws -> [AnyObject]
  func copyWithZone(zone: NSZone) -> AnyObject
}
