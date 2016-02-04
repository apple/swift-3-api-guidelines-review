
class NSPortMessage : NSObject {
  init(sendPort: NSPort?, receivePort replyPort: NSPort?, components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: NSPort? { get }
  var sendPort: NSPort? { get }
  func sendBeforeDate(date: NSDate) -> Bool
  var msgid: UInt32
  convenience init()
}
