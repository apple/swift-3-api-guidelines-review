
@available(OSX 10.11, *)
class NETunnelProviderManager : NEVPNManager {
  @available(OSX 10.11, *)
  class func loadAllFromPreferencesWithCompletionHandler(_ completionHandler: ([NETunnelProviderManager]?, NSError?) -> Void)
  @available(OSX 10.11, *)
  func copyAppRules() -> [NEAppRule]?
  @available(OSX 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
}
