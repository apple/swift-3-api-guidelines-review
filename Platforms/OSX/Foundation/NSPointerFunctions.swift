
var __FOUNDATION_NSPOINTERFUNCTIONS__: Int32 { get }
struct PointerFunctionsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(OSX 10.5, *)
  static var strongMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var opaqueMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var mallocMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var machVirtualMemory: PointerFunctionsOptions { get }
  @available(OSX 10.8, *)
  static var weakMemory: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var objectPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var opaquePersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var objectPointerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var cStringPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var structPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var integerPersonality: PointerFunctionsOptions { get }
  @available(OSX 10.5, *)
  static var copyIn: PointerFunctionsOptions { get }
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
  func copy(with zone: Zone = nil) -> AnyObject
}
