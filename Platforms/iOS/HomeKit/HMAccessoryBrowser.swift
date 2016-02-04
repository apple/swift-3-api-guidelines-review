
@available(iOS 8.0, *)
class HMAccessoryBrowser : Object {
  weak var delegate: @sil_weak HMAccessoryBrowserDelegate?
  var discoveredAccessories: [HMAccessory] { get }
  func startSearchingForNewAccessories()
  func stopSearchingForNewAccessories()
  init()
}
@available(iOS 8.0, *)
protocol HMAccessoryBrowserDelegate : ObjectProtocol {
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didFindNewAccessory accessory: HMAccessory)
  optional func accessoryBrowser(browser: HMAccessoryBrowser, didRemoveNewAccessory accessory: HMAccessory)
}
