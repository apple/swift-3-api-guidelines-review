
@available(iOS 6.0, *)
class NSUUID : NSObject, NSCopying, NSSecureCoding {
  convenience init?(uuidString string: String)
  convenience init(uuidBytes bytes: UnsafePointer<UInt8>)
  func getBytes(_ uuid: UnsafeMutablePointer<UInt8>)
  var uuidString: String { get }
  @available(iOS 6.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 6.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 6.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
