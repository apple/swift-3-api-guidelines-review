
func SecCodeGetTypeID() -> CFTypeID
func SecCodeCopySelf(_ flags: SecCSFlags, _ self: UnsafeMutablePointer<SecCode?>) -> OSStatus
var kSecCSUseAllArchitectures: UInt32 { get }
func SecCodeCopyStaticCode(_ code: SecCode, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
func SecCodeCopyHost(_ guest: SecCode, _ flags: SecCSFlags, _ host: UnsafeMutablePointer<SecCode?>) -> OSStatus
let kSecGuestAttributeCanonical: CFString
let kSecGuestAttributeHash: CFString
let kSecGuestAttributeMachPort: CFString
let kSecGuestAttributePid: CFString
let kSecGuestAttributeDynamicCode: CFString
let kSecGuestAttributeDynamicCodeInfoPlist: CFString
let kSecGuestAttributeArchitecture: CFString
let kSecGuestAttributeSubarchitecture: CFString
func SecCodeCopyGuestWithAttributes(_ host: SecCode?, _ attributes: CFDictionary?, _ flags: SecCSFlags, _ guest: UnsafeMutablePointer<SecCode?>) -> OSStatus
func SecCodeCheckValidity(_ code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecCodeCheckValidityWithErrors(_ code: SecCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus
func SecCodeCopyPath(_ staticCode: SecStaticCode, _ flags: SecCSFlags, _ path: UnsafeMutablePointer<CFURL?>) -> OSStatus
func SecCodeCopyDesignatedRequirement(_ code: SecStaticCode, _ flags: SecCSFlags, _ requirement: UnsafeMutablePointer<SecRequirement?>) -> OSStatus
var kSecCSInternalInformation: UInt32 { get }
var kSecCSSigningInformation: UInt32 { get }
var kSecCSRequirementInformation: UInt32 { get }
var kSecCSDynamicInformation: UInt32 { get }
var kSecCSContentInformation: UInt32 { get }
let kSecCodeInfoCertificates: CFString
let kSecCodeInfoChangedFiles: CFString
let kSecCodeInfoCMS: CFString
let kSecCodeInfoDesignatedRequirement: CFString
let kSecCodeInfoEntitlements: CFString
let kSecCodeInfoEntitlementsDict: CFString
let kSecCodeInfoFlags: CFString
let kSecCodeInfoFormat: CFString
let kSecCodeInfoDigestAlgorithm: CFString
let kSecCodeInfoPlatformIdentifier: CFString
let kSecCodeInfoIdentifier: CFString
let kSecCodeInfoImplicitDesignatedRequirement: CFString
let kSecCodeInfoMainExecutable: CFString
let kSecCodeInfoPList: CFString
let kSecCodeInfoRequirements: CFString
let kSecCodeInfoRequirementData: CFString
let kSecCodeInfoSource: CFString
let kSecCodeInfoStatus: CFString
let kSecCodeInfoTeamIdentifier: CFString
let kSecCodeInfoTime: CFString
let kSecCodeInfoTimestamp: CFString
let kSecCodeInfoTrust: CFString
let kSecCodeInfoUnique: CFString
func SecCodeCopySigningInformation(_ code: SecStaticCode, _ flags: SecCSFlags, _ information: UnsafeMutablePointer<CFDictionary?>) -> OSStatus
func SecCodeMapMemory(_ code: SecStaticCode, _ flags: SecCSFlags) -> OSStatus
