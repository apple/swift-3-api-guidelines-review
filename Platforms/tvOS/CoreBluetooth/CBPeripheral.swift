
@available(tvOS 7.0, *)
enum CBPeripheralState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
  @available(tvOS 9.0, *)
  case Disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case WithResponse
  case WithoutResponse
}
@available(tvOS 5.0, *)
class CBPeripheral : CBPeer {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var name: String? { get }
  @available(tvOS, introduced=5.0, deprecated=8.0)
  var RSSI: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(_ serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(_ includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(_ characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueForCharacteristic(_ characteristic: CBCharacteristic)
  @available(tvOS 9.0, *)
  func maximumWriteValueLengthForType(_ type: CBCharacteristicWriteType) -> Int
  func writeValue(_ data: NSData, forCharacteristic characteristic: CBCharacteristic, type type: CBCharacteristicWriteType)
  func setNotifyValue(_ enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsForCharacteristic(_ characteristic: CBCharacteristic)
  func readValueForDescriptor(_ descriptor: CBDescriptor)
  func writeValue(_ data: NSData, forDescriptor descriptor: CBDescriptor)
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func peripheralDidUpdateName(_ peripheral: CBPeripheral)
  @available(tvOS 7.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(tvOS, introduced=5.0, deprecated=8.0)
  optional func peripheralDidUpdateRSSI(_ peripheral: CBPeripheral, error error: NSError?)
  @available(tvOS 8.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error error: NSError?)
}
