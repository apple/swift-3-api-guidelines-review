
enum SecExternalFormat : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case FormatUnknown
  case FormatOpenSSL
  case FormatSSH
  case FormatBSAFE
  case FormatRawKey
  case FormatWrappedPKCS8
  case FormatWrappedOpenSSL
  case FormatWrappedSSH
  case FormatWrappedLSH
  case FormatX509Cert
  case FormatPEMSequence
  case FormatPKCS7
  case FormatPKCS12
  case FormatNetscapeCertSequence
  case FormatSSHv2
}
enum SecExternalItemType : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case ItemTypeUnknown
  case ItemTypePrivateKey
  case ItemTypePublicKey
  case ItemTypeSessionKey
  case ItemTypeCertificate
  case ItemTypeAggregate
}
struct SecItemImportExportFlags : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var PemArmour: SecItemImportExportFlags { get }
}
struct SecKeyImportExportFlags : OptionSetType {
  init(rawValue rawValue: UInt32)
  let rawValue: UInt32
  static var ImportOnlyOne: SecKeyImportExportFlags { get }
  static var SecurePassphrase: SecKeyImportExportFlags { get }
  static var NoAccessControl: SecKeyImportExportFlags { get }
}
var SEC_KEY_IMPORT_EXPORT_PARAMS_VERSION: Int32 { get }
struct SecKeyImportExportParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<CFTypeRef>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: CSSM_KEYUSE
  var keyAttributes: CSSM_KEYATTR_FLAGS
}
struct SecItemImportExportKeyParameters {
  var version: UInt32
  var flags: SecKeyImportExportFlags
  var passphrase: Unmanaged<CFTypeRef>
  var alertTitle: Unmanaged<CFString>
  var alertPrompt: Unmanaged<CFString>
  var accessRef: Unmanaged<SecAccess>?
  var keyUsage: Unmanaged<CFArray>?
  var keyAttributes: Unmanaged<CFArray>?
}
@available(OSX 10.7, *)
func SecItemExport(_ secItemOrArray: CFTypeRef, _ outputFormat: SecExternalFormat, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ exportedData: UnsafeMutablePointer<CFData?>) -> OSStatus
@available(OSX 10.7, *)
func SecItemImport(_ importedData: CFData, _ fileNameOrExtension: CFString?, _ inputFormat: UnsafeMutablePointer<SecExternalFormat>, _ itemType: UnsafeMutablePointer<SecExternalItemType>, _ flags: SecItemImportExportFlags, _ keyParams: UnsafePointer<SecItemImportExportKeyParameters>, _ importKeychain: SecKeychain?, _ outItems: UnsafeMutablePointer<CFArray?>) -> OSStatus
let kSecImportExportPassphrase: CFString
let kSecImportExportKeychain: CFString
let kSecImportExportAccess: CFString
let kSecImportItemLabel: CFString
let kSecImportItemKeyID: CFString
let kSecImportItemTrust: CFString
let kSecImportItemCertChain: CFString
let kSecImportItemIdentity: CFString
func SecPKCS12Import(_ pkcs12_data: CFData, _ options: CFDictionary, _ items: UnsafeMutablePointer<CFArray?>) -> OSStatus
