
@available(iOS 8.0, *)
struct UIUserNotificationType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: UIUserNotificationType { get }
  static var badge: UIUserNotificationType { get }
  static var sound: UIUserNotificationType { get }
  static var alert: UIUserNotificationType { get }
}
@available(iOS 9.0, *)
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case textInput
}
@available(iOS 8.0, *)
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case foreground
  case background
}
@available(iOS 8.0, *)
enum UIUserNotificationActionContext : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case minimal
}
@available(iOS 9.0, *)
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS 9.0, *)
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS 8.0, *)
class UIUserNotificationSettings : NSObject {
  convenience init(forTypes types: UIUserNotificationType, categories categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
}
@available(iOS 8.0, *)
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  func actions(for context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  func setActions(_ actions: [UIUserNotificationAction]?, for context: UIUserNotificationActionContext)
}
@available(iOS 8.0, *)
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [NSObject : AnyObject] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var isAuthenticationRequired: Bool { get }
  var isDestructive: Bool { get }
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationAction : UIUserNotificationAction {
}
