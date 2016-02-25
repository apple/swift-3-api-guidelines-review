
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
@available(tvOS 5.0, *)
class CBCentralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?
  var state: CBCentralManagerState { get }
  @available(tvOS 9.0, *)
  var isScanning: Bool { get }
  convenience init(delegate delegate: CBCentralManagerDelegate?, queue queue: dispatch_queue_t?)
  @available(tvOS 7.0, *)
  init(delegate delegate: CBCentralManagerDelegate?, queue queue: dispatch_queue_t?, options options: [String : AnyObject]?)
  @available(tvOS 7.0, *)
  func retrievePeripheralsWithIdentifiers(_ identifiers: [NSUUID]) -> [CBPeripheral]
  @available(tvOS 7.0, *)
  func retrieveConnectedPeripheralsWithServices(_ serviceUUIDs: [CBUUID]) -> [CBPeripheral]
  func scanForPeripheralsWithServices(_ serviceUUIDs: [CBUUID]?, options options: [String : AnyObject]?)
  func stopScan()
  func connectPeripheral(_ peripheral: CBPeripheral, options options: [String : AnyObject]?)
  func cancelPeripheralConnection(_ peripheral: CBPeripheral)
}
protocol CBCentralManagerDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func centralManagerDidUpdateState(_ central: CBCentralManager)
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, willRestoreState dict: [String : AnyObject])
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral, advertisementData advertisementData: [String : AnyObject], RSSI RSSI: NSNumber)
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral)
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error error: NSError?)
  @available(tvOS 5.0, *)
  optional func centralManager(_ central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error error: NSError?)
}
