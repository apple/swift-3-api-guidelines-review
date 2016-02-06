
class Thread : Object {
  class func current() -> Thread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, withObject argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: MutableDictionary { get }
  class func sleepUntil(date: Date)
  class func sleepForTimeInterval(ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(iOS 4.0, *)
  var threadPriority: Double
  @available(iOS 8.0, *)
  var qualityOfService: QualityOfService
  @available(iOS 2.0, *)
  class func callStackReturnAddresses() -> [Number]
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
  class func main() -> Thread
  @available(iOS 2.0, *)
  init()
  @available(iOS 2.0, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(iOS 2.0, *)
  var isExecuting: Bool { get }
  @available(iOS 2.0, *)
  var isFinished: Bool { get }
  @available(iOS 2.0, *)
  var isCancelled: Bool { get }
  @available(iOS 2.0, *)
  func cancel()
  @available(iOS 2.0, *)
  func start()
  @available(iOS 2.0, *)
  func main()
}
let willBecomeMultiThreadedNotification: String
let didBecomeSingleThreadedNotification: String
let threadWillExitNotification: String
extension Object {
  class func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelectorOn(mainThread aSelector: Selector, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(iOS 2.0, *)
  class func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  func perform(aSelector: Selector, on thr: Thread, withObject arg: AnyObject?, waitUntilDone wait: Bool)
  @available(iOS 2.0, *)
  class func performSelectorIn(background aSelector: Selector, withObject arg: AnyObject?)
  @available(iOS 2.0, *)
  func performSelectorIn(background aSelector: Selector, withObject arg: AnyObject?)
}
