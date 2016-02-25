
@available(OSX 10.10, *)
enum NSLengthFormatterUnit : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Millimeter
  case Centimeter
  case Meter
  case Kilometer
  case Inch
  case Foot
  case Yard
  case Mile
}
@available(OSX 10.10, *)
class NSLengthFormatter : NSFormatter {
  @NSCopying var numberFormatter: NSNumberFormatter!
  var unitStyle: NSFormattingUnitStyle
  var forPersonHeightUse: Bool
  func stringFromValue(_ value: Double, unit unit: NSLengthFormatterUnit) -> String
  func stringFromMeters(_ numberInMeters: Double) -> String
  func unitStringFromValue(_ value: Double, unit unit: NSLengthFormatterUnit) -> String
  func unitStringFromMeters(_ numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<NSLengthFormatterUnit>) -> String
}
