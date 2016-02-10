
enum URLCredentialPersistence : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case forSession
  case permanent
  @available(OSX 10.8, *)
  case synchronizable
}
class URLCredential : Object, SecureCoding, Copying {
  var persistence: URLCredentialPersistence { get }
  init()
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
extension URLCredential {
  init(user: String, password: String, persistence: URLCredentialPersistence)
  var user: String? { get }
  var password: String? { get }
  var hasPassword: Bool { get }
}
extension URLCredential {
  @available(OSX 10.6, *)
  init(identity: SecIdentity, certificates certArray: [AnyObject]?, persistence: URLCredentialPersistence)
  var identity: SecIdentity? { get }
  @available(OSX 10.6, *)
  var certificates: [AnyObject] { get }
}
extension URLCredential {
  @available(OSX 10.6, *)
  init(trust: SecTrust)
  @available(OSX 10.6, *)
  /*not inherited*/ init(forTrust trust: SecTrust)
}
