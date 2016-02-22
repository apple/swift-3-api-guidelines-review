
@available(OSX 10.4, *)
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  @available(OSX 10.5, *)
  func substringData(_ offset: UInt32, length length: UInt32) -> String!
  func append(_ data: String!)
  @available(OSX 10.5, *)
  func insert(_ offset: UInt32, data data: String!)
  @available(OSX 10.5, *)
  func delete(_ offset: UInt32, length length: UInt32)
  @available(OSX 10.5, *)
  func replace(_ offset: UInt32, length length: UInt32, data data: String!)
}
extension DOMCharacterData {
}
