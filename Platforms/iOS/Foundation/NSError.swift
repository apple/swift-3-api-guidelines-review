
let cocoaErrorDomain: String
let posixErrorDomain: String
let osStatusErrorDomain: String
let machErrorDomain: String
let underlyingErrorKey: String
let localizedDescriptionKey: String
let localizedFailureReasonErrorKey: String
let localizedRecoverySuggestionErrorKey: String
let localizedRecoveryOptionsErrorKey: String
let recoveryAttempterErrorKey: String
let helpAnchorErrorKey: String
let stringEncodingErrorKey: String
let urlErrorKey: String
let filePathErrorKey: String
class Error : Object, Copying, SecureCoding {
  init(domain: String, code: Int, userInfo dict: [Object : AnyObject]? = [:])
  var domain: String { get }
  var code: Int { get }
  var userInfo: [Object : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(iOS 9.0, *)
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((Error, String) -> AnyObject?)? = nil)
  @available(iOS 9.0, *)
  class func userInfoValueProvider(forDomain errorDomain: String) -> ((Error, String) -> AnyObject?)?
  convenience init()
  func copy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension Error : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension Object {
  class func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecover didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecover didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecovery(fromError error: Error, optionIndex recoveryOptionIndex: Int) -> Bool
}
