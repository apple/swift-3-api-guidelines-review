
typealias CMStepQueryHandler = (Int, NSError?) -> Void
typealias CMStepUpdateHandler = (Int, NSDate, NSError?) -> Void
@available(iOS, introduced=7.0, deprecated=8.0, message="Use CMPedometer instead")
class CMStepCounter : NSObject {
  class func isStepCountingAvailable() -> Bool
  func queryStepCountStartingFrom(start: NSDate, to end: NSDate, toQueue queue: NSOperationQueue, withHandler handler: CMStepQueryHandler)
  func startStepCountingUpdatesToQueue(queue: NSOperationQueue, updateOn stepCounts: Int, withHandler handler: CMStepUpdateHandler)
  func stopStepCountingUpdates()
  init()
}
