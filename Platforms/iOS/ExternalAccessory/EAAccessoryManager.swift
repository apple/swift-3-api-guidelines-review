
enum EABluetoothAccessoryPickerErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case AlreadyConnected
  case ResultNotFound
  case ResultCancelled
  case ResultFailed
}
let EABluetoothAccessoryPickerErrorDomain: String
typealias EABluetoothAccessoryPickerCompletion = (NSError?) -> Void
@available(iOS 3.0, *)
let EAAccessoryDidConnectNotification: String
@available(iOS 3.0, *)
let EAAccessoryDidDisconnectNotification: String
@available(iOS 3.0, *)
let EAAccessoryKey: String
@available(iOS 6.0, *)
let EAAccessorySelectedKey: String
@available(iOS 3.0, *)
class EAAccessoryManager : NSObject {
  @available(iOS 3.0, *)
  class func sharedAccessoryManager() -> EAAccessoryManager
  @available(iOS 6.0, *)
  func showBluetoothAccessoryPickerWithNameFilter(predicate: NSPredicate?, completion: EABluetoothAccessoryPickerCompletion?)
  @available(iOS 3.0, *)
  func registerForLocalNotifications()
  @available(iOS 3.0, *)
  func unregisterForLocalNotifications()
  @available(iOS 3.0, *)
  var connectedAccessories: [EAAccessory] { get }
  init()
}
