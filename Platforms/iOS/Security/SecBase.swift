
class SecCertificate {
}
@available(*, deprecated, renamed="SecCertificate")
typealias SecCertificateRef = SecCertificate
class SecIdentity {
}
@available(*, deprecated, renamed="SecIdentity")
typealias SecIdentityRef = SecIdentity
@available(*, deprecated, renamed="SecKey")
typealias SecKeyRef = SecKey
class SecKey {
}
@available(*, deprecated, renamed="SecPolicy")
typealias SecPolicyRef = SecPolicy
class SecPolicy {
}
class SecAccessControl {
}
@available(*, deprecated, renamed="SecAccessControl")
typealias SecAccessControlRef = SecAccessControl
var errSecSuccess: OSStatus { get }
var errSecUnimplemented: OSStatus { get }
var errSecIO: OSStatus { get }
var errSecOpWr: OSStatus { get }
var errSecParam: OSStatus { get }
var errSecAllocate: OSStatus { get }
var errSecUserCanceled: OSStatus { get }
var errSecBadReq: OSStatus { get }
var errSecInternalComponent: OSStatus { get }
var errSecNotAvailable: OSStatus { get }
var errSecDuplicateItem: OSStatus { get }
var errSecItemNotFound: OSStatus { get }
var errSecInteractionNotAllowed: OSStatus { get }
var errSecDecode: OSStatus { get }
var errSecAuthFailed: OSStatus { get }
