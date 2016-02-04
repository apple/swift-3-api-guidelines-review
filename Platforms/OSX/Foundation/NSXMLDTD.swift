
class XMLDTD : XMLNode {
  init()
  convenience init(contentsOf url: URL, options mask: Int) throws
  init(data: Data, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(child: XMLNode, at index: Int)
  func insertChildren(children: [XMLNode], at index: Int)
  func removeChildAt(index: Int)
  func setChildren(children: [XMLNode]?)
  func addChild(child: XMLNode)
  func replaceChildAt(index: Int, withNode node: XMLNode)
  func entityDeclarationForName(name: String) -> XMLDTDNode?
  func notationDeclarationForName(name: String) -> XMLDTDNode?
  func elementDeclarationForName(name: String) -> XMLDTDNode?
  func attributeDeclarationForName(name: String, elementName: String) -> XMLDTDNode?
  class func predefinedEntityDeclarationForName(name: String) -> XMLDTDNode?
  convenience init(kind: XMLNodeKind)
}
