
let NSDefaultRunLoopMode: String
@available(tvOS 2.0, *)
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func currentRunLoop() -> NSRunLoop
  @available(tvOS 2.0, *)
  class func mainRunLoop() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func addTimer(timer: NSTimer, forMode mode: String)
  func addPort(aPort: NSPort, forMode mode: String)
  func removePort(aPort: NSPort, forMode mode: String)
  func limitDateForMode(mode: String) -> NSDate?
  func acceptInputForMode(mode: String, beforeDate limitDate: NSDate)
  init()
}
extension NSRunLoop {
  func run()
  func runUntilDate(limitDate: NSDate)
  func runMode(mode: String, beforeDate limitDate: NSDate) -> Bool
}
extension NSObject {
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func performSelector(aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(aTarget: AnyObject)
}
extension NSRunLoop {
  func performSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerformSelector(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(target: AnyObject)
}
