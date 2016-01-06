
@available(iOS 8.2, *)
let WatchKitErrorDomain: String
@available(iOS 8.2, *)
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
@available(iOS 8.2, *)
class WKInterfaceButton : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  func setEnabled(enabled: Bool)
}
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
  func table(table: WKInterfaceTable, didSelectRowAt rowIndex: Int)
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
  func contextForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> AnyObject?
  func contextsForSegueWithIdentifier(segueIdentifier: String, in table: WKInterfaceTable, rowIndex: Int) -> [AnyObject]?
  func addMenuItemWith(image: UIImage, title: String, action: Selector)
  func addMenuItemWithImageNamed(imageName: String, title: String, action: Selector)
  func addMenuItemWith(itemIcon: WKMenuItemIcon, title: String, action: Selector)
  func clearAllMenuItems()
  func updateUserActivity(type: String, userInfo: [NSObject : AnyObject]? = [:], webpageURL: NSURL?)
  func invalidateUserActivity()
  @available(iOS 8.2, *)
  class func openParentApplication(userInfo: [NSObject : AnyObject], reply: (([NSObject : AnyObject], NSError?) -> Void)? = nil) -> Bool
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
  func didReceive(localNotification: UILocalNotification, withCompletion completionHandler: (WKUserNotificationInterfaceType) -> Void)
}
@available(iOS 8.2, *)
class WKInterfaceDate : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setTimeZone(timeZone: NSTimeZone?)
  func setCalendar(calendar: NSCalendar?)
}
class WKInterfaceDevice : NSObject {
  class func current() -> WKInterfaceDevice
  @available(iOS 8.2, *)
  func addCachedImage(image: UIImage, name: String) -> Bool
  @available(iOS 8.2, *)
  func addCachedImageWith(imageData: NSData, name: String) -> Bool
  @available(iOS 8.2, *)
  func removeCachedImageWithName(name: String)
  @available(iOS 8.2, *)
  func removeAllCachedImages()
  @available(iOS 8.2, *)
  var cachedImages: [String : NSNumber] { get }
  var screenBounds: CGRect { get }
  var screenScale: CGFloat { get }
  var preferredContentSizeCategory: String { get }
  @available(iOS 9.0, *)
  var systemVersion: String { get }
  @available(iOS 9.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  var model: String { get }
  @available(iOS 9.0, *)
  var localizedModel: String { get }
  @available(iOS 9.0, *)
  var systemName: String { get }
  init()
}
@available(iOS 8.2, *)
class WKInterfaceGroup : WKInterfaceObject, WKImageAnimatable {
  func setCornerRadius(cornerRadius: CGFloat)
  func setBackgroundColor(color: UIColor?)
  func setBackgroundImage(image: UIImage?)
  func setBackgroundImageData(imageData: NSData?)
  func setBackgroundImageNamed(imageName: String?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}
protocol WKImageAnimatable : NSObjectProtocol {
  func startAnimating()
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  func stopAnimating()
}
@available(iOS 8.2, *)
class WKInterfaceImage : WKInterfaceObject, WKImageAnimatable {
  func setImage(image: UIImage?)
  func setImageData(imageData: NSData?)
  func setImageNamed(imageName: String?)
  func setTintColor(tintColor: UIColor?)
  @available(iOS 8.2, *)
  func startAnimating()
  @available(iOS 8.2, *)
  func startAnimatingWithImagesIn(imageRange: NSRange, duration: NSTimeInterval, repeatCount: Int)
  @available(iOS 8.2, *)
  func stopAnimating()
}
@available(iOS 8.2, *)
class WKInterfaceLabel : WKInterfaceObject {
  func setText(text: String?)
  func setTextColor(color: UIColor?)
  func setAttributedText(attributedText: NSAttributedString?)
}
@available(iOS 8.2, *)
enum WKInterfaceMapPinColor : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Red
  case Green
  case Purple
}
@available(iOS 8.2, *)
class WKInterfaceMap : WKInterfaceObject {
  func setVisibleMapRect(mapRect: MKMapRect)
  func setRegion(coordinateRegion: MKCoordinateRegion)
  func addAnnotation(location: CLLocationCoordinate2D, withImage image: UIImage?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withImageNamed name: String?, centerOffset offset: CGPoint)
  func addAnnotation(location: CLLocationCoordinate2D, withPinColor pinColor: WKInterfaceMapPinColor)
  func removeAllAnnotations()
}
@available(iOS 8.2, *)
class WKInterfaceObject : NSObject {
  func setHidden(hidden: Bool)
  func setAlpha(alpha: CGFloat)
  func setWidth(width: CGFloat)
  func setHeight(height: CGFloat)
  var interfaceProperty: String { get }
}
extension WKInterfaceObject {
  @available(iOS 9.0, *)
  func setAccessibilityIdentifier(accessibilityIdentifier: String?)
  func setAccessibilityLabel(accessibilityLabel: String?)
  func setAccessibilityHint(accessibilityHint: String?)
  func setAccessibilityValue(accessibilityValue: String?)
  func setIsAccessibilityElement(isAccessibilityElement: Bool)
  func setAccessibilityTraits(accessibilityTraits: UIAccessibilityTraits)
  func setAccessibilityImageRegions(accessibilityImageRegions: [WKAccessibilityImageRegion])
}
@available(iOS 8.2, *)
class WKAccessibilityImageRegion : NSObject {
  var frame: CGRect
  var label: String
  init()
}
@available(iOS 8.2, *)
class WKInterfaceSeparator : WKInterfaceObject {
  func setColor(color: UIColor?)
}
@available(iOS 8.2, *)
class WKInterfaceSlider : WKInterfaceObject {
  func setEnabled(enabled: Bool)
  func setValue(value: Float)
  func setColor(color: UIColor?)
  func setNumberOfSteps(numberOfSteps: Int)
}
@available(iOS 8.2, *)
class WKInterfaceSwitch : WKInterfaceObject {
  func setTitle(title: String?)
  func setAttributedTitle(attributedTitle: NSAttributedString?)
  func setEnabled(enabled: Bool)
  func setOn(on: Bool)
  func setColor(color: UIColor?)
}
@available(iOS 8.2, *)
class WKInterfaceTable : WKInterfaceObject {
  func setRowTypes(rowTypes: [String])
  func setNumberOfRows(numberOfRows: Int, withRowType rowType: String)
  var numberOfRows: Int { get }
  func rowControllerAt(index: Int) -> AnyObject?
  func insertRowsAt(rows: NSIndexSet, withRowType rowType: String)
  func removeRowsAt(rows: NSIndexSet)
  func scrollToRowAt(index: Int)
}
@available(iOS 8.2, *)
class WKInterfaceTimer : WKInterfaceObject {
  func setTextColor(color: UIColor?)
  func setDate(date: NSDate)
  func start()
  func stop()
}
