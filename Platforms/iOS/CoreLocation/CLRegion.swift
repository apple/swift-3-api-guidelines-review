
@available(iOS 7.0, *)
enum CLRegionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inside
  case outside
}
@available(iOS 7.0, *)
enum CLProximity : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case immediate
  case near
  case far
}
@available(iOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 4.0, *)
  var identifier: String { get }
  @available(iOS 7.0, *)
  var notifyOnEntry: Bool
  @available(iOS 7.0, *)
  var notifyOnExit: Bool
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
