
let NSLocalNotificationCenterType: String
enum NSNotificationSuspensionBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Drop
  case Coalesce
  case Hold
  case DeliverImmediately
}
struct NSDistributedNotificationOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var DeliverImmediately: NSDistributedNotificationOptions { get }
  static var PostToAllSessions: NSDistributedNotificationOptions { get }
}
let NSNotificationDeliverImmediately: NSDistributedNotificationOptions
let NSNotificationPostToAllSessions: NSDistributedNotificationOptions
class NSDistributedNotificationCenter : NSNotificationCenter {
  class func notificationCenterForType(_ notificationCenterType: String) -> NSDistributedNotificationCenter
  func addObserver(_ observer: AnyObject, selector selector: Selector, name name: String?, object object: String?, suspensionBehavior suspensionBehavior: NSNotificationSuspensionBehavior)
  func postNotificationName(_ name: String, object object: String?, userInfo userInfo: [NSObject : AnyObject]?, deliverImmediately deliverImmediately: Bool)
  func postNotificationName(_ name: String, object object: String?, userInfo userInfo: [NSObject : AnyObject]?, options options: NSDistributedNotificationOptions)
  var suspended: Bool
}
