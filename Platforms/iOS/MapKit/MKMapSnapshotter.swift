
typealias MKMapSnapshotCompletionHandler = (MKMapSnapshot?, NSError?) -> Void
@available(iOS 7.0, *)
class MKMapSnapshotter : NSObject {
  init(options options: MKMapSnapshotOptions)
  func startWithCompletionHandler(_ completionHandler: MKMapSnapshotCompletionHandler)
  func startWithQueue(_ queue: dispatch_queue_t, completionHandler completionHandler: MKMapSnapshotCompletionHandler)
  func cancel()
  var loading: Bool { get }
}
