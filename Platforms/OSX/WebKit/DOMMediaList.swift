
@available(OSX 10.4, *)
class DOMMediaList : DOMObject {
  var mediaText: String!
  var length: UInt32 { get }
  func item(index: UInt32) -> String!
  func deleteMedium(oldMedium: String!)
  func appendMedium(newMedium: String!)
}
