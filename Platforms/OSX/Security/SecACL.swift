
struct SecKeychainPromptSelector : OptionSetType {
  init(rawValue rawValue: uint16)
  let rawValue: uint16
  static var requirePassphase: SecKeychainPromptSelector { get }
  static var unsigned: SecKeychainPromptSelector { get }
  static var unsignedAct: SecKeychainPromptSelector { get }
  static var invalid: SecKeychainPromptSelector { get }
  static var invalidAct: SecKeychainPromptSelector { get }
}
@available(OSX 10.3, *)
func SecACLGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func SecACLCreateWithSimpleContents(_ access: SecAccess, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector, _ newAcl: UnsafeMutablePointer<SecACL?>) -> OSStatus
@available(OSX 10.3, *)
func SecACLRemove(_ aclRef: SecACL) -> OSStatus
@available(OSX 10.7, *)
func SecACLCopyContents(_ acl: SecACL, _ applicationList: UnsafeMutablePointer<CFArray?>, _ description: UnsafeMutablePointer<CFString?>, _ promptSelector: UnsafeMutablePointer<SecKeychainPromptSelector>) -> OSStatus
@available(OSX 10.7, *)
func SecACLSetContents(_ acl: SecACL, _ applicationList: CFArray?, _ description: CFString, _ promptSelector: SecKeychainPromptSelector) -> OSStatus
@available(OSX 10.7, *)
func SecACLCopyAuthorizations(_ acl: SecACL) -> CFArray
@available(OSX 10.7, *)
func SecACLUpdateAuthorizations(_ acl: SecACL, _ authorizations: CFArray) -> OSStatus
