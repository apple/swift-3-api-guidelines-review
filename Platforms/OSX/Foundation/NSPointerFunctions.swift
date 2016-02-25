
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct NSPointerFunctionsOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.5, *)
  static var StrongMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaqueMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MallocMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var MachVirtualMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.8, *)
  static var WeakMemory: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var OpaquePersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var ObjectPointerPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CStringPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var StructPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var IntegerPersonality: NSPointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var CopyIn: NSPointerFunctionsOptions { get }
}
@available(OSX 10.5, *)
class NSPointerFunctions : NSObject, NSCopying {
  init(options options: NSPointerFunctionsOptions)
  var hashFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Int)?
  var isEqualFunction: (@convention(c) (UnsafePointer<Void>, UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> ObjCBool)?
  var sizeFunction: (@convention(c) (UnsafePointer<Void>) -> Int)?
  var descriptionFunction: (@convention(c) (UnsafePointer<Void>) -> String?)?
  var relinquishFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?) -> Void)?
  var acquireFunction: (@convention(c) (UnsafePointer<Void>, (@convention(c) (UnsafePointer<Void>) -> Int)?, ObjCBool) -> UnsafeMutablePointer<Void>)?
  var usesStrongWriteBarrier: Bool
  var usesWeakReadAndWriteBarriers: Bool
  @available(OSX 10.5, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
