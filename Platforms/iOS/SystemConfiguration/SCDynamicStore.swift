
class SCDynamicStore {
}
@available(*, deprecated, renamed="SCDynamicStore")
typealias SCDynamicStoreRef = SCDynamicStore
struct SCDynamicStoreContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
typealias SCDynamicStoreCallBack = @convention(c) (SCDynamicStore, CFArray, UnsafeMutablePointer<Void>) -> Void
