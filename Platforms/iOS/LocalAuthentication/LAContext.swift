
@available(iOS 8.0, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case DeviceOwnerAuthenticationWithBiometrics
  @available(iOS 9.0, *)
  case DeviceOwnerAuthentication
}
@available(iOS 9.0, *)
let LATouchIDAuthenticationMaximumAllowableReuseDuration: TimeInterval
@available(iOS 8.0, *)
class LAContext : Object {
  func canEvaluatePolicy(policy: LAPolicy, error: ErrorPointer) -> Bool
  func evaluatePolicy(policy: LAPolicy, localizedReason: String, reply: (Bool, Error?) -> Void)
  @available(iOS 9.0, *)
  func invalidate()
  @available(iOS 9.0, *)
  func setCredential(credential: Data?, type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func isCredentialSet(type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func evaluateAccessControl(accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: (Bool, Error?) -> Void)
  var localizedFallbackTitle: String?
  @available(iOS, introduced=8.3, deprecated=9.0)
  var maxBiometryFailures: Number?
  @available(iOS 9.0, *)
  var evaluatedPolicyDomainState: Data? { get }
  @available(iOS 9.0, *)
  var touchIDAuthenticationAllowableReuseDuration: TimeInterval
  init()
}
@available(iOS 9.0, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ApplicationPassword
}
@available(iOS 9.0, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CreateItem
  case UseItem
  case CreateKey
  case UseKeySign
}
