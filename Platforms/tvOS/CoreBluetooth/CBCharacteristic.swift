
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Broadcast: CBCharacteristicProperties { get }
  static var Read: CBCharacteristicProperties { get }
  static var WriteWithoutResponse: CBCharacteristicProperties { get }
  static var Write: CBCharacteristicProperties { get }
  static var Notify: CBCharacteristicProperties { get }
  static var Indicate: CBCharacteristicProperties { get }
  static var AuthenticatedSignedWrites: CBCharacteristicProperties { get }
  static var ExtendedProperties: CBCharacteristicProperties { get }
  @available(tvOS 6.0, *)
  static var NotifyEncryptionRequired: CBCharacteristicProperties { get }
  @available(tvOS 6.0, *)
  static var IndicateEncryptionRequired: CBCharacteristicProperties { get }
}
@available(tvOS 5.0, *)
class CBCharacteristic : CBAttribute {
  unowned(unsafe) var service: @sil_unmanaged CBService { get }
  var properties: CBCharacteristicProperties { get }
  var value: NSData? { get }
  var descriptors: [CBDescriptor]? { get }
  @available(tvOS, introduced=5.0, deprecated=8.0)
  var isBroadcasted: Bool { get }
  var isNotifying: Bool { get }
}
@available(tvOS 6.0, *)
struct CBAttributePermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Readable: CBAttributePermissions { get }
  static var Writeable: CBAttributePermissions { get }
  static var ReadEncryptionRequired: CBAttributePermissions { get }
  static var WriteEncryptionRequired: CBAttributePermissions { get }
}
@available(tvOS 6.0, *)
class CBMutableCharacteristic : CBCharacteristic {
  var permissions: CBAttributePermissions
  @available(tvOS 7.0, *)
  var subscribedCentrals: [CBCentral]? { get }
  var properties: CBCharacteristicProperties
  var value: NSData?
  var descriptors: [CBDescriptor]?
}
