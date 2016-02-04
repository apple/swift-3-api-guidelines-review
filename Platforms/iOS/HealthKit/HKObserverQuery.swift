
typealias HKObserverQueryCompletionHandler = () -> Void
@available(iOS 8.0, *)
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: Predicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, Error?) -> Void)
}
