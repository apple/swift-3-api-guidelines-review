
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case WiFiUnavailable
  case Stopped
  case Searching
  case Configuring
}
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Success
  case UserCancelledConfiguration
  case Failed
}
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }
  @available(iOS 8.0, *)
  init(delegate delegate: EAWiFiUnconfiguredAccessoryBrowserDelegate?, queue queue: dispatch_queue_t?)
  @available(iOS 8.0, *)
  func startSearchingForUnconfiguredAccessoriesMatchingPredicate(_ predicate: NSPredicate?)
  @available(iOS 8.0, *)
  func stopSearchingForUnconfiguredAccessories()
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didUpdateState state: EAWiFiUnconfiguredAccessoryBrowserState)
  @available(iOS 8.0, *)
  func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didFindUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didRemoveUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)
  @available(iOS 8.0, *)
  func accessoryBrowser(_ browser: EAWiFiUnconfiguredAccessoryBrowser, didFinishConfiguringAccessory accessory: EAWiFiUnconfiguredAccessory, withStatus status: EAWiFiUnconfiguredAccessoryConfigurationStatus)
}
