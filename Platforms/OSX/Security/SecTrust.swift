
typealias SecTrustResultType = UInt32
var kSecTrustResultInvalid: Int { get }
var kSecTrustResultProceed: Int { get }
var kSecTrustResultDeny: Int { get }
var kSecTrustResultUnspecified: Int { get }
var kSecTrustResultRecoverableTrustFailure: Int { get }
var kSecTrustResultFatalTrustFailure: Int { get }
var kSecTrustResultOtherError: Int { get }
class SecTrust {
}
@available(*, deprecated, renamed="SecTrust")
typealias SecTrustRef = SecTrust
@available(OSX 10.7, *)
let kSecPropertyTypeTitle: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeError: CFString
@available(OSX 10.9, *)
let kSecTrustEvaluationDate: CFString
@available(OSX 10.9, *)
let kSecTrustExtendedValidation: CFString
@available(OSX 10.9, *)
let kSecTrustOrganizationName: CFString
@available(OSX 10.9, *)
let kSecTrustResultValue: CFString
@available(OSX 10.9, *)
let kSecTrustRevocationChecked: CFString
@available(OSX 10.9, *)
let kSecTrustRevocationValidUntilDate: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(OSX 10.3, *)
func SecTrustGetTypeID() -> CFTypeID
@available(OSX 10.3, *)
func SecTrustCreateWithCertificates(certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(OSX 10.3, *)
func SecTrustSetPolicies(trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(OSX 10.3, *)
func SecTrustCopyPolicies(trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.9, *)
func SecTrustSetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(OSX 10.9, *)
func SecTrustGetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.3, *)
func SecTrustSetAnchorCertificates(trust: SecTrust, _ anchorCertificates: CFArray) -> OSStatus
@available(OSX 10.6, *)
func SecTrustSetAnchorCertificatesOnly(trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(OSX 10.5, *)
func SecTrustCopyCustomAnchorCertificates(trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.3, *)
func SecTrustSetVerifyDate(trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(OSX 10.6, *)
func SecTrustGetVerifyTime(trust: SecTrust) -> CFAbsoluteTime
@available(OSX 10.3, *)
func SecTrustEvaluate(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(OSX 10.7, *)
func SecTrustEvaluateAsync(trust: SecTrust, _ queue: dispatch_queue_t?, _ result: SecTrustCallback) -> OSStatus
@available(OSX 10.7, *)
func SecTrustGetTrustResult(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(OSX 10.7, *)
func SecTrustCopyPublicKey(trust: SecTrust) -> SecKey?
@available(OSX 10.7, *)
func SecTrustGetCertificateCount(trust: SecTrust) -> CFIndex
@available(OSX 10.7, *)
func SecTrustGetCertificateAtIndex(trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(OSX 10.9, *)
func SecTrustCopyExceptions(trust: SecTrust) -> CFData
@available(OSX 10.9, *)
func SecTrustSetExceptions(trust: SecTrust, _ exceptions: CFData) -> Bool
@available(OSX 10.7, *)
func SecTrustCopyProperties(trust: SecTrust) -> CFArray?
@available(OSX 10.9, *)
func SecTrustCopyResult(trust: SecTrust) -> CFDictionary?
@available(OSX 10.9, *)
func SecTrustSetOCSPResponse(trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
struct SecTrustOptionFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var AllowExpired: SecTrustOptionFlags { get }
  static var LeafIsCA: SecTrustOptionFlags { get }
  static var FetchIssuerFromNet: SecTrustOptionFlags { get }
  static var AllowExpiredRoot: SecTrustOptionFlags { get }
  static var RequireRevPerCert: SecTrustOptionFlags { get }
  static var UseTrustSettings: SecTrustOptionFlags { get }
  static var ImplicitAnchors: SecTrustOptionFlags { get }
}
@available(OSX 10.7, *)
func SecTrustSetOptions(trustRef: SecTrust, _ options: SecTrustOptionFlags) -> OSStatus
@available(OSX 10.3, *)
func SecTrustSetKeychains(trust: SecTrust, _ keychainOrArray: CFTypeRef?) -> OSStatus
@available(OSX 10.3, *)
func SecTrustCopyAnchorCertificates(anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
