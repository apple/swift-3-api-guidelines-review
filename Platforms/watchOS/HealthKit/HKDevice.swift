
@available(watchOS 2.0, *)
let HKDevicePropertyKeyName: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyManufacturer: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyModel: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyHardwareVersion: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyFirmwareVersion: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeySoftwareVersion: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyLocalIdentifier: String
@available(watchOS 2.0, *)
let HKDevicePropertyKeyUDIDeviceIdentifier: String
@available(watchOS 2.0, *)
class HKDevice : Object, SecureCoding, Copying {
  var name: String { get }
  var manufacturer: String? { get }
  var model: String? { get }
  var hardwareVersion: String? { get }
  var firmwareVersion: String? { get }
  var softwareVersion: String? { get }
  var localIdentifier: String? { get }
  var udiDeviceIdentifier: String? { get }
  init(name: String?, manufacturer: String?, model: String?, hardwareVersion: String?, firmwareVersion: String?, softwareVersion: String?, localIdentifier: String?, udiDeviceIdentifier UDIDeviceIdentifier: String?)
  class func local() -> HKDevice
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
