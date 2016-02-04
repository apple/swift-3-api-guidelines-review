
var HKObjectQueryNoLimit: Int32 { get }
@available(iOS 8.0, *)
class HKSampleQuery : HKQuery {
  var limit: Int { get }
  var sortDescriptors: [SortDescriptor]? { get }
  init(sampleType: HKSampleType, predicate: Predicate?, limit: Int, sortDescriptors: [SortDescriptor]?, resultsHandler: (HKSampleQuery, [HKSample]?, Error?) -> Void)
}
