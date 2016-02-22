
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
@available(tvOS 7.0, *)
let kSecPropertyTypeTitle: CFString
@available(tvOS 7.0, *)
let kSecPropertyTypeError: CFString
@available(tvOS 7.0, *)
let kSecTrustEvaluationDate: CFString
@available(tvOS 7.0, *)
let kSecTrustExtendedValidation: CFString
@available(tvOS 7.0, *)
let kSecTrustOrganizationName: CFString
@available(tvOS 7.0, *)
let kSecTrustResultValue: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationChecked: CFString
@available(tvOS 7.0, *)
let kSecTrustRevocationValidUntilDate: CFString
@available(tvOS 9.0, *)
let kSecTrustCertificateTransparency: CFString
typealias SecTrustCallback = (SecTrust, SecTrustResultType) -> Void
@available(tvOS 2.0, *)
func SecTrustGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SecTrustCreateWithCertificates(_ certificates: CFTypeRef, _ policies: CFTypeRef?, _ trust: UnsafeMutablePointer<SecTrust?>) -> OSStatus
@available(tvOS 6.0, *)
func SecTrustSetPolicies(_ trust: SecTrust, _ policies: CFTypeRef) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustCopyPolicies(_ trust: SecTrust, _ policies: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustSetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: Bool) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustGetNetworkFetchAllowed(_ trust: SecTrust, _ allowFetch: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificates(_ trust: SecTrust, _ anchorCertificates: CFArray) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetAnchorCertificatesOnly(_ trust: SecTrust, _ anchorCertificatesOnly: Bool) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustCopyCustomAnchorCertificates(_ trust: SecTrust, _ anchors: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustSetVerifyDate(_ trust: SecTrust, _ verifyDate: CFDate) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustGetVerifyTime(_ trust: SecTrust) -> CFAbsoluteTime
@available(tvOS 2.0, *)
func SecTrustEvaluate(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustEvaluateAsync(_ trust: SecTrust, _ queue: dispatch_queue_t?, _ result: SecTrustCallback) -> OSStatus
@available(tvOS 7.0, *)
func SecTrustGetTrustResult(_ trust: SecTrust, _ result: UnsafeMutablePointer<SecTrustResultType>) -> OSStatus
@available(tvOS 2.0, *)
func SecTrustCopyPublicKey(_ trust: SecTrust) -> SecKey?
@available(tvOS 2.0, *)
func SecTrustGetCertificateCount(_ trust: SecTrust) -> CFIndex
@available(tvOS 2.0, *)
func SecTrustGetCertificateAtIndex(_ trust: SecTrust, _ ix: CFIndex) -> SecCertificate?
@available(tvOS 4.0, *)
func SecTrustCopyExceptions(_ trust: SecTrust) -> CFData
@available(tvOS 4.0, *)
func SecTrustSetExceptions(_ trust: SecTrust, _ exceptions: CFData) -> Bool
@available(tvOS 2.0, *)
func SecTrustCopyProperties(_ trust: SecTrust) -> CFArray?
@available(tvOS 7.0, *)
func SecTrustCopyResult(_ trust: SecTrust) -> CFDictionary?
@available(tvOS 7.0, *)
func SecTrustSetOCSPResponse(_ trust: SecTrust, _ responseData: CFTypeRef?) -> OSStatus
