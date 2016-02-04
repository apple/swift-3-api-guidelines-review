
@available(iOS 7.0, *)
class MCBrowserViewController : UIViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser? { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
  convenience init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(iOS 7.0, *)
  func browser(browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: NSError)
}
protocol MCBrowserViewControllerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  func browserViewControllerDidFinish(browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  optional func browserViewController(browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
