
@available(OSX 10.10, *)
enum DateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case positional
  case abbreviated
  case short
  case full
  case spellOut
}
@available(OSX 10.10, *)
struct DateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: DateComponentsFormatterZeroFormattingBehavior { get }
  static var `default`: DateComponentsFormatterZeroFormattingBehavior { get }
  static var dropLeading: DateComponentsFormatterZeroFormattingBehavior { get }
  static var dropMiddle: DateComponentsFormatterZeroFormattingBehavior { get }
  static var dropTrailing: DateComponentsFormatterZeroFormattingBehavior { get }
  static var dropAll: DateComponentsFormatterZeroFormattingBehavior { get }
  static var pad: DateComponentsFormatterZeroFormattingBehavior { get }
}
@available(OSX 10.10, *)
class DateComponentsFormatter : Formatter {
  func string(forObjectValue obj: AnyObject) -> String?
  func string(from components: DateComponents) -> String?
  func string(from startDate: Date, to endDate: Date) -> String?
  func stringFromTimeInterval(ti: TimeInterval) -> String?
  class func localizedString(from components: DateComponents, unitsStyle: DateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: DateComponentsFormatterUnitsStyle
  var allowedUnits: CalendarUnit
  var zeroFormattingBehavior: DateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: Calendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
