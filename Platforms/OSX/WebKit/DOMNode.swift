
var DOM_ELEMENT_NODE: Int { get }
var DOM_ATTRIBUTE_NODE: Int { get }
var DOM_TEXT_NODE: Int { get }
var DOM_CDATA_SECTION_NODE: Int { get }
var DOM_ENTITY_REFERENCE_NODE: Int { get }
var DOM_ENTITY_NODE: Int { get }
var DOM_PROCESSING_INSTRUCTION_NODE: Int { get }
var DOM_COMMENT_NODE: Int { get }
var DOM_DOCUMENT_NODE: Int { get }
var DOM_DOCUMENT_TYPE_NODE: Int { get }
var DOM_DOCUMENT_FRAGMENT_NODE: Int { get }
var DOM_NOTATION_NODE: Int { get }
var DOM_DOCUMENT_POSITION_DISCONNECTED: Int { get }
var DOM_DOCUMENT_POSITION_PRECEDING: Int { get }
var DOM_DOCUMENT_POSITION_FOLLOWING: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINS: Int { get }
var DOM_DOCUMENT_POSITION_CONTAINED_BY: Int { get }
var DOM_DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC: Int { get }
@available(OSX 10.4, *)
class DOMNode : DOMObject, DOMEventTarget {
  var nodeName: String! { get }
  var nodeValue: String!
  var nodeType: UInt16 { get }
  var parent: DOMNode! { get }
  var childNodes: DOMNodeList! { get }
  var firstChild: DOMNode! { get }
  var lastChild: DOMNode! { get }
  var previousSibling: DOMNode! { get }
  var nextSibling: DOMNode! { get }
  var ownerDocument: DOMDocument! { get }
  var namespaceURI: String! { get }
  var prefix: String!
  var localName: String! { get }
  var attributes: DOMNamedNodeMap! { get }
  @available(OSX 10.5, *)
  var baseURI: String! { get }
  @available(OSX 10.5, *)
  var textContent: String!
  @available(OSX 10.5, *)
  var parentElement: DOMElement! { get }
  @available(OSX 10.5, *)
  var isContentEditable: Bool { get }
  @available(OSX 10.5, *)
  func insertBefore(newChild: DOMNode!, refChild: DOMNode!) -> DOMNode!
  @available(OSX 10.5, *)
  func replaceChild(newChild: DOMNode!, oldChild: DOMNode!) -> DOMNode!
  func removeChild(oldChild: DOMNode!) -> DOMNode!
  func appendChild(newChild: DOMNode!) -> DOMNode!
  func hasChildNodes() -> Bool
  func cloneNode(deep: Bool) -> DOMNode!
  func normalize()
  @available(OSX 10.5, *)
  func isSupported(feature: String!, version: String!) -> Bool
  func hasAttributes() -> Bool
  @available(OSX 10.5, *)
  func isSameNode(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func isEqualNode(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func lookupPrefix(namespaceURI: String!) -> String!
  @available(OSX 10.5, *)
  func isDefaultNamespace(namespaceURI: String!) -> Bool
  @available(OSX 10.5, *)
  func lookupNamespaceURI(prefix: String!) -> String!
  @available(OSX 10.6, *)
  func compareDocumentPosition(other: DOMNode!) -> UInt16
  @available(OSX 10.5, *)
  func contains(other: DOMNode!) -> Bool
  @available(OSX 10.5, *)
  func addEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.5, *)
  func removeEventListener(type: String!, listener: DOMEventListener!, useCapture: Bool)
  @available(OSX 10.4, *)
  func dispatchEvent(event: DOMEvent!) -> Bool
}
extension DOMNode {
}
