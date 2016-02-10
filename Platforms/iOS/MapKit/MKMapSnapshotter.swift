
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, Error?) -> Void
@available(iOS 7.0, *)
class MKMapSnapshotter : Object {
  init(options: MKMapSnapshotOptions)
  func start(completionHandler completionHandler: MKMapSnapshotCompletionHandler)
  func startWith(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var isLoading: Bool { get }
  convenience init()
}
