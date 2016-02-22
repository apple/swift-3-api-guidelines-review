
@available(iOS 8.0, *)
class HKSourceQuery : HKQuery {
  init(sampleType: HKSampleType, samplePredicate objectPredicate: NSPredicate?, completionHandler: (HKSourceQuery, Set<HKSource>?, NSError?) -> Void)
}
