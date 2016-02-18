
@available(OSX, introduced=10.8, deprecated=10.10, message="Use MCSession from the MultipeerConnectivity framework instead")
class GKSession : Object {
  @available(OSX, introduced=10.8, deprecated=10.10)
  init!(sessionID: String!, displayName name: String!, sessionMode mode: GKSessionMode)
  unowned(unsafe) var delegate: @sil_unmanaged GKSessionDelegate!
  var sessionID: String! { get }
  var displayName: String! { get }
  @available(OSX, introduced=10.8, deprecated=10.10)
  var sessionMode: GKSessionMode { get }
  var peerID: String! { get }
  var isAvailable: Bool
  var disconnectTimeout: TimeInterval
  func displayName(forPeer peerID: String!) -> String!
  @available(OSX, introduced=10.8, deprecated=10.10)
  func send(data: Data!, toPeers peers: [AnyObject]!, with mode: GKSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendData(toAllPeers data: Data!, with mode: GKSendDataMode) throws
  func setDataReceiveHandler(handler: AnyObject!, withContext context: UnsafeMutablePointer<Void>)
  func connect(toPeer peerID: String!, withTimeout timeout: TimeInterval)
  func cancelConnect(toPeer peerID: String!)
  func acceptConnection(fromPeer peerID: String!) throws
  func denyConnection(fromPeer peerID: String!)
  func disconnectPeer(fromAllPeers peerID: String!)
  func disconnectFromAllPeers()
  @available(OSX, introduced=10.8, deprecated=10.10)
  func peers(state: GKPeerConnectionState) -> [AnyObject]!
  init()
}
