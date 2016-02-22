
enum EKCalendarChooserSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case single
  case multiple
}
enum EKCalendarChooserDisplayStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case allCalendars
  case writableCalendarsOnly
}
@available(iOS 5.0, *)
class EKCalendarChooser : UIViewController {
  init(selectionStyle: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, eventStore: EKEventStore)
  init(selectionStyle style: EKCalendarChooserSelectionStyle, displayStyle: EKCalendarChooserDisplayStyle, entityType: EKEntityType, eventStore: EKEventStore)
  var selectionStyle: EKCalendarChooserSelectionStyle { get }
  weak var delegate: @sil_weak EKCalendarChooserDelegate?
  var showsDoneButton: Bool
  var showsCancelButton: Bool
  var selectedCalendars: Set<EKCalendar>
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol EKCalendarChooserDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func calendarChooserSelectionDidChange(calendarChooser: EKCalendarChooser)
  @available(iOS 5.0, *)
  optional func calendarChooserDidFinish(calendarChooser: EKCalendarChooser)
  @available(iOS 5.0, *)
  optional func calendarChooserDidCancel(calendarChooser: EKCalendarChooser)
}
