
class Timer : Object {
  /*not inherited*/ init(timeInterval ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool)
  class func scheduledTimer(withTimeInterval ti: TimeInterval, invocation: Invocation, repeats yesOrNo: Bool) -> Timer
  /*not inherited*/ init(timeInterval ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool)
  class func scheduledTimer(withTimeInterval ti: TimeInterval, target aTarget: AnyObject, selector aSelector: Selector, userInfo: AnyObject?, repeats yesOrNo: Bool) -> Timer
  init(fire date: Date, interval ti: TimeInterval, target t: AnyObject, selector s: Selector, userInfo ui: AnyObject?, repeats rep: Bool)
  func fire()
  @NSCopying var fireDate: Date
  var timeInterval: TimeInterval { get }
  @available(watchOS 2.0, *)
  var tolerance: TimeInterval
  func invalidate()
  var isValid: Bool { get }
  var userInfo: AnyObject? { get }
  convenience init()
}
