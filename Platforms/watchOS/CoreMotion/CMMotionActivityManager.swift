
@available(watchOS 2.0, *)
typealias CMMotionActivityHandler = (CMMotionActivity?) -> Void
@available(watchOS 2.0, *)
typealias CMMotionActivityQueryHandler = ([CMMotionActivity]?, NSError?) -> Void
@available(watchOS 2.0, *)
class CMMotionActivityManager : NSObject {
  class func isActivityAvailable() -> Bool
  func queryActivityStartingFromDate(start: NSDate, toDate end: NSDate, toQueue queue: NSOperationQueue, withHandler handler: CMMotionActivityQueryHandler)
  func startActivityUpdatesToQueue(queue: NSOperationQueue, withHandler handler: CMMotionActivityHandler)
  func stopActivityUpdates()
  init()
}
