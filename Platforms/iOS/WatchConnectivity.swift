
@available(iOS 9.0, *)
let WCErrorDomain: String

/** These are the possible error codes that can be returned from the WatchConnectivity APIs. */
@available(iOS 9.0, *)
enum WCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GenericError
  case SessionNotSupported
  case SessionMissingDelegate
  case SessionNotActivated
  case DeviceNotPaired
  case WatchAppNotInstalled
  case NotReachable
  case InvalidParameter
  case PayloadTooLarge
  case PayloadUnsupportedTypes
  case MessageReplyFailed
  case MessageReplyTimedOut
  case FileAccessDenied
  case DeliveryFailed
  case InsufficientSpace
}

@available(iOS 9.0, *)
extension WCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/** -------------------------------- WCSession ----------------------------------
 *  The default session is used to communicate between two counterpart apps
 *  (i.e. iOS app and its native WatchKit extension). The session provides
 *  methods for sending, receiving, and tracking state.
 *
 *  On start up an app should set a delegate on the default session and call
 *  activate. This will allow the system to populate the state properties and
 *  deliver any outstanding background transfers.
 */
@available(iOS 9.0, *)
class WCSession : NSObject {

  /** Check if session is supported on this iOS device. Session is always available on WatchOS */
  class func isSupported() -> Bool

  /** Use the default session for all transferring of content and state monitoring. */
  class func defaultSession() -> WCSession

  /** A delegate must exist before the session will allow sends. */
  weak var delegate: @sil_weak WCSessionDelegate?

  /** The default session must be activated on startup before the session will begin receiving delegate callbacks. Calling activate without a delegate set is undefined. */
  func activateSession()

  /** Check if iOS device is paired to a watch */
  var isPaired: Bool { get }

  /** Check if the user has the Watch app installed */
  var isWatchAppInstalled: Bool { get }

  /** Check if the user has the Watch app's complication enabled */
  var isComplicationEnabled: Bool { get }

  /** Use this directory to persist any data specific to the Watch. This directory will be deleted upon next launch if the watch app is uninstalled. If the watch app is not installed value will be nil. */
  var watchDirectoryURL: NSURL? { get }

  /** The counterpart app must be reachable for a send message to succeed. */
  var isReachable: Bool { get }

  /** Clients can use this method to send messages to the counterpart app. Clients wishing to receive a reply to a particular message should pass in a replyHandler block. If the message cannot be sent or if the reply could not be received, the errorHandler block will be invoked with an error. If both a replyHandler and an errorHandler are specified, then exactly one of them will be invoked. Messages can only be sent while the sending app is running. If the sending app exits before the message is dispatched the send will fail. If the counterpart app is not running the counterpart app will be launched upon receiving the message (iOS counterpart app only). The message dictionary can only accept the property list types. */
  func sendMessage(message: [String : AnyObject], replyHandler: (([String : AnyObject]) -> Void)?, errorHandler: ((NSError) -> Void)? = nil)

  /** Clients can use this method to send message data. All the policies of send message apply to send message data. Send message data is meant for clients that have an existing transfer format and do not need the convenience of the send message dictionary. */
  func sendMessageData(data: NSData, replyHandler: ((NSData) -> Void)?, errorHandler: ((NSError) -> Void)? = nil)

  /** Setting the applicationContext is a way to transfer the latest state of an app. After updating the applicationContext, the system initiates the data transfer at an appropriate time, which can occur after the app exits. The counterpart app will receive a delegate callback on next launch if the applicationContext has successfully arrived. If there is no app context, it should be updated with an empty dictionary. The applicationContext dictionary can only accept the property list types. */
  var applicationContext: [String : AnyObject] { get }
  func updateApplicationContext(applicationContext: [String : AnyObject]) throws

  /** Stores the most recently received applicationContext from the counterpart app. */
  var receivedApplicationContext: [String : AnyObject] { get }

  /** The system will enqueue the user info dictionary and transfer it to the counterpart app at an opportune time. The transfer of user info will continue after the sending app has exited. The counterpart app will receive a delegate callback on next launch if the file has successfully arrived. The userInfo dictionary can only accept the property list types.
   */
  func transferUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer

