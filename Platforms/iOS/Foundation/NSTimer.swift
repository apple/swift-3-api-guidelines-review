
class NSTimer : NSObject {
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, invocation invocation: NSInvocation, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(_ ti: NSTimeInterval, invocation invocation: NSInvocation, repeats yesOrNo: Bool) -> NSTimer
  /*not inherited*/ init(timeInterval ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimerWithTimeInterval(_ ti: NSTimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo userInfo: AnyObject?, repeats yesOrNo: Bool) -> NSTimer
  init(fireDate date: NSDate, interval ti: NSTimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: NSDate
  var timeInterval: NSTimeInterval { get }
  @available(iOS 7.0, *)
  var tolerance: NSTimeInterval
  func invalidate()
  var valid: Bool { get }
  var userInfo: AnyObject? { get }
}
