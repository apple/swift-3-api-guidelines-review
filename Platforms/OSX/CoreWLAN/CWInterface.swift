
@available(OSX 10.6, *)
class CWInterface : Object {
  @available(OSX 10.7, *)
  var interfaceName: String? { get }
  @available(OSX 10.7, *)
  func powerOn() -> Bool
  @available(OSX 10.7, *)
  func supportedWLANChannels() -> Set<CWChannel>?
  @available(OSX 10.7, *)
  func wlanChannel() -> CWChannel?
  @available(OSX 10.7, *)
  func activePHYMode() -> CWPHYMode
  @available(OSX 10.6, *)
  func ssid() -> String?
  @available(OSX 10.7, *)
  func ssidData() -> Data?
  @available(OSX 10.6, *)
  func bssid() -> String?
  @available(OSX 10.7, *)
  func rssiValue() -> Int
  @available(OSX 10.7, *)
  func noiseMeasurement() -> Int
  @available(OSX 10.7, *)
  func security() -> CWSecurity
  @available(OSX 10.7, *)
  func transmitRate() -> Double
  @available(OSX 10.6, *)
  func countryCode() -> String?
  @available(OSX 10.7, *)
  func interfaceMode() -> CWInterfaceMode
  @available(OSX 10.7, *)
  func transmitPower() -> Int
  @available(OSX 10.7, *)
  func hardwareAddress() -> String?
  @available(OSX 10.7, *)
  func serviceActive() -> Bool
  @available(OSX 10.7, *)
  func cachedScanResults() -> Set<CWNetwork>?
  @available(OSX 10.6, *)
  func configuration() -> CWConfiguration?
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use +[CWWiFiClient interfaceNames] instead")
  class func interfaceNames() -> Set<String>?
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient interfaceWithName:] instead")
  convenience init(name: String)
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient interfaceWithName:] instead")
  init(interfaceName name: String)
  @available(OSX 10.6, *)
  func setPower(power: Bool) throws
  @available(OSX 10.7, *)
  func setWLANChannel(channel: CWChannel) throws
  @available(OSX 10.6, *)
  func setPairwiseMasterKey(key: Data?) throws
  @available(OSX 10.6, *)
  func setWEPKey(key: Data?, flags: CWCipherKeyFlags, index: Int) throws
  @available(OSX 10.7, *)
  func scanForNetworksWithSSID(ssid: Data?) throws -> Set<CWNetwork>
  @available(OSX 10.7, *)
  func scanForNetworksWithName(networkName: String?) throws -> Set<CWNetwork>
  @available(OSX 10.7, *)
  func associateTo(network: CWNetwork, password: String?) throws
  @available(OSX 10.6, *)
  func disassociate()
  @available(OSX 10.7, *)
  func associateToEnterpriseNetwork(network: CWNetwork, identity: SecIdentity?, username: String?, password: String?) throws
  @available(OSX 10.7, *)
  func startIBSSModeWithSSID(ssidData: Data, security: CWIBSSModeSecurity, channel: Int, password: String?) throws
  init()
}
