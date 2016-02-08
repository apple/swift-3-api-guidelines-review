
typealias CFTimeInterval = Double
typealias CFAbsoluteTime = CFTimeInterval
func CFAbsoluteTimeGetCurrent() -> CFAbsoluteTime
let kCFAbsoluteTimeIntervalSince1970: CFTimeInterval
let kCFAbsoluteTimeIntervalSince1904: CFTimeInterval
class CFDate {
}
func CFDateGetTypeID() -> CFTypeID
func CFDateCreate(allocator: CFAllocator!, _ at: CFAbsoluteTime) -> CFDate!
func CFDateGetAbsoluteTime(theDate: CFDate!) -> CFAbsoluteTime
func CFDateGetTimeIntervalSinceDate(theDate: CFDate!, _ otherDate: CFDate!) -> CFTimeInterval
func CFDateCompare(theDate: CFDate!, _ otherDate: CFDate!, _ context: UnsafeMutablePointer<Void>) -> CFComparisonResult
class CFTimeZone {
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianDate {
  var year: Int32
  var month: Int8
  var day: Int8
  var hour: Int8
  var minute: Int8
  var second: Double
  init()
  init(year: Int32, month: Int8, day: Int8, hour: Int8, minute: Int8, second: Double)
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
struct CFGregorianUnits {
  var years: Int32
  var months: Int32
  var days: Int32
  var hours: Int32
  var minutes: Int32
  var seconds: Double
  init()
  init(years: Int32, months: Int32, days: Int32, hours: Int32, minutes: Int32, seconds: Double)
}
struct CFGregorianUnitFlags : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsYears: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsMonths: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsDays: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsHours: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsMinutes: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var unitsSeconds: CFGregorianUnitFlags { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
  static var allUnits: CFGregorianUnitFlags { get }
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateIsValid(gdate: CFGregorianDate, _ unitFlags: CFOptionFlags) -> Bool
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFGregorianDateGetAbsoluteTime(gdate: CFGregorianDate, _ tz: CFTimeZone!) -> CFAbsoluteTime
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetGregorianDate(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> CFGregorianDate
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeAddGregorianUnits(at: CFAbsoluteTime, _ tz: CFTimeZone!, _ units: CFGregorianUnits) -> CFAbsoluteTime
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDifferenceAsGregorianUnits(at1: CFAbsoluteTime, _ at2: CFAbsoluteTime, _ tz: CFTimeZone!, _ unitFlags: CFOptionFlags) -> CFGregorianUnits
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfWeek(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetDayOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
@available(OSX, introduced=10.4, deprecated=10.10, message="Use CFCalendar or NSCalendar API instead")
func CFAbsoluteTimeGetWeekOfYear(at: CFAbsoluteTime, _ tz: CFTimeZone!) -> Int32
