
var kSecTrustSettingsPolicy: String { get }
var kSecTrustSettingsApplication: String { get }
var kSecTrustSettingsPolicyString: String { get }
var kSecTrustSettingsKeyUsage: String { get }
var kSecTrustSettingsAllowedError: String { get }
var kSecTrustSettingsResult: String { get }
struct SecTrustSettingsKeyUsage : OptionSetType {
  init(rawValue: uint32)
  let rawValue: uint32
  static var useSignature: SecTrustSettingsKeyUsage { get }
  static var useEnDecryptData: SecTrustSettingsKeyUsage { get }
  static var useEnDecryptKey: SecTrustSettingsKeyUsage { get }
  static var useSignCert: SecTrustSettingsKeyUsage { get }
  static var useSignRevocation: SecTrustSettingsKeyUsage { get }
  static var useKeyExchange: SecTrustSettingsKeyUsage { get }
  static var useAny: SecTrustSettingsKeyUsage { get }
}
enum SecTrustSettingsResult : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case invalid
  case trustRoot
  case trustAsRoot
  case deny
  case unspecified
}
enum SecTrustSettingsDomain : uint32 {
  init?(rawValue: uint32)
  var rawValue: uint32 { get }
  case user
  case admin
  case system
}
func SecTrustSettingsCopyTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsSetTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettingsDictOrArray: CFTypeRef?) -> OSStatus
func SecTrustSettingsRemoveTrustSettings(certRef: SecCertificate, _ domain: SecTrustSettingsDomain) -> OSStatus
func SecTrustSettingsCopyCertificates(domain: SecTrustSettingsDomain, _ certArray: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsCopyModificationDate(certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ modificationDate: UnsafeMutablePointer<CFDate?>) -> OSStatus
func SecTrustSettingsCreateExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustSettingsImportExternalRepresentation(domain: SecTrustSettingsDomain, _ trustSettings: CFData) -> OSStatus
