
@available(OSX 10.10, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(OSX 10.10, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(OSX 10.11, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
}
@available(OSX 10.10, *)
func SecAccessControlCreateWithFlags(_ allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
