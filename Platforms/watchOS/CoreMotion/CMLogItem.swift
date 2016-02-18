
@available(watchOS 2.0, *)
class CMLogItem : Object, SecureCoding, Copying {
  var timestamp: TimeInterval { get }
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
