
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 6.0, *)
  static var StrongMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var OpaqueMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var MallocMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var MachVirtualMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var WeakMemory: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var ObjectPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var OpaquePersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var ObjectPointerPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var CStringPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var StructPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var IntegerPersonality: PointerFunctionsOptions { get }
  @available(tvOS 6.0, *)
  static var CopyIn: PointerFunctionsOptions { get }
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
