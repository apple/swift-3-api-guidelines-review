
@available(OSX 10.4, *)
class DOMHTMLOptionsCollection : DOMObject {
  @available(OSX 10.5, *)
  var selectedIndex: Int32
  var length: UInt32
  func namedItem(_ name: String!) -> DOMNode!
  @available(OSX 10.5, *)
  func add(_ option: DOMHTMLOptionElement!, index index: UInt32)
  @available(OSX 10.6, *)
  func remove(_ index: UInt32)
  func item(_ index: UInt32) -> DOMNode!
}
