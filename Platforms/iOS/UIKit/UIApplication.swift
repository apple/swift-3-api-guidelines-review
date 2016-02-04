
enum UIStatusBarStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 7.0, *)
  case LightContent
}
enum UIStatusBarAnimation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  @available(iOS 3.2, *)
  case Fade
  @available(iOS 3.2, *)
  case Slide
}
enum UIInterfaceOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Portrait
  case PortraitUpsideDown
  case LandscapeLeft
  case LandscapeRight
}

extension UIInterfaceOrientation {
  var isLandscape: Bool { get }
  var isPortrait: Bool { get }
}
@available(iOS 6.0, *)
let UIApplicationInvalidInterfaceOrientationException: String
struct UIInterfaceOrientationMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Portrait: UIInterfaceOrientationMask { get }
  static var LandscapeLeft: UIInterfaceOrientationMask { get }
  static var LandscapeRight: UIInterfaceOrientationMask { get }
  static var PortraitUpsideDown: UIInterfaceOrientationMask { get }
  static var Landscape: UIInterfaceOrientationMask { get }
  static var All: UIInterfaceOrientationMask { get }
  static var AllButUpsideDown: UIInterfaceOrientationMask { get }
}
func UIInterfaceOrientationIsPortrait(orientation: UIInterfaceOrientation) -> Bool
func UIInterfaceOrientationIsLandscape(orientation: UIInterfaceOrientation) -> Bool
@available(iOS, introduced=3.0, deprecated=8.0, message="Use UIUserNotificationType for user notifications and registerForRemoteNotifications for receiving remote notifications instead.")
struct UIRemoteNotificationType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: UIRemoteNotificationType { get }
  static var Badge: UIRemoteNotificationType { get }
  static var Sound: UIRemoteNotificationType { get }
  static var Alert: UIRemoteNotificationType { get }
  static var NewsstandContentAvailability: UIRemoteNotificationType { get }
}
@available(iOS 7.0, *)
enum UIBackgroundFetchResult : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
@available(iOS 7.0, *)
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Restricted
  case Denied
  case Available
}
@available(iOS 4.0, *)
enum UIApplicationState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
@available(iOS 4.0, *)
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
@available(iOS 4.0, *)
let UIMinimumKeepAliveTimeout: TimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalMinimum: TimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalNever: TimeInterval
@available(iOS 2.0, *)
class UIApplication : UIResponder {
  class func shared() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var isIdleTimerDisabled: Bool
  func open(url: URL) -> Bool
  @available(iOS 3.0, *)
  func canOpen(url: URL) -> Bool
  func send(event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  var isNetworkActivityIndicatorVisible: Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientationsFor(window: UIWindow?) -> UIInterfaceOrientationMask
  var statusBarOrientationAnimationDuration: TimeInterval { get }
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  @available(iOS 3.0, *)
  var applicationSupportsShakeToEdit: Bool
  @available(iOS 4.0, *)
  var applicationState: UIApplicationState { get }
  @available(iOS 4.0, *)
  var backgroundTimeRemaining: TimeInterval { get }
  @available(iOS 4.0, *)
  func beginBackgroundTask(expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 7.0, *)
  func beginBackgroundTaskWithName(taskName: String?, expirationHandler handler: (() -> Void)? = nil) -> UIBackgroundTaskIdentifier
  @available(iOS 4.0, *)
  func endBackgroundTask(identifier: UIBackgroundTaskIdentifier)
  @available(iOS 7.0, *)
  func setMinimumBackgroundFetchInterval(minimumBackgroundFetchInterval: TimeInterval)
  @available(iOS 7.0, *)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  @available(iOS 4.0, *)
  var isProtectedDataAvailable: Bool { get }
  @available(iOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(iOS 7.0, *)
  var preferredContentSizeCategory: String { get }
  init()
}
extension UIApplication {
  @available(iOS 8.0, *)
  func registerForRemoteNotifications()
  @available(iOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(iOS 8.0, *)
  func isRegisteredForRemoteNotifications() -> Bool
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use registerForRemoteNotifications and registerUserNotificationSettings: instead")
  func registerForRemoteNotificationTypes(types: UIRemoteNotificationType)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use -[UIApplication isRegisteredForRemoteNotifications], or -[UIApplication currentUserNotificationSettings] to retrieve user-enabled remote notification and user notification settings")
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  @available(iOS 4.0, *)
  func presentLocalNotificationNow(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func scheduleLocalNotification(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancel(notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancelAllLocalNotifications()
  @available(iOS 4.0, *)
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  @available(iOS 8.0, *)
  func register(notificationSettings: UIUserNotificationSettings)
  @available(iOS 8.0, *)
  func currentUserNotificationSettings() -> UIUserNotificationSettings?
}
extension UIApplication {
  @available(iOS 4.0, *)
  func beginReceivingRemoteControlEvents()
  @available(iOS 4.0, *)
  func endReceivingRemoteControlEvents()
}
extension UIApplication {
  @available(iOS, introduced=9.0, deprecated=9.0, message="Newsstand apps now behave like normal apps on SpringBoard")
  func setNewsstandIconImage(image: UIImage?)
}
extension UIApplication {
  @available(iOS 9.0, *)
  var shortcutItems: [UIApplicationShortcutItem]?
}
extension UIApplication {
  @available(iOS 6.0, *)
  func extendStateRestoration()
  @available(iOS 6.0, *)
  func completeStateRestoration()
  @available(iOS 7.0, *)
  func ignoreSnapshotOnNextApplicationLaunch()
  @available(iOS 7.0, *)
  class func registerObjectForStateRestoration(object: UIStateRestoring, restorationIdentifier: String)
}
protocol UIApplicationDelegate : ObjectProtocol {
  @available(iOS 2.0, *)
  optional func applicationDidFinishLaunching(application: UIApplication)
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, willFinishLaunchingWithOptions launchOptions: [Object : AnyObject]? = [:]) -> Bool
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [Object : AnyObject]? = [:]) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidBecomeActive(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillResignActive(application: UIApplication)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(application: UIApplication, handleOpen url: URL) -> Bool
  @available(iOS, introduced=4.2, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(application: UIApplication, open url: URL, sourceApplication: String?, annotation: AnyObject) -> Bool
  @available(iOS 9.0, *)
  optional func application(app: UIApplication, open url: URL, options: [String : AnyObject] = [:]) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillTerminate(application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationSignificantTimeChange(application: UIApplication)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  @available(iOS 2.0, *)
  optional func application(application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
  @available(iOS 3.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [Object : AnyObject])
  @available(iOS 4.0, *)
  optional func application(application: UIApplication, didReceive notification: UILocalNotification)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [Object : AnyObject], withResponseInfo responseInfo: [Object : AnyObject], completionHandler: () -> Void)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [Object : AnyObject], completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, withResponseInfo responseInfo: [Object : AnyObject], completionHandler: () -> Void)
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, didReceiveRemoteNotification userInfo: [Object : AnyObject], fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  @available(iOS 9.0, *)
  optional func application(application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: (Bool) -> Void)
  @available(iOS 7.0, *)
  optional func application(application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler: () -> Void)
  @available(iOS 8.2, *)
  optional func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [Object : AnyObject]?, reply: ([Object : AnyObject]?) -> Void)
  @available(iOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationDidEnterBackground(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationWillEnterForeground(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(application: UIApplication)
  @available(iOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder: Coder) -> UIViewController?
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, shouldSaveApplicationState coder: Coder) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, shouldRestoreApplicationState coder: Coder) -> Bool
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, willEncodeRestorableStateWith coder: Coder)
  @available(iOS 6.0, *)
  optional func application(application: UIApplication, didDecodeRestorableStateWith coder: Coder)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, continue userActivity: UserActivity, restorationHandler: ([AnyObject]?) -> Void) -> Bool
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error: Error)
  @available(iOS 8.0, *)
  optional func application(application: UIApplication, didUpdateUserActivity userActivity: UserActivity)
}
extension UIApplication {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  var statusBarOrientation: UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  func setStatusBarOrientation(interfaceOrientation: UIInterfaceOrientation, animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  var statusBarStyle: UIStatusBarStyle
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  func setStatusBarStyle(statusBarStyle: UIStatusBarStyle, animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  var isStatusBarHidden: Bool
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(hidden: Bool, withAnimation animation: UIStatusBarAnimation)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func setKeepAliveTimeout(timeout: TimeInterval, handler keepAliveHandler: (() -> Void)? = nil) -> Bool
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func clearKeepAliveTimeout()
}
func UIApplicationMain(argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
let UITrackingRunLoopMode: String
@available(iOS 4.0, *)
let UIApplicationDidEnterBackgroundNotification: String
@available(iOS 4.0, *)
let UIApplicationWillEnterForegroundNotification: String
let UIApplicationDidFinishLaunchingNotification: String
let UIApplicationDidBecomeActiveNotification: String
let UIApplicationWillResignActiveNotification: String
let UIApplicationDidReceiveMemoryWarningNotification: String
let UIApplicationWillTerminateNotification: String
let UIApplicationSignificantTimeChangeNotification: String
let UIApplicationWillChangeStatusBarOrientationNotification: String
let UIApplicationDidChangeStatusBarOrientationNotification: String
let UIApplicationStatusBarOrientationUserInfoKey: String
let UIApplicationWillChangeStatusBarFrameNotification: String
let UIApplicationDidChangeStatusBarFrameNotification: String
let UIApplicationStatusBarFrameUserInfoKey: String
@available(iOS 7.0, *)
let UIApplicationBackgroundRefreshStatusDidChangeNotification: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsURLKey: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsSourceApplicationKey: String
@available(iOS 3.0, *)
let UIApplicationLaunchOptionsRemoteNotificationKey: String
@available(iOS 4.0, *)
let UIApplicationLaunchOptionsLocalNotificationKey: String
@available(iOS 3.2, *)
let UIApplicationLaunchOptionsAnnotationKey: String
@available(iOS 4.0, *)
let UIApplicationProtectedDataWillBecomeUnavailable: String
@available(iOS 4.0, *)
let UIApplicationProtectedDataDidBecomeAvailable: String
@available(iOS 4.0, *)
let UIApplicationLaunchOptionsLocationKey: String
@available(iOS 5.0, *)
let UIApplicationLaunchOptionsNewsstandDownloadsKey: String
@available(iOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothCentralsKey: String
@available(iOS 7.0, *)
let UIApplicationLaunchOptionsBluetoothPeripheralsKey: String
@available(iOS 9.0, *)
let UIApplicationLaunchOptionsShortcutItemKey: String
@available(iOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityDictionaryKey: String
@available(iOS 8.0, *)
let UIApplicationLaunchOptionsUserActivityTypeKey: String
@available(iOS 8.0, *)
let UIApplicationOpenSettingsURLString: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsSourceApplicationKey: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsAnnotationKey: String
@available(iOS 9.0, *)
let UIApplicationOpenURLOptionsOpenInPlaceKey: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraSmall: String
@available(iOS 7.0, *)
let UIContentSizeCategorySmall: String
@available(iOS 7.0, *)
let UIContentSizeCategoryMedium: String
@available(iOS 7.0, *)
let UIContentSizeCategoryLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryExtraExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityMedium: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryAccessibilityExtraExtraExtraLarge: String
@available(iOS 7.0, *)
let UIContentSizeCategoryDidChangeNotification: String
@available(iOS 7.0, *)
let UIContentSizeCategoryNewValueKey: String
@available(iOS 7.0, *)
let UIApplicationUserDidTakeScreenshotNotification: String
@available(iOS 8.0, *)
let UIApplicationKeyboardExtensionPointIdentifier: String
