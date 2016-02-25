
@available(OSX 10.10, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case joule
  case kilojoule
  case calorie
  case kilocalorie
}
@available(OSX 10.10, *)
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func string(fromValue value: Double, unit unit: NSEnergyFormatterUnit) -> String
  func string(fromJoules numberInJoules: Double) -> String
  func unitString(fromValue value: Double, unit unit: NSEnergyFormatterUnit) -> String
  func unitString(fromJoules numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
}
