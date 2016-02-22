
@available(OSX 10.9, *)
enum CBPeripheralAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case authorized
}
@available(OSX 10.9, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(OSX 10.9, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
@available(OSX 10.9, *)
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?)
  @available(OSX 10.9, *)
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]? = [:])
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, for central: CBCentral)
  func add(service: CBMutableService)
  func remove(service: CBMutableService)
  func removeAllServices()
  func respond(to request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: NSData, for characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  init()
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(OSX 10.9, *)
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(OSX 10.9, *)
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: NSError?)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAdd service: CBService, error: NSError?)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeTo characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFrom characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveRead request: CBATTRequest)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWrite requests: [CBATTRequest])
  @available(OSX 10.9, *)
  optional func peripheralManagerIsReady(toUpdateSubscribers peripheral: CBPeripheralManager)
}
