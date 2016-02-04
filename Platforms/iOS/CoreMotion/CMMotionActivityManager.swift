
@available(iOS 7.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(iOS 7.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
@available(iOS 7.0, *)
class CMMotionActivityManager : Object {
  class func isActivityAvailable() -> Bool
  func queryActivityStartingFrom(start: Date, to end: Date, to queue: OperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdatesTo(queue: OperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
