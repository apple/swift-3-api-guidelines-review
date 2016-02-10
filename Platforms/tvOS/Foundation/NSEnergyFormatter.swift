
@available(tvOS 8.0, *)
enum EnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case joule
  case kilojoule
  case calorie
  case kilocalorie
}
@available(tvOS 8.0, *)
class EnergyFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func stringFrom(value value: Double, unit: EnergyFormatterUnit) -> String
  func stringFrom(joules numberInJoules: Double) -> String
  func unitStringFrom(value value: Double, unit: EnergyFormatterUnit) -> String
  func unitStringFrom(joules numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<EnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
