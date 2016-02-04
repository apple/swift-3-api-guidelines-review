
@available(iOS 9.0, *)
class WCSession : NSObject {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activateSession()
  var paired: Bool { get }
  var watchAppInstalled: Bool { get }
  var complicationEnabled: Bool { get }
  var watchDirectoryURL: NSURL? { get }
  var reachable: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((NSError) -> Void)?)
  func sendMessageData(data: NSData, replyHandler: ((NSData) -> Void)?, errorHandler: ((NSError) -> Void)?)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer
  func transferCurrentComplicationUserInfo(userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: NSURL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func sessionWatchStateDidChange(session: WCSession)
  @available(iOS 9.0, *)
  optional func sessionReachabilityDidChange(session: WCSession)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData, replyHandler: (NSData) -> Void)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error: NSError?)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: NSError?)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveFile file: WCSessionFile)
}
