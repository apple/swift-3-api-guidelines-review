
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterface(name interfaceName: String)
  optional func ssidDidChangeForWiFiInterface(name interfaceName: String)
  optional func bssidDidChangeForWiFiInterface(name interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterface(name interfaceName: String)
  optional func linkDidChangeForWiFiInterface(name interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterface(name interfaceName: String, rssi: Int, transmitRate: Double)
  optional func modeDidChangeForWiFiInterface(name interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterface(name interfaceName: String)
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
  func interface(name interfaceName: String?) -> CWInterface?
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(OSX 10.10, *)
  func startMonitoringEvent(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringEvent(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}
