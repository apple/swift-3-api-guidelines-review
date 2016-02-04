
@available(OSX 10.10, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Reliable
  case Unreliable
}
@available(OSX 10.10, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotConnected
  case Connecting
  case Connected
}
@available(OSX 10.10, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Optional
  case Required
  case None
}
@available(OSX 10.10, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(OSX 10.10, *)
let kMCSessionMaximumNumberOfPeers: Int
@available(OSX 10.10, *)
class MCSession : NSObject {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [AnyObject]?, encryptionPreference: MCEncryptionPreference)
  func sendData(data: NSData, toPeers peerIDs: [MCPeerID], withMode mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResourceAtURL(resourceURL: NSURL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((NSError?) -> Void)?) -> NSProgress?
  func startStreamWithName(streamName: String, toPeer peerID: MCPeerID) throws -> NSOutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [AnyObject]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
  convenience init()
}
protocol MCSessionDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func session(session: MCSession, peer peerID: MCPeerID, didChangeState state: MCSessionState)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceiveData data: NSData, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceiveStream stream: NSInputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: NSProgress)
  @available(OSX 10.10, *)
  func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, atURL localURL: NSURL, withError error: NSError?)
  @available(OSX 10.10, *)
  optional func session(session: MCSession, didReceiveCertificate certificate: [AnyObject]?, fromPeer peerID: MCPeerID, certificateHandler: (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionDataForPeer(peerID: MCPeerID, withCompletionHandler completionHandler: (NSData, NSError?) -> Void)
  func connectPeer(peerID: MCPeerID, withNearbyConnectionData data: NSData)
  func cancelConnectPeer(peerID: MCPeerID)
}
