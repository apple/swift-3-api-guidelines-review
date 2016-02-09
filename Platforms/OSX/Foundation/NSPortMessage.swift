
class PortMessage : Object {
  init(send sendPort: Port?, receive replyPort: Port?, components: [AnyObject]?)
  var components: [AnyObject]? { get }
  var receivePort: Port? { get }
  var sendPort: Port? { get }
  func send(before date: Date) -> Bool
  var msgid: UInt32
  convenience init()
}
