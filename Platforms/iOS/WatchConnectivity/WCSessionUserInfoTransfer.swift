
@available(iOS 9.0, *)
class WCSessionUserInfoTransfer : Object, SecureCoding {
  var isCurrentComplicationInfo: Bool { get }
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