  /** Enqueues a user info dictionary containing the most current information for an enabled complication. If the app's complication is enabled the system will try to transfer this user info immediately. Once a current complication user info is received the system will launch the Watch App Extension in the background and allow it to update the complication content. If the current user info cannot be transferred (i.e. devices disconnected, out of background launch budget, etc.) it will wait in the outstandingUserInfoTransfers queue until next opportune time. There can only be one current complication user info in the outstandingUserInfoTransfers queue. If a current complication user info is outstanding (waiting to transfer) and -transferCurrentComplicationUserInfo: is called again with new user info, the new user info will be tagged as current and the previously current user info will be untagged. The previous user info will however stay in the queue of outstanding transfers. */
  func transferCurrentComplicationUserInfo(userInfo: [String : AnyObject] = [:]) -> WCSessionUserInfoTransfer

  /** Returns an array of user info transfers that are still transferring (i.e. have not been cancelled, failed, or been received by the counterpart app).*/
  var outstandingUserInfoTransfers: [WCSessionUserInfoTransfer] { get }

  /** The system will enqueue the file and transfer it to the counterpart app at an opportune time. The transfer of a file will continue after the sending app has exited. The counterpart app will receive a delegate callback on next launch if the file has successfully arrived. The metadata dictionary can only accept the property list types. */
  func transferFile(file: NSURL, metadata: [String : AnyObject]?) -> WCSessionFileTransfer

  /** Returns an array of file transfers that are still transferring (i.e. have not been cancelled, failed, or been received by the counterpart app). */
  var outstandingFileTransfers: [WCSessionFileTransfer] { get }
}

/** ----------------------------- WCSessionDelegate -----------------------------
 *  The session calls the delegate methods when content is received and session
 *  state changes. All delegate methods will be called on the same queue. The
 *  delegate queue is a non-main serial queue. It is the client's responsibility
 *  to dispatch to another queue if neccessary.
 */
protocol WCSessionDelegate : NSObjectProtocol {

  /** Called when any of the Watch state properties change */
  @available(iOS 9.0, *)
  optional func sessionWatchStateDidChange(session: WCSession)

  /** Called when the reachable state of the counterpart app changes. The receiver should check the reachable property on receiving this delegate callback. */
  @available(iOS 9.0, *)
  optional func sessionReachabilityDidChange(session: WCSession)

  /** Called on the delegate of the receiver. Will be called on startup if the incoming message caused the receiver to launch. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject])

  /** Called on the delegate of the receiver when the sender sends a message that expects a reply. Will be called on startup if the incoming message caused the receiver to launch. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)

  /** Called on the delegate of the receiver. Will be called on startup if the incoming message data caused the receiver to launch. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData)

  /** Called on the delegate of the receiver when the sender sends message data that expects a reply. Will be called on startup if the incoming message data caused the receiver to launch. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveMessageData messageData: NSData, replyHandler: (NSData) -> Void)

  /** Called on the delegate of the receiver. Will be called on startup if an applicationContext is available. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveApplicationContext applicationContext: [String : AnyObject])

  /** Called on the sending side after the user info transfer has successfully completed or failed with an error. Will be called on next launch if the sender was not running when the user info finished. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinishUserInfoTransfer userInfoTransfer: WCSessionUserInfoTransfer, error: NSError?)

  /** Called on the delegate of the receiver. Will be called on startup if the user info finished transferring when the receiver was not running. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceiveUserInfo userInfo: [String : AnyObject] = [:])

  /** Called on the sending side after the file transfer has successfully completed or failed with an error. Will be called on next launch if the sender was not running when the transfer finished. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didFinishFileTransfer fileTransfer: WCSessionFileTransfer, error: NSError?)

  /** Called on the delegate of the receiver. Will be called on startup if the file finished transferring when the receiver was not running. The incoming file will be located in the Documents/Inbox/ folder when being delivered. The receiver must take ownership of the file by moving it to another location. The system will remove any content that has not been moved when this delegate method returns. */
  @available(iOS 9.0, *)
  optional func session(session: WCSession, didReceive file: WCSessionFile)
}

/** Contains file information, such as the file's location and optional user info
 */
@available(iOS 9.0, *)
class WCSessionFile : NSObject {
  var fileURL: NSURL { get }
  var metadata: [String : AnyObject]? { get }
  init()
}

/** Used to track a file being transferred.
 */
@available(iOS 9.0, *)
class WCSessionFileTransfer : NSObject {
  var file: WCSessionFile { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
}

/** Used to track a user info dictionary being transferred.
 */
@available(iOS 9.0, *)
class WCSessionUserInfoTransfer : NSObject, NSSecureCoding {
  var isCurrentComplicationInfo: Bool { get }
  var userInfo: [String : AnyObject] { get }
  var isTransferring: Bool { get }
  func cancel()
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
