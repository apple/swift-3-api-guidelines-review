
var errSecCSUnimplemented: OSStatus { get }
var errSecCSInvalidObjectRef: OSStatus { get }
var errSecCSInvalidFlags: OSStatus { get }
var errSecCSObjectRequired: OSStatus { get }
var errSecCSStaticCodeNotFound: OSStatus { get }
var errSecCSUnsupportedGuestAttributes: OSStatus { get }
var errSecCSInvalidAttributeValues: OSStatus { get }
var errSecCSNoSuchCode: OSStatus { get }
var errSecCSMultipleGuests: OSStatus { get }
var errSecCSGuestInvalid: OSStatus { get }
var errSecCSUnsigned: OSStatus { get }
var errSecCSSignatureFailed: OSStatus { get }
var errSecCSSignatureNotVerifiable: OSStatus { get }
var errSecCSSignatureUnsupported: OSStatus { get }
var errSecCSBadDictionaryFormat: OSStatus { get }
var errSecCSResourcesNotSealed: OSStatus { get }
var errSecCSResourcesNotFound: OSStatus { get }
var errSecCSResourcesInvalid: OSStatus { get }
var errSecCSBadResource: OSStatus { get }
var errSecCSResourceRulesInvalid: OSStatus { get }
var errSecCSReqInvalid: OSStatus { get }
var errSecCSReqUnsupported: OSStatus { get }
var errSecCSReqFailed: OSStatus { get }
var errSecCSBadObjectFormat: OSStatus { get }
var errSecCSInternalError: OSStatus { get }
var errSecCSHostReject: OSStatus { get }
var errSecCSNotAHost: OSStatus { get }
var errSecCSSignatureInvalid: OSStatus { get }
var errSecCSHostProtocolRelativePath: OSStatus { get }
var errSecCSHostProtocolContradiction: OSStatus { get }
var errSecCSHostProtocolDedicationError: OSStatus { get }
var errSecCSHostProtocolNotProxy: OSStatus { get }
var errSecCSHostProtocolStateError: OSStatus { get }
var errSecCSHostProtocolUnrelated: OSStatus { get }
var errSecCSNotSupported: OSStatus { get }
var errSecCSCMSTooLarge: OSStatus { get }
var errSecCSHostProtocolInvalidHash: OSStatus { get }
var errSecCSStaticCodeChanged: OSStatus { get }
var errSecCSDBDenied: OSStatus { get }
var errSecCSDBAccess: OSStatus { get }
var errSecCSSigDBDenied: OSStatus { get }
var errSecCSSigDBAccess: OSStatus { get }
var errSecCSHostProtocolInvalidAttribute: OSStatus { get }
var errSecCSInfoPlistFailed: OSStatus { get }
var errSecCSNoMainExecutable: OSStatus { get }
var errSecCSBadBundleFormat: OSStatus { get }
var errSecCSNoMatches: OSStatus { get }
var errSecCSFileHardQuarantined: OSStatus { get }
var errSecCSOutdated: OSStatus { get }
var errSecCSDbCorrupt: OSStatus { get }
var errSecCSResourceDirectoryFailed: OSStatus { get }
var errSecCSUnsignedNestedCode: OSStatus { get }
var errSecCSBadNestedCode: OSStatus { get }
var errSecCSBadCallbackValue: OSStatus { get }
var errSecCSHelperFailed: OSStatus { get }
var errSecCSVetoed: OSStatus { get }
var errSecCSBadLVArch: OSStatus { get }
var errSecCSResourceNotSupported: OSStatus { get }
var errSecCSRegularFile: OSStatus { get }
var errSecCSUnsealedAppRoot: OSStatus { get }
var errSecCSWeakResourceRules: OSStatus { get }
var errSecCSDSStoreSymlink: OSStatus { get }
var errSecCSAmbiguousBundleFormat: OSStatus { get }
var errSecCSBadMainExecutable: OSStatus { get }
var errSecCSBadFrameworkVersion: OSStatus { get }
var errSecCSUnsealedFrameworkRoot: OSStatus { get }
var errSecCSWeakResourceEnvelope: OSStatus { get }
var errSecCSCancelled: OSStatus { get }
var errSecCSInvalidPlatform: OSStatus { get }
var errSecCSTooBig: OSStatus { get }
var errSecCSInvalidSymlink: OSStatus { get }
let kSecCFErrorArchitecture: CFString
let kSecCFErrorPattern: CFString
let kSecCFErrorResourceSeal: CFString
let kSecCFErrorResourceAdded: CFString
let kSecCFErrorResourceAltered: CFString
let kSecCFErrorResourceMissing: CFString
let kSecCFErrorInfoPlist: CFString
let kSecCFErrorGuestAttributes: CFString
let kSecCFErrorRequirementSyntax: CFString
let kSecCFErrorPath: CFString
class SecCode {
}
class SecStaticCode {
}
class SecRequirement {
}
typealias SecGuestRef = UInt32
var kSecNoGuest: SecGuestRef { get }
struct SecCSFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var DefaultFlags: SecCSFlags { get }
  static var ConsiderExpiration: SecCSFlags { get }
  static var EnforceRevocationChecks: SecCSFlags { get }
  static var NoNetworkAccess: SecCSFlags { get }
  static var ReportProgress: SecCSFlags { get }
  static var CheckTrustedAnchors: SecCSFlags { get }
}
struct SecCodeSignatureFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Host: SecCodeSignatureFlags { get }
  static var Adhoc: SecCodeSignatureFlags { get }
  static var ForceHard: SecCodeSignatureFlags { get }
  static var ForceKill: SecCodeSignatureFlags { get }
  static var ForceExpiration: SecCodeSignatureFlags { get }
  static var Restrict: SecCodeSignatureFlags { get }
  static var Enforcement: SecCodeSignatureFlags { get }
  static var LibraryValidation: SecCodeSignatureFlags { get }
}
struct SecCodeStatus : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: SecCodeStatus { get }
  static var Hard: SecCodeStatus { get }
  static var Kill: SecCodeStatus { get }
}
enum SecRequirementType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case HostRequirementType
  case GuestRequirementType
  case DesignatedRequirementType
  case LibraryRequirementType
  case PluginRequirementType
  case InvalidRequirementType
  static var RequirementTypeCount: SecRequirementType { get }
}
