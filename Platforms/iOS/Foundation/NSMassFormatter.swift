
@available(iOS 8.0, *)
enum MassFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case gram
  case kilogram
  case ounce
  case pound
  case stone
}
@available(iOS 8.0, *)
class MassFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonMassUse: Bool
  func string(fromValue value: Double, unit: MassFormatterUnit) -> String
  func string(fromKilograms numberInKilograms: Double) -> String
  func unitString(fromValue value: Double, unit: MassFormatterUnit) -> String
  func unitString(fromKilograms numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<MassFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
