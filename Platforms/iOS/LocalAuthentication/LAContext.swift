
@available(iOS 8.0, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case deviceOwnerAuthenticationWithBiometrics
  @available(iOS 9.0, *)
  case deviceOwnerAuthentication
}
@available(iOS 9.0, *)
let LATouchIDAuthenticationMaximumAllowableReuseDuration: NSTimeInterval
@available(iOS 8.0, *)
class LAContext : NSObject {
  func canEvaluatePolicy(policy: LAPolicy, error: NSErrorPointer) -> Bool
  func evaluatePolicy(policy: LAPolicy, localizedReason: String, reply: (Bool, NSError?) -> Void)
  @available(iOS 9.0, *)
  func invalidate()
  @available(iOS 9.0, *)
  func setCredential(credential: NSData?, type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func isCredentialSet(type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func evaluateAccessControl(accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: (Bool, NSError?) -> Void)
  var localizedFallbackTitle: String?
  @available(iOS, introduced=8.3, deprecated=9.0)
  var maxBiometryFailures: NSNumber?
  @available(iOS 9.0, *)
  var evaluatedPolicyDomainState: NSData? { get }
  @available(iOS 9.0, *)
  var touchIDAuthenticationAllowableReuseDuration: NSTimeInterval
  init()
}
@available(iOS 9.0, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case applicationPassword
}
@available(iOS 9.0, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case createItem
  case useItem
  case createKey
  case useKeySign
}
