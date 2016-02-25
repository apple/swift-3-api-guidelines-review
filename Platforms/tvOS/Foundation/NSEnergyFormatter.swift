
@available(tvOS 8.0, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue rawValue: Int)
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
  func stringFromValue(_ value: Double, unit unit: NSEnergyFormatterUnit) -> String
  func stringFromJoules(_ numberInJoules: Double) -> String
  func unitStringFromValue(_ value: Double, unit unit: NSEnergyFormatterUnit) -> String
  func unitStringFromJoules(_ numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
}
