
@available(watchOS 2.0, *)
enum CNContainerType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unassigned
  case Local
  case Exchange
  case CardDAV
}
@available(watchOS 2.0, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNContainerIdentifierKey: String
@available(watchOS 2.0, *)
let CNContainerNameKey: String
@available(watchOS 2.0, *)
let CNContainerTypeKey: String
