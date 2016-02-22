
class NSXMLDTD : NSXMLNode {
  init()
  convenience init(contentsOf url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(child: NSXMLNode, at index: Int)
  func insertChildren(children: [NSXMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChild(at index: Int, with node: NSXMLNode)
  func entityDeclaration(forName name: String) -> NSXMLDTDNode?
  func notationDeclaration(forName name: String) -> NSXMLDTDNode?
  func elementDeclaration(forName name: String) -> NSXMLDTDNode?
  func attributeDeclaration(forName name: String, elementName: String) -> NSXMLDTDNode?
  class func predefinedEntityDeclaration(forName name: String) -> NSXMLDTDNode?
  convenience init(kind: NSXMLNodeKind)
}
