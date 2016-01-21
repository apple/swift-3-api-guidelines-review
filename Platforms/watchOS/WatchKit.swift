
@available(watchOS 2.0, *)
func WKAccessibilityIsVoiceOverRunning() -> Bool
@available(watchOS 2.0, *)
let WKAccessibilityVoiceOverStatusChanged: String
@available(watchOS 2.0, *)
enum WKAlertActionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  case Cancel
  case Destructive
}
@available(watchOS 2.0, *)
typealias WKAlertActionHandler = () -> Void
@available(watchOS 2.0, *)
class WKAlertAction : NSObject {
  convenience init(title: String, style: WKAlertActionStyle, handler: WKAlertActionHandler)
}

/*!
 @class		WKAudioFileAsset
 
 @abstract
 WatchKit corollary to AVFoundation AVAsset abstract class
 
 @discussion
 This class provides the functionality of AVAsset for Watch OS apps. Only file-based assets are allowed.
*/
@available(watchOS 2.0, *)
class WKAudioFileAsset : NSObject {

  /*!
   @method		assetWithURL:
   @abstract		Returns an instance of WKAudioFileAsset for inspection of a media resource.
   @param		URL
   An instance of NSURL that references a file-based media resource.
   @result		An instance of WKAudioFileAsset.
   @discussion	Returns a newly allocated instance of a subclass of WKAudioFileAsset initialized with the specified URL.
                  Title, ablumTitle, and artist properties are initialized to the values found in the common metadata of the media resource
   */
  convenience init(url URL: NSURL)

  /*!
   @method		assetWithURL:title:albumTitle:artist:
   @abstract		Returns an instance of WKAudioFileAsset for inspection of a media resource.
   @param		URL
   An instance of NSURL that references a file-based media resource.
   @param		title
   Title string to use for the Now Playing controls. If nil, value in common metadata of the media resource will be used. If no value is found in common metadata, the file name will be used.
   @param		albumTitle
   Album Title string to use for the Now Playing controls. If nil, value in common metadata of the media resource will be used.
   @param		artist
   Artist string to use for the Now Playing controls. If nil, value in common metadata of the media resource will be used.
   @result		An instance of WKAudioFileAsset.
   @discussion	Returns a newly allocated instance of a subclass of WKAudioFileAsset initialized with the specified URL.
   */
  convenience init(url URL: NSURL, title: String?, albumTitle: String?, artist: String?)
  var url: NSURL { get }
  var duration: NSTimeInterval { get }
  var title: String? { get }
  var albumTitle: String? { get }
  var artist: String? { get }
}
@available(watchOS 2.0, *)
enum WKAudioFilePlayerStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}
@available(watchOS 2.0, *)
class WKAudioFilePlayer : NSObject {
  convenience init(playerItem item: WKAudioFilePlayerItem)
  func play()
  func pause()
  func replaceCurrentItemWith(item: WKAudioFilePlayerItem?)
  var currentItem: WKAudioFilePlayerItem? { get }
  var status: WKAudioFilePlayerStatus { get }
  var error: NSError? { get }
  var rate: Float
  var currentTime: NSTimeInterval { get }
}

/*!
 @class		WKAudioFileQueuePlayer
 
 @abstract
 WatchKit corollary to AVFoundation AVQueuePlayer class
 
 @discussion
 This class provides the functionality of AVQueuePlayer for Watch OS apps. Only file-based assets are allowed.
 */
@available(watchOS 2.0, *)
class WKAudioFileQueuePlayer : WKAudioFilePlayer {
  convenience init(items: [WKAudioFilePlayerItem])
  func advanceToNextItem()
  func appendItem(item: WKAudioFilePlayerItem)
  func removeItem(item: WKAudioFilePlayerItem)
  func removeAllItems()
  var items: [WKAudioFilePlayerItem] { get }
  convenience init(playerItem item: WKAudioFilePlayerItem)
}
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemTimeJumpedNotification: String
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemDidPlayToEndTimeNotification: String
@available(watchOS 2.0, *)
let WKAudioFilePlayerItemFailedToPlayToEndTimeNotification: String
@available(watchOS 2.0, *)
enum WKAudioFilePlayerItemStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case ReadyToPlay
  case Failed
}

/*!
 @class		WKAudioFilePlayer
 
 @abstract
 WatchKit corollary to AVFoundation AVPlayer class
 
 @discussion
 This class provides the functionality of AVPlayer for Watch OS apps. Only file-based assets are allowed.
 */
@available(watchOS 2.0, *)
class WKAudioFilePlayerItem : NSObject {
  /*not inherited*/ init(asset: WKAudioFileAsset)
  var asset: WKAudioFileAsset { get }
  var status: WKAudioFilePlayerItemStatus { get }
  var error: NSError? { get }
  var currentTime: NSTimeInterval { get }
}
@available(watchOS 2.0, *)
let WatchKitErrorDomain: String
@available(watchOS 2.0, *)
enum WatchKitErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UnknownError
  case ApplicationDelegateWatchKitRequestReplyNotCalledError
  case InvalidArgumentError
  case MediaPlayerError
  case DownloadError
  case RecordingFailedError
}

