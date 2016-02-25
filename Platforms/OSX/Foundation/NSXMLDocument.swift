
enum NSXMLDocumentContentKind : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case XMLKind
  case XHTMLKind
  case HTMLKind
  case TextKind
}
class NSXMLDocument : NSXMLNode {
  convenience init(XMLString string: String, options mask: Int) throws
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data data: NSData, options mask: Int) throws
  init(rootElement element: NSXMLElement?)
  class func replacementClassForClass(_ cls: AnyClass) -> AnyClass
  var characterEncoding: String?
  var version: String?
  var standalone: Bool
  var documentContentKind: NSXMLDocumentContentKind
  var MIMEType: String?
  @NSCopying var DTD: NSXMLDTD?
  func setRootElement(_ root: NSXMLElement)
  func rootElement() -> NSXMLElement?
  func insertChild(_ child: NSXMLNode, atIndex index: Int)
  func insertChildren(_ children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(_ index: Int)
  func setChildren(_ children: [NSXMLNode]?)
  func addChild(_ child: NSXMLNode)
  func replaceChildAtIndex(_ index: Int, withNode node: NSXMLNode)
  @NSCopying var XMLData: NSData { get }
  func XMLDataWithOptions(_ options: Int) -> NSData
  func objectByApplyingXSLT(_ xslt: NSData, arguments arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTString(_ xslt: String, arguments arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTAtURL(_ xsltURL: NSURL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws
}
