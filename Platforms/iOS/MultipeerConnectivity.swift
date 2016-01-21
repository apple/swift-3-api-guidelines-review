

/*!
   @class MCAdvertiserAssistant
   @abstract
   MCAdvertiserAssistant is a convenience class that handles advertising,
   presents incoming invitations to the user and handles user's responses.

   @discussion
   To create the MCAdvertiserAssistant object a new MCPeerID should be
   created to represent the local peer, and a service type needs to be
   specified.

   The serviceType parameter is a short text string used to describe the
   app's networking protocol.  It should be in the same format as a
   Bonjour service type: up to 15 characters long and valid characters
   include ASCII lowercase letters, numbers, and the hyphen. A short name
   that distinguishes itself from unrelated services is recommended;
   for example, a text chat app made by ABC company could use the service
   type "abc-txtchat".

   The discoveryInfo parameter is a dictionary of string key/value pairs
   that will be advertised for browsers to see. Both keys and values must
   be NSString objects. The content of discoveryInfo will be advertised
   within Bonjour TXT records, and keeping the dictionary small is good
   for keeping network traffic low.

   A delegate that conforms to the MCAdvertiserAssistantDelegate protocol
   must be provided. No assumption should be made as to which queue the
   callbacks are called on.

   See Bonjour APIs https://developer.apple.com/bonjour/ for more
   information about service types.
 */
