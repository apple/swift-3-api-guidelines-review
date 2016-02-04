
@available(iOS 8.0, *)
struct UIUserNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIUserNotificationType { get }
  static var Badge: UIUserNotificationType { get }
  static var Sound: UIUserNotificationType { get }
  static var Alert: UIUserNotificationType { get }
}
@available(iOS 9.0, *)
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case TextInput
}
@available(iOS 8.0, *)
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Foreground
  case Background
}
@available(iOS 8.0, *)
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Minimal
}
@available(iOS 9.0, *)
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS 9.0, *)
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS 8.0, *)
class UIUserNotificationSettings : NSObject {
  convenience init(forTypes types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
  init()
}
@available(iOS 8.0, *)
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  func actionsForContext(context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  var identifier: String?
  func setActions(actions: [UIUserNotificationAction]?, forContext context: UIUserNotificationActionContext)
  init()
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  init()
  init?(coder aDecoder: NSCoder)
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [NSObject : AnyObject] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var authenticationRequired: Bool { get }
  var destructive: Bool { get }
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
@available(iOS 8.0, *)
class UIMutableUserNotificationAction : UIUserNotificationAction {
  var identifier: String?
  var title: String?
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior
  @available(iOS 9.0, *)
  var parameters: [NSObject : AnyObject]
  var activationMode: UIUserNotificationActivationMode
  var authenticationRequired: Bool
  var destructive: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
