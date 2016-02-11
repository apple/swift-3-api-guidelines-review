
class IOBluetoothHostController : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func defaultController() -> Self!
  var powerState: BluetoothHCIPowerState { get }
  func classOfDevice() -> BluetoothClassOfDevice
  func setClassOfDevice(classOfDevice: BluetoothClassOfDevice, forTimeInterval seconds: TimeInterval) -> IOReturn
  func addressAsString() -> String!
  func nameAsString() -> String!
  init()
}
extension Object {
  class func readRSSI(forDeviceComplete controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  func readRSSI(forDeviceComplete controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  class func readLinkQuality(forDeviceComplete controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
  func readLinkQuality(forDeviceComplete controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
}
let IOBluetoothHostControllerPoweredOnNotification: String
let IOBluetoothHostControllerPoweredOffNotification: String
