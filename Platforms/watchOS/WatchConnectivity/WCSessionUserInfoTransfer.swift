
@available(watchOS 2.0, *)
class WCSessionUserInfoTransfer : Object, SecureCoding {
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
