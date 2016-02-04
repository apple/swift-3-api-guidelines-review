
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: Int)
  let rawValue: Int
  static var Broadcast: CBCharacteristicProperties { get }
  static var Read: CBCharacteristicProperties { get }
  static var WriteWithoutResponse: CBCharacteristicProperties { get }
  static var Write: CBCharacteristicProperties { get }
  static var Notify: CBCharacteristicProperties { get }
  static var Indicate: CBCharacteristicProperties { get }
  static var AuthenticatedSignedWrites: CBCharacteristicProperties { get }
  static var ExtendedProperties: CBCharacteristicProperties { get }
  @available(OSX 10.9, *)
  static var NotifyEncryptionRequired: CBCharacteristicProperties { get }
  @available(OSX 10.9, *)
  static var IndicateEncryptionRequired: CBCharacteristicProperties { get }
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
  static var Readable: CBAttributePermissions { get }
  static var Writeable: CBAttributePermissions { get }
  static var ReadEncryptionRequired: CBAttributePermissions { get }
  static var WriteEncryptionRequired: CBAttributePermissions { get }
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
