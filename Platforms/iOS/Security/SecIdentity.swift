
@available(iOS 2.0, *)
func SecIdentityGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func SecIdentityCopyCertificate(_ identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(iOS 2.0, *)
func SecIdentityCopyPrivateKey(_ identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus
