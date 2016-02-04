
class NSDatePicker : NSControl {
  var datePickerStyle: NSDatePickerStyle
  var isBezeled: Bool
  var isBordered: Bool
  var drawsBackground: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var textColor: NSColor
  var datePickerMode: NSDatePickerMode
  var datePickerElements: NSDatePickerElementFlags
  @NSCopying var calendar: Calendar?
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone?
  @NSCopying var dateValue: Date
  var timeInterval: TimeInterval
  @NSCopying var minDate: Date?
  @NSCopying var maxDate: Date?
  unowned(unsafe) var delegate: @sil_unmanaged NSDatePickerCellDelegate?
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
