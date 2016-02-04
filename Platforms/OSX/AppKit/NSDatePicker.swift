
class NSDatePicker : NSControl {
  var datePickerStyle: NSDatePickerStyle
  var bezeled: Bool
  var bordered: Bool
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
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
