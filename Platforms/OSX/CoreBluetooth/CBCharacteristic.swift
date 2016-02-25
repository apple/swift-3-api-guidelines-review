
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue rawValue: Int)
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
class CBCharacteristic : NSObject {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var UUID: CBUUID { get }
  var properties: CBCharacteristicProperties { get }
  var value: NSData? { get }
  var descriptors: [CBDescriptor]? { get }
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
}
@available(OSX 10.9, *)
struct CBAttributePermissions : OptionSetType {
  init(rawValue rawValue: Int)
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
  init(type UUID: CBUUID?, properties properties: CBCharacteristicProperties, value value: NSData?, permissions permissions: CBAttributePermissions)
}
