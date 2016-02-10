
class Notification : Object, Copying, Coding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [Object : AnyObject]? { get }
  @available(iOS 4.0, *)
  init(name: String, object: AnyObject?, userInfo: [Object : AnyObject]? = [:])
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
}
extension Notification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}
class NotificationCenter : Object {
  class func defaultCenter() -> NotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func post(notification: Notification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [Object : AnyObject]? = [:])
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(iOS 4.0, *)
  func addObserverFor(name name: String?, object obj: AnyObject?, queue: OperationQueue?, usingBlock block: (Notification) -> Void) -> ObjectProtocol
  init()
}
