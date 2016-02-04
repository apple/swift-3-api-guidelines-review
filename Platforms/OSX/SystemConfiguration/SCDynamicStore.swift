
class SCDynamicStore {
}
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
@available(OSX 10.1, *)
func SCDynamicStoreGetTypeID() -> CFTypeID
@available(OSX 10.1, *)
func SCDynamicStoreCreate(allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
@available(OSX 10.4, *)
func SCDynamicStoreCreateWithOptions(allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
@available(OSX 10.4, *)
let kSCDynamicStoreUseSessionKeys: CFString
@available(OSX 10.1, *)
func SCDynamicStoreCreateRunLoopSource(allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?
@available(OSX 10.6, *)
func SCDynamicStoreSetDispatchQueue(store: SCDynamicStore, _ queue: dispatch_queue_t?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyKeyList(store: SCDynamicStore?, _ pattern: CFString) -> CFArray?
@available(OSX 10.1, *)
func SCDynamicStoreAddValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreAddTemporaryValue(store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyValue(store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?
@available(OSX 10.1, *)
func SCDynamicStoreCopyMultiple(store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?
@available(OSX 10.1, *)
func SCDynamicStoreSetValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreSetMultiple(store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreRemoveValue(store: SCDynamicStore?, _ key: CFString) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreNotifyValue(store: SCDynamicStore?, _ key: CFString) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreSetNotificationKeys(store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyNotifiedKeys(store: SCDynamicStore) -> CFArray?
