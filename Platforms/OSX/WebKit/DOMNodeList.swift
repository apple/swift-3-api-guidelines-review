
@available(OSX 10.4, *)
class DOMNodeList : DOMObject {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMNode!
}
