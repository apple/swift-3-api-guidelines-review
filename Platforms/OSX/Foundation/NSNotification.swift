
class NSNotification : NSObject, NSCopying, NSCoding {
  var name: String { get }
  var object: AnyObject? { get }
  var userInfo: [NSObject : AnyObject]? { get }
  @available(OSX 10.6, *)
  init(name name: String, object object: AnyObject?, userInfo userInfo: [NSObject : AnyObject]?)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  func encodeWithCoder(_ aCoder: NSCoder)
}
extension NSNotification {
  convenience init(name aName: String, object anObject: AnyObject?)
}
class NSNotificationCenter : NSObject {
  class func defaultCenter() -> NSNotificationCenter
  func addObserver(_ observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: AnyObject?)
  func postNotification(_ notification: NSNotification)
  func postNotificationName(_ aName: String, object anObject: AnyObject?)
  func postNotificationName(_ aName: String, object anObject: AnyObject?, userInfo aUserInfo: [NSObject : AnyObject]?)
  func removeObserver(_ observer: AnyObject)
  func removeObserver(_ observer: AnyObject, name aName: String?, object anObject: AnyObject?)
  @available(OSX 10.6, *)
  func addObserverForName(_ name: String?, object obj: AnyObject?, queue queue: NSOperationQueue?, usingBlock block: (NSNotification) -> Void) -> NSObjectProtocol
}
