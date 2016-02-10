
class XMLElement : XMLNode {
  convenience init(name: String)
  init(name: String, uri URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(xmlString string: String) throws
  convenience init(kind: XMLNodeKind, options: Int)
  func elements(forName name: String) -> [XMLElement]
  func elements(forLocalName localName: String, uri URI: String?) -> [XMLElement]
  func addAttribute(attribute: XMLNode)
  func removeAttribute(forName name: String)
  var attributes: [XMLNode]?
  func setAttributesWith(attributes: [String : String])
  func attribute(forName name: String) -> XMLNode?
  func attribute(forLocalName localName: String, uri URI: String?) -> XMLNode?
  func addNamespace(aNamespace: XMLNode)
  func removeNamespace(forPrefix name: String)
  var namespaces: [XMLNode]?
  func namespace(forPrefix name: String) -> XMLNode?
  func resolveNamespace(forName name: String) -> XMLNode?
  func resolvePrefix(forNamespaceURI namespaceURI: String) -> String?
  func insertChild(child: XMLNode, at index: Int)
  func insertChildren(children: [XMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(children: [XMLNode]?)
  func addChild(child: XMLNode)
  func replaceChild(at index: Int, with node: XMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()
  convenience init(kind: XMLNodeKind)
}
extension XMLElement {
  func setAttributesAs(attributes: [Object : AnyObject])
}
