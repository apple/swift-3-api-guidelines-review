
enum EKEventEditViewAction : Int {
  init?(rawValue rawValue: Int)
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
}
protocol EKEventEditViewDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  func eventEditViewController(_ controller: EKEventEditViewController, didCompleteWithAction action: EKEventEditViewAction)
  @available(iOS 4.0, *)
  optional func eventEditViewControllerDefaultCalendarForNewEvents(_ controller: EKEventEditViewController) -> EKCalendar
}
