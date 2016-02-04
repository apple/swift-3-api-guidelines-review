
@available(OSX 10.8, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  init()
  convenience init?(UUIDString string: String)
  convenience init(UUIDBytes bytes: UnsafePointer<UInt8>)
  func getUUIDBytes(uuid: UnsafeMutablePointer<UInt8>)
  var UUIDString: String { get }
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