@available(iOS 7.0, *)
class MCAdvertiserAssistant : Object {
  init(serviceType: String, discoveryInfo info: [String : String]?, session: MCSession)
  func start()
  func stop()
  weak var delegate: @sil_weak MCAdvertiserAssistantDelegate?
  var session: MCSession { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCAdvertiserAssistantDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  optional func advertiserAssistantWillPresentInvitation(advertiserAssistant: MCAdvertiserAssistant)
  @available(iOS 7.0, *)
  optional func advertiserAssistantDidDismissInvitation(advertiserAssistant: MCAdvertiserAssistant)
}

/*!
   @class MCBrowserViewController
   @abstract The
   MCBrowserViewController class manages the system-supplied user
   interface for choosing peers to connect with for multipeer sessions.

   @discussion
   MCBrowserViewController manages presentation of nearby peers and the
   invite process for you. The invite process is driven by the user
   and handled by the peer picker and the MCNearbyServiceBrowser object
   it holds.

   MCBrowserViewController must be initialized with a
   MCNearbyServiceBrowser object and a MCSession object at init time.
   If the browser object's delegate is nil, the browser view controller
   will set itself as the browser's delegate. The session object will be
   used by the browser view controller during the invite process.
   A delegate that conforms to the MCBrowserViewControllerDelegate
   protocol must also be provided. The delegate is notified to decide
   whether to present a peer, when the user taps the done button, or when
   the users taps the cancel button. No assumption should be made as to
   which queue the callbacks are called on.

   When presented, the browser view controller looks for nearby peers,
   and allows the user to connect up to the specified maximum number of
   peers.  When the user taps on a nearby peer, the browser view
   controller will send an invitation to it.

   When the browser view controller is dismissed, it will stop looking
   for nearby peers.
 */
@available(iOS 7.0, *)
class MCBrowserViewController : UIViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser? { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
protocol MCBrowserViewControllerDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  func browserViewControllerDidFinish(browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  optional func browserViewController(browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
let MCErrorDomain: String
@available(iOS 7.0, *)
enum MCErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case NotConnected
  case InvalidParameter
  case Unsupported
  case TimedOut
  case Cancelled
  case Unavailable
}

@available(OSX 10.10, iOS 7.0, *)
extension MCErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/*!
   @class MCNearbyServiceAdvertiser
   @abstract
   MCNearbyServiceAdvertiser advertises availability of the local peer,
   and handles invitations from nearby peers.

   @discussion
   To create the MCNearbyServiceAdvertiser object and start advertising
   to nearby peers, a new MCPeerID should be created to
   represent the local peer, and a service type needs to be specified.

   The serviceType parameter is a short text string used to describe the
   app's networking protocol.  It should be in the same format as a
   Bonjour service type: up to 15 characters long and valid characters
   include ASCII lowercase letters, numbers, and the hyphen.  A short
   name that distinguishes itself from unrelated services is recommended;
   for example, a text chat app made by ABC company could use the service
   type "abc-txtchat". For more detailed information about service type
   restrictions, see RFC 6335, Section 5.1.

   The discoveryInfo parameter is a dictionary of string key/value pairs
   that will be advertised for browsers to see. Both keys and values must
   be NSString objects. The content of discoveryInfo will be advertised
   within Bonjour TXT records, and keeping the dictionary small is good
   for keeping network traffic low.

   MCNearbyServiceAdvertiser must be initialized with an MCPeerID object
   and a valid service type. The discoveryInfo parameter is optional and
   may be nil.

   A delegate that conforms to the MCNearbyServiceAdvertiserDelegate protocol
   must be provided. No assumption should be made as to which queue the
   callbacks are called on.

   See Bonjour APIs https://developer.apple.com/bonjour/ for more
   information about service types.
 */
@available(iOS 7.0, *)
class MCNearbyServiceAdvertiser : Object {
  init(peer myPeerID: MCPeerID, discoveryInfo info: [String : String]?, serviceType: String)
  func startAdvertisingPeer()
  func stopAdvertisingPeer()
  weak var delegate: @sil_weak MCNearbyServiceAdvertiserDelegate?
  var myPeerID: MCPeerID { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceAdvertiserDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  func advertiser(advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: (Bool, MCSession) -> Void)
  @available(iOS 7.0, *)
  optional func advertiser(advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error)
}

/*!
   @class MCNearbyServiceBrowser
   @abstract
   MCNearbyServiceBrowser looks for nearby peers, and connects them to
   sessions.

   @discussion
   To create the MCNearbyServiceBrowser object and start browsing for
   nearby peers, a new MCPeerID should be created to represent the local
   peer, and a service type needs to be specified.

   The serviceType parameter is a short text string used to describe the
   app's networking protocol.  It should be in the same format as a
   Bonjour service type: up to 15 characters long and valid characters
   include ASCII lowercase letters, numbers, and the hyphen.  A short name
   that distinguishes itself from unrelated services is recommended; for
   example, a text chat app made by ABC company could use the service type
   "abc-txtchat". For more detailed information about service type
   restrictions, see RFC 6335, Section 5.1.

   A delegate that conforms to the MCNearbyServiceBrowserDelegate
   protocol must also be provided.  The delegate is notified when nearby
   peers are found and lost. No assumption should be made as to which queue
   the callbacks are called on.

   MCNearbyAdvertiser must be initialized with an MCPeerID object and a
   valid service type.

   See Bonjour APIs https://developer.apple.com/bonjour/ for more
   information about service types.
 */
@available(iOS 7.0, *)
class MCNearbyServiceBrowser : Object {
  init(peer myPeerID: MCPeerID, serviceType: String)
  func startBrowsingForPeers()
  func stopBrowsingForPeers()
  func invitePeer(peerID: MCPeerID, to session: MCSession, withContext context: Data?, timeout: TimeInterval)
  weak var delegate: @sil_weak MCNearbyServiceBrowserDelegate?
  var myPeerID: MCPeerID { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceBrowserDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  optional func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}

/*!
   @class MCPeerID
   @abstract
   MCPeerID represents a peer in a multipeer session.

   @discussion
    MCPeerID is used to reference a peer in a multipeer session.

    Use the init method -initWithDisplayName: to create a new ID for the
    local app, and associate a display name with the ID.

    Note that the displayName is intended for a UI element, and should
    be short and descriptive of the local peer.  The hard limit of
    displayName is 63 bytes in UTF8 encoding.  The displayName parameter
    may not be nil or an empty string.

    MCPeerID conforms to NSCopying and can be used as a key in a
    NSDictionary.
 */
@available(iOS 7.0, *)
class MCPeerID : Object, Copying, SecureCoding {
  init(displayName myDisplayName: String)
  var displayName: String { get }
  convenience init()
  @available(iOS 7.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(iOS 7.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 7.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 7.0, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
@available(iOS 7.0, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotConnected
  case Connecting
  case Connected
}
@available(iOS 7.0, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Optional
  case Required
  case None
}
@available(iOS 7.0, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(iOS 7.0, *)
let kMCSessionMaximumNumberOfPeers: Int

/*!
   @class MCSession
   @abstract
   A MCSession facilitates communication among all peers in a multipeer
   session.

   @discussion
   To start a multipeer session with remote peers, a MCPeerID that
   represents the local peer needs to be supplied to the init method.

   Once a peer is added to the session on both sides, the delegate
   callback -session:peer:didChangeState: will be called with
   MCSessionStateConnected state for the remote peer.

   Data messages can be sent to a connected peer with the -sendData:
   toPeers:withMode:error: method.

   The receiver of data messages will receive a delegate callback
   -session:didReceiveData:fromPeer:.

   Resources referenced by NSURL (e.g. a file) can be sent to a connected
   peer with the -sendResourceAtURL:toPeer:withTimeout:completionHandler:
   method. The completionHandler will be called when the resource is fully
   received by the remote peer, or if an error occurred during
   transmission. The receiver of data messages will receive a delegate
   callbacks -session:didStartReceivingResourceWithName:fromPeer:
   withProgress: when it starts receiving the resource and -session:
   didFinishReceivingResourceWithName:fromPeer:atURL:withError:
   when the resource has been fully received.

   A byte stream can be sent to a connected peer with the
   -startStreamWithName:toPeer:error: method. On success, an
   NSOutputStream  object is returned, and can be used to send bytes to
   the remote peer once the stream is properly set up. The receiver of the
   byte stream will receive a delegate callback -session:didReceiveStream:
   withName:fromPeer:

   Delegate calls occur on a private serial queue. If your app needs to
   perform an action on a particular run loop or operation queue, its
   delegate method should explicitly dispatch or schedule that work.
 */
@available(iOS 7.0, *)
class MCSession : Object {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [AnyObject]?, encryptionPreference: MCEncryptionPreference)
  func send(data: Data, toPeers peerIDs: [MCPeerID], withMode mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResourceAt(resourceURL: URL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil) -> Progress?
  func startStreamWithName(streamName: String, toPeer peerID: MCPeerID) throws -> OutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [AnyObject]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
  convenience init()
}
protocol MCSessionDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  func session(session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  @available(iOS 7.0, *)
  func session(session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  func session(session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: Progress)
  @available(iOS 7.0, *)
  func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL, withError error: Error?)
  @available(iOS 7.0, *)
  optional func session(session: MCSession, didReceiveCertificate certificate: [AnyObject]?, fromPeer peerID: MCPeerID, certificateHandler: (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionDataForPeer(peerID: MCPeerID, withCompletionHandler completionHandler: (Data, Error?) -> Void)
  func connectPeer(peerID: MCPeerID, withNearbyConnectionData data: Data)
  func cancelConnectPeer(peerID: MCPeerID)
}
