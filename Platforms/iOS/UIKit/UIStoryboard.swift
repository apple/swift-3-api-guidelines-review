
@available(iOS 5.0, *)
class UIStoryboard : Object {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: Bundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewControllerWithIdentifier(identifier: String) -> UIViewController
  init()
}
