
protocol ICDeviceBrowserDelegate : NSObjectProtocol {
  func deviceBrowser(browser: ICDeviceBrowser, didAddDevice device: ICDevice, moreComing: Bool)
  func deviceBrowser(browser: ICDeviceBrowser, didRemoveDevice device: ICDevice, moreGoing: Bool)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, requestsSelectDevice device: ICDevice)
  optional func deviceBrowserDidEnumerateLocalDevices(browser: ICDeviceBrowser)
}
class ICDeviceBrowser : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var browsing: Bool { get }
  var browsedDeviceTypeMask: ICDeviceTypeMask
  var devices: [ICDevice]? { get }
  func preferredDevice() -> ICDevice
  init()
  func start()
  func stop()
}
