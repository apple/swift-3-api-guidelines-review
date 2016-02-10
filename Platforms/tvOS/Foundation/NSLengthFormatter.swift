
@available(tvOS 8.0, *)
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
@available(tvOS 8.0, *)
class LengthFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: FormattingUnitStyle
  var isForPersonHeightUse: Bool
  func stringFrom(value value: Double, unit: LengthFormatterUnit) -> String
  func stringFrom(meters numberInMeters: Double) -> String
  func unitStringFrom(value value: Double, unit: LengthFormatterUnit) -> String
  func unitStringFrom(meters numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<LengthFormatterUnit>) -> String
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, errorDescription error: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  init()
  init?(coder aDecoder: Coder)
}
