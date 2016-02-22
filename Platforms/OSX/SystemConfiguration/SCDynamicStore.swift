
class SCDynamicStore {
}
struct SCDynamicStoreContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version version: CFIndex, info info: UnsafeMutablePointer<Void>, retain retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
typealias SCDynamicStoreCallBack = @convention(c) (SCDynamicStore, CFArray, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.1, *)
func SCDynamicStoreGetTypeID() -> CFTypeID
@available(OSX 10.1, *)
func SCDynamicStoreCreate(_ allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
@available(OSX 10.4, *)
func SCDynamicStoreCreateWithOptions(_ allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
@available(OSX 10.4, *)
let kSCDynamicStoreUseSessionKeys: CFString
@available(OSX 10.1, *)
func SCDynamicStoreCreateRunLoopSource(_ allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?
@available(OSX 10.6, *)
func SCDynamicStoreSetDispatchQueue(_ store: SCDynamicStore, _ queue: dispatch_queue_t?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyKeyList(_ store: SCDynamicStore?, _ pattern: CFString) -> CFArray?
@available(OSX 10.1, *)
func SCDynamicStoreAddValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreAddTemporaryValue(_ store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyValue(_ store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?
@available(OSX 10.1, *)
func SCDynamicStoreCopyMultiple(_ store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?
@available(OSX 10.1, *)
func SCDynamicStoreSetValue(_ store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreSetMultiple(_ store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreRemoveValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreNotifyValue(_ store: SCDynamicStore?, _ key: CFString) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreSetNotificationKeys(_ store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool
@available(OSX 10.1, *)
func SCDynamicStoreCopyNotifiedKeys(_ store: SCDynamicStore) -> CFArray?
