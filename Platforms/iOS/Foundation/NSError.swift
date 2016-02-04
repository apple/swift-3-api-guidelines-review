
let NSCocoaErrorDomain: String
let NSPOSIXErrorDomain: String
let NSOSStatusErrorDomain: String
let NSMachErrorDomain: String
let NSUnderlyingErrorKey: String
let NSLocalizedDescriptionKey: String
let NSLocalizedFailureReasonErrorKey: String
let NSLocalizedRecoverySuggestionErrorKey: String
let NSLocalizedRecoveryOptionsErrorKey: String
let NSRecoveryAttempterErrorKey: String
let NSHelpAnchorErrorKey: String
let NSStringEncodingErrorKey: String
let NSURLErrorKey: String
let NSFilePathErrorKey: String
class NSError : NSObject, NSCopying, NSSecureCoding {
  init(domain: String, code: Int, userInfo dict: [NSObject : AnyObject]?)
  var domain: String { get }
  var code: Int { get }
  var userInfo: [NSObject : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(iOS 9.0, *)
  class func setUserInfoValueProviderForDomain(errorDomain: String, provider: ((NSError, String) -> AnyObject?)?)
  @available(iOS 9.0, *)
  class func userInfoValueProviderForDomain(errorDomain: String) -> ((NSError, String) -> AnyObject?)?
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSError : ErrorType {
  var _domain: String { get }
  var _code: Int { get }
}
extension NSObject {
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecoveryFromError(error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
}
