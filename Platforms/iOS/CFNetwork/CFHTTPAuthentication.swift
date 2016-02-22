
class CFHTTPAuthentication {
}
enum CFStreamErrorHTTPAuthentication : Int32 {
  init?(rawValue rawValue: Int32)
  var rawValue: Int32 { get }
  case typeUnsupported
  case badUserName
  case badPassword
}
@available(iOS 2.0, *)
let kCFHTTPAuthenticationUsername: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationPassword: CFString
@available(iOS 2.0, *)
let kCFHTTPAuthenticationAccountDomain: CFString
@available(iOS 2.0, *)
func CFHTTPAuthenticationGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func CFHTTPAuthenticationCreateFromResponse(_ alloc: CFAllocator?, _ response: CFHTTPMessage) -> Unmanaged<CFHTTPAuthentication>
@available(iOS 2.0, *)
func CFHTTPAuthenticationIsValid(_ auth: CFHTTPAuthentication, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationAppliesToRequest(_ auth: CFHTTPAuthentication, _ request: CFHTTPMessage) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresOrderedRequests(_ auth: CFHTTPAuthentication) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageApplyCredentials(_ request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ username: CFString?, _ password: CFString?, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPMessageApplyCredentialDictionary(_ request: CFHTTPMessage, _ auth: CFHTTPAuthentication, _ dict: CFDictionary, _ error: UnsafeMutablePointer<CFStreamError>) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyRealm(_ auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyDomains(_ auth: CFHTTPAuthentication) -> Unmanaged<CFArray>
@available(iOS 2.0, *)
func CFHTTPAuthenticationCopyMethod(_ auth: CFHTTPAuthentication) -> Unmanaged<CFString>
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresUserNameAndPassword(_ auth: CFHTTPAuthentication) -> Bool
@available(iOS 2.0, *)
func CFHTTPAuthenticationRequiresAccountDomain(_ auth: CFHTTPAuthentication) -> Bool
