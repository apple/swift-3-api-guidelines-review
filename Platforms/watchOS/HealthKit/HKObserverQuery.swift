
typealias HKObserverQueryCompletionHandler = () -> Void
@available(watchOS 2.0, *)
class HKObserverQuery : HKQuery {
  init(sampleType: HKSampleType, predicate: Predicate?, updateHandler: (HKObserverQuery, HKObserverQueryCompletionHandler, Error?) -> Void)
}
