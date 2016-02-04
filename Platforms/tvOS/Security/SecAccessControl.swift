
@available(tvOS 8.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(tvOS 8.0, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var TouchIDAny: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var TouchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var Or: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var And: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var PrivateKeyUsage: SecAccessControlCreateFlags { get }
  @available(tvOS 9.0, *)
  static var ApplicationPassword: SecAccessControlCreateFlags { get }
}
@available(tvOS 8.0, *)
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
