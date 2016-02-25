
@available(tvOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(tvOS 6.0, *)
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
@available(tvOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}
@available(tvOS 6.0, *)
class CBPeripheralManager : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?
  var state: CBPeripheralManagerState { get }
  var isAdvertising: Bool { get }
  @available(tvOS 7.0, *)
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus
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
  @available(tvOS 6.0, *)
  func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])
  @available(tvOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(_ peripheral: CBPeripheralManager, error error: NSError?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didAddService service: CBService, error error: NSError?)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, central central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)
  @available(tvOS 6.0, *)
  optional func peripheralManager(_ peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])
  @available(tvOS 6.0, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(_ peripheral: CBPeripheralManager)
}
