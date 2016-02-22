
@available(iOS 8.0, *)
func SecAccessControlGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
struct SecAccessControlCreateFlags : OptionSetType {
  init(rawValue rawValue: CFIndex)
  let rawValue: CFIndex
  static var userPresence: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var touchIDAny: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var touchIDCurrentSet: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var devicePasscode: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var or: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var and: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var privateKeyUsage: SecAccessControlCreateFlags { get }
  @available(iOS 9.0, *)
  static var applicationPassword: SecAccessControlCreateFlags { get }
}
@available(iOS 8.0, *)
func SecAccessControlCreateWithFlags(_ allocator: CFAllocator?, _ protection: CFTypeRef, _ flags: SecAccessControlCreateFlags, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> SecAccessControl?
