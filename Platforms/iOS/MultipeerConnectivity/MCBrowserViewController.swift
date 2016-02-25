
@available(iOS 7.0, *)
class MCBrowserViewController : UIViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType serviceType: String, session session: MCSession)
  init(browser browser: MCNearbyServiceBrowser, session session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser? { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  @available(iOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(iOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError)
}
protocol MCBrowserViewControllerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  optional func browserViewController(_ browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
