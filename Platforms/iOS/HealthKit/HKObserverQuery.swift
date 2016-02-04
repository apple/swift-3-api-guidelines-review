
typealias HKObserverQueryCompletionHandler = () -> Void
@available(iOS 8.0, *)
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: NSPredicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, NSError?) -> Void)
}
