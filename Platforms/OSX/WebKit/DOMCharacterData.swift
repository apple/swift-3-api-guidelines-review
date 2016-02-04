
@available(OSX 10.4, *)
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  @available(OSX 10.5, *)
  func substringData(offset: UInt32, length: UInt32) -> String!
  func append(data: String!)
  @available(OSX 10.5, *)
  func insert(offset: UInt32, data: String!)
  @available(OSX 10.5, *)
  func delete(offset: UInt32, length: UInt32)
  @available(OSX 10.5, *)
  func replace(offset: UInt32, length: UInt32, data: String!)
}
extension DOMCharacterData {
}
