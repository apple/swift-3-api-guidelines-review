
@available(OSX 10.9, *)
enum EKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
enum EKWeekday : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Sunday
  case Monday
  case Tuesday
  case Wednesday
  case Thursday
  case Friday
  case Saturday
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdaySunday instead")
  static var EKSunday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayMonday instead")
  static var EKMonday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayTuesday instead")
  static var EKTuesday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayWednesday instead")
  static var EKWednesday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayThursday instead")
  static var EKThursday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayFriday instead")
  static var EKFriday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdaySaturday instead")
  static var EKSaturday: EKWeekday { get }
}
enum EKRecurrenceFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Daily
  case Weekly
  case Monthly
  case Yearly
}
enum EKParticipantType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Person
  case Room
  case Resource
  case Group
}
enum EKParticipantRole : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Required
  case Optional
  case Chair
  case NonParticipant
}
enum EKParticipantScheduleStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pending
  case Sent
  case Delivered
  case RecipientNotRecognized
  case NoPrivileges
  case DeliveryFailed
  case CannotDeliver
  case RecipientNotAllowed
}
enum EKParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Pending
  case Accepted
  case Declined
  case Tentative
  case Delegated
  case Completed
  case InProcess
}
enum EKCalendarType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case CalDAV
  case Exchange
  case Subscription
  case Birthday
}
struct EKCalendarEventAvailabilityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: EKCalendarEventAvailabilityMask { get }
  static var Busy: EKCalendarEventAvailabilityMask { get }
  static var Free: EKCalendarEventAvailabilityMask { get }
  static var Tentative: EKCalendarEventAvailabilityMask { get }
  static var Unavailable: EKCalendarEventAvailabilityMask { get }
}
enum EKSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case Exchange
  case CalDAV
  case MobileMe
  case Subscribed
  case Birthdays
}
enum EKEntityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Event
  case Reminder
}
struct EKEntityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Event: EKEntityMask { get }
  static var Reminder: EKEntityMask { get }
}
enum EKAlarmProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Enter
  case Leave
}
enum EKAlarmType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Display
  case Audio
  case Procedure
  case Email
}
enum EKReminderPriority : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case High
  case Medium
  case Low
}
