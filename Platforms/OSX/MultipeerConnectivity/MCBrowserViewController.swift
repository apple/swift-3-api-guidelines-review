
@available(OSX 10.10, *)
class MCBrowserViewController : NSViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType serviceType: String, session session: MCSession)
  init(browser browser: MCNearbyServiceBrowser, session session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  @available(OSX 10.10, *)
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(OSX 10.10, *)
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError)
}
protocol MCBrowserViewControllerDelegate : NSObjectProtocol {
  @available(OSX 10.10, *)
  func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController)
  @available(OSX 10.10, *)
  func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController)
  @available(OSX 10.10, *)
  optional func browserViewController(_ browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
