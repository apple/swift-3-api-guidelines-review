
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(iOS 4.0, *)
  init(name: String, object: AnyObject?, userInfo: [NSObject : AnyObject]?)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  func encodeWithCoder(aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func postNotification(notification: NSNotification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]?)
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(iOS 4.0, *)
  func addObserverForName(name: String?, object obj: AnyObject?, queue: NSOperationQueue?, usingBlock block: (NSNotification) -> Void) -> NSObjectProtocol
  init()
}
