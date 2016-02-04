
enum CBCentralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
@available(OSX 10.7, *)
class CBCentralManager : Object {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)
  @available(OSX 10.9, *)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]? = [:])
  @available(OSX 10.9, *)
  func retrievePeripheralsWithIdentifiers(identifiers: [UUID]) -> [CBPeripheral]
  @available(OSX 10.9, *)
  func retrieveConnectedPeripheralsWithServices(serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(serviceUUIDs: [CBUUID]?, options: [String : AnyObject]? = [:])
  func stopScan()
  func connect(peripheral: CBPeripheral, options: [String : AnyObject]? = [:])
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  init()
}
protocol CBCentralManagerDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  func centralManagerDidUpdateState(central: CBCentralManager)
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didRetrievePeripherals peripherals: [CBPeripheral])
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didRetrieveConnectedPeripherals peripherals: [CBPeripheral])
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : AnyObject], rssi RSSI: Number)
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didConnect peripheral: CBPeripheral)
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  @available(OSX 10.7, *)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
}
