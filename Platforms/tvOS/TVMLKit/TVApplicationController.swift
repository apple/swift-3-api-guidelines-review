
@available(tvOS 9.0, *)
class TVApplicationControllerContext : Object, Copying {
  @NSCopying var javaScriptApplicationURL: URL
  var storageIdentifier: String?
  var launchOptions: [String : AnyObject]
  init()
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
protocol TVApplicationControllerDelegate : ObjectProtocol {
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, evaluateAppJavaScriptIn jsContext: JSContext)
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFinishLaunchingWithOptions options: [String : AnyObject]? = [:])
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didFailWithError error: Error)
  @available(tvOS 9.0, *)
  optional func appController(appController: TVApplicationController, didStopWithOptions options: [String : AnyObject]? = [:])
}
@available(tvOS 9.0, *)
class TVApplicationController : Object {
  init(context: TVApplicationControllerContext, window: UIWindow?, delegate: TVApplicationControllerDelegate?)
  var window: UIWindow? { get }
  var context: TVApplicationControllerContext { get }
  weak var delegate: @sil_weak TVApplicationControllerDelegate? { get }
  var navigationController: UINavigationController { get }
  func evaluate(inJavaScriptContext evaluation: (JSContext) -> Void, completion: ((Bool) -> Void)? = nil)
  func stop()
}
