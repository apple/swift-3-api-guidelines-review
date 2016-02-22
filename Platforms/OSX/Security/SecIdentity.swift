
@available(OSX 10.3, *)
func SecIdentityGetTypeID() -> CFTypeID
@available(OSX 10.5, *)
func SecIdentityCreateWithCertificate(_ keychainOrArray: CFTypeRef?, _ certificateRef: SecCertificate, _ identityRef: UnsafeMutablePointer<SecIdentity?>) -> OSStatus
@available(OSX 10.3, *)
func SecIdentityCopyCertificate(_ identityRef: SecIdentity, _ certificateRef: UnsafeMutablePointer<SecCertificate?>) -> OSStatus
@available(OSX 10.3, *)
func SecIdentityCopyPrivateKey(_ identityRef: SecIdentity, _ privateKeyRef: UnsafeMutablePointer<SecKey?>) -> OSStatus
@available(OSX 10.7, *)
func SecIdentityCopyPreferred(_ name: CFString, _ keyUsage: CFArray?, _ validIssuers: CFArray?) -> SecIdentity?
@available(OSX 10.7, *)
func SecIdentitySetPreferred(_ identity: SecIdentity?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus
@available(OSX 10.5, *)
func SecIdentityCopySystemIdentity(_ domain: CFString, _ idRef: UnsafeMutablePointer<SecIdentity?>, _ actualDomain: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(OSX 10.5, *)
func SecIdentitySetSystemIdentity(_ domain: CFString, _ idRef: SecIdentity?) -> OSStatus
@available(OSX 10.5, *)
let kSecIdentityDomainDefault: CFString
@available(OSX 10.5, *)
let kSecIdentityDomainKerberosKDC: CFString
