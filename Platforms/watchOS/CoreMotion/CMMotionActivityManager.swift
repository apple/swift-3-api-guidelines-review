
@available(watchOS 2.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(watchOS 2.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, Error?) -> Void
@available(watchOS 2.0, *)
class CMMotionActivityManager : Object {
  class func isActivityAvailable() -> Bool
  func queryActivityStarting(from start: Date, to end: Date, to queue: OperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdates(to queue: OperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
