
@available(iOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS 6.0, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue rawValue: Int)
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
  init?(rawValue rawValue: Int)
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
  convenience init(delegate delegate: CBPeripheralManagerDelegate?, queue queue: dispatch_queue_t?)
  @available(iOS 7.0, *)
  init(delegate delegate: CBPeripheralManagerDelegate?, queue queue: dispatch_queue_t?, options options: [String : AnyObject]?)
  func startAdvertising(_ advertisementData: [String : AnyObject]?)
  func stopAdvertising()
  func setDesiredConnectionLatency(_ latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)
  func addService(_ service: CBMutableService)
  func removeService(_ service: CBMutableService)
  func removeAllServices()
  func respondToRequest(_ request: CBATTRequest, withResult result: CBATTError)
  func updateValue(_ value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
}
protocol CBPeripheralManagerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(iOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error error: NSError?)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didAddService service: CBService, error error: NSError?)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(iOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(iOS 6.0, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(_ peripheral: CBPeripheralManager)
}
