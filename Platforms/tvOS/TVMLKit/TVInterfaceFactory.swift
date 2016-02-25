
protocol TVInterfaceCreating : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func view(for element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func viewController(for element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func url(forResource resourceName: String) -> NSURL?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : NSObject, TVInterfaceCreating {
  class func shared() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
  @available(tvOS 9.0, *)
  func view(for element: TVViewElement, existing existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  func viewController(for element: TVViewElement, existing existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  func url(forResource resourceName: String) -> NSURL?
}
