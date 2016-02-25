
struct UIDataDetectorTypes : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var PhoneNumber: UIDataDetectorTypes { get }
  static var Link: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var Address: UIDataDetectorTypes { get }
  @available(iOS 4.0, *)
  static var CalendarEvent: UIDataDetectorTypes { get }
  static var None: UIDataDetectorTypes { get }
  static var All: UIDataDetectorTypes { get }
}
