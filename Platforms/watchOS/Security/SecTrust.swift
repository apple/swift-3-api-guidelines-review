
typealias SecTrustResultType = UInt32
var kSecTrustResultInvalid: Int { get }
var kSecTrustResultProceed: Int { get }
@available(*, deprecated)
var kSecTrustResultConfirm: Int { get }
var kSecTrustResultDeny: Int { get }
var kSecTrustResultUnspecified: Int { get }
var kSecTrustResultRecoverableTrustFailure: Int { get }
var kSecTrustResultFatalTrustFailure: Int { get }
var kSecTrustResultOtherError: Int { get }
class SecTrust {
}
@available(*, deprecated, renamed="SecTrust")
typealias SecTrustRef = SecTrust
@available(watchOS 2.0, *)
let kSecPropertyTypeTitle: CFString
@available(watchOS 2.0, *)
let kSecPropertyTypeError: CFString
@available(watchOS 2.0, *)
let kSecTrustEvaluationDate: CFString
@available(watchOS 2.0, *)
let kSecTrustExtendedValidation: CFString
@available(watchOS 2.0, *)
let kSecTrustOrganizationName: CFString
@available(watchOS 2.0, *)
let kSecTrustResultValue: CFString
@available(watchOS 2.0, *)
let kSecTrustRevocationChecked: CFString
@available(watchOS 2.0, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(watchOS 2.0, *)
let kSecTrustCertificateTransparency: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(watchOS 2.0, *)
func SecTrustGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func SecTrustCreateWithCertificates(certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetPolicies(trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustCopyPolicies(trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetNetworkFetchAllowed(trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetAnchorCertificates(trust: SecTrust, _ anchorCertificates: CFArray) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetAnchorCertificatesOnly(trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustCopyCustomAnchorCertificates(trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustSetVerifyDate(trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetVerifyTime(trust: SecTrust) -> CFAbsoluteTime
@available(watchOS 2.0, *)
func SecTrustEvaluate(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustEvaluateAsync(trust: SecTrust, _ queue: dispatch_queue_t?, _ result: SecTrustCallback) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustGetTrustResult(trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(watchOS 2.0, *)
func SecTrustCopyPublicKey(trust: SecTrust) -> SecKey?
@available(watchOS 2.0, *)
func SecTrustGetCertificateCount(trust: SecTrust) -> CFIndex
@available(watchOS 2.0, *)
func SecTrustGetCertificateAtIndex(trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(watchOS 2.0, *)
func SecTrustCopyExceptions(trust: SecTrust) -> CFData
@available(watchOS 2.0, *)
func SecTrustSetExceptions(trust: SecTrust, _ exceptions: CFData) -> Bool
@available(watchOS 2.0, *)
func SecTrustCopyProperties(trust: SecTrust) -> CFArray?
@available(watchOS 2.0, *)
func SecTrustCopyResult(trust: SecTrust) -> CFDictionary?
@available(watchOS 2.0, *)
func SecTrustSetOCSPResponse(trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
