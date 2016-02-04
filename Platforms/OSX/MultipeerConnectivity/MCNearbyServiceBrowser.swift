
@available(OSX 10.10, *)
class MCNearbyServiceBrowser : NSObject {
  init(peer myPeerID: MCPeerID, serviceType: String)
  func startBrowsingForPeers()
  func stopBrowsingForPeers()
  func invitePeer(peerID: MCPeerID, toSession session: MCSession, withContext context: NSData?, timeout: NSTimeInterval)
  weak var delegate: @sil_weak MCNearbyServiceBrowserDelegate?
  var myPeerID: MCPeerID { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceBrowserDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(OSX 10.10, *)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  optional func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError)
}
