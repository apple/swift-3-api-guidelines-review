
@available(OSX 10.8, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  convenience init?(UUIDString string: String)
  convenience init(UUIDBytes bytes: UnsafePointer<UInt8>)
  func getUUIDBytes(_ uuid: UnsafeMutablePointer<UInt8>)
  var UUIDString: String { get }
  @available(OSX 10.8, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
