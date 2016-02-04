
@available(OSX, introduced=10.8, deprecated=10.10, message="Use MCSession from the MultipeerConnectivity framework instead")
class GKSession : NSObject {
  @available(OSX, introduced=10.8, deprecated=10.10)
  init!(sessionID: String!, displayName name: String!, sessionMode mode: GKSessionMode)
  unowned(unsafe) var delegate: @sil_unmanaged GKSessionDelegate!
  var sessionID: String! { get }
  var displayName: String! { get }
  @available(OSX, introduced=10.8, deprecated=10.10)
  var sessionMode: GKSessionMode { get }
  var peerID: String! { get }
  var available: Bool
  var disconnectTimeout: NSTimeInterval
  func displayNameForPeer(peerID: String!) -> String!
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendData(data: NSData!, toPeers peers: [AnyObject]!, withDataMode mode: GKSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendDataToAllPeers(data: NSData!, withDataMode mode: GKSendDataMode) throws
  func setDataReceiveHandler(handler: AnyObject!, withContext context: UnsafeMutablePointer<Void>)
  func connectToPeer(peerID: String!, withTimeout timeout: NSTimeInterval)
  func cancelConnectToPeer(peerID: String!)
  func acceptConnectionFromPeer(peerID: String!) throws
  func denyConnectionFromPeer(peerID: String!)
  func disconnectPeerFromAllPeers(peerID: String!)
  func disconnectFromAllPeers()
  @available(OSX, introduced=10.8, deprecated=10.10)
  func peersWithConnectionState(state: GKPeerConnectionState) -> [AnyObject]!
  init()
}
