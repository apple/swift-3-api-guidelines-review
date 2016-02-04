
class IOBluetoothHostController : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  class func defaultController() -> Self!
  var powerState: BluetoothHCIPowerState { get }
  func classOfDevice() -> BluetoothClassOfDevice
  func setClassOfDevice(classOfDevice: BluetoothClassOfDevice, forTimeInterval seconds: NSTimeInterval) -> IOReturn
  func addressAsString() -> String!
  func nameAsString() -> String!
  init()
}
extension NSObject {
  class func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  func readRSSIForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCIRSSIInfo>, error: IOReturn)
  class func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
  func readLinkQualityForDeviceComplete(controller: AnyObject!, device: IOBluetoothDevice!, info: UnsafeMutablePointer<BluetoothHCILinkQualityInfo>, error: IOReturn)
}
let IOBluetoothHostControllerPoweredOnNotification: String
let IOBluetoothHostControllerPoweredOffNotification: String
