
@available(iOS 8.0, *)
class HKStatisticsCollection : NSObject {
  func statisticsForDate(date: NSDate) -> HKStatistics?
  func enumerateStatisticsFromDate(startDate: NSDate, toDate endDate: NSDate, withBlock block: (HKStatistics, UnsafeMutablePointer<ObjCBool>) -> Void)
  func statistics() -> [HKStatistics]
  func sources() -> Set<HKSource>
}
@available(iOS 8.0, *)
class HKStatisticsCollectionQuery : HKQuery {
  var anchorDate: NSDate { get }
  var options: HKStatisticsOptions { get }
  @NSCopying var intervalComponents: NSDateComponents { get }
  var initialResultsHandler: ((HKStatisticsCollectionQuery, HKStatisticsCollection?, NSError?) -> Void)?
  var statisticsUpdateHandler: ((HKStatisticsCollectionQuery, HKStatistics?, HKStatisticsCollection?, NSError?) -> Void)?
  init(quantityType: HKQuantityType, quantitySamplePredicate: NSPredicate?, options: HKStatisticsOptions, anchorDate: NSDate, intervalComponents: NSDateComponents)
}
