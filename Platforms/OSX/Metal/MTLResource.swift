
@available(OSX 10.11, *)
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case KeepCurrent
  case NonVolatile
  case Volatile
  case Empty
}
@available(OSX 10.11, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultCache
  case WriteCombined
}
@available(OSX 10.11, *)
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Shared
  @available(OSX 10.11, *)
  case Managed
  case Private
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceStorageModeShift: Int32 { get }
@available(OSX 10.11, *)
struct MTLResourceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CPUCacheModeDefaultCache: MTLResourceOptions { get }
  static var CPUCacheModeWriteCombined: MTLResourceOptions { get }
  @available(OSX 10.11, *)
  static var StorageModeShared: MTLResourceOptions { get }
  @available(OSX 10.11, *)
  static var StorageModeManaged: MTLResourceOptions { get }
  @available(OSX 10.11, *)
  static var StorageModePrivate: MTLResourceOptions { get }
  static var OptionCPUCacheModeDefault: MTLResourceOptions { get }
  static var OptionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
@available(OSX 10.11, *)
protocol MTLResource : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(OSX 10.11, *)
  var storageMode: MTLStorageMode { get }
  func setPurgeableState(state: MTLPurgeableState) -> MTLPurgeableState
}
