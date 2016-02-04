
@available(iOS 9.0, *)
class WCSessionFile : Object {
  var fileURL: URL { get }
  var metadata: [String : AnyObject]? { get }
  init()
}
@available(iOS 9.0, *)
class WCSessionFileTransfer : Object {
  var file: WCSessionFile { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
}
