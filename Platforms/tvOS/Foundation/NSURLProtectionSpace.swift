
@available(tvOS 2.0, *)
let urlProtectionSpaceHTTP: String
@available(tvOS 2.0, *)
let urlProtectionSpaceHTTPS: String
@available(tvOS 2.0, *)
let urlProtectionSpaceFTP: String
let urlProtectionSpaceHTTPProxy: String
let urlProtectionSpaceHTTPSProxy: String
let urlProtectionSpaceFTPProxy: String
let urlProtectionSpaceSOCKSProxy: String
let urlAuthenticationMethodDefault: String
let urlAuthenticationMethodHTTPBasic: String
let urlAuthenticationMethodHTTPDigest: String
let urlAuthenticationMethodHTMLForm: String
@available(tvOS 2.0, *)
let urlAuthenticationMethodNTLM: String
@available(tvOS 2.0, *)
let urlAuthenticationMethodNegotiate: String
@available(tvOS 3.0, *)
let urlAuthenticationMethodClientCertificate: String
@available(tvOS 3.0, *)
let urlAuthenticationMethodServerTrust: String
class URLProtectionSpace : Object, SecureCoding, Copying {
  init(host: String, port: Int, protocol: String?, realm: String?, authenticationMethod: String?)
  init(proxyHost host: String, port: Int, type: String?, realm: String?, authenticationMethod: String?)
  var realm: String? { get }
  var receivesCredentialSecurely: Bool { get }
  var host: String { get }
  var port: Int { get }
  var proxyType: String? { get }
  var `protocol`: String? { get }
  var authenticationMethod: String { get }
  func isProxy() -> Bool
  init()
  class func supportsSecureCoding() -> Bool
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
extension URLProtectionSpace {
  @available(tvOS 3.0, *)
  var distinguishedNames: [Data]? { get }
}
extension URLProtectionSpace {
  @available(tvOS 3.0, *)
  var serverTrust: SecTrust? { get }
}
