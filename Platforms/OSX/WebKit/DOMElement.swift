
var DOM_ALLOW_KEYBOARD_INPUT: Int { get }
@available(OSX 10.4, *)
class DOMElement : DOMNode {
  var tagName: String! { get }
  var style: DOMCSSStyleDeclaration! { get }
  var offsetLeft: Int32 { get }
  var offsetTop: Int32 { get }
  var offsetWidth: Int32 { get }
  var offsetHeight: Int32 { get }
  @available(OSX 10.5, *)
  var clientLeft: Int32 { get }
  @available(OSX 10.5, *)
  var clientTop: Int32 { get }
  var clientWidth: Int32 { get }
  var clientHeight: Int32 { get }
  var scrollLeft: Int32
  var scrollTop: Int32
  var scrollWidth: Int32 { get }
  var scrollHeight: Int32 { get }
  var offsetParent: DOMElement! { get }
  var innerHTML: String!
  var outerHTML: String!
  @available(OSX 10.5, *)
  var innerText: String! { get }
  @available(OSX 10.6, *)
  var previousElementSibling: DOMElement! { get }
  @available(OSX 10.6, *)
  var nextElementSibling: DOMElement! { get }
  @available(OSX 10.6, *)
  var firstElementChild: DOMElement! { get }
  @available(OSX 10.6, *)
  var lastElementChild: DOMElement! { get }
  @available(OSX 10.6, *)
  var childElementCount: UInt32 { get }
  func getAttribute(_ name: String!) -> String!
  @available(OSX 10.5, *)
  func setAttribute(_ name: String!, value value: String!)
  func removeAttribute(_ name: String!)
  func getAttributeNode(_ name: String!) -> DOMAttr!
  func setAttributeNode(_ newAttr: DOMAttr!) -> DOMAttr!
  func removeAttributeNode(_ oldAttr: DOMAttr!) -> DOMAttr!
  func getElementsByTagName(_ name: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNS(_ namespaceURI: String!, localName localName: String!) -> String!
  @available(OSX 10.5, *)
  func setAttributeNS(_ namespaceURI: String!, qualifiedName qualifiedName: String!, value value: String!)
  @available(OSX 10.5, *)
  func removeAttributeNS(_ namespaceURI: String!, localName localName: String!)
  @available(OSX 10.5, *)
  func getElementsByTagNameNS(_ namespaceURI: String!, localName localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNodeNS(_ namespaceURI: String!, localName localName: String!) -> DOMAttr!
  func setAttributeNodeNS(_ newAttr: DOMAttr!) -> DOMAttr!
  func hasAttribute(_ name: String!) -> Bool
  @available(OSX 10.5, *)
  func hasAttributeNS(_ namespaceURI: String!, localName localName: String!) -> Bool
  @available(OSX 10.6, *)
  func focus()
  @available(OSX 10.6, *)
  func blur()
  @available(OSX 10.5, *)
  func scroll(intoView alignWithTop: Bool)
  @available(OSX 10.5, *)
  func scroll(intoViewIfNeeded centerIfNeeded: Bool)
  @available(OSX 10.5, *)
  func scroll(byLines lines: Int32)
  @available(OSX 10.5, *)
  func scroll(byPages pages: Int32)
  @available(OSX 10.6, *)
  func getElementsByClassName(_ name: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func webkitRequestFullScreen(_ flags: UInt16)
  @available(OSX 10.6, *)
  func querySelector(_ selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(_ selectors: String!) -> DOMNodeList!
}
extension DOMElement {
}
