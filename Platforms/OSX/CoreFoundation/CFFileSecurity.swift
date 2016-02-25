
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
@available(*, deprecated, renamed="CFFileSecurity")
typealias CFFileSecurityRef = CFFileSecurity
@available(OSX 10.7, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(OSX 10.7, *)
func CFFileSecurityCreate(_ allocator: CFAllocator!) -> CFFileSecurity!
@available(OSX 10.7, *)
func CFFileSecurityCreateCopy(_ allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(OSX 10.7, *)
func CFFileSecurityCopyOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityCopyGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityCopyAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetOwner(_ fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetOwner(_ fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetGroup(_ fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetGroup(_ fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(OSX 10.7, *)
func CFFileSecurityGetMode(_ fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(OSX 10.7, *)
func CFFileSecuritySetMode(_ fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(OSX 10.8, *)
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Owner: CFFileSecurityClearOptions { get }
  static var Group: CFFileSecurityClearOptions { get }
  static var Mode: CFFileSecurityClearOptions { get }
  static var OwnerUUID: CFFileSecurityClearOptions { get }
  static var GroupUUID: CFFileSecurityClearOptions { get }
  static var AccessControlList: CFFileSecurityClearOptions { get }
}
@available(OSX 10.8, *)
func CFFileSecurityClearProperties(_ fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
