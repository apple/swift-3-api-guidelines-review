
enum NSXMLNodeKind : UInt {
  init?(rawValue rawValue: UInt)
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
  convenience init(kind kind: NSXMLNodeKind)
  init(kind kind: NSXMLNodeKind, options options: Int)
  class func document() -> AnyObject
  class func documentWithRootElement(_ element: NSXMLElement) -> AnyObject
  class func elementWithName(_ name: String) -> AnyObject
  class func elementWithName(_ name: String, URI URI: String) -> AnyObject
  class func elementWithName(_ name: String, stringValue string: String) -> AnyObject
  class func elementWithName(_ name: String, children children: [NSXMLNode]?, attributes attributes: [NSXMLNode]?) -> AnyObject
  class func attributeWithName(_ name: String, stringValue stringValue: String) -> AnyObject
  class func attributeWithName(_ name: String, URI URI: String, stringValue stringValue: String) -> AnyObject
  class func namespaceWithName(_ name: String, stringValue stringValue: String) -> AnyObject
  class func processingInstructionWithName(_ name: String, stringValue stringValue: String) -> AnyObject
  class func commentWithStringValue(_ stringValue: String) -> AnyObject
  class func textWithStringValue(_ stringValue: String) -> AnyObject
  class func DTDNodeWithXMLString(_ string: String) -> AnyObject?
  var kind: NSXMLNodeKind { get }
  var name: String?
  var objectValue: AnyObject?
  var stringValue: String?
  func setStringValue(_ string: String, resolvingEntities resolve: Bool)
  var index: Int { get }
  var level: Int { get }
  var rootDocument: NSXMLDocument? { get }
  @NSCopying var parent: NSXMLNode? { get }
  var childCount: Int { get }
  var children: [NSXMLNode]? { get }
  func childAtIndex(_ index: Int) -> NSXMLNode?
  @NSCopying var previousSibling: NSXMLNode? { get }
  @NSCopying var nextSibling: NSXMLNode? { get }
  @NSCopying var previousNode: NSXMLNode? { get }
  @NSCopying var nextNode: NSXMLNode? { get }
  func detach()
  var XPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var URI: String?
  class func localNameForName(_ name: String) -> String
  class func prefixForName(_ name: String) -> String?
  class func predefinedNamespaceForPrefix(_ name: String) -> NSXMLNode?
  var XMLString: String { get }
  func XMLStringWithOptions(_ options: Int) -> String
  func canonicalXMLStringPreservingComments(_ comments: Bool) -> String
  func nodesForXPath(_ xpath: String) throws -> [NSXMLNode]
  func objectsForXQuery(_ xquery: String, constants constants: [String : AnyObject]?) throws -> [AnyObject]
  func objectsForXQuery(_ xquery: String) throws -> [AnyObject]
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
