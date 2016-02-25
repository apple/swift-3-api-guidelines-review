
enum UIStatusBarStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Default
  @available(iOS 7.0, *)
  case LightContent
}
enum UIStatusBarAnimation : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case None
  @available(iOS 3.2, *)
  case Fade
  @available(iOS 3.2, *)
  case Slide
}
enum UIInterfaceOrientation : Int {
  init?(rawValue rawValue: Int)
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
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Portrait: UIInterfaceOrientationMask { get }
  static var LandscapeLeft: UIInterfaceOrientationMask { get }
  static var LandscapeRight: UIInterfaceOrientationMask { get }
  static var PortraitUpsideDown: UIInterfaceOrientationMask { get }
  static var Landscape: UIInterfaceOrientationMask { get }
  static var All: UIInterfaceOrientationMask { get }
  static var AllButUpsideDown: UIInterfaceOrientationMask { get }
}
func UIInterfaceOrientationIsPortrait(_ orientation: UIInterfaceOrientation) -> Bool
func UIInterfaceOrientationIsLandscape(_ orientation: UIInterfaceOrientation) -> Bool
@available(iOS, introduced=3.0, deprecated=8.0, message="Use UIUserNotificationType for user notifications and registerForRemoteNotifications for receiving remote notifications instead.")
struct UIRemoteNotificationType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: UIRemoteNotificationType { get }
  static var Badge: UIRemoteNotificationType { get }
  static var Sound: UIRemoteNotificationType { get }
  static var Alert: UIRemoteNotificationType { get }
  static var NewsstandContentAvailability: UIRemoteNotificationType { get }
}
@available(iOS 7.0, *)
enum UIBackgroundFetchResult : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NewData
  case NoData
  case Failed
}
@available(iOS 7.0, *)
enum UIBackgroundRefreshStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Restricted
  case Denied
  case Available
}
@available(iOS 4.0, *)
enum UIApplicationState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Active
  case Inactive
  case Background
}
typealias UIBackgroundTaskIdentifier = Int
@available(iOS 4.0, *)
let UIBackgroundTaskInvalid: UIBackgroundTaskIdentifier
@available(iOS 4.0, *)
let UIMinimumKeepAliveTimeout: NSTimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalMinimum: NSTimeInterval
@available(iOS 7.0, *)
let UIApplicationBackgroundFetchIntervalNever: NSTimeInterval
@available(iOS 2.0, *)
class UIApplication : UIResponder {
  class func sharedApplication() -> UIApplication
  unowned(unsafe) var delegate: @sil_unmanaged UIApplicationDelegate?
  func beginIgnoringInteractionEvents()
  func endIgnoringInteractionEvents()
  func isIgnoringInteractionEvents() -> Bool
  var idleTimerDisabled: Bool
  func openURL(_ url: NSURL) -> Bool
  @available(iOS 3.0, *)
  func canOpenURL(_ url: NSURL) -> Bool
  func sendEvent(_ event: UIEvent)
  var keyWindow: UIWindow? { get }
  var windows: [UIWindow] { get }
  func sendAction(_ action: Selector, to target: AnyObject?, from sender: AnyObject?, forEvent event: UIEvent?) -> Bool
  var networkActivityIndicatorVisible: Bool
  @available(iOS 6.0, *)
  func supportedInterfaceOrientationsForWindow(_ window: UIWindow?) -> UIInterfaceOrientationMask
  var statusBarOrientationAnimationDuration: NSTimeInterval { get }
  var statusBarFrame: CGRect { get }
  var applicationIconBadgeNumber: Int
  @available(iOS 3.0, *)
  var applicationSupportsShakeToEdit: Bool
  @available(iOS 4.0, *)
  var applicationState: UIApplicationState { get }
  @available(iOS 4.0, *)
  var backgroundTimeRemaining: NSTimeInterval { get }
  @available(iOS 4.0, *)
  func beginBackgroundTaskWithExpirationHandler(_ handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(iOS 7.0, *)
  func beginBackgroundTaskWithName(_ taskName: String?, expirationHandler handler: (() -> Void)?) -> UIBackgroundTaskIdentifier
  @available(iOS 4.0, *)
  func endBackgroundTask(_ identifier: UIBackgroundTaskIdentifier)
  @available(iOS 7.0, *)
  func setMinimumBackgroundFetchInterval(_ minimumBackgroundFetchInterval: NSTimeInterval)
  @available(iOS 7.0, *)
  var backgroundRefreshStatus: UIBackgroundRefreshStatus { get }
  @available(iOS 4.0, *)
  var protectedDataAvailable: Bool { get }
  @available(iOS 5.0, *)
  var userInterfaceLayoutDirection: UIUserInterfaceLayoutDirection { get }
  @available(iOS 7.0, *)
  var preferredContentSizeCategory: String { get }
}
extension UIApplication {
  @available(iOS 8.0, *)
  func registerForRemoteNotifications()
  @available(iOS 3.0, *)
  func unregisterForRemoteNotifications()
  @available(iOS 8.0, *)
  func isRegisteredForRemoteNotifications() -> Bool
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use registerForRemoteNotifications and registerUserNotificationSettings: instead")
  func registerForRemoteNotificationTypes(_ types: UIRemoteNotificationType)
  @available(iOS, introduced=3.0, deprecated=8.0, message="Please use -[UIApplication isRegisteredForRemoteNotifications], or -[UIApplication currentUserNotificationSettings] to retrieve user-enabled remote notification and user notification settings")
  func enabledRemoteNotificationTypes() -> UIRemoteNotificationType
}
extension UIApplication {
  @available(iOS 4.0, *)
  func presentLocalNotificationNow(_ notification: UILocalNotification)
  @available(iOS 4.0, *)
  func scheduleLocalNotification(_ notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancelLocalNotification(_ notification: UILocalNotification)
  @available(iOS 4.0, *)
  func cancelAllLocalNotifications()
  @available(iOS 4.0, *)
  var scheduledLocalNotifications: [UILocalNotification]?
}
extension UIApplication {
  @available(iOS 8.0, *)
  func registerUserNotificationSettings(_ notificationSettings: UIUserNotificationSettings)
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
  func setNewsstandIconImage(_ image: UIImage?)
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
  class func registerObjectForStateRestoration(_ object: UIStateRestoring, restorationIdentifier restorationIdentifier: String)
}
protocol UIApplicationDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func applicationDidFinishLaunching(_ application: UIApplication)
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidBecomeActive(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillResignActive(_ application: UIApplication)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(_ application: UIApplication, handleOpenURL url: NSURL) -> Bool
  @available(iOS, introduced=4.2, deprecated=9.0, message="Please use application:openURL:options:")
  optional func application(_ application: UIApplication, openURL url: NSURL, sourceApplication sourceApplication: String?, annotation annotation: AnyObject) -> Bool
  @available(iOS 9.0, *)
  optional func application(_ app: UIApplication, openURL url: NSURL, options options: [String : AnyObject]) -> Bool
  @available(iOS 2.0, *)
  optional func applicationDidReceiveMemoryWarning(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationWillTerminate(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func applicationSignificantTimeChange(_ application: UIApplication)
  @available(iOS 2.0, *)
  optional func application(_ application: UIApplication, willChangeStatusBarOrientation newStatusBarOrientation: UIInterfaceOrientation, duration duration: NSTimeInterval)
  @available(iOS 2.0, *)
  optional func application(_ application: UIApplication, didChangeStatusBarOrientation oldStatusBarOrientation: UIInterfaceOrientation)
  @available(iOS 2.0, *)
  optional func application(_ application: UIApplication, willChangeStatusBarFrame newStatusBarFrame: CGRect)
  @available(iOS 2.0, *)
  optional func application(_ application: UIApplication, didChangeStatusBarFrame oldStatusBarFrame: CGRect)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings)
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData)
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError)
  @available(iOS 3.0, *)
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject])
  @available(iOS 4.0, *)
  optional func application(_ application: UIApplication, didReceiveLocalNotification notification: UILocalNotification)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler completionHandler: () -> Void)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [NSObject : AnyObject], completionHandler completionHandler: () -> Void)
  @available(iOS 9.0, *)
  optional func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forLocalNotification notification: UILocalNotification, withResponseInfo responseInfo: [NSObject : AnyObject], completionHandler completionHandler: () -> Void)
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [NSObject : AnyObject], fetchCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: (UIBackgroundFetchResult) -> Void)
  @available(iOS 9.0, *)
  optional func application(_ application: UIApplication, performActionForShortcutItem shortcutItem: UIApplicationShortcutItem, completionHandler completionHandler: (Bool) -> Void)
  @available(iOS 7.0, *)
  optional func application(_ application: UIApplication, handleEventsForBackgroundURLSession identifier: String, completionHandler completionHandler: () -> Void)
  @available(iOS 8.2, *)
  optional func application(_ application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply reply: ([NSObject : AnyObject]?) -> Void)
  @available(iOS 9.0, *)
  optional func applicationShouldRequestHealthAuthorization(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationDidEnterBackground(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationWillEnterForeground(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication)
  @available(iOS 4.0, *)
  optional func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication)
  @available(iOS 5.0, *)
  optional var window: UIWindow? { get set }
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, supportedInterfaceOrientationsForWindow window: UIWindow?) -> UIInterfaceOrientationMask
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, shouldAllowExtensionPointIdentifier extensionPointIdentifier: String) -> Bool
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, viewControllerWithRestorationIdentifierPath identifierComponents: [AnyObject], coder coder: NSCoder) -> UIViewController?
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, shouldSaveApplicationState coder: NSCoder) -> Bool
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, shouldRestoreApplicationState coder: NSCoder) -> Bool
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, willEncodeRestorableStateWithCoder coder: NSCoder)
  @available(iOS 6.0, *)
  optional func application(_ application: UIApplication, didDecodeRestorableStateWithCoder coder: NSCoder)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, willContinueUserActivityWithType userActivityType: String) -> Bool
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, continueUserActivity userActivity: NSUserActivity, restorationHandler restorationHandler: ([AnyObject]?) -> Void) -> Bool
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, didFailToContinueUserActivityWithType userActivityType: String, error error: NSError)
  @available(iOS 8.0, *)
  optional func application(_ application: UIApplication, didUpdateUserActivity userActivity: NSUserActivity)
}
extension UIApplication {
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  var statusBarOrientation: UIInterfaceOrientation
  @available(iOS, introduced=2.0, deprecated=9.0, message="Explicit setting of the status bar orientation is more limited in iOS 6.0 and later")
  func setStatusBarOrientation(_ interfaceOrientation: UIInterfaceOrientation, animated animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  var statusBarStyle: UIStatusBarStyle
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController preferredStatusBarStyle]")
  func setStatusBarStyle(_ statusBarStyle: UIStatusBarStyle, animated animated: Bool)
  @available(iOS, introduced=2.0, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  var statusBarHidden: Bool
  @available(iOS, introduced=3.2, deprecated=9.0, message="Use -[UIViewController prefersStatusBarHidden]")
  func setStatusBarHidden(_ hidden: Bool, withAnimation animation: UIStatusBarAnimation)
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func setKeepAliveTimeout(_ timeout: NSTimeInterval, handler keepAliveHandler: (() -> Void)?) -> Bool
  @available(iOS, introduced=4.0, deprecated=9.0, message="Please use UIRemoteNotificationTypeVoIP remote notifications for VoIP applications")
  func clearKeepAliveTimeout()
}
func UIApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>, _ principalClassName: String?, _ delegateClassName: String?) -> Int32
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
