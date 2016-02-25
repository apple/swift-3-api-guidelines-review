
@available(OSX 10.8, *)
enum NSUserNotificationActivationType : Int {
  init?(rawValue rawValue: Int)
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
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.10, *)
class NSUserNotificationAction : NSObject, NSCopying {
  convenience init(identifier identifier: String?, title title: String?)
  var identifier: String? { get }
  var title: String? { get }
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.8, *)
let NSUserNotificationDefaultSoundName: String
@available(OSX 10.8, *)
class NSUserNotificationCenter : NSObject {
  class func defaultUserNotificationCenter() -> NSUserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged NSUserNotificationCenterDelegate?
  var scheduledNotifications: [NSUserNotification]
  func scheduleNotification(_ notification: NSUserNotification)
  func removeScheduledNotification(_ notification: NSUserNotification)
  var deliveredNotifications: [NSUserNotification] { get }
  func deliverNotification(_ notification: NSUserNotification)
  func removeDeliveredNotification(_ notification: NSUserNotification)
  func removeAllDeliveredNotifications()
}
protocol NSUserNotificationCenterDelegate : NSObjectProtocol {
  @available(OSX 10.8, *)
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, didDeliverNotification notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, didActivateNotification notification: NSUserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, shouldPresentNotification notification: NSUserNotification) -> Bool
}
