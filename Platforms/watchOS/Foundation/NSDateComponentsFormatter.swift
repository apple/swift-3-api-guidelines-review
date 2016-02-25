
@available(watchOS 2.0, *)
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case positional
  case abbreviated
  case short
  case full
  case spellOut
}
@available(watchOS 2.0, *)
struct NSDateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var `default`: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var dropLeading: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var dropMiddle: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var dropTrailing: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var dropAll: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var pad: NSDateComponentsFormatterZeroFormattingBehavior { get }
}
@available(watchOS 2.0, *)
class NSDateComponentsFormatter : NSFormatter {
  func string(from components: NSDateComponents) -> String?
  func string(from startDate: NSDate, to endDate: NSDate) -> String?
  func string(fromTimeInterval ti: NSTimeInterval) -> String?
  class func localizedString(from components: NSDateComponents, unitsStyle unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
  var unitsStyle: NSDateComponentsFormatterUnitsStyle
  var allowedUnits: NSCalendarUnit
  var zeroFormattingBehavior: NSDateComponentsFormatterZeroFormattingBehavior
  @NSCopying var calendar: NSCalendar?
  var allowsFractionalUnits: Bool
  var maximumUnitCount: Int
  var collapsesLargestUnit: Bool
  var includesApproximationPhrase: Bool
  var includesTimeRemainingPhrase: Bool
  var formattingContext: NSFormattingContext
}
