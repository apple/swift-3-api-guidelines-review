
typealias HKObserverQueryCompletionHandler = () -> Void
@available(watchOS 2.0, *)
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: NSPredicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, NSError?) -> Void)
}
