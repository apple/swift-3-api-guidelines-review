
enum PostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case PostWhenIdle
  case PostASAP
  case PostNow
}
struct NotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var NoCoalescing: NotificationCoalescing { get }
  static var CoalescingOnName: NotificationCoalescing { get }
  static var CoalescingOnSender: NotificationCoalescing { get }
}
class NotificationQueue : Object {
  class func defaultQueue() -> NotificationQueue
  init(notificationCenter: NotificationCenter)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle, coalesceMask: NotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: Notification, coalesceMask: Int)
  convenience init()
}
