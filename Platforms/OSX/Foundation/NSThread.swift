
class Thread : Object {
  class func current() -> Thread
  class func detachNewThreadSelector(selector: Selector, toTarget target: AnyObject, with argument: AnyObject?)
  class func isMultiThreaded() -> Bool
  var threadDictionary: MutableDictionary { get }
  class func sleep(until date: Date)
  class func sleep(forTimeInterval ti: TimeInterval)
  class func exit()
  class func threadPriority() -> Double
  class func setThreadPriority(p: Double) -> Bool
  @available(OSX 10.6, *)
  var threadPriority: Double
  @available(OSX 10.10, *)
  var qualityOfService: QualityOfService
  @available(OSX 10.5, *)
  class func callStackReturnAddresses() -> [Number]
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
  class func main() -> Thread
  @available(OSX 10.5, *)
  init()
  @available(OSX 10.5, *)
  convenience init(target: AnyObject, selector: Selector, object argument: AnyObject?)
  @available(OSX 10.5, *)
  var isExecuting: Bool { get }
  @available(OSX 10.5, *)
  var isFinished: Bool { get }
  @available(OSX 10.5, *)
  var isCancelled: Bool { get }
  @available(OSX 10.5, *)
  func cancel()
  @available(OSX 10.5, *)
  func start()
  @available(OSX 10.5, *)
  func main()
}
let willBecomeMultiThreadedNotification: String
let didBecomeSingleThreadedNotification: String
let threadWillExitNotification: String
extension Object {
  class func performSelector(onMainThread aSelector: Selector, with arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  func performSelector(onMainThread aSelector: Selector, with arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  class func performSelector(onMainThread aSelector: Selector, with arg: AnyObject?, waitUntilDone wait: Bool)
  func performSelector(onMainThread aSelector: Selector, with arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: Thread, with arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: Thread, with arg: AnyObject?, waitUntilDone wait: Bool, modes array: [String]?)
  @available(OSX 10.5, *)
  class func perform(aSelector: Selector, on thr: Thread, with arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  func perform(aSelector: Selector, on thr: Thread, with arg: AnyObject?, waitUntilDone wait: Bool)
  @available(OSX 10.5, *)
  class func performSelector(inBackground aSelector: Selector, with arg: AnyObject?)
  @available(OSX 10.5, *)
  func performSelector(inBackground aSelector: Selector, with arg: AnyObject?)
}
