
class CFHTTPAuthentication {
}
@available(*, deprecated, renamed="CFHTTPAuthentication")
typealias CFHTTPAuthenticationRef = CFHTTPAuthentication
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case TypeUnsupported
  case BadUserName
  case BadPassword
}
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationUsername: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationPassword: CFString
@available(tvOS 2.0, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(tvOS 2.0, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func CFHTTPAuthenticationCreateFromResponse(alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(tvOS 2.0, *)
func CFHTTPAuthenticationIsValid(auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(tvOS 2.0, *)
func CFHTTPAuthenticationAppliesToRequest(auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(tvOS 2.0, *)
func CFHTTPAuthenticationRequiresOrderedRequests(auth: CFHTTPAuthentication) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageApplyCredentials(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(tvOS 2.0, *)
func CFHTTPMessageApplyCredentialDictionary(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(tvOS 2.0, *)
func CFHTTPAuthenticationCopyRealm(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(tvOS 2.0, *)
func CFHTTPAuthenticationCopyDomains(auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(tvOS 2.0, *)
func CFHTTPAuthenticationCopyMethod(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(tvOS 2.0, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(auth: CFHTTPAuthentication) -> Bool
@available(tvOS 2.0, *)
func CFHTTPAuthenticationRequiresAccountDomain(auth: CFHTTPAuthentication) -> Bool
