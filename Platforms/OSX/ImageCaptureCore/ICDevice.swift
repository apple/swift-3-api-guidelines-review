
enum ICDeviceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}
enum ICDeviceLocationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
}
enum ICDeviceTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Camera
  case Scanner
}
enum ICDeviceLocationTypeMask : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Local
  case Shared
  case Bonjour
  case Bluetooth
  case Remote
}
let ICTransportTypeUSB: String
let ICTransportTypeFireWire: String
let ICTransportTypeBluetooth: String
let ICTransportTypeTCPIP: String
let ICTransportTypeMassStorage: String
let ICDeviceLocationDescriptionUSB: String
let ICDeviceLocationDescriptionFireWire: String
let ICDeviceLocationDescriptionBluetooth: String
let ICDeviceLocationDescriptionMassStorage: String
let ICButtonTypeScan: String
let ICButtonTypeMail: String
let ICButtonTypeCopy: String
let ICButtonTypeWeb: String
let ICButtonTypePrint: String
let ICButtonTypeTransfer: String
let ICStatusNotificationKey: String
let ICStatusCodeKey: String
let ICLocalizedStatusNotificationKey: String
let ICDeviceCanEjectOrDisconnect: String
protocol ICDeviceDelegate : ObjectProtocol {
  func didRemove(device: ICDevice)
  optional func device(device: ICDevice, didOpenSessionWithError error: Error?)
  optional func deviceDidBecomeReady(device: ICDevice)
  optional func device(device: ICDevice, didCloseSessionWithError error: Error?)
  optional func deviceDidChangeName(device: ICDevice)
  optional func deviceDidChangeSharingState(device: ICDevice)
  optional func device(device: ICDevice, didReceiveStatusInformation status: [String : AnyObject])
  optional func device(device: ICDevice, didEncounterError error: Error?)
  optional func device(device: ICDevice, didReceiveButtonPress buttonType: String)
  optional func device(device: ICDevice, didReceiveCustomNotification notification: [String : AnyObject], data: Data)
}
class ICDevice : Object {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceDelegate?
  var type: ICDeviceType { get }
  var name: String? { get }
  var icon: CGImage? { get }
  var capabilities: [String] { get }
  var modulePath: String { get }
  var moduleVersion: String { get }
  var moduleExecutableArchitecture: Int32 { get }
  var isRemote: Bool { get }
  var isShared: Bool { get }
  var hasConfigurableWiFiInterface: Bool { get }
  var transportType: String { get }
  var usbLocationID: Int32 { get }
  var usbProductID: Int32 { get }
  var usbVendorID: Int32 { get }
  var fwGUID: Int64 { get }
  var serialNumberString: String? { get }
  var locationDescription: String? { get }
  var hasOpenSession: Bool { get }
  var uuidString: String? { get }
  var persistentIDString: String? { get }
  var buttonPressed: String { get }
  var autolaunchApplicationPath: String?
  var userData: MutableDictionary? { get }
  func requestOpenSession()
  func requestCloseSession()
  func requestYield()
  func requestSendMessage(messageCode: UInt32, outData data: Data, maxReturnedDataSize: UInt32, sendMessageDelegate: AnyObject, didSendMessageSelector selector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func requestEjectOrDisconnect()
  init()
}
