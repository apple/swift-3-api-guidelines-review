
@available(iOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 6.0, *)
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
@available(iOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(iOS 6.0, *)
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  @available(iOS 7.0, *)
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
  convenience init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?)
  @available(iOS 7.0, *)
  init(delegate: CBPeripheralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)
  func startAdvertising(advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func addService(service: CBMutableService)
  func removeService(service: CBMutableService)
  func removeAllServices()
  func respondToRequest(request: CBATTRequest, withResult result: CBATTError)
  func updateValue(value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  convenience init()
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(iOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: NSError?)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAddService service: CBService, error: NSError?)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(iOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(iOS 6.0, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}
