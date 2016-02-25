
@available(iOS 8.0, *)
class HKStatisticsCollection : NSObject {
  func statisticsForDate(_ date: NSDate) -> HKStatistics?
  func enumerateStatisticsFromDate(_ startDate: NSDate, toDate endDate: NSDate, withBlock block: (HKStatistics, UnsafeMutablePointer<ObjCBool>) -> Void)
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
  init(quantityType quantityType: HKQuantityType, quantitySamplePredicate quantitySamplePredicate: NSPredicate?, options options: HKStatisticsOptions, anchorDate anchorDate: NSDate, intervalComponents intervalComponents: NSDateComponents)
}
