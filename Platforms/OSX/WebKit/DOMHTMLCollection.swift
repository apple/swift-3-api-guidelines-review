
@available(OSX 10.4, *)
class DOMHTMLCollection : DOMObject {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMNode!
  func namedItem(_ name: String!) -> DOMNode!
  @available(OSX 10.6, *)
  func tags(_ name: String!) -> DOMNodeList!
}
