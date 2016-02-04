
class CMSEncoder {
}
@available(OSX 10.5, *)
func CMSEncoderGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func CMSEncoderCreate(cmsEncoderOut: UnsafeMutablePointer<CMSEncoder?>) -> OSStatus
let kCMSEncoderDigestAlgorithmSHA1: CFString
let kCMSEncoderDigestAlgorithmSHA256: CFString
@available(OSX 10.11, *)
func CMSEncoderSetSignerAlgorithm(cmsEncoder: CMSEncoder, _ digestAlgorithm: CFString) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddSigners(cmsEncoder: CMSEncoder, _ signerOrArray: CFTypeRef) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopySigners(cmsEncoder: CMSEncoder, _ signersOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddRecipients(cmsEncoder: CMSEncoder, _ recipientOrArray: CFTypeRef) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyRecipients(cmsEncoder: CMSEncoder, _ recipientsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderSetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContent: Bool) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderGetHasDetachedContent(cmsEncoder: CMSEncoder, _ detachedContentOut: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderSetEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentType: UnsafePointer<CSSM_OID>) -> OSStatus
@available(OSX 10.7, *)
func CMSEncoderSetEncapsulatedContentTypeOID(cmsEncoder: CMSEncoder, _ eContentTypeOID: CFTypeRef) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyEncapsulatedContentType(cmsEncoder: CMSEncoder, _ eContentTypeOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderAddSupportingCerts(cmsEncoder: CMSEncoder, _ certOrArray: CFTypeRef) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopySupportingCerts(cmsEncoder: CMSEncoder, _ certsOut: UnsafeMutablePointer<CFArray?>) -> OSStatus
enum CMSSignedAttributes : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case AttrNone
  case AttrSmimeCapabilities
  case AttrSmimeEncryptionKeyPrefs
  case AttrSmimeMSEncryptionKeyPrefs
  case AttrSigningTime
}
@available(OSX 10.5, *)
func CMSEncoderAddSignedAttributes(cmsEncoder: CMSEncoder, _ signedAttributes: CMSSignedAttributes) -> OSStatus
enum CMSCertificateChainMode : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case SignerOnly
  case Chain
  case ChainWithRoot
}
@available(OSX 10.5, *)
func CMSEncoderSetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainMode: CMSCertificateChainMode) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderGetCertificateChainMode(cmsEncoder: CMSEncoder, _ chainModeOut: UnsafeMutablePointer<CMSCertificateChainMode>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderUpdateContent(cmsEncoder: CMSEncoder, _ content: UnsafePointer<Void>, _ contentLen: Int) -> OSStatus
@available(OSX 10.5, *)
func CMSEncoderCopyEncodedContent(cmsEncoder: CMSEncoder, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.5, *)
func CMSEncode(signers: CFTypeRef?, _ recipients: CFTypeRef?, _ eContentType: UnsafePointer<CSSM_OID>, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.7, *)
func CMSEncodeContent(signers: CFTypeRef?, _ recipients: CFTypeRef?, _ eContentTypeOID: CFTypeRef?, _ detachedContent: Bool, _ signedAttributes: CMSSignedAttributes, _ content: UnsafePointer<Void>, _ contentLen: Int, _ encodedContentOut: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.8, *)
func CMSEncoderCopySignerTimestamp(cmsEncoder: CMSEncoder, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
@available(OSX 10.10, *)
func CMSEncoderCopySignerTimestampWithPolicy(cmsEncoder: CMSEncoder, _ timeStampPolicy: CFTypeRef?, _ signerIndex: Int, _ timestamp: UnsafeMutablePointer<CFAbsoluteTime>) -> OSStatus
