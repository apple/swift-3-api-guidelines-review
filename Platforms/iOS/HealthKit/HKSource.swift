
@available(iOS 8.0, *)
class HKSource : NSObject, NSSecureCoding, NSCopying {
  var name: String { get }
  var bundleIdentifier: String { get }
  class func defaultSource() -> HKSource
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
