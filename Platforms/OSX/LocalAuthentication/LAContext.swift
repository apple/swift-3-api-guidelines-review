
@available(OSX 10.10, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(OSX 10.11, *)
  case deviceOwnerAuthentication
}
@available(OSX 10.10, *)
class LAContext : Object {
  func canEvaluatePolicy(policy: LAPolicy, error: ErrorPointer) -> Bool
  func evaluatePolicy(policy: LAPolicy, localizedReason: String, reply: (Bool, Error?) -> Void)
  @available(OSX 10.11, *)
  func invalidate()
  @available(OSX 10.11, *)
  func setCredential(credential: Data?, type: LACredentialType) -> Bool
  @available(OSX 10.11, *)
  func isCredentialSet(type: LACredentialType) -> Bool
  @available(OSX 10.11, *)
  func evaluateAccessControl(accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: (Bool, Error?) -> Void)
  var localizedFallbackTitle: String?
  @available(OSX 10.11, *)
  var evaluatedPolicyDomainState: Data? { get }
  init()
}
@available(OSX 10.11, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case applicationPassword
}
@available(OSX 10.11, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case createItem
  case useItem
  case createKey
  case useKeySign
}
