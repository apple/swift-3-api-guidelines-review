
@available(watchOS 2.0, *)
class WCSession : Object {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activateSession()
  var isReachable: Bool { get }
  @available(watchOS 2.0, *)
  var iOSDeviceNeedsUnlockAfterRebootForReachability: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  func sendMessageData(data: Data, replyHandler: ((Data) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: URL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : ObjectProtocol {
  @available(watchOS 2.0, *)
  optional func sessionReachabilityDidChange(session: WCSession)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data, replyHandler: (Data) -> Void)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: Error?)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject] = [:])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: Error?)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceive file: WCSessionFile)
}
