
@available(OSX 10.9, *)
class MKDistanceFormatter : NSFormatter {
  func stringFromDistance(_ distance: CLLocationDistance) -> String
  func distanceFromString(_ distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
}
@available(OSX 10.9, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Metric
  case Imperial
  case ImperialWithYards
}
@available(OSX 10.9, *)
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Abbreviated
  case Full
}
