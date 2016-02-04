
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
@available(iOS 7.0, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotOptions)
  func startWithCompletionHandler(completionHandler: MKMapSnapshotCompletionHandler)
  func startWithQueue(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var loading: Bool { get }
  convenience init()
}
