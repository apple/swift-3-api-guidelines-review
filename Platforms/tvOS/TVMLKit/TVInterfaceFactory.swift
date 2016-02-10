
protocol TVInterfaceCreating : ObjectProtocol {
  @available(tvOS 9.0, *)
  optional func view(forElement element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func viewController(forElement element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func url(forResource resourceName: String) -> URL?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : Object, TVInterfaceCreating {
  class func shared() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  init()
  @available(tvOS 9.0, *)
  func view(forElement element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  func viewController(forElement element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  func url(forResource resourceName: String) -> URL?
}
