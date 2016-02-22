
@available(iOS 8.0, *)
class HKUnit : NSObject, NSSecureCoding, NSCopying {
  var unitString: String { get }
  convenience init(from string: String)
  convenience init(from massFormatterUnit: NSMassFormatterUnit)
  class func massFormatterUnit(from unit: HKUnit) -> NSMassFormatterUnit
  convenience init(from lengthFormatterUnit: NSLengthFormatterUnit)
  class func lengthFormatterUnit(from unit: HKUnit) -> NSLengthFormatterUnit
  convenience init(from energyFormatterUnit: NSEnergyFormatterUnit)
  class func energyFormatterUnit(from unit: HKUnit) -> NSEnergyFormatterUnit
  func isNull() -> Bool
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
enum HKMetricPrefix : Int {
  init?(rawValue rawValue: Int)
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
  class func gramUnit(with prefix: HKMetricPrefix) -> Self
  class func gram() -> Self
  class func ounce() -> Self
  class func pound() -> Self
  class func stone() -> Self
  class func moleUnit(with prefix: HKMetricPrefix, molarMass gramsPerMole: Double) -> Self
  class func moleUnit(withMolarMass gramsPerMole: Double) -> Self
}
extension HKUnit {
  class func meterUnit(with prefix: HKMetricPrefix) -> Self
  class func meter() -> Self
  class func inch() -> Self
  class func foot() -> Self
  @available(iOS 9.0, *)
  class func yard() -> Self
  class func mile() -> Self
}
extension HKUnit {
  class func literUnit(with prefix: HKMetricPrefix) -> Self
  class func liter() -> Self
  class func fluidOunceUS() -> Self
  class func fluidOunceImperial() -> Self
  class func pintUS() -> Self
  class func pintImperial() -> Self
  @available(iOS 9.0, *)
  class func cupUS() -> Self
  @available(iOS 9.0, *)
  class func cupImperial() -> Self
}
extension HKUnit {
  class func pascalUnit(with prefix: HKMetricPrefix) -> Self
  class func pascal() -> Self
  class func millimeterOfMercury() -> Self
  class func centimeterOfWater() -> Self
  class func atmosphere() -> Self
}
extension HKUnit {
  class func secondUnit(with prefix: HKMetricPrefix) -> Self
  class func second() -> Self
  class func minute() -> Self
  class func hour() -> Self
  class func day() -> Self
}
extension HKUnit {
  class func jouleUnit(with prefix: HKMetricPrefix) -> Self
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
  class func siemenUnit(with prefix: HKMetricPrefix) -> Self
  class func siemen() -> Self
}
extension HKUnit {
  class func count() -> Self
  class func percent() -> Self
}
extension HKUnit {
  func unitMultiplied(by unit: HKUnit) -> HKUnit
  func unitDivided(by unit: HKUnit) -> HKUnit
  func unitRaised(toPower power: Int) -> HKUnit
  func reciprocal() -> HKUnit
}
var HKUnitMolarMassBloodGlucose: Double { get }
