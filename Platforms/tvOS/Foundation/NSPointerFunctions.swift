
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 6.0, *)
  static var strongMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var opaqueMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var mallocMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var machVirtualMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var weakMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var objectPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var opaquePersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var objectPointerPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var cStringPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var structPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var integerPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var copyIn: PointerFunctionsOptions { get }
}
@available(tvOS 6.0, *)
class PointerFunctions : Object, Copying {
  init(options: PointerFunctionsOptions = [])
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  convenience init()
  @available(tvOS 6.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
