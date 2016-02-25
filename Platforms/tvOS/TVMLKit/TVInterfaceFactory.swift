
protocol TVInterfaceCreating : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func viewForElement(_ element: TVViewElement, existingView existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func viewControllerForElement(_ element: TVViewElement, existingViewController existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func URLForResource(_ resourceName: String) -> NSURL?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : NSObject, TVInterfaceCreating {
  class func sharedInterfaceFactory() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  @available(tvOS 9.0, *)
  func viewForElement(_ element: TVViewElement, existingView existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  func viewControllerForElement(_ element: TVViewElement, existingViewController existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  func URLForResource(_ resourceName: String) -> NSURL?
}
