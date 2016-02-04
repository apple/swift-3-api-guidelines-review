
@available(watchOS 2.0, *)
class HKCorrelationQuery : HKQuery {
  @NSCopying var correlationType: HKCorrelationType { get }
  var samplePredicates: [HKSampleType : Predicate]? { get }
  init(type correlationType: HKCorrelationType, predicate: Predicate?, samplePredicates: [HKSampleType : Predicate]?, completion: (HKCorrelationQuery, [HKCorrelation]?, Error?) -> Void)
}
