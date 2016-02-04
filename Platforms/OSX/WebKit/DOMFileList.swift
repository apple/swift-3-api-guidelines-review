
@available(OSX 10.6, *)
class DOMFileList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMFile!
}
