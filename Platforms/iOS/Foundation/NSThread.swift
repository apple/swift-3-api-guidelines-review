
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
  @available(iOS 4.0, *)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: NSQualityOfService
  @available(iOS 2.0, *)
  class func callStackReturnAddresses() -> [NSNumber]
  @available(iOS 4.0, *)
  class func callStackSymbols() -> [String]
  @available(iOS 2.0, *)
  var name: String?
  @available(iOS 2.0, *)
  var stackSize: Int
  @available(iOS 2.0, *)
  var isMainThread: Bool { get }
  @available(iOS 2.0, *)
  class func isMainThread() -> Bool
  @available(iOS 2.0, *)
  class func mainThread() -> NSThread
  @available(iOS 2.0, *)
  init()
  @available(iOS 2.0, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(iOS 2.0, *)
  var executing: Bool { get }
  @available(iOS 2.0, *)
  var finished: Bool { get }
  @available(iOS 2.0, *)
  var cancelled: Bool { get }
  @available(iOS 2.0, *)
  func cancel()
  @available(iOS 2.0, *)
  func start()
  @available(iOS 2.0, *)
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
  @available(iOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  class func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  func performSelector(aSelector: Selector, onThread thr: NSThread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  class func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
  @available(iOS 2.0, *)
  func performSelectorInBackground(aSelector: Selector, withObject arg: AnyObject?)
}
