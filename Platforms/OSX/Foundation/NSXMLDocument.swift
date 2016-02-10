
enum XMLDocumentContentKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case xmlKind
  case xhtmlKind
  case htmlKind
  case textKind
}
class XMLDocument : XMLNode {
  init()
  convenience init(xmlString string: String, options mask: Int) throws
  convenience init(contentsOf url: URL, options mask: Int) throws
  init(data: Data, options mask: Int) throws
  init(rootElement element: XMLElement?)
  class func replacementClass(for cls: AnyClass) -> AnyClass
  var characterEncoding: String?
  var version: String?
  var isStandalone: Bool
  var documentContentKind: XMLDocumentContentKind
  var mimeType: String?
  @NSCopying var dtd: XMLDTD?
  func setRootElement(root: XMLElement)
  func rootElement() -> XMLElement?
  func insertChild(child: XMLNode, at index: Int)
  func insertChildren(children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(children: [XMLNode]?)
  func addChild(child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  @NSCopying var xmlData: Data { get }
  func xmlData(withOptions options: Int) -> Data
  func objectByApplyingXSLT(xslt: Data, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject
  func objectByApplyingXSLT(at xsltURL: URL, arguments argument: [String : String]?) throws -> AnyObject
  func validate() throws
  convenience init(kind: XMLNodeKind)
  convenience init(kind: XMLNodeKind, options: Int)
}
