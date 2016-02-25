
@available(iOS 9.0, *)
enum CNContainerType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unassigned
  case local
  case exchange
  case cardDAV
}
@available(iOS 9.0, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  @available(iOS 9.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNContainerIdentifierKey: String
@available(iOS 9.0, *)
let CNContainerNameKey: String
@available(iOS 9.0, *)
let CNContainerTypeKey: String
