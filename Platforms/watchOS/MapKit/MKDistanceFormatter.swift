
@available(watchOS 2.0, *)
class MKDistanceFormatter : NSFormatter {
  func stringFromDistance(distance: CLLocationDistance) -> String
  func distanceFromString(distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
  init()
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Metric
  case Imperial
  case ImperialWithYards
}
@available(watchOS 2.0, *)
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Default
  case Abbreviated
  case Full
}
