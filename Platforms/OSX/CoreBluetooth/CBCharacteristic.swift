
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var broadcast: CBCharacteristicProperties { get }
  static var read: CBCharacteristicProperties { get }
  static var writeWithoutResponse: CBCharacteristicProperties { get }
  static var write: CBCharacteristicProperties { get }
  static var notify: CBCharacteristicProperties { get }
  static var indicate: CBCharacteristicProperties { get }
  static var authenticatedSignedWrites: CBCharacteristicProperties { get }
  static var extendedProperties: CBCharacteristicProperties { get }
  @available(OSX 10.9, *)
  static var notifyEncryptionRequired: CBCharacteristicProperties { get }
  @available(OSX 10.9, *)
  static var indicateEncryptionRequired: CBCharacteristicProperties { get }
}
@available(OSX 10.7, *)
class CBCharacteristic : Object {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var uuid: CBUUID { get }
  var properties: CBCharacteristicProperties { get }
  var value: Data? { get }
  var descriptors: [CBDescriptor]? { get }
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
  init()
}
@available(OSX 10.9, *)
struct CBAttributePermissions : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var readable: CBAttributePermissions { get }
  static var writeable: CBAttributePermissions { get }
  static var readEncryptionRequired: CBAttributePermissions { get }
  static var writeEncryptionRequired: CBAttributePermissions { get }
}
@available(OSX 10.9, *)
class CBMutableCharacteristic : CBCharacteristic {
  var permissions: CBAttributePermissions
  @available(OSX 10.9, *)
  var subscribedCentrals: [CBCentral]? { get }
  var uuid: CBUUID?
  var properties: CBCharacteristicProperties
  var value: Data?
  var descriptors: [CBDescriptor]?
  init(type UUID: CBUUID?, properties: CBCharacteristicProperties, value: Data?, permissions: CBAttributePermissions)
  init()
}
