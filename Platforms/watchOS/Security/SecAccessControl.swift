
@available(watchOS 2.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var TouchIDAny: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var TouchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var Or: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var And: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var PrivateKeyUsage: SecAccessControlCreateFlags { get }
  @available(watchOS 2.0, *)
  static var ApplicationPassword: SecAccessControlCreateFlags { get }
}
@available(watchOS 2.0, *)
func SecAccessControlCreateWithFlags(_ allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
