
func SecStaticCodeGetTypeID() -> CFTypeID
let kSecCodeAttributeArchitecture: CFString
let kSecCodeAttributeSubarchitecture: CFString
let kSecCodeAttributeUniversalFileOffset: CFString
let kSecCodeAttributeBundleVersion: CFString
func SecStaticCodeCreateWithPath(_ path: CFURL, _ flags: SecCSFlags, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
func SecStaticCodeCreateWithPathAndAttributes(_ path: CFURL, _ flags: SecCSFlags, _ attributes: CFDictionary, _ staticCode: UnsafeMutablePointer<SecStaticCode?>) -> OSStatus
var kSecCSCheckAllArchitectures: UInt32 { get }
var kSecCSDoNotValidateExecutable: UInt32 { get }
var kSecCSDoNotValidateResources: UInt32 { get }
var kSecCSBasicValidateOnly: UInt32 { get }
var kSecCSCheckNestedCode: UInt32 { get }
var kSecCSStrictValidate: UInt32 { get }
var kSecCSFullReport: UInt32 { get }
var kSecCSCheckGatekeeperArchitectures: UInt32 { get }
var kSecCSRestrictSymlinks: UInt32 { get }
func SecStaticCodeCheckValidity(_ staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?) -> OSStatus
func SecStaticCodeCheckValidityWithErrors(_ staticCode: SecStaticCode, _ flags: SecCSFlags, _ requirement: SecRequirement?, _ errors: UnsafeMutablePointer<Unmanaged<CFError>?>) -> OSStatus
