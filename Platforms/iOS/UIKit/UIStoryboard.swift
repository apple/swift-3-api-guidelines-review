
@available(iOS 5.0, *)
class UIStoryboard : NSObject {
  /*not inherited*/ init(name: String, bundle storyboardBundleOrNil: NSBundle?)
  func instantiateInitialViewController() -> UIViewController?
  func instantiateViewController(withIdentifier identifier: String) -> UIViewController
  init()
}
