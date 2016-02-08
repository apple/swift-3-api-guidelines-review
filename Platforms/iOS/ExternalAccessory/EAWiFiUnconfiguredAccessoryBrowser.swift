
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case wiFiUnavailable
  case stopped
  case searching
  case configuring
}
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case userCancelledConfiguration
  case failed
}
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessoryBrowser : Object {
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }
  @available(iOS 8.0, *)
  init(delegate: EAWiFiUnconfiguredAccessoryBrowserDelegate?, queue: dispatch_queue_t?)
  @available(iOS 8.0, *)
  func startSearchingForUnconfiguredAccessoriesMatching(predicate: Predicate?)
  @available(iOS 8.0, *)
  func stopSearchingForUnconfiguredAccessories()
  convenience init()
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : ObjectProtocol {
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didUpdateState state: EAWiFiUnconfiguredAccessoryBrowserState)
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFindUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didRemoveUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFinishConfiguringAccessory accessory: EAWiFiUnconfiguredAccessory, withStatus status: EAWiFiUnconfiguredAccessoryConfigurationStatus)
}
