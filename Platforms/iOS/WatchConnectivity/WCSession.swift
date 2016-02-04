
@available(iOS 9.0, *)
class WCSession : Object {
  class func isSupported() -> Bool
  class func defaultSession() -> WCSession
  weak var delegate: @sil_weak WCSessionDelegate?
  func activateSession()
  var isPaired: Bool { get }
  var isWatchAppInstalled: Bool { get }
  var isComplicationEnabled: Bool { get }
  var watchDirectoryURL: URL? { get }
  var isReachable: Bool { get }
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  func sendMessageData(data: Data, replyHandler: ((Data) -> Void)?, errorHandler: ((Error) -> Void)? = nil)
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws
  var receivedApplicationContext: [String : AnyObject] { get }
  func transferUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  func transferCurrentComplicationUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }
  func transferFile(file: URL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}
protocol WCSessionDelegate : ObjectProtocol {
  @available(iOS 9.0, *)
  optional func sessionWatchStateDidChange(session: WCSession)
  @available(iOS 9.0, *)
  optional func sessionReachabilityDidChange(session: WCSession)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: Data, replyHandler: (Data) -> Void)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinish userInfoTransfer: WCSessionUserInfoTransfer, error: Error?)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject] = [:])
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinish fileTransfer: WCSessionFileTransfer, error: Error?)
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceive file: WCSessionFile)
}
