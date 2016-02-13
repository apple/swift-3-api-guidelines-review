
enum CBCentralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(tvOS 5.0, *)
class CBCentralManager : Object {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  @available(tvOS 9.0, *)
  var isScanning: Bool { get }
  convenience init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)
  @available(tvOS 7.0, *)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]? = [:])
  @available(tvOS 7.0, *)
  func retrievePeripherals(identifiers identifiers: [UUID]) -> [CBPeripheral]
  @available(tvOS 7.0, *)
  func retrieveConnectedPeripherals(services serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripherals(services serviceUUIDs: [CBUUID]?, options: [String : AnyObject]? = [:])
  func stopScan()
  func connect(peripheral: CBPeripheral, options: [String : AnyObject]? = [:])
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  convenience init()
}
protocol CBCentralManagerDelegate : ObjectProtocol {
  @available(tvOS 5.0, *)
  func centralManagerDidUpdateState(central: CBCentralManager)
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : AnyObject], rssi RSSI: Number)
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didConnect peripheral: CBPeripheral)
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?)
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: Error?)
}
