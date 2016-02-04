
@available(OSX 10.4, *)
class DOMNodeList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMNode!
}
