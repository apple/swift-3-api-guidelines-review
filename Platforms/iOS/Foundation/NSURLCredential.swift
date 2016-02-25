
enum NSURLCredentialPersistence : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case ForSession
  case Permanent
  @available(iOS 6.0, *)
  case Synchronizable
}
class NSURLCredential : NSObject, NSSecureCoding, NSCopying {
  var persistence: NSURLCredentialPersistence { get }
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
extension NSURLCredential {
  init(user user: String, password password: String, persistence persistence: NSURLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension NSURLCredential {
  @available(iOS 3.0, *)
  init(identity identity: SecIdentity, certificates certArray: [AnyObject]?, persistence persistence: NSURLCredentialPersistence)
  var identity: SecIdentity? { get }
  @available(iOS 3.0, *)
  var certificates: [AnyObject] { get }
}
extension NSURLCredential {
  @available(iOS 3.0, *)
  init(trust trust: SecTrust)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forTrust trust: SecTrust)
}
