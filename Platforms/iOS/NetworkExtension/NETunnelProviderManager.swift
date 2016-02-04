
@available(iOS 9.0, *)
class NETunnelProviderManager : NEVPNManager {
  @available(iOS 9.0, *)
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NETunnelProviderManager]?, NSError?) -> Void)
  @available(iOS 9.0, *)
  func copyAppRules() -> [NEAppRule]?
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}
