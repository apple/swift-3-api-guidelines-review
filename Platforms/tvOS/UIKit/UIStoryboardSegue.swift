
@available(tvOS 5.0, *)
class UIStoryboardSegue : Object {
  @available(tvOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  var identifier: String? { get }
  var sourceViewController: UIViewController { get }
  var destinationViewController: UIViewController { get }
  func perform()
}
@available(tvOS 9.0, *)
class UIStoryboardUnwindSegueSource : Object {
  var sourceViewController: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: AnyObject? { get }
}
