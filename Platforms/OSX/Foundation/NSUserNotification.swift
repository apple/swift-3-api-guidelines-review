
@available(OSX 10.8, *)
enum UserNotificationActivationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case contentsClicked
  case actionButtonClicked
  @available(OSX 10.9, *)
  case replied
  @available(OSX 10.10, *)
  case additionalActionClicked
}
@available(OSX 10.8, *)
class UserNotification : Object, Copying {
  init()
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : AnyObject]?
  @NSCopying var deliveryDate: Date?
  @NSCopying var deliveryTimeZone: TimeZone?
  @NSCopying var deliveryRepeatInterval: DateComponents?
  @NSCopying var actualDeliveryDate: Date? { get }
  var isPresented: Bool { get }
  var isRemote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: UserNotificationActivationType { get }
  var otherButtonTitle: String
  @available(OSX 10.9, *)
  var identifier: String?
  @available(OSX 10.9, *)
  var hasReplyButton: Bool
  @available(OSX 10.9, *)
  var responsePlaceholder: String?
  @available(OSX 10.9, *)
  @NSCopying var response: AttributedString? { get }
  @available(OSX 10.10, *)
  var additionalActions: [UserNotificationAction]?
  @available(OSX 10.10, *)
  @NSCopying var additionalActivationAction: UserNotificationAction? { get }
  @available(OSX 10.8, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(OSX 10.10, *)
class UserNotificationAction : Object, Copying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
  init()
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
@available(OSX 10.8, *)
let userNotificationDefaultSoundName: String
@available(OSX 10.8, *)
class UserNotificationCenter : Object {
  class func defaultUserNotificationCenter() -> UserNotificationCenter
  unowned(unsafe) var delegate: @sil_unmanaged UserNotificationCenterDelegate?
  var scheduledNotifications: [UserNotification]
  func scheduleNotification(notification: UserNotification)
  func removeScheduledNotification(notification: UserNotification)
  var deliveredNotifications: [UserNotification] { get }
  func deliver(notification: UserNotification)
  func removeDeliveredNotification(notification: UserNotification)
  func removeAllDeliveredNotifications()
  init()
}
protocol UserNotificationCenterDelegate : ObjectProtocol {
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, didDeliver notification: UserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, didActivate notification: UserNotification)
  @available(OSX 10.8, *)
  optional func userNotificationCenter(center: UserNotificationCenter, shouldPresent notification: UserNotification) -> Bool
}
