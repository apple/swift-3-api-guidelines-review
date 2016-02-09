
@available(watchOS 2.0, *)
enum LengthFormatterUnit : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case millimeter
  case centimeter
  case meter
  case kilometer
  case inch
  case foot
  case yard
  case mile
}
@available(watchOS 2.0, *)
class LengthFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonHeightUse: Bool
  func string(fromValue value: Double, unit: LengthFormatterUnit) -> String
  func string(fromMeters numberInMeters: Double) -> String
  func unitString(fromValue value: Double, unit: LengthFormatterUnit) -> String
  func unitString(fromMeters numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<LengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
