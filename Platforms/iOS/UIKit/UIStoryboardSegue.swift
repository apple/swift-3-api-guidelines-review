
@available(iOS 5.0, *)
class UIStoryboardSegue : NSObject {
  @available(iOS 6.0, *)
  convenience init(identifier: String?, source: UIViewController, destination: UIViewController, performHandler: () -> Void)
  init(identifier: String?, source: UIViewController, destination: UIViewController)
  var identifier: String? { get }
  var sourceViewController: UIViewController { get }
  var destinationViewController: UIViewController { get }
  func perform()
}
@available(iOS 9.0, *)
class UIStoryboardUnwindSegueSource : NSObject {
  var sourceViewController: UIViewController { get }
  var unwindAction: Selector { get }
  var sender: AnyObject? { get }
}
