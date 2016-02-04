
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
