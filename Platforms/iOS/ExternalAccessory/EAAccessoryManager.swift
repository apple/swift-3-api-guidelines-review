
enum EABluetoothAccessoryPickerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case alreadyConnected
  case resultNotFound
  case resultCancelled
  case resultFailed
}
let EABluetoothAccessoryPickerErrorDomain: String
typealias EABluetoothAccessoryPickerCompletion = (Error?) -> Void
@available(iOS 3.0, *)
let EAAccessoryDidConnectNotification: String
@available(iOS 3.0, *)
let EAAccessoryDidDisconnectNotification: String
@available(iOS 3.0, *)
let EAAccessoryKey: String
@available(iOS 6.0, *)
let EAAccessorySelectedKey: String
@available(iOS 3.0, *)
class EAAccessoryManager : Object {
  @available(iOS 3.0, *)
  class func shared() -> EAAccessoryManager
  @available(iOS 6.0, *)
  func showBluetoothAccessoryPicker(withNameFilter predicate: Predicate?, completion: EABluetoothAccessoryPickerCompletion? = nil)
  @available(iOS 3.0, *)
  func registerForLocalNotifications()
  @available(iOS 3.0, *)
  func unregisterForLocalNotifications()
  @available(iOS 3.0, *)
  var connectedAccessories: [EAAccessory] { get }
  init()
}
