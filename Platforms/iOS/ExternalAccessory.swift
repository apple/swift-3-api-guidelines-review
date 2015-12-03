
var EAConnectionIDNone: Int { get }
@available(iOS 3.0, *)
class EAAccessory : NSObject {
  @available(iOS 3.0, *)
  var isConnected: Bool { get }
  @available(iOS 3.0, *)
  var connectionID: Int { get }
  @available(iOS 3.0, *)
  var manufacturer: String { get }
  @available(iOS 3.0, *)
  var name: String { get }
  @available(iOS 3.0, *)
  var modelNumber: String { get }
  @available(iOS 3.0, *)
  var serialNumber: String { get }
  @available(iOS 3.0, *)
  var firmwareRevision: String { get }
  @available(iOS 3.0, *)
  var hardwareRevision: String { get }
  @available(iOS 9.0, *)
  var dockType: String { get }
  @available(iOS 3.0, *)
  var protocolStrings: [String] { get }
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged EAAccessoryDelegate?
  init()
}
protocol EAAccessoryDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func accessoryDidDisconnect(accessory: EAAccessory)
}
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
  class func shared() -> EAAccessoryManager
  @available(iOS 6.0, *)
  func showBluetoothAccessoryPickerWithNameFilter(predicate: NSPredicate?, completion: EABluetoothAccessoryPickerCompletion? = nil)
  @available(iOS 3.0, *)
  func registerForLocalNotifications()
  @available(iOS 3.0, *)
  func unregisterForLocalNotifications()
  @available(iOS 3.0, *)
  var connectedAccessories: [EAAccessory] { get }
  init()
}
@available(iOS 3.0, *)
class EASession : NSObject {
  @available(iOS 3.0, *)
  init(accessory: EAAccessory, forProtocol protocolString: String)
  @available(iOS 3.0, *)
  var accessory: EAAccessory { get }
  @available(iOS 3.0, *)
  var protocolString: String { get }
  @available(iOS 3.0, *)
  var inputStream: NSInputStream? { get }
  @available(iOS 3.0, *)
  var outputStream: NSOutputStream? { get }
  init()
}

/*!
 *  @options EAWiFiUnconfiguredAccessoryProperties
 *
 *  @discussion Represents the properties of an EAWiFiUnconfiguredAccessory.
 *
 *  @constant EAWiFiUnconfiguredAccessoryPropertySupportsAirPlay  Option set if the accessory is advertising that it supports AirPlay.
 *  @constant EAWiFiUnconfiguredAccessoryPropertySupportsAirPrint Option set if the accessory is advertising that it supports AirPrint.
 *  @constant EAWiFiUnconfiguredAccessoryPropertySupportsHomeKit  Option set if the accessory is advertising that it supports HomeKit.
 *
 */
struct EAWiFiUnconfiguredAccessoryProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var PropertySupportsAirPlay: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsAirPrint: EAWiFiUnconfiguredAccessoryProperties { get }
  static var PropertySupportsHomeKit: EAWiFiUnconfiguredAccessoryProperties { get }
}

/*!
 * @brief Object representing an unconfigured MFi Wireless Accessory Configuration (WAC) accessory.
 *
 * @discussion This class models an unconfigured MFi Wireless Accessory Configuration accessory
 *             discovered via a EAWiFiUnconfiguredAccessoryBrowser search.
 *
 */
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessory : NSObject {

  /*!
   * @property name
   *
   * @discussion The name of the accessory.
   *
   */
  var name: String { get }

  /*!
   * @property manufacturer
   *
   * @discussion The name of the accessory's manufacturer.
   *
   */
  var manufacturer: String { get }

  /*!
   * @property model
   *
   * @discussion The model name of accessory.
   *
   */
  var model: String { get }

  /*!
   * @property ssid
   *
   * @discussion The Wi-Fi SSID of the accessory.
   *
   */
  var ssid: String { get }

  /*!
   * @property macAddress
   *
   * @discussion The primary MAC address of the accessory.
   *
   */
  var macAddress: String { get }

  /*!
   * @property properties
   *
   * @discussion The properties the accessory supports.
   *
   */
  var properties: EAWiFiUnconfiguredAccessoryProperties { get }
  init()
}

/*!
 *  @enum EAWiFiUnconfiguredAccessoryBrowserState
 *
 *  @discussion Represents the current state of a EAWiFiUnconfiguredAccessoryBrowser.
 *
 *  @constant EAWiFiUnconfiguredAccessoryBrowserStateWiFiUnavailable  Wi-Fi is unavailable due to the user placing the device in Airplane Mode or explicitly turning Wi-Fi off.
 *  @constant EAWiFiUnconfiguredAccessoryBrowserStateStopped          The browser is not actively searching for unconfigured accessories.
 *  @constant EAWiFiUnconfiguredAccessoryBrowserStateSearching        The browser is actively searching for unconfigured accessory.
 *  @constant EAWiFiUnconfiguredAccessoryBrowserStateConfiguring      The browser is actively configuring an accessory.
 *
 */
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WiFiUnavailable
  case Stopped
  case Searching
  case Configuring
}

