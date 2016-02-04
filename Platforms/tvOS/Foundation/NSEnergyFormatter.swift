
@available(tvOS 8.0, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Joule
  case Kilojoule
  case Calorie
  case Kilocalorie
}
@available(tvOS 8.0, *)
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forFoodEnergyUse: Bool
  func stringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func stringFromJoules(numberInJoules: Double) -> String
  func unitStringFromValue(value: Double, unit: NSEnergyFormatterUnit) -> String
  func unitStringFromJoules(numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
