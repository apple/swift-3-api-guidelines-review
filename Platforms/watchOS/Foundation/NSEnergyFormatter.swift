
@available(watchOS 2.0, *)
enum NSEnergyFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case joule
  case kilojoule
  case calorie
  case kilocalorie
}
@available(watchOS 2.0, *)
class NSEnergyFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var isForFoodEnergyUse: Bool
  func string(fromValue value: Double, unit: NSEnergyFormatterUnit) -> String
  func string(fromJoules numberInJoules: Double) -> String
  func unitString(fromValue value: Double, unit: NSEnergyFormatterUnit) -> String
  func unitString(fromJoules numberInJoules: Double, usedUnit unitp: UnsafeMutablePointer<NSEnergyFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, for string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: NSCoder)
}
