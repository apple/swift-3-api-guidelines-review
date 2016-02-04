
class NSXMLDTD : NSXMLNode {
  init()
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data: NSData, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  func entityDeclarationForName(name: String) -> NSXMLDTDNode?
  func notationDeclarationForName(name: String) -> NSXMLDTDNode?
  func elementDeclarationForName(name: String) -> NSXMLDTDNode?
  func attributeDeclarationForName(name: String, elementName: String) -> NSXMLDTDNode?
  class func predefinedEntityDeclarationForName(name: String) -> NSXMLDTDNode?
  convenience init(kind: NSXMLNodeKind)
}
