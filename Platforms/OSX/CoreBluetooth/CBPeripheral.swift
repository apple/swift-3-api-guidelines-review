
@available(OSX 10.9, *)
enum CBPeripheralState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
}
enum CBCharacteristicWriteType : Int {
  init?(rawValue rawValue: Int)
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
  func discoverServices(_ serviceUUIDs: [CBUUID]?)
  func discoverIncludedServices(_ includedServiceUUIDs: [CBUUID]?, forService service: CBService)
  func discoverCharacteristics(_ characteristicUUIDs: [CBUUID]?, forService service: CBService)
  func readValueForCharacteristic(_ characteristic: CBCharacteristic)
  func writeValue(_ data: NSData, forCharacteristic characteristic: CBCharacteristic, type type: CBCharacteristicWriteType)
  func setNotifyValue(_ enabled: Bool, forCharacteristic characteristic: CBCharacteristic)
  func discoverDescriptorsForCharacteristic(_ characteristic: CBCharacteristic)
  func readValueForDescriptor(_ descriptor: CBDescriptor)
  func writeValue(_ data: NSData, forDescriptor descriptor: CBDescriptor)
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
protocol CBPeripheralDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  optional func peripheralDidUpdateName(_ peripheral: CBPeripheral)
  @available(OSX 10.9, *)
  optional func peripheral(_ peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])
  @available(OSX 10.7, *)
  optional func peripheralDidUpdateRSSI(_ peripheral: CBPeripheral, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error error: NSError?)
  @available(OSX 10.7, *)
  optional func peripheral(_ peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error error: NSError?)
}
