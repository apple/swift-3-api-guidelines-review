
@available(watchOS 2.0, *)
enum WKUserNotificationInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case custom
}
@available(watchOS 2.0, *)
enum WKMenuItemIcon : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accept
  case add
  case block
  case decline
  case info
  case maybe
  case more
  case mute
  case pause
  case play
  case `repeat`
  case resume
  case share
  case shuffle
  case speaker
  case trash
}
enum WKTextInputMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case allowEmoji
  case allowAnimatedEmoji
}
@available(watchOS 2.0, *)
enum WKAlertControllerStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alert
  case sideBySideButtonsAlert
  case actionSheet
}
@available(watchOS 2.0, *)
enum WKVideoGravity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case resizeAspect
  case resizeAspectFill
  case resize
}
@available(watchOS 2.0, *)
enum WKAudioRecorderPreset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case narrowBandSpeech
  case wideBandSpeech
  case highQualityAudio
}
@available(watchOS 2.0, *)
class WKInterfaceController : Object {
  init()
  func awake(context context: AnyObject?)
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
  func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
  func handleAction(identifier identifier: String?, forRemoteNotification remoteNotification: [Object : AnyObject])
  func handleAction(identifier identifier: String?, for localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [Object : AnyObject]?)
  func setTitle(title: String?)
  func push(name name: String, context: AnyObject?)
  func pop()
  func popToRootController()
  class func reloadRootControllers(names names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func present(name name: String, context: AnyObject?)
  func present(names names: [String], contexts: [AnyObject]?)
  func dismiss()
  func presentTextInputController(suggestions suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestions(forLanguage suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  @available(watchOS 2.0, *)
  func presentMediaPlayerController(URL: URL, options: [Object : AnyObject]? = [:], completion: (Bool, TimeInterval, Error?) -> Void)
  @available(watchOS 2.0, *)
  func dismissMediaPlayerController()
  @available(watchOS 2.0, *)
  func presentAudioRecorderController(outputURL URL: URL, preset: WKAudioRecorderPreset, options: [Object : AnyObject]? = [:], completion: (Bool, Error?) -> Void)
  @available(watchOS 2.0, *)
  func dismissAudioRecorderController()
  func contextForSegue(withIdentifier segueIdentifier: String) -> AnyObject?
  func contextsForSegue(withIdentifier segueIdentifier: String) -> [AnyObject]?
  func contextForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegue(withIdentifier segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  @available(watchOS 2.0, *)
  func animate(duration duration: TimeInterval, animations: () -> Void)
  @available(watchOS 2.0, *)
  func presentAlert(title title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  @available(watchOS 2.0, *)
  func presentAddPassesController(passes passes: [AnyObject], completion: () -> Void)
  @available(watchOS 2.0, *)
  func dismissAddPassesController()
  func addMenuItem(image: UIImage, title: String, action: Selector)
  func addMenuItem(withImageNamed imageName: String, title: String, action: Selector)
  func addMenuItem(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [Object : AnyObject]? = [:], webpageURL: URL?)
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
  func didReceiveRemoteNotification(remoteNotification: [Object : AnyObject], withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  @available(watchOS 2.0, *)
  func suggestionsForResponseToAction(withIdentifier identifier: String, forRemoteNotification remoteNotification: [Object : AnyObject], inputLanguage: String) -> [String]
  @available(watchOS 2.0, *)
  func suggestionsForResponseToAction(withIdentifier identifier: String, for localNotification: UILocalNotification, inputLanguage: String) -> [String]
}
