
enum NSPostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case postWhenIdle
  case postASAP
  case postNow
}
struct NSNotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noCoalescing: NSNotificationCoalescing { get }
  static var coalescingOnName: NSNotificationCoalescing { get }
  static var coalescingOnSender: NSNotificationCoalescing { get }
}
class NSNotificationQueue : NSObject {
  class func defaultQueue() -> NSNotificationQueue
  init(notificationCenter: NSNotificationCenter)
  func enqueue(notification: NSNotification, postingStyle: NSPostingStyle)
  func enqueue(notification: NSNotification, postingStyle: NSPostingStyle, coalesceMask: NSNotificationCoalescing, forModes modes: [String]?)
  func dequeueNotifications(matching notification: NSNotification, coalesceMask: Int)
  convenience init()
}
