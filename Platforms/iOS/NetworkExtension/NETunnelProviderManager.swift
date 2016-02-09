
@available(iOS 9.0, *)
class NETunnelProviderManager : NEVPNManager {
  @available(iOS 9.0, *)
  class func loadAllFromPreferences(withCompletionHandler completionHandler: ([NETunnelProviderManager]?, Error?) -> Void)
  @available(iOS 9.0, *)
  func copyAppRules() -> [NEAppRule]?
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}
