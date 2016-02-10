
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
  func displayNameFor(peer peerID: String!) -> String!
  @available(OSX, introduced=10.8, deprecated=10.10)
  func send(data: Data!, toPeers peers: [AnyObject]!, withDataMode mode: GKSendDataMode) throws
  @available(OSX, introduced=10.8, deprecated=10.10)
  func sendDataTo(allPeers data: Data!, withDataMode mode: GKSendDataMode) throws
  func setDataReceiveHandler(handler: AnyObject!, withContext context: UnsafeMutablePointer<Void>)
  func connectTo(peer peerID: String!, withTimeout timeout: TimeInterval)
  func cancelConnectTo(peer peerID: String!)
  func acceptConnectionFrom(peer peerID: String!) throws
  func denyConnectionFrom(peer peerID: String!)
  func disconnectPeerFrom(allPeers peerID: String!)
  func disconnectFromAllPeers()
  @available(OSX, introduced=10.8, deprecated=10.10)
  func peersWith(state: GKPeerConnectionState) -> [AnyObject]!
  init()
}
