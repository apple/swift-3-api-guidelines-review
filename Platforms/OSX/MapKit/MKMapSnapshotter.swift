
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
@available(OSX 10.9, *)
class MKMapSnapshotter : NSObject {
  init(options: MKMapSnapshotOptions)
  func start(completionHandler completionHandler: MKMapSnapshotCompletionHandler)
  func start(queue: dispatch_queue_t, completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var isLoading: Bool { get }
  convenience init()
}
