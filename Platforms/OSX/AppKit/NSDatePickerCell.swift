
enum NSDatePickerStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case TextFieldAndStepperDatePickerStyle
  case ClockAndCalendarDatePickerStyle
  case TextFieldDatePickerStyle
}
enum NSDatePickerMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case SingleDateMode
  case RangeDateMode
}
struct NSDatePickerElementFlags : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var HourMinuteDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var HourMinuteSecondDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var TimeZoneDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var YearMonthDayDatePickerElementFlag: NSDatePickerElementFlags { get }
  static var EraDatePickerElementFlag: NSDatePickerElementFlags { get }
}
class NSDatePickerCell : NSActionCell {
  var datePickerStyle: NSDatePickerStyle
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: NSCalendar?
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone?
  @NSCopying var dateValue: NSDate
  var timeInterval: NSTimeInterval
  @NSCopying var minDate: NSDate?
  @NSCopying var maxDate: NSDate?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
}
struct __dateCellFlags {
  var elements: UInt32
  var controlStyle: UInt32
  var controlMode: UInt32
  var trackingHand: UInt32
  var reserved2: UInt32
  var drawsBackground: UInt32
  var digitsEntered: UInt32
  var forcesLeadingZeroes: UInt32
  var wrapsDateComponentArithmetic: UInt32
  init()
  init(elements elements: UInt32, controlStyle controlStyle: UInt32, controlMode controlMode: UInt32, trackingHand trackingHand: UInt32, reserved2 reserved2: UInt32, drawsBackground drawsBackground: UInt32, digitsEntered digitsEntered: UInt32, forcesLeadingZeroes forcesLeadingZeroes: UInt32, wrapsDateComponentArithmetic wrapsDateComponentArithmetic: UInt32)
}
protocol NSDatePickerCellDelegate : NSObjectProtocol {
  optional func datePickerCell(_ aDatePickerCell: NSDatePickerCell, validateProposedDateValue proposedDateValue: AutoreleasingUnsafeMutablePointer<NSDate?>, timeInterval proposedTimeInterval: UnsafeMutablePointer<NSTimeInterval>)
}
