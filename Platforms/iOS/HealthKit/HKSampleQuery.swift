
var HKObjectQueryNoLimit: Int32 { get }
@available(iOS 8.0, *)
class HKSampleQuery : HKQuery {
  var limit: Int { get }
  var sortDescriptors: [NSSortDescriptor]? { get }
  init(sampleType: HKSampleType, predicate: NSPredicate?, limit: Int, sortDescriptors: [NSSortDescriptor]?, resultsHandler: (HKSampleQuery, [HKSample]?, NSError?) -> Void)
}
