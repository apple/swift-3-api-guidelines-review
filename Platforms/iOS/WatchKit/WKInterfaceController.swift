
@available(iOS 8.2, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
@available(iOS 8.2, *)
enum WKMenuItemIcon : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Plain
  case AllowEmoji
  case AllowAnimatedEmoji
}
@available(iOS 8.2, *)
class WKInterfaceController : NSObject {
  func awakeWithContext(_ context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  func table(_ table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
  func handleActionWithIdentifier(_ identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  func handleActionWithIdentifier(_ identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(_ userInfo: [NSObject : AnyObject]?)
  func setTitle(_ title: String?)
  func pushControllerWithName(_ name: String, context context: AnyObject?)
  func popController()
  func popToRootController()
  class func reloadRootControllersWithNames(_ names: [String], contexts contexts: [AnyObject]?)
  func becomeCurrentPage()
  func presentControllerWithName(_ name: String, context context: AnyObject?)
  func presentControllerWithNames(_ names: [String], contexts contexts: [AnyObject]?)
  func dismissController()
  func presentTextInputControllerWithSuggestions(_ suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsForLanguage(_ suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  func contextForSegueWithIdentifier(_ segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(_ segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(_ segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(_ segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex rowIndex: Int) -> [AnyObject]?
  func addMenuItemWithImage(_ image: UIImage, title title: String, action action: Selector)
  func addMenuItemWithImageNamed(_ imageName: String, title title: String, action action: Selector)
  func addMenuItemWithItemIcon(_ itemIcon: WKMenuItemIcon, title title: String, action action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(_ type: String, userInfo userInfo: [NSObject : AnyObject]?, webpageURL webpageURL: NSURL?)
  func invalidateUserActivity()
  @available(iOS 8.2, *)
  class func openParentApplication(_ userInfo: [NSObject : AnyObject], reply reply: (([NSObject : AnyObject], NSError?) -> Void)?) -> Bool
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(_ namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(_ namesAndContexts: [(name: String, context: AnyObject)])
}
@available(iOS 8.2, *)
class WKUserNotificationInterfaceController : WKInterfaceController {
  func didReceiveRemoteNotification(_ remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceiveLocalNotification(_ localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
}
