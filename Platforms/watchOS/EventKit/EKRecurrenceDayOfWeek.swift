
@available(watchOS 2.0, *)
class EKRecurrenceDayOfWeek : Object, Copying {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
