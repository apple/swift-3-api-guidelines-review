
@available(OSX 10.11, *)
enum NETunnelProviderError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NetworkSettingsInvalid
  case NetworkSettingsCanceled
  case NetworkSettingsFailed
}
@available(OSX 10.11, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case DestinationIP
  case SourceApplication
}
@available(OSX 10.11, *)
let NETunnelProviderErrorDomain: String
@available(OSX 10.11, *)
class NETunnelProvider : NEProvider {
  @available(OSX 10.11, *)
  func handleAppMessage(messageData: NSData, completionHandler: ((NSData?) -> Void)?)
  @available(OSX 10.11, *)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((NSError?) -> Void)?)
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