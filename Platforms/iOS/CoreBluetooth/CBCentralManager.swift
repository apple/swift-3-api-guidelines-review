
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
@available(iOS 5.0, *)
class CBCentralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  @available(iOS 9.0, *)
  var isScanning: Bool { get }
  convenience init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)
  @available(iOS 7.0, *)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)
  @available(iOS 7.0, *)
  func retrievePeripheralsWithIdentifiers(identifiers: [NSUUID]) -> [CBPeripheral]
  @available(iOS 7.0, *)
  func retrieveConnectedPeripheralsWithServices(serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(serviceUUIDs: [CBUUID]?, options: [String : AnyObject]?)
  func stopScan()
  func connectPeripheral(peripheral: CBPeripheral, options: [String : AnyObject]?)
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  convenience init()
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  func centralManagerDidUpdateState(central: CBCentralManager)
  @available(iOS 5.0, *)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  @available(iOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral, advertisementData: [String : AnyObject], RSSI: NSNumber)
  @available(iOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral)
  @available(iOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error: NSError?)
  @available(iOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: NSError?)
}
