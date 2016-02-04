
@available(tvOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
