
@available(OSX 10.9, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WithResponse
  case WithoutResponse
}
@available(OSX 10.7, *)
class CBPeripheral : NSObject, NSCopying {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?
  var identifier: NSUUID { get }
  var name: String? { get }
  var RSSI: NSNumber? { get }
  var state: CBPeripheralState { get }
  var services: [CBService]? { get }
  func readRSSI()
  func discoverServices(serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueForCharacteristic(characteristic: CBCharacteristic)
  func writeValue(data: NSData, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsForCharacteristic(characteristic: CBCharacteristic)
  func readValueForDescriptor(descriptor: CBDescriptor)
  func writeValue(data: NSData, forDescriptor descriptor: CBDescriptor)
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
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
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error: NSError?)
}
