
@available(watchOS 2.0, *)
struct HKStatisticsOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: HKStatisticsOptions { get }
  static var SeparateBySource: HKStatisticsOptions { get }
  static var DiscreteAverage: HKStatisticsOptions { get }
  static var DiscreteMin: HKStatisticsOptions { get }
  static var DiscreteMax: HKStatisticsOptions { get }
  static var CumulativeSum: HKStatisticsOptions { get }
}
@available(watchOS 2.0, *)
class HKStatistics : NSObject, NSSecureCoding, NSCopying {
  var quantityType: HKQuantityType { get }
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var sources: [HKSource]? { get }
  func averageQuantityForSource(source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantityForSource(source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantityForSource(source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  func sumQuantityForSource(source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
