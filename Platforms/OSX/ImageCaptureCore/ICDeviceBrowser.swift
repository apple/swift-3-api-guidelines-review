
protocol ICDeviceBrowserDelegate : ObjectProtocol {
  func deviceBrowser(browser: ICDeviceBrowser, didAdd device: ICDevice, moreComing: Bool)
  func deviceBrowser(browser: ICDeviceBrowser, didRemove device: ICDevice, moreGoing: Bool)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeName device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, deviceDidChangeSharingState device: ICDevice)
  optional func deviceBrowser(browser: ICDeviceBrowser, requestsSelect device: ICDevice)
  optional func deviceBrowserDidEnumerateLocalDevices(browser: ICDeviceBrowser)
}
class ICDeviceBrowser : Object {
  unowned(unsafe) var delegate: @sil_unmanaged ICDeviceBrowserDelegate?
  var isBrowsing: Bool { get }
  var browsedDeviceTypeMask: ICDeviceTypeMask
  var devices: [ICDevice]? { get }
  func preferredDevice() -> ICDevice
  init()
  func start()
  func stop()
}
