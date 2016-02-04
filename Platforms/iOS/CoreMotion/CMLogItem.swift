
@available(iOS 4.0, *)
class CMLogItem : NSObject, NSSecureCoding, NSCopying {
  var timestamp: NSTimeInterval { get }
  init()
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
