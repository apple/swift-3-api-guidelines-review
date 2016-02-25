
class NSXMLElement : NSXMLNode {
  convenience init(name name: String)
  init(name name: String, URI URI: String?)
  convenience init(name name: String, stringValue string: String?)
  init(XMLString string: String) throws
  func elementsForName(_ name: String) -> [NSXMLElement]
  func elementsForLocalName(_ localName: String, URI URI: String?) -> [NSXMLElement]
  func addAttribute(_ attribute: NSXMLNode)
  func removeAttributeForName(_ name: String)
  var attributes: [NSXMLNode]?
  func setAttributesWithDictionary(_ attributes: [String : String])
  func attributeForName(_ name: String) -> NSXMLNode?
  func attributeForLocalName(_ localName: String, URI URI: String?) -> NSXMLNode?
  func addNamespace(_ aNamespace: NSXMLNode)
  func removeNamespaceForPrefix(_ name: String)
  var namespaces: [NSXMLNode]?
  func namespaceForPrefix(_ name: String) -> NSXMLNode?
  func resolveNamespaceForName(_ name: String) -> NSXMLNode?
  func resolvePrefixForNamespaceURI(_ namespaceURI: String) -> String?
  func insertChild(_ child: NSXMLNode, atIndex index: Int)
  func insertChildren(_ children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(_ index: Int)
  func setChildren(_ children: [NSXMLNode]?)
  func addChild(_ child: NSXMLNode)
  func replaceChildAtIndex(_ index: Int, withNode node: NSXMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(_ preserve: Bool)
}
extension NSXMLElement {
  func setAttributesAsDictionary(_ attributes: [NSObject : AnyObject])
}
