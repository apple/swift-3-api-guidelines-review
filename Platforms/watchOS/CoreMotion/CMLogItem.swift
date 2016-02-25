
@available(watchOS 2.0, *)
class CMLogItem : NSObject, NSSecureCoding, NSCopying {
  var timestamp: NSTimeInterval { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
