
let defaultRunLoopMode: String
@available(tvOS 2.0, *)
let runLoopCommonModes: String
class RunLoop : Object {
  class func current() -> RunLoop
  @available(tvOS 2.0, *)
  class func main() -> RunLoop
  var currentMode: String? { get }
  func getCFRunLoop() -> CFRunLoop
  func add(timer: Timer, forMode mode: String)
  func add(aPort: Port, forMode mode: String)
  func remove(aPort: Port, forMode mode: String)
  func limitDate(forMode mode: String) -> Date?
  func acceptInput(forMode mode: String, before limitDate: Date)
  init()
}
extension RunLoop {
  func run()
  func run(until limitDate: Date)
  func runMode(mode: String, before limitDate: Date) -> Bool
}
extension Object {
  class func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: TimeInterval, inModes modes: [String])
  class func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: TimeInterval)
  func perform(aSelector: Selector, with anArgument: AnyObject?, afterDelay delay: TimeInterval)
  class func cancelPreviousPerformRequests(target aTarget: AnyObject, selector aSelector: Selector, object anArgument: AnyObject?)
  class func cancelPreviousPerformRequests(target aTarget: AnyObject)
}
extension RunLoop {
  func perform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?, order: Int, modes: [String])
  func cancelPerform(aSelector: Selector, target: AnyObject, argument arg: AnyObject?)
  func cancelPerformSelectors(target target: AnyObject)
}
