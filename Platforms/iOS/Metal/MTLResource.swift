
@available(iOS 8.0, *)
enum MTLPurgeableState : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case KeepCurrent
  case NonVolatile
  case Volatile
  case Empty
}
@available(iOS 8.0, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultCache
  case WriteCombined
}
@available(iOS 9.0, *)
enum MTLStorageMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Shared
  case Private
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceStorageModeShift: Int32 { get }
@available(iOS 8.0, *)
struct MTLResourceOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var CPUCacheModeDefaultCache: MTLResourceOptions { get }
  static var CPUCacheModeWriteCombined: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var StorageModeShared: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var StorageModePrivate: MTLResourceOptions { get }
  static var OptionCPUCacheModeDefault: MTLResourceOptions { get }
  static var OptionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
@available(iOS 8.0, *)
protocol MTLResource : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(iOS 9.0, *)
  var storageMode: MTLStorageMode { get }
  func setPurgeableState(_ state: MTLPurgeableState) -> MTLPurgeableState
}
