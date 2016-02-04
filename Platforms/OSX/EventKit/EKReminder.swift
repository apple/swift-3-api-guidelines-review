
@available(OSX 10.8, *)
class EKReminder : EKCalendarItem {
  /*not inherited*/ init(eventStore: EKEventStore)
  @NSCopying var startDateComponents: DateComponents?
  @NSCopying var dueDateComponents: DateComponents?
  var isCompleted: Bool
  @NSCopying var completionDate: Date?
  var priority: Int
  init()
}
