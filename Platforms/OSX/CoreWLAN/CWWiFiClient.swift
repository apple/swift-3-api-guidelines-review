
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func ssidDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func bssidDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func linkDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterfaceWithName(interfaceName: String, rssi: Int, transmitRate: Double)
  optional func modeDidChangeForWiFiInterfaceWithName(interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterfaceWithName(interfaceName: String)
}
@available(OSX 10.10, *)
class CWWiFiClient : Object {
  @available(OSX 10.10, *)
  weak var delegate: @sil_weak AnyObject?
  @available(OSX 10.10, *)
  class func shared() -> CWWiFiClient
  @available(OSX 10.10, *)
  init?()
  @available(OSX 10.10, *)
  func interface() -> CWInterface?
  @available(OSX 10.10, *)
  class func interfaceNames() -> [String]?
  @available(OSX 10.10, *)
  func interfaceWithName(interfaceName: String?) -> CWInterface?
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(OSX 10.10, *)
  func startMonitoringEventWith(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringEventWith(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}
