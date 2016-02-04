
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
@available(OSX 10.4, *)
let kCFHTTPAuthenticationUsername: CFString
@available(OSX 10.4, *)
let kCFHTTPAuthenticationPassword: CFString
@available(OSX 10.4, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(OSX 10.2, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(OSX 10.2, *)
func CFHTTPAuthenticationCreateFromResponse(alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(OSX 10.2, *)
func CFHTTPAuthenticationIsValid(auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationAppliesToRequest(auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationRequiresOrderedRequests(auth: CFHTTPAuthentication) -> Bool
@available(OSX 10.2, *)
func CFHTTPMessageApplyCredentials(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.4, *)
func CFHTTPMessageApplyCredentialDictionary(request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyRealm(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyDomains(auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(OSX 10.2, *)
func CFHTTPAuthenticationCopyMethod(auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(OSX 10.3, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(auth: CFHTTPAuthentication) -> Bool
@available(OSX 10.4, *)
func CFHTTPAuthenticationRequiresAccountDomain(auth: CFHTTPAuthentication) -> Bool
