
@available(watchOS 2.0, *)
struct HKStatisticsOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: HKStatisticsOptions { get }
  static var separateBySource: HKStatisticsOptions { get }
  static var discreteAverage: HKStatisticsOptions { get }
  static var discreteMin: HKStatisticsOptions { get }
  static var discreteMax: HKStatisticsOptions { get }
  static var cumulativeSum: HKStatisticsOptions { get }
}
@available(watchOS 2.0, *)
class HKStatistics : NSObject, NSSecureCoding, NSCopying {
  var quantityType: HKQuantityType { get }
  var startDate: NSDate { get }
  var endDate: NSDate { get }
  var sources: [HKSource]? { get }
  func averageQuantity(for source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantity(for source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantity(for source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  func sumQuantity(for source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
