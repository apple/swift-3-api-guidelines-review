
class CFNotificationCenter {
}
typealias CFNotificationCallback = @convention(c) (CFNotificationCenter!, UnsafeMutablePointer<Void>, CFString!, UnsafePointer<Void>, CFDictionary!) -> Void
enum CFNotificationSuspensionBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case drop
  case coalesce
  case hold
  case deliverImmediately
}
func CFNotificationCenterGetTypeID() -> CFTypeID
func CFNotificationCenterGetLocalCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDarwinNotifyCenter() -> CFNotificationCenter!
func CFNotificationCenterAddObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ callBack: CFNotificationCallback!, _ name: CFString!, _ object: UnsafePointer<Void>, _ suspensionBehavior: CFNotificationSuspensionBehavior)
func CFNotificationCenterRemoveObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>, _ name: CFString!, _ object: UnsafePointer<Void>)
func CFNotificationCenterRemoveEveryObserver(center: CFNotificationCenter!, _ observer: UnsafePointer<Void>)
func CFNotificationCenterPostNotification(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ deliverImmediately: Bool)
var kCFNotificationDeliverImmediately: CFOptionFlags { get }
var kCFNotificationPostToAllSessions: CFOptionFlags { get }
func CFNotificationCenterPostNotificationWithOptions(center: CFNotificationCenter!, _ name: CFString!, _ object: UnsafePointer<Void>, _ userInfo: CFDictionary!, _ options: CFOptionFlags)
