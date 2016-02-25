
class NSPortMessage : NSObject {
  init(sendPort sendPort: NSPort?, receivePort replyPort: NSPort?, components components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: NSPort? { get }
  var sendPort: NSPort? { get }
  func sendBeforeDate(_ date: NSDate) -> Bool
  var msgid: UInt32
}
