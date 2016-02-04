
class NSXMLElement : NSXMLNode {
  convenience init(name: String)
  init(name: String, URI: String?)
  convenience init(name: String, stringValue string: String?)
  init(XMLString string: String) throws
  convenience init(kind: NSXMLNodeKind, options: Int)
  func elementsForName(name: String) -> [NSXMLElement]
  func elementsForLocalName(localName: String, URI: String?) -> [NSXMLElement]
  func addAttribute(attribute: NSXMLNode)
  func removeAttributeForName(name: String)
  var attributes: [NSXMLNode]?
  func setAttributesWithDictionary(attributes: [String : String])
  func attributeForName(name: String) -> NSXMLNode?
  func attributeForLocalName(localName: String, URI: String?) -> NSXMLNode?
  func addNamespace(aNamespace: NSXMLNode)
  func removeNamespaceForPrefix(name: String)
  var namespaces: [NSXMLNode]?
  func namespaceForPrefix(name: String) -> NSXMLNode?
  func resolveNamespaceForName(name: String) -> NSXMLNode?
  func resolvePrefixForNamespaceURI(namespaceURI: String) -> String?
  func insertChild(child: NSXMLNode, atIndex index: Int)
  func insertChildren(children: [NSXMLNode], atIndex index: Int)
  func removeChildAtIndex(index: Int)
  func setChildren(children: [NSXMLNode]?)
  func addChild(child: NSXMLNode)
  func replaceChildAtIndex(index: Int, withNode node: NSXMLNode)
  func normalizeAdjacentTextNodesPreservingCDATA(preserve: Bool)
  convenience init()
  convenience init(kind: NSXMLNodeKind)
}
extension NSXMLElement {
  func setAttributesAsDictionary(attributes: [NSObject : AnyObject])
}
