
typealias AuthorizationRef = COpaquePointer
class SCPreferences {
}
@available(*, deprecated, renamed="SCPreferences")
typealias SCPreferencesRef = SCPreferences
struct SCPreferencesNotification : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Commit: SCPreferencesNotification { get }
  static var Apply: SCPreferencesNotification { get }
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
