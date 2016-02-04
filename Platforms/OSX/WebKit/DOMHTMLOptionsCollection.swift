
@available(OSX 10.4, *)
class DOMHTMLOptionsCollection : DOMObject {
  @available(OSX 10.5, *)
  var selectedIndex: Int32
  var length: UInt32
  func namedItem(name: String!) -> DOMNode!
  @available(OSX 10.5, *)
  func add(option: DOMHTMLOptionElement!, index: UInt32)
  @available(OSX 10.6, *)
  func remove(index: UInt32)
  func item(index: UInt32) -> DOMNode!
}
