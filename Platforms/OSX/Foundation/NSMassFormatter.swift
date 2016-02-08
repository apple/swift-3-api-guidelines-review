
@available(OSX 10.10, *)
enum MassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case gram
  case kilogram
  case ounce
  case pound
  case stone
}
@available(OSX 10.10, *)
class MassFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonMassUse: Bool
  func stringFrom(value value: Double, unit: MassFormatterUnit) -> String
  func stringFrom(kilograms numberInKilograms: Double) -> String
  func unitStringFrom(value value: Double, unit: MassFormatterUnit) -> String
  func unitStringFrom(kilograms numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<MassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
