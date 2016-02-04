
enum NSPostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NSNotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NSNotificationCoalescing { get }
  static var CoalescingOnName: NSNotificationCoalescing { get }
  static var CoalescingOnSender: NSNotificationCoalescing { get }
}
class NSNotificationQueue : NSObject {
  class func defaultQueue() -> NSNotificationQueue
  init(notificationCenter: NSNotificationCenter)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle)
  func enqueueNotification(notification: NSNotification, postingStyle: NSPostingStyle, coalesceMask: NSNotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: NSNotification, coalesceMask: Int)
  convenience init()
}
