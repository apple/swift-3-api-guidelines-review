
@available(tvOS 8.0, *)
enum NSMassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
@available(tvOS 8.0, *)
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonMassUse: Bool
  func stringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func stringFromKilograms(numberInKilograms: Double) -> String
  func unitStringFromValue(value: Double, unit: NSMassFormatterUnit) -> String
  func unitStringFromKilograms(numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
