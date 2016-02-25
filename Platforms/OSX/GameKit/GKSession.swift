
@available(OSX, introduced=10.8, deprecated=10.10, message="Use MCSession from the MultipeerConnectivity framework instead")
class GKSession : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  init!(sessionID sessionID: String!, displayName name: String!, sessionMode mode: GKSessionMode)
  unowned(unsafe) var delegate: @sil_unmanaged GKSessionDelegate!
  var sessionID: String! { get }
  var displayName: String! { get }
  @available(OSX, introduced=10.8, deprecated=10.10)
  var sessionMode: GKSessionMode { get }
  var peerID: String! { get }
  var available: Bool
  var disconnectTimeout: NSTimeInterval
  func displayNameForPeer(_ peerID: String!) -> String!
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendData(_ data: NSData!, toPeers peers: [AnyObject]!, withDataMode mode: GKSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendDataToAllPeers(_ data: NSData!, withDataMode mode: GKSendDataMode) throws
  func setDataReceiveHandler(_ handler: AnyObject!, withContext context: UnsafeMutablePointer<Void>)
  func connectToPeer(_ peerID: String!, withTimeout timeout: NSTimeInterval)
  func cancelConnectToPeer(_ peerID: String!)
  func acceptConnectionFromPeer(_ peerID: String!) throws
  func denyConnectionFromPeer(_ peerID: String!)
  func disconnectPeerFromAllPeers(_ peerID: String!)
  func disconnectFromAllPeers()
  @available(OSX, introduced=10.8, deprecated=10.10)
  func peersWithConnectionState(_ state: GKPeerConnectionState) -> [AnyObject]!
}
