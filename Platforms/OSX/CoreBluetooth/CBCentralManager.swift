
enum CBCentralManagerState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
@available(OSX 10.7, *)
class CBCentralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  init(delegate delegate: CBCentralManagerDelegate?, queue queue: dispatch_queue_t?)
  @available(OSX 10.9, *)
  init(delegate delegate: CBCentralManagerDelegate?, queue queue: dispatch_queue_t?, options options: [String : AnyObject]?)
  @available(OSX 10.9, *)
  func retrievePeripheralsWithIdentifiers(_ identifiers: [NSUUID]) -> [CBPeripheral]
  @available(OSX 10.9, *)
  func retrieveConnectedPeripheralsWithServices(_ serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(_ serviceUUIDs: [CBUUID]?, options options: [String : AnyObject]?)
  func stopScan()
  func connectPeripheral(_ peripheral: CBPeripheral, options options: [String : AnyObject]?)
  func cancelPeripheralConnection(_ peripheral: CBPeripheral)
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  func centralManagerDidUpdateState(_ central: CBCentralManager)
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didRetrievePeripherals peripherals: [CBPeripheral])
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didRetrieveConnectedPeripherals peripherals: [CBPeripheral])
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral, advertisementData advertisementData: [String : AnyObject], RSSI RSSI: NSNumber)
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral)
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error error: NSError?)
  @available(OSX 10.7, *)
  optional func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error error: NSError?)
}
