
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
  func sendMessage(_ message: [String : AnyObject], replyHandler replyHandler: (([String : AnyObject]) -> Void)?, errorHandler errorHandler: ((NSError) -> Void)?)
  func sendMessageData(_ data: NSData, replyHandler replyHandler: ((NSData) -> Void)?, errorHandler errorHandler: ((NSError) -> Void)?)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(_ applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(_ userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer
  func transferCurrentComplicationUserInfo(_ userInfo: [String : AnyObject]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(_ file: NSURL, metadata metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : NSObjectProtocol {
  @available(iOS 9.0, *)
  optional func sessionWatchStateDidChange(_ session: WCSession)
  @available(iOS 9.0, *)
  optional func sessionReachabilityDidChange(_ session: WCSession)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler replyHandler: ([String : AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: NSData)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveMessageData messageData: NSData, replyHandler replyHandler: (NSData) -> Void)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error error: NSError?)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error error: NSError?)
  @available(iOS 9.0, *)
  optional func session(_ session: WCSession, didReceiveFile file: WCSessionFile)
}
