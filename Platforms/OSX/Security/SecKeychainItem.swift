
enum SecItemClass : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case InternetPasswordItemClass
  case GenericPasswordItemClass
  case CertificateItemClass
  case PublicKeyItemClass
  case PrivateKeyItemClass
  case SymmetricKeyItemClass
}
enum SecItemAttr : FourCharCode {
  init?(rawValue: FourCharCode)
  var rawValue: FourCharCode { get }
  case CreationDateItemAttr
  case ModDateItemAttr
  case DescriptionItemAttr
  case CommentItemAttr
  case CreatorItemAttr
  case TypeItemAttr
  case ScriptCodeItemAttr
  case LabelItemAttr
  case InvisibleItemAttr
  case NegativeItemAttr
  case CustomIconItemAttr
  case AccountItemAttr
  case ServiceItemAttr
  case GenericItemAttr
  case SecurityDomainItemAttr
  case ServerItemAttr
  case AuthenticationTypeItemAttr
  case PortItemAttr
  case PathItemAttr
  case VolumeItemAttr
  case AddressItemAttr
  case SignatureItemAttr
  case ProtocolItemAttr
  case CertificateType
  case CertificateEncoding
  case CrlType
  case CrlEncoding
  case Alias
}
typealias SecAFPServerSignature = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias SecPublicKeyHash = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
func SecKeychainItemGetTypeID() -> CFTypeID
func SecKeychainItemModifyAttributesAndData(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus
func SecKeychainItemCreateFromContent(itemClass: SecItemClass, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>, _ keychainRef: SecKeychain?, _ initialAccess: SecAccess?, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemModifyContent(itemRef: SecKeychainItem, _ attrList: UnsafePointer<SecKeychainAttributeList>, _ length: UInt32, _ data: UnsafePointer<Void>) -> OSStatus
func SecKeychainItemCopyContent(itemRef: SecKeychainItem, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
func SecKeychainItemFreeContent(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainItemCopyAttributesAndData(itemRef: SecKeychainItem, _ info: UnsafeMutablePointer<SecKeychainAttributeInfo>, _ itemClass: UnsafeMutablePointer<SecItemClass>, _ attrList: UnsafeMutablePointer<UnsafeMutablePointer<SecKeychainAttributeList>>, _ length: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutablePointer<UnsafeMutablePointer<Void>>) -> OSStatus
func SecKeychainItemFreeAttributesAndData(attrList: UnsafeMutablePointer<SecKeychainAttributeList>, _ data: UnsafeMutablePointer<Void>) -> OSStatus
func SecKeychainItemDelete(itemRef: SecKeychainItem) -> OSStatus
func SecKeychainItemCopyKeychain(itemRef: SecKeychainItem, _ keychainRef: UnsafeMutablePointer<SecKeychain?>) -> OSStatus
func SecKeychainItemCreateCopy(itemRef: SecKeychainItem, _ destKeychainRef: SecKeychain?, _ initialAccess: SecAccess, _ itemCopy: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemCreatePersistentReference(itemRef: SecKeychainItem, _ persistentItemRef: UnsafeMutablePointer<CFData?>) -> OSStatus
func SecKeychainItemCopyFromPersistentReference(persistentItemRef: CFData, _ itemRef: UnsafeMutablePointer<SecKeychainItem?>) -> OSStatus
func SecKeychainItemCopyAccess(itemRef: SecKeychainItem, _ access: UnsafeMutablePointer<SecAccess?>) -> OSStatus
func SecKeychainItemSetAccess(itemRef: SecKeychainItem, _ access: SecAccess) -> OSStatus
