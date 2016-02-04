
@available(iOS 8.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
  static var UserPresence: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var TouchIDAny: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var TouchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var DevicePasscode: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var Or: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var And: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var PrivateKeyUsage: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var ApplicationPassword: SecAccessControlCreateFlags { get }
}
@available(iOS 8.0, *)
func SecAccessControlCreateWithFlags(allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
