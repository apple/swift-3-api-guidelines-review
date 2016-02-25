
var __COREFOUNDATION_CFFILESECURITY__: Int32 { get }
class CFFileSecurity {
}
@available(*, deprecated, renamed="CFFileSecurity")
typealias CFFileSecurityRef = CFFileSecurity
@available(tvOS 5.0, *)
func CFFileSecurityGetTypeID() -> CFTypeID
@available(tvOS 5.0, *)
func CFFileSecurityCreate(_ allocator: CFAllocator!) -> CFFileSecurity!
@available(tvOS 5.0, *)
func CFFileSecurityCreateCopy(_ allocator: CFAllocator!, _ fileSec: CFFileSecurity!) -> CFFileSecurity!
@available(tvOS 5.0, *)
func CFFileSecurityCopyOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetOwnerUUID(_ fileSec: CFFileSecurity!, _ ownerUUID: CFUUID!) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityCopyGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: UnsafeMutablePointer<Unmanaged<CFUUID>?>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetGroupUUID(_ fileSec: CFFileSecurity!, _ groupUUID: CFUUID!) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityCopyAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: UnsafeMutablePointer<acl_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetAccessControlList(_ fileSec: CFFileSecurity!, _ accessControlList: acl_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetOwner(_ fileSec: CFFileSecurity!, _ owner: UnsafeMutablePointer<uid_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetOwner(_ fileSec: CFFileSecurity!, _ owner: uid_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetGroup(_ fileSec: CFFileSecurity!, _ group: UnsafeMutablePointer<gid_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetGroup(_ fileSec: CFFileSecurity!, _ group: gid_t) -> Bool
@available(tvOS 5.0, *)
func CFFileSecurityGetMode(_ fileSec: CFFileSecurity!, _ mode: UnsafeMutablePointer<mode_t>) -> Bool
@available(tvOS 5.0, *)
func CFFileSecuritySetMode(_ fileSec: CFFileSecurity!, _ mode: mode_t) -> Bool
@available(tvOS 6.0, *)
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
@available(tvOS 6.0, *)
func CFFileSecurityClearProperties(_ fileSec: CFFileSecurity!, _ clearPropertyMask: CFFileSecurityClearOptions) -> Bool
