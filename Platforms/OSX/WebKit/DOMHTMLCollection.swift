
@available(OSX 10.4, *)
class DOMHTMLCollection : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
  func namedItem(name: String!) -> DOMNode!
  @available(OSX 10.6, *)
  func tags(name: String!) -> DOMNodeList!
}
