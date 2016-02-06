
class XMLElement : XMLNode {
  convenience init(name: String)
  init(name: String, uri URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(xmlString string: String) throws
  convenience init(kind: XMLNodeKind, options: Int)
  func elementsFor(name name: String) -> [XMLElement]
  func elementsFor(localName localName: String, uri URI: String?) -> [XMLElement]
  func addAttribute(attribute: XMLNode)
  func removeAttributeFor(name name: String)
  var attributes: [XMLNode]?
  func setAttributesWith(attributes: [String : String])
  func attributeFor(name name: String) -> XMLNode?
  func attributeFor(localName localName: String, uri URI: String?) -> XMLNode?
  func addNamespace(aNamespace: XMLNode)
  func removeNamespaceFor(prefix name: String)
  var namespaces: [XMLNode]?
  func namespaceFor(prefix name: String) -> XMLNode?
  func resolveNamespaceFor(name name: String) -> XMLNode?
  func resolvePrefixFor(namespaceURI namespaceURI: String) -> String?
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