extension WatchKitErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(watchOS 2.0, *)
class WKExtension : NSObject {
  class func shared() -> WKExtension
  func openSystemURL(url: NSURL)
  weak var delegate: @sil_weak WKExtensionDelegate?
  var rootInterfaceController: WKInterfaceController? { get }
  init()
}
@available(watchOS 2.0, *)
protocol WKExtensionDelegate : NSObjectProtocol {
  optional func applicationDidFinishLaunching()
  optional func applicationDidBecomeActive()
  optional func applicationWillResignActive()
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  optional func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject])
  optional func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  optional func didReceiveRemoteNotification(userInfo: [NSObject : AnyObject])
  optional func didReceive(notification: UILocalNotification)
}
@available(watchOS 2.0, *)
class WKImage : NSObject, NSCopying, NSSecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: NSData)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: NSData? { get }
  var imageName: String? { get }
  @available(watchOS 2.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  func setEnabled(enabled: Bool)
}
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
  func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
  func handleActionWithIdentifier(identifier: String?, forRemoteNotification remoteNotification: [NSObject : AnyObject])
  func handleActionWithIdentifier(identifier: String?, forLocalNotification localNotification: UILocalNotification)
  func handleUserActivity(userInfo: [NSObject : AnyObject]?)
  func setTitle(title: String?)
  func pushWithName(name: String, context: AnyObject?)
  func pop()
  func popToRootController()
  class func reloadRootControllersWithNames(names: [String], contexts: [AnyObject]?)
  func becomeCurrentPage()
  func presentWithName(name: String, context: AnyObject?)
  func presentWithNames(names: [String], contexts: [AnyObject]?)
  func dismiss()
  func presentTextInputControllerWithSuggestions(suggestions: [String]?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func presentTextInputControllerWithSuggestionsForLanguage(suggestionsHandler: ((String) -> [AnyObject]?)?, allowedInputMode inputMode: WKTextInputMode, completion: ([AnyObject]?) -> Void)
  func dismissTextInputController()
  @available(watchOS 2.0, *)
  func presentMediaPlayerControllerWith(URL: NSURL, options: [NSObject : AnyObject]? = [:], completion: (Bool, NSTimeInterval, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissMediaPlayerController()
  @available(watchOS 2.0, *)
  func presentAudioRecorderControllerWithOutputURL(URL: NSURL, preset: WKAudioRecorderPreset, options: [NSObject : AnyObject]? = [:], completion: (Bool, NSError?) -> Void)
  @available(watchOS 2.0, *)
  func dismissAudioRecorderController()
  func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String) -> [AnyObject]?
  func contextForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  @available(watchOS 2.0, *)
  func animateWithDuration(duration: NSTimeInterval, animations: () -> Void)
  @available(watchOS 2.0, *)
  func presentAlertWithTitle(title: String?, message: String?, preferredStyle: WKAlertControllerStyle, actions: [WKAlertAction])
  @available(watchOS 2.0, *)
  func presentAddPassesControllerWithPasses(passes: [AnyObject], completion: () -> Void)
  @available(watchOS 2.0, *)
  func dismissAddPassesController()
  func addMenuItemWith(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWith(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [NSObject : AnyObject]? = [:], webpageURL: NSURL?)
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
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forRemoteNotification remoteNotification: [NSObject : AnyObject], inputLanguage: String) -> [String]
  @available(watchOS 2.0, *)
  func suggestionsForResponseToActionWithIdentifier(identifier: String, forLocalNotification localNotification: UILocalNotification, inputLanguage: String) -> [String]
}
@available(watchOS 2.0, *)
class WKInterfaceDate : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setTimeZone(timeZone: NSTimeZone?)
  func setCalendar(calendar: NSCalendar?)
}
@available(watchOS 2.0, *)
enum WKHapticType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Notification
  case DirectionUp
  case DirectionDown
  case Success
  case Failure
  case Retry
  case Start
  case Stop
  case Click
}
@available(watchOS 2.1, *)
enum WKInterfaceLayoutDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case LeftToRight
  case RightToLeft
}
@available(watchOS 2.1, *)
enum WKInterfaceSemanticContentAttribute : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unspecified
  case Playback
  case Spatial
  case ForceLeftToRight
  case ForceRightToLeft
}
class WKInterfaceDevice : NSObject {
  class func current() -> WKInterfaceDevice
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  @available(watchOS 2.1, *)
  var layoutDirection: WKInterfaceLayoutDirection { get }
  @available(watchOS 2.1, *)
  class func interfaceLayoutDirectionFor(semanticContentAttribute: WKInterfaceSemanticContentAttribute) -> WKInterfaceLayoutDirection
  @available(watchOS 2.0, *)
  var systemVersion: String { get }
  @available(watchOS 2.0, *)
  var name: String { get }
  @available(watchOS 2.0, *)
  var model: String { get }
  @available(watchOS 2.0, *)
  var localizedModel: String { get }
  @available(watchOS 2.0, *)
  var systemName: String { get }
  @available(watchOS 2.0, *)
  func play(type: WKHapticType)
  init()
}
@available(watchOS 2.0, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  @available(watchOS 2.0, *)
  func setContentInset(contentInset: UIEdgeInsets)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: NSData?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  @available(watchOS 2.0, *)
  func startAnimating()
  @available(watchOS 2.0, *)
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(watchOS 2.0, *)
  func stopAnimating()
}
@available(watchOS 2.0, *)
class WKInterfaceLabel : WKInterfaceObject {
  func setText(text: String?)
  func setTextColor(color: UIColor?)
  func setAttributedText(attributedText: NSAttributedString?)
}
@available(watchOS 2.0, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Red
  case Green
  case Purple
}
@available(watchOS 2.0, *)
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(mapRect: MKMapRect)
  func setRegion(coordinateRegion: MKCoordinateRegion)
  func addAnnotation(location: CLLocationCoordinate2D, withImage image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withPinColor pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
@available(watchOS 2.0, *)
class WKInterfaceMovie : WKInterfaceObject {
  func setMovieURL(URL: NSURL)
  func setVideoGravity(videoGravity: WKVideoGravity)
  func setLoops(loops: Bool)
  func setPosterImage(posterImage: WKImage?)
}
@available(watchOS 2.0, *)
enum WKInterfaceObjectHorizontalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Left
  case Center
  case Right
}
@available(watchOS 2.0, *)
enum WKInterfaceObjectVerticalAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Top
  case Center
  case Bottom
}
@available(watchOS 2.0, *)
class WKInterfaceObject : NSObject {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  @available(watchOS 2.1, *)
  func setSemanticContentAttribute(semanticContentAttribute: WKInterfaceSemanticContentAttribute)
  @available(watchOS 2.0, *)
  func setHorizontalAlignment(horizontalAlignment: WKInterfaceObjectHorizontalAlignment)
  @available(watchOS 2.0, *)
  func setVerticalAlignment(verticalAlignment: WKInterfaceObjectVerticalAlignment)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  @available(watchOS 2.0, *)
  func setRelativeWidth(width: CGFloat, withAdjustment adjustment: CGFloat)
  @available(watchOS 2.0, *)
  func setRelativeHeight(height: CGFloat, withAdjustment adjustment: CGFloat)
  @available(watchOS 2.0, *)
  func sizeToFitWidth()
  @available(watchOS 2.0, *)
  func sizeToFitHeight()
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  @available(watchOS 2.0, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func setAccessibilityLabel(accessibilityLabel: String?)
  func setAccessibilityHint(accessibilityHint: String?)
  func setAccessibilityValue(accessibilityValue: String?)
  func setIsAccessibilityElement(isAccessibilityElement: Bool)
  func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(accessibilityImageRegions: [WKAccessibilityImageRegion])
}
@available(watchOS 2.0, *)
class WKAccessibilityImageRegion : NSObject {
  var frame: CGRect
  var label: String
  init()
}
@available(watchOS 2.0, *)
class WKInterfacePicker : WKInterfaceObject {
  func focus()
  func resignFocus()
  func setSelectedItemIndex(itemIndex: Int)
  func setItems(items: [WKPickerItem]?)
  func setCoordinatedAnimations(coordinatedAnimations: [WKInterfaceObject]?)
  func setEnabled(enabled: Bool)
}
@available(watchOS 2.0, *)
class WKPickerItem : NSObject, NSSecureCoding {
  var title: String?
  var caption: String?
  @NSCopying var accessoryImage: WKImage?
  @NSCopying var contentImage: WKImage?
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
class WKInterfaceSeparator : WKInterfaceObject {
  func setColor(color: UIColor?)
}
@available(watchOS 2.0, *)
class WKInterfaceSlider : WKInterfaceObject {
  func setEnabled(enabled: Bool)
  func setValue(value: Float)
  func setColor(color: UIColor?)
  func setNumberOfSteps(numberOfSteps: Int)
}
@available(watchOS 2.0, *)
class WKInterfaceSwitch : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setEnabled(enabled: Bool)
  func setOn(on: Bool)
  func setColor(color: UIColor?)
}
@available(watchOS 2.0, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAt(index: Int) -> AnyObject?
  func insertRowsAt(rows: NSIndexSet, withRowType rowType: String)
  func removeRowsAt(rows: NSIndexSet)
  func scrollToRowAt(index: Int)
}
@available(watchOS 2.0, *)
class WKInterfaceTimer : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setDate(date: NSDate)
  func start()
  func stop()
}
