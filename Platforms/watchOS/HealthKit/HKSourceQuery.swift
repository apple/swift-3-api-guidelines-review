
@available(watchOS 2.0, *)
class HKSourceQuery : HKQuery {
  init(sampleType: HKSampleType, samplePredicate objectPredicate: Predicate?, completionHandler: (HKSourceQuery, Set<HKSource>?, Error?) -> Void)
}
