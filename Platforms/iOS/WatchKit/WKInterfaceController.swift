
@available(iOS 8.2, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
@available(iOS 8.2, *)
enum WKMenuItemIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Accept
  case Add
  case Block
  case Decline
  case Info
  case Maybe
  case More
  case Mute
  case Pause
  case Play
  case Repeat
  case Resume
  case Share
  case Shuffle
  case Speaker
  case Trash
}
enum WKTextInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case AllowEmoji
  case AllowAnimatedEmoji
}
@available(iOS 8.2, *)
class WKInterfaceController : NSObject {
  init()
  func awakeWithContext(context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
  func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  func setTitle(title: String?)
  func pushControllerWithName(name: String, context: AnyObject?)
  func popController()
  func popToRootController()
  class func reloadRootControllersWithNames(names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func presentControllerWithName(name: String, context: AnyObject?)
  func presentControllerWithNames(names: [String], contexts: [AnyObject]?)
  func dismissController()
  func presentTextInputControllerWithSuggestions(suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsForLanguage(suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func addMenuItemWithImage(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWithItemIcon(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [NSObject : AnyObject]?, webpageURL: NSURL?)
  func invalidateUserActivity()
  @available(iOS 8.2, *)
  class func openParentApplication(userInfo: [NSObject : AnyObject], reply: (([NSObject : AnyObject], NSError?) -> Void)?) -> Bool
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(namesAndContexts: [(name: String, context: AnyObject)])
}
@available(iOS 8.2, *)
class WKUserNotificationInterfaceController : WKInterfaceController {
  init()
  func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
}
