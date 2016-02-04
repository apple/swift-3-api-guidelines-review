
class XMLElement : XMLNode {
  convenience init(name: String)
  init(name: String, uri URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(xmlString string: String) throws
  convenience init(kind: XMLNodeKind, options: Int)
  func elementsForName(name: String) -> [XMLElement]
  func elementsForLocalName(localName: String, uri URI: String?) -> [XMLElement]
  func addAttribute(attribute: XMLNode)
  func removeAttributeForName(name: String)
  var attributes: [XMLNode]?
  func setAttributesWith(attributes: [String : String])
  func attributeForName(name: String) -> XMLNode?
  func attributeForLocalName(localName: String, uri URI: String?) -> XMLNode?
  func addNamespace(aNamespace: XMLNode)
  func removeNamespaceForPrefix(name: String)
  var namespaces: [XMLNode]?
  func namespaceForPrefix(name: String) -> XMLNode?
  func resolveNamespaceForName(name: String) -> XMLNode?
  func resolvePrefixForNamespaceURI(namespaceURI: String) -> String?
  func insertChild(child: XMLNode, at index: Int)
  func insertChildren(children: [XMLNode], at index: Int)
  func removeChildAt(index: Int)
  func setChildren(children: [XMLNode]?)
  func addChild(child: XMLNode)
  func replaceChildAt(index: Int, withNode node: XMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()
  convenience init(kind: XMLNodeKind)
}
extension XMLElement {
  func setAttributesAs(attributes: [Object : AnyObject])
}
