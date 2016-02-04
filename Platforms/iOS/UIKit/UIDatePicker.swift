
enum UIDatePickerMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Time
  case Date
  case DateAndTime
  case CountDownTimer
}
@available(iOS 2.0, *)
class UIDatePicker : UIControl, Coding {
  var datePickerMode: UIDatePickerMode
  var locale: Locale?
  @NSCopying var calendar: Calendar!
  var timeZone: TimeZone?
  var date: Date
  var minimumDate: Date?
  var maximumDate: Date?
  var countDownDuration: TimeInterval
  var minuteInterval: Int
  func setDate(date: Date, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
