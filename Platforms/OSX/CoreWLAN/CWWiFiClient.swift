
protocol CWEventDelegate {
  optional func clientConnectionInterrupted()
  optional func clientConnectionInvalidated()
  optional func powerStateDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func ssidDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func bssidDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func countryCodeDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func linkDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func linkQualityDidChangeForWiFiInterfaceWithName(_ interfaceName: String, rssi rssi: Int, transmitRate transmitRate: Double)
  optional func modeDidChangeForWiFiInterfaceWithName(_ interfaceName: String)
  optional func scanCacheUpdatedForWiFiInterfaceWithName(_ interfaceName: String)
}
@available(OSX 10.10, *)
class CWWiFiClient : NSObject {
  @available(OSX 10.10, *)
  weak var delegate: @sil_weak AnyObject?
  @available(OSX 10.10, *)
  class func sharedWiFiClient() -> CWWiFiClient
  @available(OSX 10.10, *)
  func interface() -> CWInterface?
  @available(OSX 10.10, *)
  class func interfaceNames() -> [String]?
  @available(OSX 10.10, *)
  func interfaceWithName(_ interfaceName: String?) -> CWInterface?
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?
  @available(OSX 10.10, *)
  func startMonitoringEventWithType(_ type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringEventWithType(_ type: CWEventType) throws
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}
