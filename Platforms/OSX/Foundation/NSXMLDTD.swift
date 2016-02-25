
class NSXMLDTD : NSXMLNode {
  convenience init(contentsOfURL url: NSURL, options mask: Int) throws
  init(data data: NSData, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(_ child: NSXMLNode, atIndex index: Int)
  func insertChildren(_ children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(_ index: Int)
  func setChildren(_ children: [NSXMLNode]?)
  func addChild(_ child: NSXMLNode)
  func replaceChildAtIndex(_ index: Int, withNode node: NSXMLNode)
  func entityDeclarationForName(_ name: String) -> NSXMLDTDNode?
  func notationDeclarationForName(_ name: String) -> NSXMLDTDNode?
  func elementDeclarationForName(_ name: String) -> NSXMLDTDNode?
  func attributeDeclarationForName(_ name: String, elementName elementName: String) -> NSXMLDTDNode?
  class func predefinedEntityDeclarationForName(_ name: String) -> NSXMLDTDNode?
}
