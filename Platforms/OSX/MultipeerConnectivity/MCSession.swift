
@available(OSX 10.10, *)
enum MCSessionSendDataMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case reliable
  case unreliable
}
@available(OSX 10.10, *)
enum MCSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case connecting
  case connected
}
@available(OSX 10.10, *)
enum MCEncryptionPreference : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case optional
  case required
  case none
}
@available(OSX 10.10, *)
let kMCSessionMinimumNumberOfPeers: Int
@available(OSX 10.10, *)
let kMCSessionMaximumNumberOfPeers: Int
@available(OSX 10.10, *)
class MCSession : NSObject {
  convenience init(peer myPeerID: MCPeerID)
  init(peer myPeerID: MCPeerID, securityIdentity identity: [AnyObject]?, encryptionPreference: MCEncryptionPreference)
  func send(data: NSData, toPeers peerIDs: [MCPeerID], with mode: MCSessionSendDataMode) throws
  func disconnect()
  func sendResource(at resourceURL: NSURL, withName resourceName: String, toPeer peerID: MCPeerID, withCompletionHandler completionHandler: ((NSError?) -> Void)? = nil) -> NSProgress?
  func startStream(name streamName: String, toPeer peerID: MCPeerID) throws -> NSOutputStream
  weak var delegate: @sil_weak MCSessionDelegate?
  var myPeerID: MCPeerID { get }
  var securityIdentity: [AnyObject]? { get }
  var encryptionPreference: MCEncryptionPreference { get }
  var connectedPeers: [MCPeerID] { get }
  convenience init()
}
protocol MCSessionDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func session(session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceive data: NSData, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didReceive stream: NSInputStream, withName streamName: String, fromPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: NSProgress)
  @available(OSX 10.10, *)
  func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: NSURL, withError error: NSError?)
  @available(OSX 10.10, *)
  optional func session(session: MCSession, didReceiveCertificate certificate: [AnyObject]?, fromPeer peerID: MCPeerID, certificateHandler: (Bool) -> Void)
}
extension MCSession {
  func nearbyConnectionData(forPeer peerID: MCPeerID, withCompletionHandler completionHandler: (NSData, NSError?) -> Void)
  func connectPeer(peerID: MCPeerID, withNearbyConnectionData data: NSData)
  func cancelConnectPeer(peerID: MCPeerID)
}
