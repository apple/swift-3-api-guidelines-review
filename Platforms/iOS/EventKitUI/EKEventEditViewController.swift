
enum EKEventEditViewAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Canceled
  case Saved
  case Deleted
  static var Cancelled: EKEventEditViewAction { get }
}
@available(iOS 4.0, *)
class EKEventEditViewController : UINavigationController {
  weak var editViewDelegate: @sil_weak EKEventEditViewDelegate?
  var eventStore: EKEventStore
  var event: EKEvent?
  func cancelEditing()
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol EKEventEditViewDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  func eventEditViewController(controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction)
  @available(iOS 4.0, *)
  optional func eventEditViewControllerDefaultCalendarFor(newEvents controller: EKEventEditViewController) -> EKCalendar
}
