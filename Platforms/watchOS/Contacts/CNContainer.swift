
@available(watchOS 2.0, *)
enum CNContainerType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(watchOS 2.0, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNContainerIdentifierKey: String
@available(watchOS 2.0, *)
let CNContainerNameKey: String
@available(watchOS 2.0, *)
let CNContainerTypeKey: String
