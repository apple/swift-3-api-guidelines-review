
@available(iOS 9.0, *)
enum UIApplicationShortcutIconType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Compose
  case Play
  case Pause
  case Add
  case Location
  case Search
  case Share
  @available(iOS 9.1, *)
  case Prohibit
  @available(iOS 9.1, *)
  case Contact
  @available(iOS 9.1, *)
  case Home
  @available(iOS 9.1, *)
  case MarkLocation
  @available(iOS 9.1, *)
  case Favorite
  @available(iOS 9.1, *)
  case Love
  @available(iOS 9.1, *)
  case Cloud
  @available(iOS 9.1, *)
  case Invitation
  @available(iOS 9.1, *)
  case Confirmation
  @available(iOS 9.1, *)
  case Mail
  @available(iOS 9.1, *)
  case Message
  @available(iOS 9.1, *)
  case Date
  @available(iOS 9.1, *)
  case Time
  @available(iOS 9.1, *)
  case CapturePhoto
  @available(iOS 9.1, *)
  case CaptureVideo
  @available(iOS 9.1, *)
  case Task
  @available(iOS 9.1, *)
  case TaskCompleted
  @available(iOS 9.1, *)
  case Alarm
  @available(iOS 9.1, *)
  case Bookmark
  @available(iOS 9.1, *)
  case Shuffle
  @available(iOS 9.1, *)
  case Audio
  @available(iOS 9.1, *)
  case Update
}
@available(iOS 9.0, *)
class UIApplicationShortcutIcon : NSObject, NSCopying {
  convenience init(type type: UIApplicationShortcutIconType)
  convenience init(templateImageName templateImageName: String)
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class UIApplicationShortcutItem : NSObject, NSCopying, NSMutableCopying {
  init(type type: String, localizedTitle localizedTitle: String, localizedSubtitle localizedSubtitle: String?, icon icon: UIApplicationShortcutIcon?, userInfo userInfo: [NSObject : AnyObject]?)
  convenience init(type type: String, localizedTitle localizedTitle: String)
  var type: String { get }
  var localizedTitle: String { get }
  var localizedSubtitle: String? { get }
  @NSCopying var icon: UIApplicationShortcutIcon? { get }
  var userInfo: [String : NSSecureCoding]? { get }
  @available(iOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(iOS 9.0, *)
class UIMutableApplicationShortcutItem : UIApplicationShortcutItem {
}
