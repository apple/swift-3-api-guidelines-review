
class NSThread : NSObject {
  class func currentThread() -> NSThread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: NSMutableDictionary { get }
  class func sleepUntilDate(date: NSDate)
  class func sleepForTimeInterval(ti: NSTimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(watchOS 2.0, *)
  var threadPriority: Double
  @available(watchOS 2.0, *)
  var qualityOfService: NSQualityOfService
  @available(watchOS 2.0, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(watchOS 2.0, *)
  class func callStackSymbols() -> [String]
  @available(watchOS 2.0, *)
  var name: String?
  @available(watchOS 2.0, *)
  var stackSize: Int
  @available(watchOS 2.0, *)
  var isMainThread: Bool { get }
  @available(watchOS 2.0, *)
  class func isMainThread() -> Bool
  @available(watchOS 2.0, *)
  class func mainThread() -> NSThread
  @available(watchOS 2.0, *)
  init()
  @available(watchOS 2.0, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(watchOS 2.0, *)
  var executing: Bool { get }
  @available(watchOS 2.0, *)
  var finished: Bool { get }
  @available(watchOS 2.0, *)
  var cancelled: Bool { get }
  @available(watchOS 2.0, *)
  func cancel()
  @available(watchOS 2.0, *)
  func start()
  @available(watchOS 2.0, *)
  func main()
}
let NSWillBecomeMultiThreadedNotification: String
let NSDidBecomeSingleThreadedNotification: String
let NSThreadWillExitNotification: String
extension NSObject {
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOnMainThread(aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(watchOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(watchOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(watchOS 2.0, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(watchOS 2.0, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
