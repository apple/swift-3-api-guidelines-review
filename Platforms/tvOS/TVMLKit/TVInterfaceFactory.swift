
protocol TVInterfaceCreating : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func viewForElement(element: TVViewElement, existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func viewControllerForElement(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func URLForResource(resourceName: String) -> NSURL?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : NSObject, TVInterfaceCreating {
  class func sharedInterfaceFactory() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  init()
  @available(tvOS 9.0, *)
  func viewForElement(element: TVViewElement, existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  func viewControllerForElement(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  func URLForResource(resourceName: String) -> NSURL?
}
