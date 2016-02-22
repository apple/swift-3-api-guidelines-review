
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(watchOS 2.0, *)
  init(name: String, object: AnyObject?, userInfo: [NSObject : AnyObject]? = [:])
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  func encode(with aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
  convenience init()
}
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func post(notification: NSNotification)
  func postNotificationName(aName: String, object anObject: AnyObject?)
  func postNotificationName(aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]? = [:])
  func removeObserver(observer: AnyObject)
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(watchOS 2.0, *)
  func addObserver(forName name: String?, object obj: AnyObject?, queue: NSOperationQueue?, using block: (NSNotification) -> Void) -> NSObjectProtocol
  init()
}
