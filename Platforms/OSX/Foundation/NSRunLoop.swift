
let NSDefaultRunLoopMode: String
@available(OSX 10.5, *)
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func currentRunLoop() -> NSRunLoop
  @available(OSX 10.5, *)
  class func mainRunLoop() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func addTimer(_ timer: NSTimer, forMode mode: String)
  func addPort(_ aPort: NSPort, forMode mode: String)
  func removePort(_ aPort: NSPort, forMode mode: String)
  func limitDateForMode(_ mode: String) -> NSDate?
  func acceptInputForMode(_ mode: String, beforeDate limitDate: NSDate)
}
extension NSRunLoop {
  func run()
  func runUntilDate(_ limitDate: NSDate)
  func runMode(_ mode: String, beforeDate limitDate: NSDate) -> Bool
}
extension NSObject {
  class func performSelector(_ aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func performSelector(_ aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func performSelector(_ aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func performSelector(_ aSelector: Selector, withObject anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequestsWithTarget(_ aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequestsWithTarget(_ aTarget: AnyObject)
}
extension NSRunLoop {
  func performSelector(_ aSelector: Selector, target target: AnyObject, argument arg: AnyObject?, order order: Int, modes modes: [String])
  func cancelPerformSelector(_ aSelector: Selector, target target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectorsWithTarget(_ target: AnyObject)
}
