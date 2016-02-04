
@available(iOS 8.0, *)
class HKCorrelationQuery : HKQuery {
  @NSCopying var correlationType: HKCorrelationType { get }
  var samplePredicates: [HKSampleType : NSPredicate]? { get }
  init(type correlationType: HKCorrelationType, predicate: NSPredicate?, samplePredicates: [HKSampleType : NSPredicate]?, completion: (HKCorrelationQuery, [HKCorrelation]?, NSError?) -> Void)
}
