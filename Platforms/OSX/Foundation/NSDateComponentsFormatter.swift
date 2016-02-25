
@available(OSX 10.10, *)
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(OSX 10.10, *)
struct NSDateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: NSDateComponentsFormatterZeroFormattingBehavior { get }
}
@available(OSX 10.10, *)
class NSDateComponentsFormatter : NSFormatter {
  func stringFromDateComponents(_ components: NSDateComponents) -> String?
  func stringFromDate(_ startDate: NSDate, toDate endDate: NSDate) -> String?
  func stringFromTimeInterval(_ ti: NSTimeInterval) -> String?
  class func localizedStringFromDateComponents(_ components: NSDateComponents, unitsStyle unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
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
