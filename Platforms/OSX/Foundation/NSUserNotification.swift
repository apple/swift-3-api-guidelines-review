
@available(OSX 10.8, *)
enum NSUserNotificationActivationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case ContentsClicked
  case ActionButtonClicked
  @available(OSX 10.9, *)
  case Replied
  @available(OSX 10.10, *)
  case AdditionalActionClicked
}
@available(OSX 10.8, *)
class NSUserNotification : NSObject, NSCopying {
  init()
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : AnyObject]?
  @NSCopying var deliveryDate: NSDate?
  @NSCopying var deliveryTimeZone: NSTimeZone?
  @NSCopying var deliveryRepeatInterval: NSDateComponents?
  @NSCopying var actualDeliveryDate: NSDate? { get }
  var presented: Bool { get }
  var remote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: NSUserNotificationActivationType { get }
  var otherButtonTitle: String
  @available(OSX 10.9, *)
  var identifier: String?
  @available(OSX 10.9, *)
  var hasReplyButton: Bool
  @available(OSX 10.9, *)
  var responsePlaceholder: String?
  @available(OSX 10.9, *)
  @NSCopying var response: NSAttributedString? { get }
  @available(OSX 10.10, *)
  var additionalActions: [NSUserNotificationAction]?
  @available(OSX 10.10, *)
  @NSCopying var additionalActivationAction: NSUserNotificationAction? { get }
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class NSUserNotificationAction : NSObject, NSCopying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
  init()
  @available(OSX 10.10, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.8, *)
let NSUserNotificationDefaultSoundName: String
@available(OSX 10.8, *)
class NSUserNotificationCenter : NSObject {
  class func defaultUserNotificationCenter() -> NSUserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged NSUserNotificationCenterDelegate?
  var scheduledNotifications: [NSUserNotification]
  func scheduleNotification(notification: NSUserNotification)
  func removeScheduledNotification(notification: NSUserNotification)
  var deliveredNotifications: [NSUserNotification] { get }
  func deliverNotification(notification: NSUserNotification)
  func removeDeliveredNotification(notification: NSUserNotification)
  func removeAllDeliveredNotifications()
  init()
}
protocol NSUserNotificationCenterDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, didDeliverNotification notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, didActivateNotification notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: NSUserNotificationCenter, shouldPresentNotification notification: NSUserNotification) -> Bool
}
