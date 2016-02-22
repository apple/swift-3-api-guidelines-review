
class NSXMLElement : NSXMLNode {
  convenience init(name: String)
  init(name: String, uri URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(xmlString string: String) throws
  convenience init(kind: NSXMLNodeKind, options: Int)
  func elements(forName name: String) -> [NSXMLElement]
  func elements(forLocalName localName: String, uri URI: String?) -> [NSXMLElement]
  func addAttribute(attribute: NSXMLNode)
  func removeAttribute(forName name: String)
  var attributes: [NSXMLNode]?
  func setAttributesWith(attributes: [String : String])
  func attribute(forName name: String) -> NSXMLNode?
  func attribute(forLocalName localName: String, uri URI: String?) -> NSXMLNode?
  func addNamespace(aNamespace: NSXMLNode)
  func removeNamespace(forPrefix name: String)
  var namespaces: [NSXMLNode]?
  func namespace(forPrefix name: String) -> NSXMLNode?
  func resolveNamespace(forName name: String) -> NSXMLNode?
  func resolvePrefix(forNamespaceURI namespaceURI: String) -> String?
  func insertChild(child: NSXMLNode, at index: Int)
  func insertChildren(children: [NSXMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChild(at index: Int, with node: NSXMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()
  convenience init(kind: NSXMLNodeKind)
}
extension NSXMLElement {
  func setAttributesAs(attributes: [NSObject : AnyObject])
}
