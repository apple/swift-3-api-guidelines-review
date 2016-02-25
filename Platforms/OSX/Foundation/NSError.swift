
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
  init(domain domain: String, code code: Int, userInfo dict: [NSObject : AnyObject]? = [:])
  var domain: String { get }
  var code: Int { get }
  var userInfo: [NSObject : AnyObject] { get }
  var localizedDescription: String { get }
  var localizedFailureReason: String? { get }
  var localizedRecoverySuggestion: String? { get }
  var localizedRecoveryOptions: [String]? { get }
  var recoveryAttempter: AnyObject? { get }
  var helpAnchor: String? { get }
  @available(OSX 10.11, *)
  class func setUserInfoValueProviderForDomain(_ errorDomain: String, provider provider: ((NSError, String) -> AnyObject?)? = nil)
  @available(OSX 10.11, *)
  class func userInfoValueProvider(forDomain errorDomain: String) -> ((NSError, String) -> AnyObject?)?
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

extension NSError : ErrorType {
}
extension NSObject {
  class func attemptRecovery(fromError error: NSError, optionIndex recoveryOptionIndex: Int, delegate delegate: AnyObject?, didRecover didRecoverSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  func attemptRecovery(fromError error: NSError, optionIndex recoveryOptionIndex: Int, delegate delegate: AnyObject?, didRecover didRecoverSelector: Selector, contextInfo contextInfo: UnsafeMutablePointer<Void>)
  class func attemptRecovery(fromError error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
  func attemptRecovery(fromError error: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
}
