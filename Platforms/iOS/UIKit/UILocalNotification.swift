
@available(iOS 4.0, *)
class UILocalNotification : Object, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  @NSCopying var fireDate: Date?
  @NSCopying var timeZone: TimeZone?
  var repeatInterval: CalendarUnit
  @NSCopying var repeatCalendar: Calendar?
  @available(iOS 8.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(iOS 8.2, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [Object : AnyObject]?
  @available(iOS 8.0, *)
  var category: String?
  @available(iOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(iOS 4.0, *)
  func encode(with aCoder: Coder)
}
@available(iOS 4.0, *)
let UILocalNotificationDefaultSoundName: String
