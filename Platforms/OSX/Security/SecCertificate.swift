
var kSecSubjectItemAttr: Int { get }
var kSecIssuerItemAttr: Int { get }
var kSecSerialNumberItemAttr: Int { get }
var kSecPublicKeyHashItemAttr: Int { get }
var kSecSubjectKeyIdentifierItemAttr: Int { get }
var kSecCertTypeItemAttr: Int { get }
var kSecCertEncodingItemAttr: Int { get }
@available(OSX 10.3, *)
func SecCertificateGetTypeID() -> CFTypeID
@available(OSX 10.6, *)
func SecCertificateCreateWithData(allocator: CFAllocator?, _ data: CFData) -> SecCertificate?
@available(OSX 10.3, *)
func SecCertificateAddToKeychain(certificate: SecCertificate, _ keychain: SecKeychain?) -> OSStatus
@available(OSX 10.6, *)
func SecCertificateCopyData(certificate: SecCertificate) -> CFData
@available(OSX 10.3, *)
func SecCertificateCopyPublicKey(certificate: SecCertificate, _ key: UnsafeMutablePointer<SecKey?>) -> OSStatus
@available(OSX 10.5, *)
func SecCertificateCopyCommonName(certificate: SecCertificate, _ commonName: UnsafeMutablePointer<CFString?>) -> OSStatus
@available(OSX 10.6, *)
func SecCertificateCopySubjectSummary(certificate: SecCertificate) -> CFString
@available(OSX 10.5, *)
func SecCertificateCopyEmailAddresses(certificate: SecCertificate, _ emailAddresses: UnsafeMutablePointer<CFArray?>) -> OSStatus
@available(OSX 10.7, *)
func SecCertificateCopyPreferred(name: CFString, _ keyUsage: CFArray?) -> SecCertificate?
@available(OSX 10.5, *)
func SecCertificateSetPreference(certificate: SecCertificate, _ name: CFString, _ keyUsage: uint32, _ date: CFDate?) -> OSStatus
@available(OSX 10.7, *)
func SecCertificateSetPreferred(certificate: SecCertificate?, _ name: CFString, _ keyUsage: CFArray?) -> OSStatus
@available(OSX 10.7, *)
let kSecPropertyKeyType: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyLabel: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyLocalizedLabel: CFString
@available(OSX 10.7, *)
let kSecPropertyKeyValue: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeWarning: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeSuccess: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeSection: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeData: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeString: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeURL: CFString
@available(OSX 10.7, *)
let kSecPropertyTypeDate: CFString
@available(OSX 10.7, *)
func SecCertificateCopyValues(certificate: SecCertificate, _ keys: CFArray?, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary?
@available(OSX 10.7, *)
let kSecCertificateUsageSigning: CFString
@available(OSX 10.7, *)
let kSecCertificateUsageSigningAndEncrypting: CFString
@available(OSX 10.7, *)
let kSecCertificateUsageDeriveAndSign: CFString
@available(OSX 10.7, *)
func SecCertificateCopyLongDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?
@available(OSX 10.7, *)
func SecCertificateCopyShortDescription(alloc: CFAllocator?, _ certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFString?
@available(OSX 10.7, *)
func SecCertificateCopySerialNumber(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
@available(OSX 10.7, *)
func SecCertificateCopyNormalizedIssuerContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
@available(OSX 10.7, *)
func SecCertificateCopyNormalizedSubjectContent(certificate: SecCertificate, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
