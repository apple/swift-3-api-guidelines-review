
var EAConnectionIDNone: Int { get }
@available(iOS 3.0, *)
class EAAccessory : Object {
  @available(iOS 3.0, *)
  var isConnected: Bool { get }
  @available(iOS 3.0, *)
  var connectionID: Int { get }
  @available(iOS 3.0, *)
  var manufacturer: String { get }
  @available(iOS 3.0, *)
  var name: String { get }
  @available(iOS 3.0, *)
  var modelNumber: String { get }
  @available(iOS 3.0, *)
  var serialNumber: String { get }
  @available(iOS 3.0, *)
  var firmwareRevision: String { get }
  @available(iOS 3.0, *)
  var hardwareRevision: String { get }
  @available(iOS 9.0, *)
  var dockType: String { get }
  @available(iOS 3.0, *)
  var protocolStrings: [String] { get }
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
  init()
}
protocol EAAccessoryDelegate : ObjectProtocol {
  @available(iOS 3.0, *)
  optional func accessoryDidDisconnect(accessory: EAAccessory)
}
