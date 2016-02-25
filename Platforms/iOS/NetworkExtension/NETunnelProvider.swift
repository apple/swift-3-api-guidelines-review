
@available(iOS 9.0, *)
enum NETunnelProviderError : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NetworkSettingsInvalid
  case NetworkSettingsCanceled
  case NetworkSettingsFailed
}
@available(iOS 9.0, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case DestinationIP
  case SourceApplication
}
@available(iOS 9.0, *)
let NETunnelProviderErrorDomain: String
@available(iOS 9.0, *)
class NETunnelProvider : NEProvider {
  @available(iOS 9.0, *)
  func handleAppMessage(_ messageData: NSData, completionHandler completionHandler: ((NSData?) -> Void)?)
  @available(iOS 9.0, *)
  func setTunnelNetworkSettings(_ tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler completionHandler: ((NSError?) -> Void)?)
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol { get }
  @available(iOS 9.0, *)
  var appRules: [NEAppRule]? { get }
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  @available(iOS 9.0, *)
  var reasserting: Bool
}
