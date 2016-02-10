
@available(OSX 10.11, *)
enum NETunnelProviderError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case networkSettingsInvalid
  case networkSettingsCanceled
  case networkSettingsFailed
}
@available(OSX 10.11, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case destinationIP
  case sourceApplication
}
@available(OSX 10.11, *)
let NETunnelProviderErrorDomain: String
@available(OSX 10.11, *)
class NETunnelProvider : NEProvider {
  @available(OSX 10.11, *)
  func handleAppMessage(messageData: Data, completionHandler: ((Data?) -> Void)? = nil)
  @available(OSX 10.11, *)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((Error?) -> Void)? = nil)
  @available(OSX 10.11, *)
  var protocolConfiguration: NEVPNProtocol { get }
  @available(OSX 10.11, *)
  var appRules: [NEAppRule]? { get }
  @available(OSX 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  @available(OSX 10.11, *)
  var reasserting: Bool
  init()
}
