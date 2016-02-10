
class XMLDTD : XMLNode {
  init()
  convenience init(contentsOf url: URL, options mask: Int) throws
  init(data: Data, options mask: Int) throws
  var publicID: String?
  var systemID: String?
  func insertChild(child: XMLNode, at index: Int)
  func insertChildren(children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(children: [XMLNode]?)
  func addChild(child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  func entityDeclaration(forName name: String) -> XMLDTDNode?
  func notationDeclaration(forName name: String) -> XMLDTDNode?
  func elementDeclaration(forName name: String) -> XMLDTDNode?
  func attributeDeclaration(forName name: String, elementName: String) -> XMLDTDNode?
  class func predefinedEntityDeclaration(forName name: String) -> XMLDTDNode?
  convenience init(kind: XMLNodeKind)
}
