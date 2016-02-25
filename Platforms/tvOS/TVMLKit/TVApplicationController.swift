
@available(tvOS 9.0, *)
class TVApplicationControllerContext : NSObject, NSCopying {
  @NSCopying var javaScriptApplicationURL: NSURL
  var storageIdentifier: String?
  var launchOptions: [String : AnyObject]
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
protocol TVApplicationControllerDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, evaluateAppJavaScriptInContext jsContext: JSContext)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didFinishLaunchingWithOptions options: [String : AnyObject]?)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didFailWithError error: NSError)
  @available(tvOS 9.0, *)
  optional func appController(_ appController: TVApplicationController, didStopWithOptions options: [String : AnyObject]?)
}
@available(tvOS 9.0, *)
class TVApplicationController : NSObject {
  init(context context: TVApplicationControllerContext, window window: UIWindow?, delegate delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }
  var navigationController: UINavigationController { get }
  func evaluateInJavaScriptContext(_ evaluation: (JSContext) -> Void, completion completion: ((Bool) -> Void)?)
  func stop()
}
