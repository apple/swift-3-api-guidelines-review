
struct EAWiFiUnconfiguredAccessoryProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertySupportsAirPlay: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsAirPrint: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsHomeKit: EAWiFiUnconfiguredAccessoryProperties { get }
}
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessory : Object {
  var name: String { get }
  var manufacturer: String { get }
  var model: String { get }
  var ssid: String { get }
  var macAddress: String { get }
  var properties: EAWiFiUnconfiguredAccessoryProperties { get }
  init()
}
