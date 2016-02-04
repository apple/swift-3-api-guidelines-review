
@available(OSX 10.10, *)
class MCAdvertiserAssistant : Object {
  init(serviceType: String, discoveryInfo info: [String : String]?, session: MCSession)
  func start()
  func stop()
  weak var delegate: @sil_weak MCAdvertiserAssistantDelegate?
  var session: MCSession { get }
  var discoveryInfo: [String : String]? { get }
  var serviceType: String { get }
  convenience init()
}
protocol MCAdvertiserAssistantDelegate : ObjectProtocol {
  @available(OSX 10.10, *)
  optional func advertiserAssistantWillPresentInvitation(advertiserAssistant: MCAdvertiserAssistant)
  @available(OSX 10.10, *)
  optional func advertiserAssistantDidDismissInvitation(advertiserAssistant: MCAdvertiserAssistant)
}
