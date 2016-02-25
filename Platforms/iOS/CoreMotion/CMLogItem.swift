
@available(iOS 4.0, *)
class CMLogItem : NSObject, NSSecureCoding, NSCopying {
  var timestamp: NSTimeInterval { get }
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
