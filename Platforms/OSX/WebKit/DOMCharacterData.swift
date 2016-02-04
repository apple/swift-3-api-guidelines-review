
@available(OSX 10.4, *)
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  @available(OSX 10.5, *)
  func substringData(offset: UInt32, length: UInt32) -> String!
  func appendData(data: String!)
  @available(OSX 10.5, *)
  func insertData(offset: UInt32, data: String!)
  @available(OSX 10.5, *)
  func deleteData(offset: UInt32, length: UInt32)
  @available(OSX 10.5, *)
  func replaceData(offset: UInt32, length: UInt32, data: String!)
}
extension DOMCharacterData {
}
