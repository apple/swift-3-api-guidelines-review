
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
@available(iOS 5.0, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(iOS 5.0, *)
func CFFileSecurityCreate(allocator: CFAllocator!) -> CFFileSecurity!
@available(iOS 5.0, *)
func CFFileSecurityCreateCopy(allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(iOS 5.0, *)
func CFFileSecurityCopyOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(iOS 5.0, *)
func CFFileSecurityCopyGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(iOS 5.0, *)
func CFFileSecurityCopyAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(iOS 5.0, *)
func CFFileSecurityGetOwner(fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetOwner(fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(iOS 5.0, *)
func CFFileSecurityGetGroup(fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetGroup(fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(iOS 5.0, *)
func CFFileSecurityGetMode(fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(iOS 5.0, *)
func CFFileSecuritySetMode(fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(iOS 6.0, *)
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var owner: CFFileSecurityClearOptions { get }
  static var group: CFFileSecurityClearOptions { get }
  static var mode: CFFileSecurityClearOptions { get }
  static var ownerUUID: CFFileSecurityClearOptions { get }
  static var groupUUID: CFFileSecurityClearOptions { get }
  static var accessControlList: CFFileSecurityClearOptions { get }
}
@available(iOS 6.0, *)
func CFFileSecurityClearProperties(fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
