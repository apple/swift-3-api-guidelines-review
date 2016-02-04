
@available(tvOS 8.0, *)
enum DateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(tvOS 8.0, *)
struct DateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: DateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: DateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: DateComponentsFormatterZeroFormattingBehavior { get }
}
@available(tvOS 8.0, *)
class DateComponentsFormatter : Formatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFrom(components: DateComponents) -> String?
  func stringFrom(startDate: Date, to endDate: Date) -> String?
  func stringFromTimeInterval(ti: TimeInterval) -> String?
  class func localizedStringFrom(components: DateComponents, unitsStyle: DateComponentsFormatterUnitsStyle) -> String?
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
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
