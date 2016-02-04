
@available(watchOS 2.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var userInfo: [String : AnyObject] { get }
  var transferring: Bool { get }
  func cancel()
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
