
@available(iOS 8.0, *)
class HKStatisticsQuery : HKQuery {
  init(quantityType: HKQuantityType, quantitySamplePredicate: NSPredicate?, options: HKStatisticsOptions = [], completionHandler handler: (HKStatisticsQuery, HKStatistics?, NSError?) -> Void)
}
