
enum EKCalendarChooserSelectionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Single
  case Multiple
}
enum EKCalendarChooserDisplayStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AllCalendars
  case WritableCalendarsOnly
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

/*!
    @enum       EKEventEditViewAction
    @abstract   Represents actions that should cause the edit view controller to be dismissed
 
    @constant   EKEventEditViewActionCanceled    The Cancel button was pressed, or the Done button was pressed, but the event was not dirty.
    @constant   EKEventEditViewActionSaved       The event was saved.
    @constant   EKEventEditViewActionDeleted     The event was deleted, either by the user or by another calendar store.
*/
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

  /*!
      @property   eventStore
      @abstract   The event store to use to save events.
      @discussion You must set this before presenting the view controller.
  */
  var eventStore: EKEventStore

  /*!
      @property   event
      @abstract   The event to edit.
      @discussion You must set this before presenting the view controller. You can leave
                  it set to nil and a new event will be created for you. If you pass an event
                  here and it does not belong to the event store (if set) an exception will be
                  raised.
  */
  var event: EKEvent?

  /*!
      @method     cancelEditing
      @abstract   Ends the editing session discarding any changes to the event.
      @discussion This method simulates the user tapping the Cancel button. The delegate will not 
                  receive the eventEditViewController:didCompleteWithAction: message, so you are
                  responsible for dismissing the controller after calling this method.
   */
  func cancelEditing()
  @available(iOS 5.0, *)
  init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?)
  init(rootViewController: UIViewController)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/*!
    @enum       EKEventEditViewDelegate
    @abstract   Delegate protocol for event edit view controller.
*/
protocol EKEventEditViewDelegate : NSObjectProtocol {

  /*!
      @method     eventEditViewController:didCompleteWithAction:
      @abstract   Called to let delegate know the controller is done editing.
      @discussion When the user presses Cancel, presses Done, or deletes the event, this method
                  is called. Your delegate is responsible for dismissing the controller. If the editing
                  session is terminated programmatically using cancelEditing, 
                  this method will not be called.
   
      @param      controller          the controller in question
      @param      action              the action that is causing the dismissal
  */
  @available(iOS 4.0, *)
  func eventEditViewController(controller: EKEventEditViewController, didCompleteWith action: EKEventEditViewAction)

  /*!
      @method     eventEditViewControllerDefaultCalendarForNewEvents:
      @abstract   Allows you to supply your own default calendar for new events.
      @discussion This delegate method allows you to control what the editor chooses for the default calendar
                  if it needs to fill in a calendar. This might be necessary if you either don't pass an initial
                  event to the view controller, or you do, but you did not supply a calendar. In these cases, we
                  we set the calendar to a default. If this is not implemented by the delegate, the controller
                  will use the store's defaultCalendarForNewEvents.
  */
  @available(iOS 4.0, *)
  optional func eventEditViewControllerDefaultCalendarForNewEvents(controller: EKEventEditViewController) -> EKCalendar
}
enum EKEventViewAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Responded
  case Deleted
}
@available(iOS 4.0, *)
class EKEventViewController : UIViewController {
  @available(iOS 4.2, *)
  weak var delegate: @sil_weak EKEventViewDelegate?

  /*!
      @property   event
      @abstract   Specifies the event to view.
      @discussion You must set this prior to displaying the view controller.
  */
  var event: EKEvent

  /*!
      @property   allowsEditing
      @abstract   Determines whether Edit button can be shown. 
      @discussion Note that even if this is enabled, the edit button may not appear if this event
                  is in a read-only calendar, such as a subscribed calendar. It may also not appear
                  if the event was not created by the current user (i.e. it's an event they were
                  invited to). And lastly, if the event was never saved, the edit button will not
                  appear.
  */
  var allowsEditing: Bool

  /*!
      @property   allowsCalendarPreview
      @abstract   Determines whether event can be shown in calendar day view preview.
      @discussion This option only affects calendar invites at present. If the event is an invite,
                  and this option is set, a table cell will appear that allows the user to preview 
                  the event along with their other events for the day.
  */
  var allowsCalendarPreview: Bool
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/*!
    @class      EKEventViewController
    @abstract   View controller to view event detail.
    @discussion You can use this view controller to display the details of an event. You
                can also optionally choose to allow the user to edit the event by displaying
                an edit button. While you can use this view controller to display events that
                have not been saved, the edit button will not appear in this situation. If
                you have pushed this view controller onto a navigation controller stack, and
                the underlying event gets deleted, this controller will remove itself from
                the stack and clear its event property.
*/
protocol EKEventViewDelegate : NSObjectProtocol {

  /*!
   @method     eventViewController:didCompleteWithAction:
   @abstract   Called to let delegate know that an action has occurred that should cause the
               controller to be dismissed.
   @discussion If the user taps a button which deletes the event, or responds to an invite, this
               method is called on the delegate so that the delegate can decide to dismiss
               the view controller. When presented in a popover, it also reports when the Done
               button is pressed.
   
   @param      controller          the controller in question
   @param      action              the action that is triggering the dismissal
   */
  @available(iOS 4.2, *)
  func eventViewController(controller: EKEventViewController, didCompleteWith action: EKEventViewAction)
}
