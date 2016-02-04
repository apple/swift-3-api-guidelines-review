
@available(OSX 10.7, *)
class CBService : NSObject {
  unowned(unsafe) var peripheral: @sil_unmanaged CBPeripheral { get }
  var UUID: CBUUID { get }
  var isPrimary: Bool { get }
  var includedServices: [CBService]? { get }
  var characteristics: [CBCharacteristic]? { get }
  init()
}
@available(OSX 10.9, *)
class CBMutableService : CBService {
  var UUID: CBUUID?
  var isPrimary: Bool
  var includedServices: [CBService]?
  var characteristics: [CBCharacteristic]?
  init(type UUID: CBUUID?, primary isPrimary: Bool)
  init()
}
