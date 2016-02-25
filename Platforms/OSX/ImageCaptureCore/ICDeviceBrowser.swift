
protocol ICDeviceBrowserDelegate : NSObjectProtocol {
  func deviceBrowser(_ browser: ICDeviceBrowser, didAddDevice device: ICDevice, moreComing moreComing: Bool)
  func deviceBrowser(_ browser: ICDeviceBrowser, didRemoveDevice device: ICDevice, moreGoing moreGoing: Bool)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  optional func deviceBrowser(_ browser: ICDeviceBrowser, requestsSelectDevice device: ICDevice)
  optional func deviceBrowserDidEnumerateLocalDevices(_ browser: ICDeviceBrowser)
}
class ICDeviceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var browsing: Bool { get }
  var browsedDeviceTypeMask: ICDeviceTypeMask
  var devices: [ICDevice]? { get }
  func preferredDevice() -> ICDevice
  func start()
  func stop()
}
