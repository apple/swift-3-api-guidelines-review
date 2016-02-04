
@available(OSX 10.4, *)
class DOMStyleSheetList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMStyleSheet!
}
