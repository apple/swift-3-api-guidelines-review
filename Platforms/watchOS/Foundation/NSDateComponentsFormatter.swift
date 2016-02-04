
@available(watchOS 2.0, *)
enum NSDateComponentsFormatterUnitsStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Positional
  case Abbreviated
  case Short
  case Full
  case SpellOut
}
@available(watchOS 2.0, *)
struct NSDateComponentsFormatterZeroFormattingBehavior : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Default: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropLeading: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropMiddle: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropTrailing: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var DropAll: NSDateComponentsFormatterZeroFormattingBehavior { get }
  static var Pad: NSDateComponentsFormatterZeroFormattingBehavior { get }
}
@available(watchOS 2.0, *)
class NSDateComponentsFormatter : NSFormatter {
  func stringForObjectValue(obj: AnyObject) -> String?
  func stringFromDateComponents(components: NSDateComponents) -> String?
  func stringFromDate(startDate: NSDate, toDate endDate: NSDate) -> String?
  func stringFromTimeInterval(ti: NSTimeInterval) -> String?
  class func localizedStringFromDateComponents(components: NSDateComponents, unitsStyle: NSDateComponentsFormatterUnitsStyle) -> String?
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
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
