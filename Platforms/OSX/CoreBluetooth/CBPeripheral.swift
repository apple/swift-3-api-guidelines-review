
@available(OSX 10.9, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disconnected
  case connecting
  case connected
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case withResponse
  case withoutResponse
}
@available(OSX 10.7, *)
class CBPeripheral : Object, Copying {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var identifier: UUID { get }
  var name: String? { get }
  var rssi: Number? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, for service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, for service: CBService)
  func readValue(for characteristic: CBCharacteristic)
  func writeValue(data: Data, for characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, for characteristic: CBCharacteristic)
  func discoverDescriptors(for characteristic: CBCharacteristic)
  func readValue(for descriptor: CBDescriptor)
  func writeValue(data: Data, for descriptor: CBDescriptor)
  init()
  @available(OSX 10.7, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
protocol CBPeripheralDelegate : ObjectProtocol {
  @available(OSX 10.9, *)
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  @available(OSX 10.9, *)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(OSX 10.7, *)
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
}
