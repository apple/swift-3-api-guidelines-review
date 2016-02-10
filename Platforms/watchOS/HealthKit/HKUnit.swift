
@available(watchOS 2.0, *)
class HKUnit : Object, SecureCoding, Copying {
  var unitString: String { get }
  convenience init(from string: String)
  convenience init(from massFormatterUnit: MassFormatterUnit)
  class func massFormatterUnitFrom(unit: HKUnit) -> MassFormatterUnit
  convenience init(from lengthFormatterUnit: LengthFormatterUnit)
  class func lengthFormatterUnitFrom(unit: HKUnit) -> LengthFormatterUnit
  convenience init(from energyFormatterUnit: EnergyFormatterUnit)
  class func energyFormatterUnitFrom(unit: HKUnit) -> EnergyFormatterUnit
  func isNull() -> Bool
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(watchOS 2.0, *)
enum HKMetricPrefix : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case pico
  case nano
  case micro
  case milli
  case centi
  case deci
  case deca
  case hecto
  case kilo
  case mega
  case giga
  case tera
}
extension HKUnit {
  class func gramUnitWith(prefix: HKMetricPrefix) -> Self
  class func gram() -> Self
  class func ounce() -> Self
  class func pound() -> Self
  class func stone() -> Self
  class func moleUnitWith(prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnitWith(molarMass gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnitWith(prefix: HKMetricPrefix) -> Self
  class func meter() -> Self
  class func inch() -> Self
  class func foot() -> Self
  @available(watchOS 2.0, *)
  class func yard() -> Self
  class func mile() -> Self
}
extension HKUnit {
  class func literUnitWith(prefix: HKMetricPrefix) -> Self
  class func liter() -> Self
  class func fluidOunceUS() -> Self
  class func fluidOunceImperial() -> Self
  class func pintUS() -> Self
  class func pintImperial() -> Self
  @available(watchOS 2.0, *)
  class func cupUS() -> Self
  @available(watchOS 2.0, *)
  class func cupImperial() -> Self
}
extension HKUnit {
  class func pascalUnitWith(prefix: HKMetricPrefix) -> Self
  class func pascal() -> Self
  class func millimeterOfMercury() -> Self
  class func centimeterOfWater() -> Self
  class func atmosphere() -> Self
}
extension HKUnit {
  class func secondUnitWith(prefix: HKMetricPrefix) -> Self
  class func second() -> Self
  class func minute() -> Self
  class func hour() -> Self
  class func day() -> Self
}
extension HKUnit {
  class func jouleUnitWith(prefix: HKMetricPrefix) -> Self
  class func joule() -> Self
  class func calorie() -> Self
  class func kilocalorie() -> Self
}
extension HKUnit {
  class func degreeCelsius() -> Self
  class func degreeFahrenheit() -> Self
  class func kelvin() -> Self
}
extension HKUnit {
  class func siemenUnitWith(prefix: HKMetricPrefix) -> Self
  class func siemen() -> Self
}
extension HKUnit {
  class func count() -> Self
  class func percent() -> Self
}
extension HKUnit {
  func unitMultipliedBy(unit: HKUnit) -> HKUnit
  func unitDividedBy(unit: HKUnit) -> HKUnit
  func unitRaisedTo(power power: Int) -> HKUnit
  func reciprocal() -> HKUnit
}
var HKUnitMolarMassBloodGlucose: Double { get }
