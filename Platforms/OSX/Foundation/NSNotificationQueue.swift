
enum PostingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case postWhenIdle
  case postASAP
  case postNow
}
struct NotificationCoalescing : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var noCoalescing: NotificationCoalescing { get }
  static var coalescingOnName: NotificationCoalescing { get }
  static var coalescingOnSender: NotificationCoalescing { get }
}
class NotificationQueue : Object {
  class func defaultQueue() -> NotificationQueue
  init(notificationCenter: NotificationCenter)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle)
  func enqueueNotification(notification: Notification, postingStyle: PostingStyle, coalesceMask: NotificationCoalescing, forModes modes: [String]?)
  func dequeueNotificationsMatching(notification: Notification, coalesceMask: Int)
  convenience init()
}
