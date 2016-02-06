
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func ssidDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func bssidDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func linkDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterfaceWith(name interfaceName: String, rssi: Int, transmitRate: Double)
  optional func modeDidChangeForWiFiInterfaceWith(name interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterfaceWith(name interfaceName: String)
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
  func interfaceWith(name interfaceName: String?) -> CWInterface?
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(OSX 10.10, *)
  func startMonitoringEvent(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringEvent(type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}
