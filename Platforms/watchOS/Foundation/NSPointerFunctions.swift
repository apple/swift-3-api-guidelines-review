
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(watchOS 2.0, *)
  static var strongMemory: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var opaqueMemory: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var mallocMemory: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var machVirtualMemory: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var weakMemory: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var objectPersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var opaquePersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var objectPointerPersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var cStringPersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var structPersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var integerPersonality: PointerFunctionsOptions { get }
  @available(watchOS 2.0, *)
  static var copyIn: PointerFunctionsOptions { get }
}
@available(watchOS 2.0, *)
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
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
