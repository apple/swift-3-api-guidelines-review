
let NSDefaultRunLoopMode: String
@available(tvOS 2.0, *)
let NSRunLoopCommonModes: String
class NSRunLoop : NSObject {
  class func current() -> NSRunLoop
  @available(tvOS 2.0, *)
  class func main() -> NSRunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(timer: NSTimer, forMode mode: String)
  func add(aPort: NSPort, forMode mode: String)
  func remove(aPort: NSPort, forMode mode: String)
  func limitDate(forMode mode: String) -> NSDate?
  func acceptInput(forMode mode: String, before limitDate: NSDate)
  init()
}
extension NSRunLoop {
  func run()
  func run(until limitDate: NSDate)
  func runMode(mode: String, before limitDate: NSDate) -> Bool
}
extension NSObject {
  class func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: NSTimeInterval, inModes modes: [String])
  class func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: NSTimeInterval)
  class func cancelPreviousPerformRequests(target aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequests(target aTarget: AnyObject)
}
extension NSRunLoop {
  func perform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectors(target target: AnyObject)
}
