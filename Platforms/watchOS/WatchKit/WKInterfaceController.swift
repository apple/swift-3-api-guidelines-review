
@available(watchOS 2.0, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Custom
}
@available(watchOS 2.0, *)
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
@available(watchOS 2.0, *)
enum WKAlertControllerStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Alert
  case SideBySideButtonsAlert
  case ActionSheet
}
@available(watchOS 2.0, *)
enum WKVideoGravity : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case ResizeAspect
  case ResizeAspectFill
  case Resize
}
@available(watchOS 2.0, *)
enum WKAudioRecorderPreset : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NarrowBandSpeech
  case WideBandSpeech
  case HighQualityAudio
}
@available(watchOS 2.0, *)
class WKInterfaceController : NSObject {
  func awakeWithContext(_ context: AnyObject?)
  var contentFrame: CGRect { get }
  func willActivate()
  func didDeactivate()
  @available(watchOS 2.0, *)
  func didAppear()
  @available(watchOS 2.0, *)
  func willDisappear()
  @available(watchOS 2.0, *)
  func pickerDidFocus(_ picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidResignFocus(_ picker: WKInterfacePicker)
  @available(watchOS 2.0, *)
  func pickerDidSettle(_ picker: WKInterfacePicker)
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
  @available(watchOS 2.0, *)
  func presentMediaPlayerControllerWithURL(_ URL: NSURL, options options: [NSObject : AnyObject]?, completion completion: (Bool, NSTimeInterval, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissMediaPlayerController()
  @available(watchOS 2.0, *)
  func presentAudioRecorderControllerWithOutputURL(_ URL: NSURL, preset preset: WKAudioRecorderPreset, options options: [NSObject : AnyObject]?, completion completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissAudioRecorderController()
  func contextForSegueWithIdentifier(_ segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(_ segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(_ segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(_ segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex rowIndex: Int) -> [AnyObject]?
  @available(watchOS 2.0, *)
  func animateWithDuration(_ duration: NSTimeInterval, animations animations: () -> Void)
  @available(watchOS 2.0, *)
  func presentAlertControllerWithTitle(_ title: String?, message message: String?, preferredStyle preferredStyle: WKAlertControllerStyle, actions actions: [WKAlertAction])
  @available(watchOS 2.0, *)
  func presentAddPassesControllerWithPasses(_ passes: [AnyObject], completion completion: () -> Void)
  @available(watchOS 2.0, *)
  func dismissAddPassesController()
  func addMenuItemWithImage(_ image: UIImage, title title: String, action action: Selector)
  func addMenuItemWithImageNamed(_ imageName: String, title title: String, action action: Selector)
  func addMenuItemWithItemIcon(_ itemIcon: WKMenuItemIcon, title title: String, action action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(_ type: String, userInfo userInfo: [NSObject : AnyObject]?, webpageURL webpageURL: NSURL?)
  func invalidateUserActivity()
  @available(watchOS 2.0, *)
  func beginGlanceUpdates()
  @available(watchOS 2.0, *)
  func endGlanceUpdates()
}

@available(iOS 8.2, *)
extension WKInterfaceController {
  class func reloadRootControllers(_ namesAndContexts: [(name: String, context: AnyObject)])
  func presentController(_ namesAndContexts: [(name: String, context: AnyObject)])
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
  func didReceiveRemoteNotification(_ remoteNotification: [NSObject : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceiveLocalNotification(_ localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(_ identifier: String, forRemoteNotification remoteNotification: [NSObject : AnyObject], inputLanguage inputLanguage: String) -> [String]
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(_ identifier: String, forLocalNotification localNotification: UILocalNotification, inputLanguage inputLanguage: String) -> [String]
}
