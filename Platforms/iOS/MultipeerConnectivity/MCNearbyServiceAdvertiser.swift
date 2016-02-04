
@available(iOS 7.0, *)
class MCNearbyServiceAdvertiser : Object {
  init(peer myPeerID: MCPeerID, discoveryInfo info: [String : String]?, serviceType: String)
  func startAdvertisingPeer()
  func stopAdvertisingPeer()
  weak var delegate: @sil_weak MCNearbyServiceAdvertiserDelegate?
  var myPeerID: MCPeerID { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCNearbyServiceAdvertiserDelegate : ObjectProtocol {
  @available(iOS 7.0, *)
  func advertiser(advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: (Bool, MCSession) -> Void)
  @available(iOS 7.0, *)
  optional func advertiser(advertiser: MCNearbyServiceAdvertiser, didNotStartAdvertisingPeer error: Error)
}
