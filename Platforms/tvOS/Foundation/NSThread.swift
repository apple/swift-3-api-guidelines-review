
class NSThread : NSObject {
  class func currentThread() -> NSThread
  class func detachNewThreadSelector(_ selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleepUntilDate(_ date: NSDate)
  class func sleepForTimeInterval(_ ti: NSTimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(_ p: Double) -> Bool
  @available(tvOS 4.0, *)
  var threadPriority: Double
  @available(tvOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(tvOS 2.0, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(tvOS 4.0, *)
  class func callStackSymbols() -> [String]
  @available(tvOS 2.0, *)
  var name: String?
  @available(tvOS 2.0, *)
  var stackSize: Int
  @available(tvOS 2.0, *)
  var isMainThread: Bool { get }
  @available(tvOS 2.0, *)
  class func isMainThread() -> Bool
  @available(tvOS 2.0, *)
  class func mainThread() -> NSThread
  @available(tvOS 2.0, *)
  convenience init(target target: AnyObject, selector selector: Selector, object argument: AnyObject?)
  @available(tvOS 2.0, *)
  var executing: Bool { get }
  @available(tvOS 2.0, *)
  var finished: Bool { get }
  @available(tvOS 2.0, *)
  var cancelled: Bool { get }
  @available(tvOS 2.0, *)
  func cancel()
  @available(tvOS 2.0, *)
  func start()
  @available(tvOS 2.0, *)
  func main()
}
let NSWillBecomeMultiThreadedNotification: String
let NSDidBecomeSingleThreadedNotification: String
let NSThreadWillExitNotification: String
extension NSObject {
  class func performSelectorOnMainThread(_ aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(_ aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(_ aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(_ aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(tvOS 2.0, *)
  class func performSelector(_ aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(tvOS 2.0, *)
  func performSelector(_ aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(tvOS 2.0, *)
  class func performSelector(_ aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(tvOS 2.0, *)
  func performSelector(_ aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(tvOS 2.0, *)
  class func performSelectorInBackground(_ aSelector: Selector, withObject arg: AnyObject?)
  @available(tvOS 2.0, *)
  func performSelectorInBackground(_ aSelector: Selector, withObject arg: AnyObject?)
}
