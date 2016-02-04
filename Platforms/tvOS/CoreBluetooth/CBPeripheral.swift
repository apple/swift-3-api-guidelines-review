
@available(tvOS 7.0, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
  @available(tvOS 9.0, *)
  case Disconnecting
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
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
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueForCharacteristic(characteristic: CBCharacteristic)
  @available(tvOS 9.0, *)
  func maximumWriteValueLengthForType(type: CBCharacteristicWriteType) -> Int
  func writeValue(data: NSData, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsForCharacteristic(characteristic: CBCharacteristic)
  func readValueForDescriptor(descriptor: CBDescriptor)
  func writeValue(data: NSData, forDescriptor descriptor: CBDescriptor)
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  @available(tvOS 7.0, *)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(tvOS, introduced=5.0, deprecated=8.0)
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: NSError?)
  @available(tvOS 8.0, *)
  optional func peripheral(peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error: NSError?)
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error: NSError?)
}
