
var kSecTrustSettingsPolicy: String { get }
var kSecTrustSettingsApplication: String { get }
var kSecTrustSettingsPolicyString: String { get }
var kSecTrustSettingsKeyUsage: String { get }
var kSecTrustSettingsAllowedError: String { get }
var kSecTrustSettingsResult: String { get }
struct SecTrustSettingsKeyUsage : OptionSetType {
  init(rawValue rawValue: uint32)
  let rawValue: uint32
  static var UseSignature: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptData: SecTrustSettingsKeyUsage { get }
  static var UseEnDecryptKey: SecTrustSettingsKeyUsage { get }
  static var UseSignCert: SecTrustSettingsKeyUsage { get }
  static var UseSignRevocation: SecTrustSettingsKeyUsage { get }
  static var UseKeyExchange: SecTrustSettingsKeyUsage { get }
  static var UseAny: SecTrustSettingsKeyUsage { get }
}
enum SecTrustSettingsResult : uint32 {
  init?(rawValue rawValue: uint32)
  var rawValue: uint32 { get }
  case Invalid
  case TrustRoot
  case TrustAsRoot
  case Deny
  case Unspecified
}
enum SecTrustSettingsDomain : uint32 {
  init?(rawValue rawValue: uint32)
  var rawValue: uint32 { get }
  case User
  case Admin
  case System
}
func SecTrustSettingsCopyTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsSetTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ trustSettingsDictOrArray: CFTypeRef?) -> OSStatus
func SecTrustSettingsRemoveTrustSettings(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain) -> OSStatus
func SecTrustSettingsCopyCertificates(_ domain: SecTrustSettingsDomain, _ certArray: UnsafeMutablePointer<CFArray?>) -> OSStatus
func SecTrustSettingsCopyModificationDate(_ certRef: SecCertificate, _ domain: SecTrustSettingsDomain, _ modificationDate: UnsafeMutablePointer<CFDate?>) -> OSStatus
func SecTrustSettingsCreateExternalRepresentation(_ domain: SecTrustSettingsDomain, _ trustSettings: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecTrustSettingsImportExternalRepresentation(_ domain: SecTrustSettingsDomain, _ trustSettings: CFData) -> OSStatus
