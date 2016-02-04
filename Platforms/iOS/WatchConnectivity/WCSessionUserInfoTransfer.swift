
@available(iOS 9.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var currentComplicationInfo: Bool { get }
  var userInfo: [String : AnyObject] { get }
  var transferring: Bool { get }
  func cancel()
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
