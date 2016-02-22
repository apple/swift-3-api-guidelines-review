
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
class CBPeripheral : NSObject, NSCopying {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var identifier: NSUUID { get }
  var name: String? { get }
  var rssi: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, for service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, for service: CBService)
  func readValue(for characteristic: CBCharacteristic)
  func writeValue(data: NSData, for characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, for characteristic: CBCharacteristic)
  func discoverDescriptors(for characteristic: CBCharacteristic)
  func readValue(for descriptor: CBDescriptor)
  func writeValue(data: NSData, for descriptor: CBDescriptor)
  init()
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)
  @available(OSX 10.9, *)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(OSX 10.7, *)
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesFor service: CBService, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueFor descriptor: CBDescriptor, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueFor descriptor: CBDescriptor, error: NSError?)
}
