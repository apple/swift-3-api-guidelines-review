
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.5, *)
  static var StrongMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaqueMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MallocMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MachVirtualMemory: PointerFunctionsOptions { get }
  @available(OSX 10.8, *)
  static var WeakMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaquePersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPointerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CStringPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var StructPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var IntegerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CopyIn: PointerFunctionsOptions { get }
}
@available(OSX 10.5, *)
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
  @available(OSX 10.5, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
