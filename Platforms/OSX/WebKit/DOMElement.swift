
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
  var className: String!
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
  func getAttribute(name: String!) -> String!
  @available(OSX 10.5, *)
  func setAttribute(name: String!, value: String!)
  func removeAttribute(name: String!)
  func getAttributeNode(name: String!) -> DOMAttr!
  func setAttributeNode(newAttr: DOMAttr!) -> DOMAttr!
  func removeAttributeNode(oldAttr: DOMAttr!) -> DOMAttr!
  func getElementsByTagName(name: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNS(namespaceURI: String!, localName: String!) -> String!
  @available(OSX 10.5, *)
  func setAttributeNS(namespaceURI: String!, qualifiedName: String!, value: String!)
  @available(OSX 10.5, *)
  func removeAttributeNS(namespaceURI: String!, localName: String!)
  @available(OSX 10.5, *)
  func getElementsByTagNameNS(namespaceURI: String!, localName: String!) -> DOMNodeList!
  @available(OSX 10.5, *)
  func getAttributeNodeNS(namespaceURI: String!, localName: String!) -> DOMAttr!
  func setAttributeNodeNS(newAttr: DOMAttr!) -> DOMAttr!
  func hasAttribute(name: String!) -> Bool
  @available(OSX 10.5, *)
  func hasAttributeNS(namespaceURI: String!, localName: String!) -> Bool
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
  func getElementsByClassName(name: String!) -> DOMNodeList!
  @available(OSX 10.6, *)
  func webkitRequestFullScreen(flags: UInt16)
  @available(OSX 10.6, *)
  func querySelector(selectors: String!) -> DOMElement!
  @available(OSX 10.6, *)
  func querySelectorAll(selectors: String!) -> DOMNodeList!
}
extension DOMElement {
}
