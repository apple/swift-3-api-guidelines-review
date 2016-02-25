
@available(iOS 8.0, *)
enum NSMassFormatterUnit : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Gram
  case Kilogram
  case Ounce
  case Pound
  case Stone
}
@available(iOS 8.0, *)
class NSMassFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonMassUse: Bool
  func stringFromValue(_ value: Double, unit unit: NSMassFormatterUnit) -> String
  func stringFromKilograms(_ numberInKilograms: Double) -> String
  func unitStringFromValue(_ value: Double, unit unit: NSMassFormatterUnit) -> String
  func unitStringFromKilograms(_ numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<NSMassFormatterUnit>) -> String
}
