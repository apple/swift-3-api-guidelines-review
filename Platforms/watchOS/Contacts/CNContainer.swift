
@available(watchOS 2.0, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(watchOS 2.0, *)
class CNContainer : Object, Copying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let CNContainerIdentifierKey: String
@available(watchOS 2.0, *)
let CNContainerNameKey: String
@available(watchOS 2.0, *)
let CNContainerTypeKey: String
