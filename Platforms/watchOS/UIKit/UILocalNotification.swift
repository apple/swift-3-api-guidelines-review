
@available(watchOS 2.0, *)
class UILocalNotification : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  @NSCopying var fireDate: Date?
  @NSCopying var timeZone: TimeZone?
  var repeatInterval: CalendarUnit
  @NSCopying var repeatCalendar: Calendar?
  @available(watchOS 2.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(watchOS 2.0, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [Object : AnyObject]?
  @available(watchOS 2.0, *)
  var category: String?
  @available(watchOS 2.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func encode(aCoder: Coder)
}
@available(watchOS 2.0, *)
let UILocalNotificationDefaultSoundName: String
