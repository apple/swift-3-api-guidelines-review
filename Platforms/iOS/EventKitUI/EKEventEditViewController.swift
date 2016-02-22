
enum EKEventEditViewAction : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case canceled
  case saved
  case deleted
  static var cancelled: EKEventEditViewAction { get }
}
@available(iOS 4.0, *)
class EKEventEditViewController : UINavigationController {
  weak var editViewDelegate: @sil_weak EKEventEditViewDelegate?
  var eventStore: EKEventStore
  var event: EKEvent?
  func cancelEditing()
  @available(iOS 5.0, *)
  init(navigationBarClass navigationBarClass: AnyClass?, toolbarClass toolbarClass: AnyClass?)
  init(rootViewController rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol EKEventEditViewDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction)
  @available(iOS 4.0, *)
  optional func eventEditViewControllerDefaultCalendar(forNewEvents controller: EKEventEditViewController) -> EKCalendar
}
