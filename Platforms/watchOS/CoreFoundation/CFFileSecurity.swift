
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
@available(*, deprecated, renamed="CFFileSecurity")
typealias CFFileSecurityRef = CFFileSecurity
@available(watchOS 2.0, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
func CFFileSecurityCreate(allocator: CFAllocator!) -> CFFileSecurity!
@available(watchOS 2.0, *)
func CFFileSecurityCreateCopy(allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(watchOS 2.0, *)
func CFFileSecurityCopyOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetOwnerUUID(fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(watchOS 2.0, *)
func CFFileSecurityCopyGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetGroupUUID(fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(watchOS 2.0, *)
func CFFileSecurityCopyAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetAccessControlList(fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(watchOS 2.0, *)
func CFFileSecurityGetOwner(fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetOwner(fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(watchOS 2.0, *)
func CFFileSecurityGetGroup(fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetGroup(fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(watchOS 2.0, *)
func CFFileSecurityGetMode(fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(watchOS 2.0, *)
func CFFileSecuritySetMode(fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(watchOS 2.0, *)
struct CFFileSecurityClearOptions : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Owner: CFFileSecurityClearOptions { get }
  static var Group: CFFileSecurityClearOptions { get }
  static var Mode: CFFileSecurityClearOptions { get }
  static var OwnerUUID: CFFileSecurityClearOptions { get }
  static var GroupUUID: CFFileSecurityClearOptions { get }
  static var AccessControlList: CFFileSecurityClearOptions { get }
}
@available(watchOS 2.0, *)
func CFFileSecurityClearProperties(fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
