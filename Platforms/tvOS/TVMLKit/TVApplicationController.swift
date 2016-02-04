
@available(tvOS 9.0, *)
class TVApplicationControllerContext : NSObject, NSCopying {
  @NSCopying var javaScriptApplicationURL: NSURL
  var storageIdentifier: String?
  var launchOptions: [String : AnyObject]
  init()
  @available(tvOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
protocol TVApplicationControllerDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, evaluateAppJavaScriptInContext jsContext: JSContext)
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFinishLaunchingWithOptions options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFailWithError error: NSError)
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didStopWithOptions options: [String : AnyObject]?)
}
@available(tvOS 9.0, *)
class TVApplicationController : NSObject {
  init(context: TVApplicationControllerContext, window: UIWindow?, delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }
  var navigationController: UINavigationController { get }
  func evaluateInJavaScriptContext(evaluation: (JSContext) -> Void, completion: ((Bool) -> Void)?)
  func stop()
}