/*!
 *  @enum EAWiFiUnconfiguredAccessoryConfigurationStatus
 *
 *  @discussion Represents the state of an EAWiFiUnconfiguredAccessory configuration process.
 *
 *  @constant EAWiFiUnconfiguredAccessoryConfigurationStatusSuccess                     The configuration of the accessory succeeded.
 *  @constant EAWiFiUnconfiguredAccessoryConfigurationStatusUserCancelledConfiguration  The user cancelled the configuration process.
 *  @constant EAWiFiUnconfiguredAccessoryConfigurationStatusFailed                      The configuration failed.
 *
 */
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case UserCancelledConfiguration
  case Failed
}

/*!
 * @brief Interface for browsing unconfigured accessories
 *
 * @discussion This class brokers access to the MFi Wireless Accessory Configuration (WAC) process.
 *             This browser enables the application to scan for unconfigured accessories,
 *             connect them to the user's Wi-Fi infrastructure and configure attributes of
 *             the accessory.
 *
 */
@available(iOS 8.0, *)
class EAWiFiUnconfiguredAccessoryBrowser : NSObject {

  /*!
   *  @property delegate
   *
   *  @discussion The delegate object that will receive the browser events.
   *
   */
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?

  /*!
   * @property unconfiguredAccessories
   *
   * @discussion The set of discovered unconfigured accessories described by EAWiFiUnconfiguredAccessory objects.
   *             This snapshot will only include objects matching the filter predicate defined when starting the search.
   *
   */
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }

  /*!
   * @brief Designated initializer.
   *
   * @discussion Initializes an instance of the EAWiFiUnconfiguredAccessoryBrowser class
   *             which can be further configured based on the application's interests.
   *
   * @param delegate The delegate that will receive the EAWiFiUnconfiguredAccessoryBrowserDelegate events.
   * @param queue    The dispatch queue the delegate would like to receive events on. If nil the events will be on the main queue.
   *
   * @return Instance object
   *
   */
  @available(iOS 8.0, *)
  init(delegate: EAWiFiUnconfiguredAccessoryBrowserDelegate?, queue: dispatch_queue_t?)

  /*!
   * @brief Start the search for unconfigured accessories
   *
   * @discussion Starts a Wi-Fi scan for unconfigured accessories. This power and resource intensive process and must
   *             only be used when actively searching for accessories. Scans should be stopped immediately when the
   *             desired accessories have been located.
   *
   * @param predicate The desired filter for unconfigured accessory results conforming to the EAWiFiUnconfiguredAccessory protocol.
   *
   */
  @available(iOS 8.0, *)
  func startSearchingForUnconfiguredAccessoriesMatching(predicate: NSPredicate?)

  /*!
   * @brief Stop the search for unconfigured MFi Wireless Accessory Configuration accessories
   *
   */
  @available(iOS 8.0, *)
  func stopSearchingForUnconfiguredAccessories()
  convenience init()
}

/*!
 *  @protocol EAWiFiUnconfiguredAccessoryBrowserDelegate
 *
 *  @discussion The delegate of a EAWiFiUnconfiguredAccessoryBrowser object must adopt the
 *              EAWiFiUnconfiguredAccessoryBrowserDelegate protocol. The required
 *              callbacks keep the delegate informed of the state of the search and configuration processes.
 *
 */
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {

  /*!
   *  @method accessoryBrowser:didUpdateState:
   *
   *  @discussion Invoked whenever the EAWiFiUnconfiguredAccessoryBrowser's state has changed.
   *
   *  @param browser The EAWiFiUnconfiguredAccessoryBrowser instance generating the event.
   *  @param state   The current state of the EAWiFiUnconfiguredAccessoryBrowser.
   *
   */
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didUpdateState state: EAWiFiUnconfiguredAccessoryBrowserState)

  /*!
   *  @method accessoryBrowser:didFindUnconfiguredAccessories:
   *
   *  @discussion Invoked whenever the EAWiFiUnconfiguredAccessoryBrowser has found new unconfigured accessories that match
   *              the filter predicate defined when starting the search.
   *
   *  @param browser     The EAWiFiUnconfiguredAccessoryBrowser instance generating the event.
   *  @param accessories The set of EAWiFiUnconfiguredAccessory objects that have been found since the last update.
   *
   */
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFindUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)

  /*!
   *  @method accessoryBrowser:didRemoveUnconfiguredAccessories:
   *
   *  @discussion Invoked whenever the EAWiFiUnconfiguredAccessoryBrowser has removed unconfigured accessories from the scan results
   *              that match the filter predicate defined when starting the search.
   *
   *  @param browser     The EAWiFiUnconfiguredAccessoryBrowser instance generating the event.
   *  @param accessories The set of EAWiFiUnconfiguredAccessory objects that have been removed from the scan results since the last update.
   *
   */
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didRemoveUnconfiguredAccessories accessories: Set<EAWiFiUnconfiguredAccessory>)

  /*!
   *  @method accessoryBrowser:didFinishConfiguringAccessory:withError:
   *
   *  @discussion Invoked whenever the EAWiFiUnconfiguredAccessoryBrowser has completed configuring the selected EAWiFiUnconfiguredAccessory.
   *
   *  @param browser   The EAWiFiUnconfiguredAccessoryBrowser instance generating the event.
   *  @param accessory The EAWiFiUnconfiguredAccessory whose configuration process has completed.
   *  @param status    The status of the configuration process that has completed.
   *
   */
  @available(iOS 8.0, *)
  func accessoryBrowser(browser: EAWiFiUnconfiguredAccessoryBrowser, didFinishConfiguringAccessory accessory: EAWiFiUnconfiguredAccessory, withStatus status: EAWiFiUnconfiguredAccessoryConfigurationStatus)
}
