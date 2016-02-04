
@available(OSX 10.9, *)
enum CBPeripheralAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(OSX 10.9, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}
@available(OSX 10.9, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(OSX 10.9, *)
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?)
  @available(OSX 10.9, *)
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func addService(service: CBMutableService)
  func removeService(service: CBMutableService)
  func removeAllServices()
  func respondToRequest(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
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
  optional func peripheralManager(peripheral: CBPeripheralManager, didAddService service: CBService, error: NSError?)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(OSX 10.9, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(OSX 10.9, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}
