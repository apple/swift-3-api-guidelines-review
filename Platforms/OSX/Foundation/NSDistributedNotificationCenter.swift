
let NSLocalNotificationCenterType: String
enum NSNotificationSuspensionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case drop
  case coalesce
  case hold
  case deliverImmediately
}
struct NSDistributedNotificationOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var deliverImmediately: NSDistributedNotificationOptions { get }
  static var postToAllSessions: NSDistributedNotificationOptions { get }
}
let NSNotificationDeliverImmediately: NSDistributedNotificationOptions
let NSNotificationPostToAllSessions: NSDistributedNotificationOptions
class NSDistributedNotificationCenter : NSNotificationCenter {
  class func forType(notificationCenterType: String) -> NSDistributedNotificationCenter
  class func defaultCenter() -> NSDistributedNotificationCenter
  func addObserver(observer: AnyObject, selector: Selector, name: String?, object: String?, suspensionBehavior: NSNotificationSuspensionBehavior)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]? = [:], deliverImmediately: Bool)
  func postNotificationName(name: String, object: String?, userInfo: [NSObject : AnyObject]? = [:], options: NSDistributedNotificationOptions = [])
  var suspended: Bool
  func addObserver(observer: AnyObject, selector aSelector: Selector, name aName: String?, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?)
  func postNotificationName(aName: String, object anObject: String?, userInfo aUserInfo: [NSObject : AnyObject]? = [:])
  func removeObserver(observer: AnyObject, name aName: String?, object anObject: String?)
  init()
}
