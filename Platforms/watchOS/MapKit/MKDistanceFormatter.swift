
@available(watchOS 2.0, *)
class MKDistanceFormatter : NSFormatter {
  func string(fromDistance distance: CLLocationDistance) -> String
  func distance(from distance: String) -> CLLocationDistance
  @NSCopying var locale: NSLocale!
  var units: MKDistanceFormatterUnits
  var unitStyle: MKDistanceFormatterUnitStyle
}
@available(watchOS 2.0, *)
enum MKDistanceFormatterUnits : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case metric
  case imperial
  case imperialWithYards
}
@available(watchOS 2.0, *)
enum MKDistanceFormatterUnitStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case abbreviated
  case full
}
