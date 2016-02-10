
protocol TVInterfaceCreating : ObjectProtocol {
  @available(tvOS 9.0, *)
  optional func viewFor(element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func viewControllerFor(element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func urlFor(resource resourceName: String) -> URL?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : Object, TVInterfaceCreating {
  class func shared() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  init()
  @available(tvOS 9.0, *)
  func viewFor(element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  func viewControllerFor(element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  func urlFor(resource resourceName: String) -> URL?
}
