
class DRNotificationCenter : NSObject {
  class func currentRunLoop() -> DRNotificationCenter!
  func addObserver(observer: AnyObject!, selector aSelector: Selector, name notificationName: String!, object anObject: AnyObject!)
  func removeObserver(observer: AnyObject!, name aName: String!, object anObject: AnyObject!)
  init()
}
