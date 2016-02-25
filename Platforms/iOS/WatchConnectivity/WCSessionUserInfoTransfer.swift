
@available(iOS 9.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var isCurrentComplicationInfo: Bool { get }
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
