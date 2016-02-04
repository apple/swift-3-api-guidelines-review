
@available(iOS 8.0, *)
enum NSLengthFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Millimeter
  case Centimeter
  case Meter
  case Kilometer
  case Inch
  case Foot
  case Yard
  case Mile
}
@available(iOS 8.0, *)
class NSLengthFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonHeightUse: Bool
  func stringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func stringFromMeters(numberInMeters: Double) -> String
  func unitStringFromValue(value: Double, unit: NSLengthFormatterUnit) -> String
  func unitStringFromMeters(numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<NSLengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
