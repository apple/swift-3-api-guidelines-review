
@available(iOS 6.0, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  convenience init?(UUIDString string: String)
  convenience init(UUIDBytes bytes: UnsafePointer<UInt8>)
  func getUUIDBytes(_ uuid: UnsafeMutablePointer<UInt8>)
  var UUIDString: String { get }
  @available(iOS 6.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
