
@available(watchOS 2.0, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
enum WKAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alert
  case SideBySideButtonsAlert
  case ActionSheet
}
@available(watchOS 2.0, *)
enum WKVideoGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ResizeAspect
  case ResizeAspectFill
  case Resize
}
@available(watchOS 2.0, *)
enum WKAudioRecorderPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NarrowBandSpeech
  case WideBandSpeech
  case HighQualityAudio
}
@available(watchOS 2.0, *)
class WKInterfaceController : NSObject {
  init()
  func awakeWithContext(context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  @available(watchOS 2.0, *)
  func didAppear()
  @available(watchOS 2.0, *)
  func willDisappear()
  @available(watchOS 2.0, *)
  func pickerDidFocus(picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidResignFocus(picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidSettle(picker: WKInterfacePicker)
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
  @available(watchOS 2.0, *)
  func presentMediaPlayerControllerWithURL(URL: NSURL, options: [NSObject : AnyObject]?, completion: (Bool, NSTimeInterval, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissMediaPlayerController()
  @available(watchOS 2.0, *)
  func presentAudioRecorderControllerWithOutputURL(URL: NSURL, preset: WKAudioRecorderPreset, options: [NSObject : AnyObject]?, completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissAudioRecorderController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  @available(watchOS 2.0, *)
  func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  @available(watchOS 2.0, *)
  func presentAlertControllerWithTitle(title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  @available(watchOS 2.0, *)
  func presentAddPassesControllerWithPasses(passes: [AnyObject], completion: () -> Void)
  @available(watchOS 2.0, *)
  func dismissAddPassesController()
  func addMenuItemWithImage(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWithItemIcon(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [NSObject : AnyObject]?, webpageURL: NSURL?)
  func invalidateUserActivity()
  @available(watchOS 2.0, *)
  func beginGlanceUpdates()
  @available(watchOS 2.0, *)
  func endGlanceUpdates()
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(namesAndContexts: [(name: String, context: AnyObject)])
}
@available(watchOS 2.0, *)
let UIUserNotificationActionResponseTypedTextKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsAutoplayKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsStartTimeKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsVideoGravityKey: String
@available(watchOS 2.0, *)
let WKMediaPlayerControllerOptionsLoopsKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsActionTitleKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsAlwaysShowActionTitleKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsAutorecordKey: String
@available(watchOS 2.0, *)
let WKAudioRecorderControllerOptionsMaximumDurationKey: String
@available(watchOS 2.0, *)
class WKUserNotificationInterfaceController : WKInterfaceController {
  init()
  func didReceiveRemoteNotification(remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceiveLocalNotification(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forRemoteNotification remoteNotification: [NSObject : AnyObject], inputLanguage: String) -> [String]
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forLocalNotification localNotification: UILocalNotification, inputLanguage: String) -> [String]
}