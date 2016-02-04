
enum UIDatePickerMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Time
  case Date
  case DateAndTime
  case CountDownTimer
}
@available(iOS 2.0, *)
class UIDatePicker : UIControl, NSCoding {
  var datePickerMode: UIDatePickerMode
  var locale: NSLocale?
  @NSCopying var calendar: NSCalendar!
  var timeZone: NSTimeZone?
  var date: NSDate
  var minimumDate: NSDate?
  var maximumDate: NSDate?
  var countDownDuration: NSTimeInterval
  var minuteInterval: Int
  func setDate(date: NSDate, animated: Bool)
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
