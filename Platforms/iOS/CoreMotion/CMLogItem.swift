
@available(iOS 4.0, *)
class CMLogItem : NSObject, NSSecureCoding, NSCopying {
  var timestamp: NSTimeInterval { get }
  @available(iOS 4.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 4.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 4.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
