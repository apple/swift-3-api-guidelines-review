
enum NSXMLDocumentContentKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case XMLKind
  case XHTMLKind
  case HTMLKind
  case TextKind
}
class NSXMLDocument : NSXMLNode {
  init()
  convenience init(XMLString string: String, options mask: Int) throws
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws
  init(rootElement element: NSXMLElement?)
  class func replacementClassForClass(cls: AnyClass) -> AnyClass
  var characterEncoding: String?
  var version: String?
  var standalone: Bool
  var documentContentKind: NSXMLDocumentContentKind
  var MIMEType: String?
  @NSCopying var DTD: NSXMLDTD?
  func setRootElement(root: NSXMLElement)
  func rootElement() -> NSXMLElement?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  @NSCopying var XMLData: NSData { get }
  func XMLDataWithOptions(options: Int) -> NSData
  func objectByApplyingXSLT(xslt: NSData, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTAtURL(xsltURL: NSURL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws
  convenience init(kind: NSXMLNodeKind)
  convenience init(kind: NSXMLNodeKind, options: Int)
}
