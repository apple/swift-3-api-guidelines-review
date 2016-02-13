
enum XMLNodeKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case invalidKind
  case documentKind
  case elementKind
  case attributeKind
  case namespaceKind
  case processingInstructionKind
  case commentKind
  case textKind
  case DTDKind
  case entityDeclarationKind
  case attributeDeclarationKind
  case elementDeclarationKind
  case notationDeclarationKind
}
class XMLNode : Object, Copying {
  init()
  convenience init(kind: XMLNodeKind)
  init(kind: XMLNodeKind, options: Int)
  class func document() -> AnyObject
  class func document(rootElement element: XMLElement) -> AnyObject
  class func element(name name: String) -> AnyObject
  class func element(name name: String, uri URI: String) -> AnyObject
  class func element(name name: String, stringValue string: String) -> AnyObject
  class func element(name name: String, children: [XMLNode]?, attributes: [XMLNode]?) -> AnyObject
  class func attribute(name name: String, stringValue: String) -> AnyObject
  class func attribute(name name: String, uri URI: String, stringValue: String) -> AnyObject
  class func namespace(name name: String, stringValue: String) -> AnyObject
  class func processingInstruction(name name: String, stringValue: String) -> AnyObject
  class func comment(stringValue stringValue: String) -> AnyObject
  class func text(stringValue stringValue: String) -> AnyObject
  class func dtdNode(xmlString string: String) -> AnyObject?
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
  func child(at index: Int) -> XMLNode?
  @NSCopying var previousSibling: XMLNode? { get }
  @NSCopying var nextSibling: XMLNode? { get }
  @NSCopying var previous: XMLNode? { get }
  @NSCopying var next: XMLNode? { get }
  func detach()
  var xPath: String? { get }
  var localName: String? { get }
  var prefix: String? { get }
  var uri: String?
  class func localName(forName name: String) -> String
  class func prefix(forName name: String) -> String?
  class func predefinedNamespace(forPrefix name: String) -> XMLNode?
  var description: String { get }
  var xmlString: String { get }
  func xmlString(options options: Int) -> String
  func canonicalXMLStringPreservingComments(comments: Bool) -> String
  func nodes(forXPath xpath: String) throws -> [XMLNode]
  func objects(forXQuery xquery: String, constants: [String : AnyObject]?) throws -> [AnyObject]
  func objects(forXQuery xquery: String) throws -> [AnyObject]
  func copy(zone: Zone = nil) -> AnyObject
}
