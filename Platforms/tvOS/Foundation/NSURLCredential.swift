
enum URLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case forSession
  case permanent
  @available(tvOS 6.0, *)
  case synchronizable
}
class URLCredential : Object, SecureCoding, Copying {
  var persistence: URLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(with zone: Zone = nil) -> AnyObject
}
extension URLCredential {
  init(user: String, password: String, persistence: URLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension URLCredential {
  @available(tvOS 3.0, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: URLCredentialPersistence)
  var identity: SecIdentity? { get }
  @available(tvOS 3.0, *)
  var certificates: [AnyObject] { get }
}
extension URLCredential {
  @available(tvOS 3.0, *)
  init(trust: SecTrust)
  @available(tvOS 3.0, *)
  /*not inherited*/ init(for trust: SecTrust)
}
