
@available(OSX 10.8, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(_ uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.8, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.8, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
