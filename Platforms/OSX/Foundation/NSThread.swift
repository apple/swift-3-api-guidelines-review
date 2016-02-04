
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
  @available(OSX 10.6, *)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: NSQualityOfService
  @available(OSX 10.5, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(OSX 10.6, *)
  class func callStackSymbols() -> [String]
  @available(OSX 10.5, *)
  var name: String?
  @available(OSX 10.5, *)
  var stackSize: Int
  @available(OSX 10.5, *)
  var isMainThread: Bool { get }
  @available(OSX 10.5, *)
  class func isMainThread() -> Bool
  @available(OSX 10.5, *)
  class func mainThread() -> NSThread
  @available(OSX 10.5, *)
  init()
  @available(OSX 10.5, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(OSX 10.5, *)
  var executing: Bool { get }
  @available(OSX 10.5, *)
  var finished: Bool { get }
  @available(OSX 10.5, *)
  var cancelled: Bool { get }
  @available(OSX 10.5, *)
  func cancel()
  @available(OSX 10.5, *)
  func start()
  @available(OSX 10.5, *)
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
  @available(OSX 10.5, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(OSX 10.5, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
