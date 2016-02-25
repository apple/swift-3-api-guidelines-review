
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
class HKDevice : NSObject, NSSecureCoding, NSCopying {
  var name: String { get }
  var manufacturer: String? { get }
  var model: String? { get }
  var hardwareVersion: String? { get }
  var firmwareVersion: String? { get }
  var softwareVersion: String? { get }
  var localIdentifier: String? { get }
  var UDIDeviceIdentifier: String? { get }
  init(name name: String?, manufacturer manufacturer: String?, model model: String?, hardwareVersion hardwareVersion: String?, firmwareVersion firmwareVersion: String?, softwareVersion softwareVersion: String?, localIdentifier localIdentifier: String?, UDIDeviceIdentifier UDIDeviceIdentifier: String?)
  class func localDevice() -> HKDevice
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
