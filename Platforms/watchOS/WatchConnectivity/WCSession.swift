
@available(watchOS 2.0, *)
class WCSession : NSObject {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activate()
  var isReachable: Bool { get }
  @available(watchOS 2.0, *)
  var iOSDeviceNeedsUnlockAfterRebootForReachability: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((NSError) -> Void)? = nil)
  func sendMessageData(data: NSData, replyHandler: ((NSData) -> Void)?, errorHandler: ((NSError) -> Void)? = nil)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: NSURL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func sessionReachabilityDidChange(session: WCSession)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData, replyHandler: (NSData) -> Void)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: NSError?)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject] = [:])
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: NSError?)
  @available(watchOS 2.0, *)
  optional func session(session: WCSession, didReceive file: WCSessionFile)
}
