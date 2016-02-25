
enum NSPostingStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NSNotificationCoalescing : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NSNotificationCoalescing { get }
  static var CoalescingOnName: NSNotificationCoalescing { get }
  static var CoalescingOnSender: NSNotificationCoalescing { get }
}
class NSNotificationQueue : NSObject {
  class func defaultQueue() -> NSNotificationQueue
  init(notificationCenter notificationCenter: NSNotificationCenter)
  func enqueueNotification(_ notification: NSNotification, postingStyle postingStyle: NSPostingStyle)
  func enqueueNotification(_ notification: NSNotification, postingStyle postingStyle: NSPostingStyle, coalesceMask coalesceMask: NSNotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(_ notification: NSNotification, coalesceMask coalesceMask: Int)
}
