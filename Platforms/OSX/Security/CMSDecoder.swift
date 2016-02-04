
class CMSDecoder {
}
func CMSDecoderGetTypeID() -> CFTypeID
enum CMSSignerStatus : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case Unsigned
  case Valid
  case NeedsDetachedContent
  case InvalidSignature
  case InvalidCert
  case InvalidIndex
}
@available(OSX 10.5, *)
func CMSDecoderCreate(cmsDecoderOut: UnsafeMutablePointer<CMSDecoder?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderUpdateMessage(cmsDecoder: CMSDecoder, _ msgBytes: UnsafePointer<Void>, _ msgBytesLen: Int) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderFinalizeMessage(cmsDecoder: CMSDecoder) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderSetDetachedContent(cmsDecoder: CMSDecoder, _ detachedContent: CFData) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyDetachedContent(cmsDecoder: CMSDecoder, _ detachedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderSetSearchKeychain(cmsDecoder: CMSDecoder, _ keychainOrArray: CFTypeRef) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderGetNumSigners(cmsDecoder: CMSDecoder, _ numSignersOut: UnsafeMutablePointer<Int>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerStatus(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ policyOrArray: CFTypeRef, _ evaluateSecTrust: Bool, _ signerStatusOut: UnsafeMutablePointer<CMSSignerStatus>, _ secTrustOut: UnsafeMutablePointer<SecTrust?>, _ certVerifyResultCodeOut: UnsafeMutablePointer<OSStatus>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerEmailAddress(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerEmailAddressOut: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopySignerCert(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signerCertOut: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderIsContentEncrypted(cmsDecoder: CMSDecoder, _ isEncryptedOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyEncapsulatedContentType(cmsDecoder: CMSDecoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyAllCerts(cmsDecoder: CMSDecoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSDecoderCopyContent(cmsDecoder: CMSDecoder, _ contentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerSigningTime(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ signingTime: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerTimestamp(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.10, *)
func CMSDecoderCopySignerTimestampWithPolicy(cmsDecoder: CMSDecoder, _ timeStampPolicy: CFTypeRef?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.8, *)
func CMSDecoderCopySignerTimestampCertificates(cmsDecoder: CMSDecoder, _ signerIndex: Int, _ certificateRefs: UnsafeMutablePointer<CFArray?>) -> OSStatus
