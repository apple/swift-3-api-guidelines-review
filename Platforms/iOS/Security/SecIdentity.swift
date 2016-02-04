
@available(iOS 2.0, *)
func SecIdentityGetTypeID() -> CFTypeID
@available(iOS 2.0, *)
func SecIdentityCopyCertificate(identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(iOS 2.0, *)
func SecIdentityCopyPrivateKey(identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus
