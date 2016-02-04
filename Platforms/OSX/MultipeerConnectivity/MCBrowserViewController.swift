
@available(OSX 10.10, *)
class MCBrowserViewController : NSViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  convenience init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
  @available(OSX 10.10, *)
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(OSX 10.10, *)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(OSX 10.10, *)
  func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
protocol MCBrowserViewControllerDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  func browserViewControllerDidFinish(browserViewController: MCBrowserViewController)
  @available(OSX 10.10, *)
  func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController)
  @available(OSX 10.10, *)
  optional func browserViewController(browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
