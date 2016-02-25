
@available(iOS 9.0, *)
enum CNContainerType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unassigned
  case Local
  case Exchange
  case CardDAV
}
@available(iOS 9.0, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNContainerIdentifierKey: String
@available(iOS 9.0, *)
let CNContainerNameKey: String
@available(iOS 9.0, *)
let CNContainerTypeKey: String
