
@available(watchOS 2.0, *)
struct HKStatisticsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: HKStatisticsOptions { get }
  static var separateBySource: HKStatisticsOptions { get }
  static var discreteAverage: HKStatisticsOptions { get }
  static var discreteMin: HKStatisticsOptions { get }
  static var discreteMax: HKStatisticsOptions { get }
  static var cumulativeSum: HKStatisticsOptions { get }
}
@available(watchOS 2.0, *)
class HKStatistics : Object, SecureCoding, Copying {
  var quantityType: HKQuantityType { get }
  var startDate: Date { get }
  var endDate: Date { get }
  var sources: [HKSource]? { get }
  func averageQuantity(forSource source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantity(forSource source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantity(forSource source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  func sumQuantity(forSource source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
