
var kSecKeyKeyClass: Int32 { get }
var kSecKeyPrintName: Int32 { get }
var kSecKeyAlias: Int32 { get }
var kSecKeyPermanent: Int32 { get }
var kSecKeyPrivate: Int32 { get }
var kSecKeyModifiable: Int32 { get }
var kSecKeyLabel: Int32 { get }
var kSecKeyApplicationTag: Int32 { get }
var kSecKeyKeyCreator: Int32 { get }
var kSecKeyKeyType: Int32 { get }
var kSecKeyKeySizeInBits: Int32 { get }
var kSecKeyEffectiveKeySize: Int32 { get }
var kSecKeyStartDate: Int32 { get }
var kSecKeyEndDate: Int32 { get }
var kSecKeySensitive: Int32 { get }
var kSecKeyAlwaysSensitive: Int32 { get }
var kSecKeyExtractable: Int32 { get }
var kSecKeyNeverExtractable: Int32 { get }
var kSecKeyEncrypt: Int32 { get }
var kSecKeyDecrypt: Int32 { get }
var kSecKeyDerive: Int32 { get }
var kSecKeySign: Int32 { get }
var kSecKeyVerify: Int32 { get }
var kSecKeySignRecover: Int32 { get }
var kSecKeyVerifyRecover: Int32 { get }
var kSecKeyWrap: Int32 { get }
var kSecKeyUnwrap: Int32 { get }
enum SecCredentialType : uint32 {
  init?(rawValue rawValue: uint32)
  var rawValue: uint32 { get }
  case Default
  case WithUI
  case NoUI
}
enum SecPadding : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case None
  case PKCS1
  case SigRaw
  case PKCS1MD2
  case PKCS1MD5
  case PKCS1SHA1
}
enum SecKeySizes : UInt32 {
  init?(rawValue rawValue: UInt32)
  var rawValue: UInt32 { get }
  case SecDefaultKeySize
  case Sec3DES192
  case SecAES128
  static var SecAES192: SecKeySizes { get }
  case SecAES256
  static var Secp192r1: SecKeySizes { get }
  static var Secp256r1: SecKeySizes { get }
  case Secp384r1
  case Secp521r1
  case SecRSAMin
  case SecRSAMax
}
@available(OSX 10.8, *)
let kSecPrivateKeyAttrs: CFString
@available(OSX 10.8, *)
let kSecPublicKeyAttrs: CFString
@available(OSX 10.3, *)
func SecKeyGetTypeID() -> CFTypeID
@available(OSX 10.6, *)
func SecKeyGetBlockSize(_ key: SecKey) -> Int
@available(OSX 10.7, *)
func SecKeyGenerateSymmetric(_ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
@available(OSX 10.7, *)
func SecKeyCreateFromData(_ parameters: CFDictionary, _ keyData: CFData, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
@available(OSX 10.7, *)
func SecKeyGeneratePair(_ parameters: CFDictionary, _ publicKey: UnsafeMutablePointer<SecKey?>, _ privateKey: UnsafeMutablePointer<SecKey?>) -> OSStatus
typealias SecKeyGeneratePairBlock = (SecKey, SecKey, CFError) -> Void
@available(OSX 10.7, *)
func SecKeyGeneratePairAsync(_ parameters: CFDictionary, _ deliveryQueue: dispatch_queue_t, _ result: SecKeyGeneratePairBlock)
@available(OSX 10.7, *)
func SecKeyDeriveFromPassword(_ password: CFString, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
@available(OSX 10.7, *)
func SecKeyWrapSymmetric(_ keyToWrap: SecKey, _ wrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData?
@available(OSX 10.7, *)
func SecKeyUnwrapSymmetric(_ keyToUnwrap: UnsafeMutablePointer<Unmanaged<CFData>?>, _ unwrappingKey: SecKey, _ parameters: CFDictionary, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecKey?
