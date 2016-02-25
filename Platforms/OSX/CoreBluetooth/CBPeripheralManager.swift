
@available(OSX 10.9, *)
enum CBPeripheralAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(OSX 10.9, *)
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
@available(OSX 10.9, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue rawValue: Int)
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
  init(delegate delegate: CBPeripheralManagerDelegate?, queue queue: dispatch_queue_t?)
  @available(OSX 10.9, *)
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
  @available(OSX 10.9, *)
  func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(OSX 10.9, *)
  optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error error: NSError?)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didAddService service: CBService, error error: NSError?)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(OSX 10.9, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(OSX 10.9, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(_ peripheral: CBPeripheralManager)
}
