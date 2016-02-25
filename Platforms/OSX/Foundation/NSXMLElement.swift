
class NSXMLElement : NSXMLNode {
  convenience init(name name: String)
  init(name name: String, uri URI: String?)
  convenience init(name name: String, stringValue string: String?)
  init(xmlString string: String) throws
  func elements(forName name: String) -> [NSXMLElement]
  func elements(forLocalName localName: String, uri URI: String?) -> [NSXMLElement]
  func addAttribute(_ attribute: NSXMLNode)
  func removeAttribute(forName name: String)
  var attributes: [NSXMLNode]?
  func setAttributesWith(_ attributes: [String : String])
  func attribute(forName name: String) -> NSXMLNode?
  func attribute(forLocalName localName: String, uri URI: String?) -> NSXMLNode?
  func addNamespace(_ aNamespace: NSXMLNode)
  func removeNamespace(forPrefix name: String)
  var namespaces: [NSXMLNode]?
  func namespace(forPrefix name: String) -> NSXMLNode?
  func resolveNamespace(forName name: String) -> NSXMLNode?
  func resolvePrefix(forNamespaceURI namespaceURI: String) -> String?
  func insertChild(_ child: NSXMLNode, at index: Int)
  func insertChildren(_ children: [NSXMLNode], at index: Int)
  func removeChild(at index: Int)
  func setChildren(_ children: [NSXMLNode]?)
  func addChild(_ child: NSXMLNode)
  func replaceChild(at index: Int, with node: NSXMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(_ preserve: Bool)
}
extension NSXMLElement {
  func setAttributesAs(_ attributes: [NSObject : AnyObject])
}
