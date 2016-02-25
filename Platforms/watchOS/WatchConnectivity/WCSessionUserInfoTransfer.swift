
@available(watchOS 2.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
