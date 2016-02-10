
class SCPreferences {
}
struct SCPreferencesNotification : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var commit: SCPreferencesNotification { get }
  static var apply: SCPreferencesNotification { get }
}
struct SCPreferencesContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}
typealias SCPreferencesCallBack = @convention(c) (SCPreferences, SCPreferencesNotification, UnsafeMutablePointer<Void>) -> Void
@available(OSX 10.1, *)
func SCPreferencesGetTypeID() -> CFTypeID
@available(OSX 10.1, *)
func SCPreferencesCreate(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?) -> SCPreferences?
@available(OSX 10.5, *)
func SCPreferencesCreateWithAuthorization(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?, _ authorization: AuthorizationRef) -> SCPreferences?
@available(OSX 10.1, *)
func SCPreferencesLock(prefs: SCPreferences, _ wait: Bool) -> Bool
@available(OSX 10.1, *)
func SCPreferencesCommitChanges(prefs: SCPreferences) -> Bool
@available(OSX 10.1, *)
func SCPreferencesApplyChanges(prefs: SCPreferences) -> Bool
@available(OSX 10.1, *)
func SCPreferencesUnlock(prefs: SCPreferences) -> Bool
@available(OSX 10.1, *)
func SCPreferencesGetSignature(prefs: SCPreferences) -> CFData?
@available(OSX 10.1, *)
func SCPreferencesCopyKeyList(prefs: SCPreferences) -> CFArray?
@available(OSX 10.1, *)
func SCPreferencesGetValue(prefs: SCPreferences, _ key: CFString) -> CFPropertyList?
@available(OSX 10.1, *)
func SCPreferencesAddValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCPreferencesSetValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool
@available(OSX 10.1, *)
func SCPreferencesRemoveValue(prefs: SCPreferences, _ key: CFString) -> Bool
@available(OSX 10.4, *)
func SCPreferencesSetCallback(prefs: SCPreferences, _ callout: SCPreferencesCallBack?, _ context: UnsafeMutablePointer<SCPreferencesContext>) -> Bool
@available(OSX 10.4, *)
func SCPreferencesScheduleWithRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(OSX 10.4, *)
func SCPreferencesUnscheduleFromRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(OSX 10.6, *)
func SCPreferencesSetDispatchQueue(prefs: SCPreferences, _ queue: dispatch_queue_t?) -> Bool
@available(OSX 10.4, *)
func SCPreferencesSynchronize(prefs: SCPreferences)
