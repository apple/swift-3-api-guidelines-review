
@available(OSX 10.4, *)
class DOMNamedNodeMap : DOMObject {
  var length: UInt32 { get }
  func getNamedItem(name: String!) -> DOMNode!
  func setNamedItem(node: DOMNode!) -> DOMNode!
  func removeNamedItem(name: String!) -> DOMNode!
  func item(index: UInt32) -> DOMNode!
  @available(OSX 10.5, *)
  func getNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
  func setNamedItemNS(node: DOMNode!) -> DOMNode!
  @available(OSX 10.5, *)
  func removeNamedItemNS(namespaceURI: String!, localName: String!) -> DOMNode!
}
extension DOMNamedNodeMap {
}
