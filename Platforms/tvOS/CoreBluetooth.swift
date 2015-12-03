

/*!
 *  @class CBATTRequest
 *
 *  @discussion Represents a read or write request from a central.
 *
 */
@available(tvOS 6.0, *)
class CBATTRequest : NSObject {

  /*!
   *  @property central
   *
   *  @discussion The central that originated the request.
   *
   */
  var central: CBCentral { get }

  /*!
   *  @property characteristic
   *
   *  @discussion The characteristic whose value will be read or written.
   *
   */
  var characteristic: CBCharacteristic { get }

  /*!
   *  @property offset
   *
   *  @discussion The zero-based index of the first byte for the read or write.
   *
   */
  var offset: Int { get }

  /*!
   *  @property value
   *
   *  @discussion The data being read or written.
   *				For read requests, <i>value</i> will be nil and should be set before responding via @link respondToRequest:withResult: @/link.
   *				For write requests, <i>value</i> will contain the data to be written.
   *
   */
  @NSCopying var value: NSData?
}

/*!
 *  @constant CBAdvertisementDataLocalNameKey
 *
 *  @discussion A <code>NSString</code> containing the local name of a peripheral.
 *
 */
let CBAdvertisementDataLocalNameKey: String

/*!
 *  @constant CBAdvertisementDataTxPowerLevelKey
 *
 *  @discussion A <code>NSNumber</code> containing the transmit power of a peripheral.
 *
 */
let CBAdvertisementDataTxPowerLevelKey: String

/*!
 *  @constant CBAdvertisementDataServiceUUIDsKey
 *
 *  @discussion A list of one or more <code>CBUUID</code> objects, representing <code>CBService</code> UUIDs.
 *
 */
let CBAdvertisementDataServiceUUIDsKey: String

/*!
 *  @constant CBAdvertisementDataServiceDataKey
 *
 *  @discussion A dictionary containing service-specific advertisement data. Keys are <code>CBUUID</code> objects, representing
 *              <code>CBService</code> UUIDs. Values are <code>NSData</code> objects.
 *
 */
let CBAdvertisementDataServiceDataKey: String

/*!
 *  @constant CBAdvertisementDataManufacturerDataKey
 *
 *  @discussion A <code>NSData</code> object containing the manufacturer data of a peripheral.
 *
 */
let CBAdvertisementDataManufacturerDataKey: String

/*!
 *  @constant CBAdvertisementDataOverflowServiceUUIDsKey
 *
 *  @discussion A list of one or more <code>CBUUID</code> objects, representing <code>CBService</code> UUIDs that were
 *              found in the "overflow" area of the advertising data. Due to the nature of the data stored in this area,
 *              UUIDs listed here are "best effort" and may not always be accurate.
 *
 *  @see        startAdvertising:
 *
 */
@available(tvOS 6.0, *)
let CBAdvertisementDataOverflowServiceUUIDsKey: String

/*!
 *  @constant CBAdvertisementDataIsConnectable
 *
 *  @discussion A NSNumber (Boolean) indicating whether or not the advertising event type was connectable. This can be used to determine
 *				whether or not a peripheral is connectable in that instant.
 *
 */
@available(tvOS 7.0, *)
let CBAdvertisementDataIsConnectable: String

/*!
 *  @constant CBAdvertisementDataSolicitedServiceUUIDsKey
 *
 *  @discussion A list of one or more <code>CBUUID</code> objects, representing <code>CBService</code> UUIDs.
 *
 */
@available(tvOS 7.0, *)
let CBAdvertisementDataSolicitedServiceUUIDsKey: String
@available(tvOS 8.0, *)
class CBAttribute : NSObject {

  /*!
   * @property UUID
   *
   * @discussion
   *      The Bluetooth UUID of the attribute.
   *
   */
  var UUID: CBUUID { get }
}

/*!
 *  @class CBCentral
 *
 *  @discussion Represents a remote central.
 *
 */
@available(tvOS 6.0, *)
class CBCentral : CBPeer {

  /*!
   *  @property	maximumUpdateValueLength
   *
   *  @discussion	The maximum amount of data, in bytes, that can be received by the central in a single notification or indication.
   *
   *	@see		updateValue:forCharacteristic:onSubscribedCentrals:
   */
  var maximumUpdateValueLength: Int { get }
}

/*!
 *  @enum CBCentralManagerState
 *
 *  @discussion Represents the current state of a CBCentralManager.
 *
 *  @constant CBCentralManagerStateUnknown       State unknown, update imminent.
 *  @constant CBCentralManagerStateResetting     The connection with the system service was momentarily lost, update imminent.
 *  @constant CBCentralManagerStateUnsupported   The platform doesn't support the Bluetooth Low Energy Central/Client role.
 *  @constant CBCentralManagerStateUnauthorized  The application is not authorized to use the Bluetooth Low Energy Central/Client role.
 *  @constant CBCentralManagerStatePoweredOff    Bluetooth is currently powered off.
 *  @constant CBCentralManagerStatePoweredOn     Bluetooth is currently powered on and available to use.
 *
 */
enum CBCentralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}

/*!
 *  @class CBCentralManager
 *
 *  @discussion Entry point to the central role. Commands should only be issued when its state is <code>CBCentralManagerStatePoweredOn</code>.
 *
 */
@available(tvOS 5.0, *)
class CBCentralManager : NSObject {

  /*!
   *  @property delegate
   *
   *  @discussion The delegate object that will receive central events.
   *
   */
  unowned(unsafe) var delegate: @sil_unmanaged CBCentralManagerDelegate?

  /*!
   *  @property state
   *
   *  @discussion The current state of the central, initially set to <code>CBCentralManagerStateUnknown</code>. Updates are provided by required
   *              delegate method {@link centralManagerDidUpdateState:}.
   *
   */
  var state: CBCentralManagerState { get }

  /*!
   *  @property isAdvertising
   *
   *  @discussion Whether or not the central is currently scanning.
   *
   */
  @available(tvOS 9.0, *)
  var isScanning: Bool { get }

  /*!
   *  @method initWithDelegate:queue:
   *
   *  @param delegate The delegate that will receive central role events.
   *  @param queue    The dispatch queue on which the events will be dispatched.
   *
   *  @discussion     The initialization call. The events of the central role will be dispatched on the provided queue.
   *                  If <i>nil</i>, the main queue will be used.
   *
   */
  convenience init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?)

  /*!
   *  @method initWithDelegate:queue:options:
   *
   *  @param delegate The delegate that will receive central role events.
   *  @param queue    The dispatch queue on which the events will be dispatched.
   *  @param options  An optional dictionary specifying options for the manager.
   *
   *  @discussion     The initialization call. The events of the central role will be dispatched on the provided queue.
   *                  If <i>nil</i>, the main queue will be used.
   *
   *	@seealso		CBCentralManagerOptionShowPowerAlertKey
   *	@seealso		CBCentralManagerOptionRestoreIdentifierKey
   *
   */
  @available(tvOS 7.0, *)
  init(delegate: CBCentralManagerDelegate?, queue: dispatch_queue_t?, options: [String : AnyObject]?)

  /*!
   *  @method retrievePeripheralsWithIdentifiers:
   *
   *  @param identifiers	A list of <code>NSUUID</code> objects.
   *
   *  @discussion			Attempts to retrieve the <code>CBPeripheral</code> object(s) with the corresponding <i>identifiers</i>.
   *
   *	@return				A list of <code>CBPeripheral</code> objects.
   *
   */
  @available(tvOS 7.0, *)
  func retrievePeripheralsWithIdentifiers(identifiers: [NSUUID]) -> [CBPeripheral]

  /*!
   *  @method retrieveConnectedPeripheralsWithServices
   *
   *  @discussion Retrieves all peripherals that are connected to the system and implement any of the services listed in <i>serviceUUIDs</i>.
   *				Note that this set can include peripherals which were connected by other applications, which will need to be connected locally
   *				via {@link connectPeripheral:options:} before they can be used.
   *
   *	@return		A list of <code>CBPeripheral</code> objects.
   *
   */
  @available(tvOS 7.0, *)
  func retrieveConnectedPeripheralsWithServices(serviceUUIDs: [CBUUID]) -> [CBPeripheral]

  /*!
   *  @method scanForPeripheralsWithServices:options:
   *
   *  @param serviceUUIDs A list of <code>CBUUID</code> objects representing the service(s) to scan for.
   *  @param options      An optional dictionary specifying options for the scan.
   *
   *  @discussion         Starts scanning for peripherals that are advertising any of the services listed in <i>serviceUUIDs</i>. Although strongly discouraged,
   *                      if <i>serviceUUIDs</i> is <i>nil</i> all discovered peripherals will be returned. If the central is already scanning with different
   *                      <i>serviceUUIDs</i> or <i>options</i>, the provided parameters will replace them.
   *                      Applications that have specified the <code>bluetooth-central</code> background mode are allowed to scan while backgrounded, with two
   *                      caveats: the scan must specify one or more service types in <i>serviceUUIDs</i>, and the <code>CBCentralManagerScanOptionAllowDuplicatesKey</code>
   *                      scan option will be ignored.
   *
   *  @see                centralManager:didDiscoverPeripheral:advertisementData:RSSI:
   *  @seealso            CBCentralManagerScanOptionAllowDuplicatesKey
   *	@seealso			CBCentralManagerScanOptionSolicitedServiceUUIDsKey
   *
   */
  func scanForPeripheralsWithServices(serviceUUIDs: [CBUUID]?, options: [String : AnyObject]?)

  /*!
   *  @method stopScan:
   *
   *  @discussion Stops scanning for peripherals.
   *
   */
  func stopScan()

  /*!
   *  @method connectPeripheral:options:
   *
   *  @param peripheral   The <code>CBPeripheral</code> to be connected.
   *  @param options      An optional dictionary specifying connection behavior options.
   *
   *  @discussion         Initiates a connection to <i>peripheral</i>. Connection attempts never time out and, depending on the outcome, will result
   *                      in a call to either {@link centralManager:didConnectPeripheral:} or {@link centralManager:didFailToConnectPeripheral:error:}.
   *                      Pending attempts are cancelled automatically upon deallocation of <i>peripheral</i>, and explicitly via {@link cancelPeripheralConnection}.
   *
   *  @see                centralManager:didConnectPeripheral:
   *  @see                centralManager:didFailToConnectPeripheral:error:
   *  @seealso            CBConnectPeripheralOptionNotifyOnConnectionKey
   *  @seealso            CBConnectPeripheralOptionNotifyOnDisconnectionKey
   *  @seealso            CBConnectPeripheralOptionNotifyOnNotificationKey
   *
   */
  func connectPeripheral(peripheral: CBPeripheral, options: [String : AnyObject]?)

  /*!
   *  @method cancelPeripheralConnection:
   *
   *  @param peripheral   A <code>CBPeripheral</code>.
   *
   *  @discussion         Cancels an active or pending connection to <i>peripheral</i>. Note that this is non-blocking, and any <code>CBPeripheral</code>
   *                      commands that are still pending to <i>peripheral</i> may or may not complete.
   *
   *  @see                centralManager:didDisconnectPeripheral:error:
   *
   */
  func cancelPeripheralConnection(peripheral: CBPeripheral)
  convenience init()
}

/*!
 *  @protocol CBCentralManagerDelegate
 *
 *  @discussion The delegate of a {@link CBCentralManager} object must adopt the <code>CBCentralManagerDelegate</code> protocol. The
 *              single required method indicates the availability of the central manager, while the optional methods allow for the discovery and
 *              connection of peripherals.
 *
 */
protocol CBCentralManagerDelegate : NSObjectProtocol {

  /*!
   *  @method centralManagerDidUpdateState:
   *
   *  @param central  The central manager whose state has changed.
   *
   *  @discussion     Invoked whenever the central manager's state has been updated. Commands should only be issued when the state is
   *                  <code>CBCentralManagerStatePoweredOn</code>. A state below <code>CBCentralManagerStatePoweredOn</code>
   *                  implies that scanning has stopped and any connected peripherals have been disconnected. If the state moves below
   *                  <code>CBCentralManagerStatePoweredOff</code>, all <code>CBPeripheral</code> objects obtained from this central
   *                  manager become invalid and must be retrieved or discovered again.
   *
   *  @see            state
   *
   */
  @available(tvOS 5.0, *)
  func centralManagerDidUpdateState(central: CBCentralManager)

  /*!
   *  @method centralManager:willRestoreState:
   *
   *  @param central      The central manager providing this information.
   *  @param dict			A dictionary containing information about <i>central</i> that was preserved by the system at the time the app was terminated.
   *
   *  @discussion			For apps that opt-in to state preservation and restoration, this is the first method invoked when your app is relaunched into
   *						the background to complete some Bluetooth-related task. Use this method to synchronize your app's state with the state of the
   *						Bluetooth system.
   *
   *  @seealso            CBCentralManagerRestoredStatePeripheralsKey;
   *  @seealso            CBCentralManagerRestoredStateScanServicesKey;
   *  @seealso            CBCentralManagerRestoredStateScanOptionsKey;
   *
   */
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, willRestoreState dict: [String : AnyObject])

  /*!
   *  @method centralManager:didDiscoverPeripheral:advertisementData:RSSI:
   *
   *  @param central              The central manager providing this update.
   *  @param peripheral           A <code>CBPeripheral</code> object.
   *  @param advertisementData    A dictionary containing any advertisement and scan response data.
   *  @param RSSI                 The current RSSI of <i>peripheral</i>, in dBm. A value of <code>127</code> is reserved and indicates the RSSI
   *								was not available.
   *
   *  @discussion                 This method is invoked while scanning, upon the discovery of <i>peripheral</i> by <i>central</i>. A discovered peripheral must
   *                              be retained in order to use it; otherwise, it is assumed to not be of interest and will be cleaned up by the central manager. For
   *                              a list of <i>advertisementData</i> keys, see {@link CBAdvertisementDataLocalNameKey} and other similar constants.
   *
   *  @seealso                    CBAdvertisementData.h
   *
   */
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral, advertisementData: [String : AnyObject], RSSI: NSNumber)

  /*!
   *  @method centralManager:didConnectPeripheral:
   *
   *  @param central      The central manager providing this information.
   *  @param peripheral   The <code>CBPeripheral</code> that has connected.
   *
   *  @discussion         This method is invoked when a connection initiated by {@link connectPeripheral:options:} has succeeded.
   *
   */
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral)

  /*!
   *  @method centralManager:didFailToConnectPeripheral:error:
   *
   *  @param central      The central manager providing this information.
   *  @param peripheral   The <code>CBPeripheral</code> that has failed to connect.
   *  @param error        The cause of the failure.
   *
   *  @discussion         This method is invoked when a connection initiated by {@link connectPeripheral:options:} has failed to complete. As connection attempts do not
   *                      timeout, the failure of a connection is atypical and usually indicative of a transient issue.
   *
   */
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didFailToConnectPeripheral peripheral: CBPeripheral, error: NSError?)

  /*!
   *  @method centralManager:didDisconnectPeripheral:error:
   *
   *  @param central      The central manager providing this information.
   *  @param peripheral   The <code>CBPeripheral</code> that has disconnected.
   *  @param error        If an error occurred, the cause of the failure.
   *
   *  @discussion         This method is invoked upon the disconnection of a peripheral that was connected by {@link connectPeripheral:options:}. If the disconnection
   *                      was not initiated by {@link cancelPeripheralConnection}, the cause will be detailed in the <i>error</i> parameter. Once this method has been
   *                      called, no more methods will be invoked on <i>peripheral</i>'s <code>CBPeripheralDelegate</code>.
   *
   */
  @available(tvOS 5.0, *)
  optional func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: NSError?)
}

/*!
 *  @const  CBCentralManagerOptionShowPowerAlertKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the system should, if Bluetooth is powered off when <code>CBCentralManager</code> is instantiated, display
 *				a warning dialog to the user.
 *
 *  @see		initWithDelegate:queue:options:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerOptionShowPowerAlertKey: String

/*!
 *  @const  CBCentralManagerOptionRestoreIdentifierKey
 *
 *  @discussion A NSString containing a unique identifier (UID) for the <code>CBCentralManager</code> that is being instantiated. This UID is used 
 *				by the system to identify a specific <code>CBCentralManager</code> instance for restoration and, therefore, must remain the same for
 *				subsequent application executions in order for the manager to be restored.
 *
 *  @see		initWithDelegate:queue:options:
 *  @seealso	centralManager:willRestoreState:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerOptionRestoreIdentifierKey: String

/*!
 *  @const CBCentralManagerScanOptionAllowDuplicatesKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the scan should run without duplicate filtering. By default, multiple discoveries of the
 *              same peripheral are coalesced into a single discovery event. Specifying this option will cause a discovery event to be generated
 *				every time the peripheral is seen, which may be many times per second. This can be useful in specific situations, such as making
 *				a connection based on a peripheral's RSSI, but may have an adverse affect on battery-life and application performance.
 *
 *  @see        scanForPeripheralsWithServices:options:
 *
 */
let CBCentralManagerScanOptionAllowDuplicatesKey: String

/*!
 *  @const CBCentralManagerScanOptionSolicitedServiceUUIDsKey
 *
 *  @discussion An NSArray of <code>CBUUID</code> objects respresenting service UUIDs. Causes the scan to also look for peripherals soliciting
 *				any of the services contained in the list.
 *
 *  @see        scanForPeripheralsWithServices:options:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerScanOptionSolicitedServiceUUIDsKey: String

/*!
 *  @const CBConnectPeripheralOptionNotifyOnConnectionKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the system should display a connection alert for a given peripheral, if the application is suspended
 *              when a successful connection is made.
 *              This is useful for applications that have not specified the <code>bluetooth-central</code> background mode and cannot display their
 *              own alert. If more than one application has requested notification for a given peripheral, the one that was most recently in the foreground
 *              will receive the alert.
 *
 *  @see        connectPeripheral:
 *
 */
@available(tvOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnConnectionKey: String

/*!
 *  @const CBConnectPeripheralOptionNotifyOnDisconnectionKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the system should display a disconnection alert for a given peripheral, if the application
 *              is suspended at the time of the disconnection.
 *              This is useful for applications that have not specified the <code>bluetooth-central</code> background mode and cannot display their
 *              own alert. If more than one application has requested notification for a given peripheral, the one that was most recently in the foreground
 *              will receive the alert.
 *
 *  @see        connectPeripheral:
 *
 */
let CBConnectPeripheralOptionNotifyOnDisconnectionKey: String

/*!
 *  @const CBConnectPeripheralOptionNotifyOnNotificationKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the system should display an alert for all notifications received from a given peripheral, if
 *              the application is suspended at the time.
 *              This is useful for applications that have not specified the <code>bluetooth-central</code> background mode and cannot display their
 *              own alert. If more than one application has requested notification for a given peripheral, the one that was most recently in the foreground
 *              will receive the alert.
 *
 *  @see        connectPeripheral:
 *
 */
@available(tvOS 6.0, *)
let CBConnectPeripheralOptionNotifyOnNotificationKey: String

/*!
 *  @const  CBCentralManagerRestoredStatePeripheralsKey
 *
 *  @discussion An NSArray of <code>CBPeripheral</code> objects containing all peripherals that were connected or pending connection at the time the
 *				application was terminated by the system. When possible, all known information for each peripheral will be restored, including any discovered
 *				services, characteristics and descriptors, as well as characteristic notification states.
 *
 *  @see		centralManager:willRestoreState:
 *	@seealso	connectPeripheral:options:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStatePeripheralsKey: String

/*!
 *  @const  CBCentralManagerRestoredStateScanServicesKey
 *
 *  @discussion An NSArray of <code>CBUUID</code> objects containing the service(s) being scanned for at the time the application was terminated by the system.
 *
 *  @see		centralManager:willRestoreState:
 *	@seealso	scanForPeripheralsWithServices:options:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStateScanServicesKey: String

/*!
 *  @const  CBCentralManagerRestoredStateScanOptionsKey
 *
 *  @discussion A NSDictionary containing the scan options at the time the application was terminated by the system.
 *
 *  @see		centralManager:willRestoreState:
 *	@seealso	scanForPeripheralsWithServices:options:
 *
 */
@available(tvOS 7.0, *)
let CBCentralManagerRestoredStateScanOptionsKey: String

/*!
 *  @enum CBCharacteristicProperties
 *
 *	@discussion Characteristic properties determine how the characteristic value can be	used, or how the descriptor(s) can be accessed. Can be combined. Unless
 *				otherwise specified, properties are valid for local characteristics published via @link CBPeripheralManager @/link.
 *
 *	@constant CBCharacteristicPropertyBroadcast						Permits broadcasts of the characteristic value using a characteristic configuration descriptor. Not allowed for local characteristics.
 *	@constant CBCharacteristicPropertyRead							Permits reads of the characteristic value.
 *	@constant CBCharacteristicPropertyWriteWithoutResponse			Permits writes of the characteristic value, without a response.
 *	@constant CBCharacteristicPropertyWrite							Permits writes of the characteristic value.
 *	@constant CBCharacteristicPropertyNotify						Permits notifications of the characteristic value, without a response.
 *	@constant CBCharacteristicPropertyIndicate						Permits indications of the characteristic value.
 *	@constant CBCharacteristicPropertyAuthenticatedSignedWrites		Permits signed writes of the characteristic value
 *	@constant CBCharacteristicPropertyExtendedProperties			If set, additional characteristic properties are defined in the characteristic extended properties descriptor. Not allowed for local characteristics.
 *	@constant CBCharacteristicPropertyNotifyEncryptionRequired		If set, only trusted devices can enable notifications of the characteristic value.
 *	@constant CBCharacteristicPropertyIndicateEncryptionRequired	If set, only trusted devices can enable indications of the characteristic value.
 *
 */
struct CBCharacteristicProperties : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Broadcast: CBCharacteristicProperties { get }
  static var Read: CBCharacteristicProperties { get }
  static var WriteWithoutResponse: CBCharacteristicProperties { get }
  static var Write: CBCharacteristicProperties { get }
  static var Notify: CBCharacteristicProperties { get }
  static var Indicate: CBCharacteristicProperties { get }
  static var AuthenticatedSignedWrites: CBCharacteristicProperties { get }
  static var ExtendedProperties: CBCharacteristicProperties { get }
  @available(tvOS 6.0, *)
  static var NotifyEncryptionRequired: CBCharacteristicProperties { get }
  @available(tvOS 6.0, *)
  static var IndicateEncryptionRequired: CBCharacteristicProperties { get }
}

/*!
 *  @class CBCharacteristic
 *
 *  @discussion
 *      Represents a service's characteristic.
 *
 */
@available(tvOS 5.0, *)
class CBCharacteristic : CBAttribute {

  /*!
   * @property service
   *
   *  @discussion
   *      A back-pointer to the service this characteristic belongs to.
   *
   */
  unowned(unsafe) var service: @sil_unmanaged CBService { get }

  /*!
   * @property properties
   *
   *  @discussion
   *      The properties of the characteristic.
   *
   */
  var properties: CBCharacteristicProperties { get }

  /*!
   * @property value
   *
   *  @discussion
   *      The value of the characteristic.
   *
   */
  var value: NSData? { get }

  /*!
   * @property descriptors
   *
   *  @discussion
   *      A list of the CBDescriptors that have so far been discovered in this characteristic.
   *
   */
  var descriptors: [CBDescriptor]? { get }

  /*!
   * @property isBroadcasted
   *
   *  @discussion
   *      Whether the characteristic is currently broadcasted or not.
   *
   */
  @available(tvOS, introduced=5.0, deprecated=8.0)
  var isBroadcasted: Bool { get }

  /*!
   * @property isNotifying
   *
   *  @discussion
   *      Whether the characteristic is currently notifying or not.
   *
   */
  var isNotifying: Bool { get }
}

/*!
 *  @enum CBAttributePermissions
 *
 *	@discussion Read, write, and encryption permissions for an ATT attribute. Can be combined.
 *
 *	@constant CBAttributePermissionsReadable					Read-only.
 *	@constant CBAttributePermissionsWriteable					Write-only.
 *	@constant CBAttributePermissionsReadEncryptionRequired		Readable by trusted devices.
 *	@constant CBAttributePermissionsWriteEncryptionRequired		Writeable by trusted devices.
 *
 */
@available(tvOS 6.0, *)
struct CBAttributePermissions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Readable: CBAttributePermissions { get }
  static var Writeable: CBAttributePermissions { get }
  static var ReadEncryptionRequired: CBAttributePermissions { get }
  static var WriteEncryptionRequired: CBAttributePermissions { get }
}

/*!
 *	@class CBMutableCharacteristic
 *
 *	@discussion Used to create a local characteristic, which can be added to the local database via <code>CBPeripheralManager</code>. Once a characteristic
 *				is published, it is cached and can no longer be changed. 
 *				If a characteristic value is specified, it will be cached and marked <code>CBCharacteristicPropertyRead</code> and 
 *				<code>CBAttributePermissionsReadable</code>. If a characteristic value needs to be writeable, or may change during the lifetime of the
 *				published <code>CBService</code>, it is considered a dynamic value and will be requested on-demand. Dynamic values are identified by a
 *				<i>value</i> of <i>nil</i>.
 *
 */
@available(tvOS 6.0, *)
class CBMutableCharacteristic : CBCharacteristic {

  /*!
   *	@property permissions
   *
   *	@discussion The permissions of the characteristic value.
   *
   *	@see		CBAttributePermissions
   */
  var permissions: CBAttributePermissions

  /*!
   *  @property subscribedCentrals
   *
   *  @discussion For notifying characteristics, the set of currently subscribed centrals.
   */
  @available(tvOS 7.0, *)
  var subscribedCentrals: [CBCentral]? { get }
  var properties: CBCharacteristicProperties
  var value: NSData?
  var descriptors: [CBDescriptor]?
}

/*!
 * @class CBDescriptor
 *
 *  @discussion
 *      Represents a characteristic's descriptor.
 *
 */
@available(tvOS 5.0, *)
class CBDescriptor : CBAttribute {

  /*!
   *  @property characteristic
   *
   *  @discussion
   *      A back-pointer to the characteristic this descriptor belongs to.
   *
   */
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }

  /*!
   *  @property value
   *
   *  @discussion
   *      The value of the descriptor. The corresponding value types for the various descriptors are detailed in @link CBUUID.h @/link.
   *
   */
  var value: AnyObject? { get }
}

/*!
 * @class CBMutableDescriptor
 *
 * @discussion
 *      Used to create a local characteristic descriptor, which can be added to the local database via <code>CBPeripheralManager</code>.
 *		Once a descriptor is published, it is cached and can no longer be changed.
 *		Descriptor types are detailed in @link CBUUID.h @/link, but only the <code>Characteristic User Description</code> and <code>Characteristic Presentation
 *		Format</code> descriptors are currently supported. The <code>Characteristic Extended Properties</code> and <code>Client Characteristic 
 *		Configuration</code> descriptors will be created automatically upon publication of the parent service, depending on the properties of the characteristic itself.
 */
@available(tvOS 6.0, *)
class CBMutableDescriptor : CBDescriptor {
}
let CBErrorDomain: String

/*!
 * @enum CBError
 *
 * @discussion The possible errors returned during LE transactions.
 */
enum CBError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  @available(tvOS 6.0, *)
  case InvalidParameters
  @available(tvOS 6.0, *)
  case InvalidHandle
  @available(tvOS 6.0, *)
  case NotConnected
  @available(tvOS 6.0, *)
  case OutOfSpace
  @available(tvOS 6.0, *)
  case OperationCancelled
  @available(tvOS 6.0, *)
  case ConnectionTimeout
  @available(tvOS 6.0, *)
  case PeripheralDisconnected
  @available(tvOS 6.0, *)
  case UUIDNotAllowed
  @available(tvOS 6.0, *)
  case AlreadyAdvertising
  @available(tvOS 7.1, *)
  case ConnectionFailed
  @available(tvOS 9.0, *)
  case ConnectionLimitReached
}

extension CBError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
let CBATTErrorDomain: String
enum CBATTError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 6.0, *)
  case Success
  case InvalidHandle
  case ReadNotPermitted
  case WriteNotPermitted
  case InvalidPdu
  case InsufficientAuthentication
  case RequestNotSupported
  case InvalidOffset
  case InsufficientAuthorization
  case PrepareQueueFull
  case AttributeNotFound
  case AttributeNotLong
  case InsufficientEncryptionKeySize
  case InvalidAttributeValueLength
  case UnlikelyError
  case InsufficientEncryption
  case UnsupportedGroupType
  case InsufficientResources
}

extension CBATTError : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
@available(tvOS 8.0, *)
class CBPeer : NSObject, NSCopying {

  /*!
   *  @property identifier
   *
   *  @discussion The unique, persistent identifier associated with the peer.
   */
  @available(tvOS 7.0, *)
  var identifier: NSUUID { get }
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
 *  @enum CBPeripheralState
 *
 *  @discussion Represents the current connection state of a CBPeripheral.
 *
 */
@available(tvOS 7.0, *)
enum CBPeripheralState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Disconnected
  case Connecting
  case Connected
  @available(tvOS 9.0, *)
  case Disconnecting
}

/*!
 *  @enum CBCharacteristicWriteType
 *
 *  @discussion Specifies which type of write is to be performed on a CBCharacteristic.
 *
 */
enum CBCharacteristicWriteType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WithResponse
  case WithoutResponse
}

/*!
 *  @class CBPeripheral
 *
 *  @discussion Represents a peripheral.
 */
@available(tvOS 5.0, *)
class CBPeripheral : CBPeer {

  /*!
   *  @property delegate
   *
   *  @discussion The delegate object that will receive peripheral events.
   */
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralDelegate?

  /*!
   *  @property name
   *
   *  @discussion The name of the peripheral.
   */
  var name: String? { get }

  /*!
   *  @property RSSI
   *
   *  @discussion The most recently read RSSI, in decibels.
   *
   *  @deprecated Use {@link peripheral:didReadRSSI:error:} instead.
   */
  @available(tvOS, introduced=5.0, deprecated=8.0)
  var RSSI: NSNumber? { get }

  /*!
   *  @property state
   *
   *  @discussion The current connection state of the peripheral.
   */
  var state: CBPeripheralState { get }

  /*!
   *  @property services
   *
   *  @discussion A list of <code>CBService</code> objects that have been discovered on the peripheral.
   */
  var services: [CBService]? { get }

  /*!
   *  @method readRSSI
   *
   *  @discussion While connected, retrieves the current RSSI of the link.
   *
   *  @see        peripheral:didReadRSSI:error:
   */
  func readRSSI()

  /*!
   *  @method discoverServices:
   *
   *  @param serviceUUIDs A list of <code>CBUUID</code> objects representing the service types to be discovered. If <i>nil</i>,
   *						all services will be discovered, which is considerably slower and not recommended.
   *
   *  @discussion			Discovers available service(s) on the peripheral.
   *
   *  @see				peripheral:didDiscoverServices:
   */
  func discoverServices(serviceUUIDs: [CBUUID]?)

  /*!
   *  @method discoverIncludedServices:forService:
   *
   *  @param includedServiceUUIDs A list of <code>CBUUID</code> objects representing the included service types to be discovered. If <i>nil</i>,
   *								all of <i>service</i>s included services will be discovered, which is considerably slower and not recommended.
   *  @param service				A GATT service.
   *
   *  @discussion					Discovers the specified included service(s) of <i>service</i>.
   *
   *  @see						peripheral:didDiscoverIncludedServicesForService:error:
   */
  func discoverIncludedServices(includedServiceUUIDs: [CBUUID]?, forService service: CBService)

  /*!
   *  @method discoverCharacteristics:forService:
   *
   *  @param characteristicUUIDs	A list of <code>CBUUID</code> objects representing the characteristic types to be discovered. If <i>nil</i>,
   *								all characteristics of <i>service</i> will be discovered, which is considerably slower and not recommended.
   *  @param service				A GATT service.
   *
   *  @discussion					Discovers the specified characteristic(s) of <i>service</i>.
   *
   *  @see						peripheral:didDiscoverCharacteristicsForService:error:
   */
  func discoverCharacteristics(characteristicUUIDs: [CBUUID]?, forService service: CBService)

  /*!
   *  @method readValueForCharacteristic:
   *
   *  @param characteristic	A GATT characteristic.
   *
   *  @discussion				Reads the characteristic value for <i>characteristic</i>.
   *
   *  @see					peripheral:didUpdateValueForCharacteristic:error:
   */
  func readValueForCharacteristic(characteristic: CBCharacteristic)

  /*!
   *  @method		maximumWriteValueLengthForType:
   *
   *  @discussion	The maximum amount of data, in bytes, that can be sent to a characteristic in a single write type.
   *
   *  @see		writeValue:forCharacteristic:type:
   */
  @available(tvOS 9.0, *)
  func maximumWriteValueLengthForType(type: CBCharacteristicWriteType) -> Int

  /*!
   *  @method writeValue:forCharacteristic:type:
   *
   *  @param data				The value to write.
   *  @param characteristic	The characteristic whose characteristic value will be written.
   *  @param type				The type of write to be executed.
   *
   *  @discussion				Writes <i>value</i> to <i>characteristic</i>'s characteristic value.
   *							If the <code>CBCharacteristicWriteWithResponse</code> type is specified, {@link peripheral:didWriteValueForCharacteristic:error:}
   *							is called with the result of the write request.
   *							If the <code>CBCharacteristicWriteWithoutResponse</code> type is specified, the delivery of the data is best-effort and not
   *							guaranteed.
   *
   *  @see					peripheral:didWriteValueForCharacteristic:error:
   *	@see					CBCharacteristicWriteType
   */
  func writeValue(data: NSData, forCharacteristic characteristic: CBCharacteristic, type: CBCharacteristicWriteType)

  /*!
   *  @method setNotifyValue:forCharacteristic:
   *
   *  @param enabled			Whether or not notifications/indications should be enabled.
   *  @param characteristic	The characteristic containing the client characteristic configuration descriptor.
   *
   *  @discussion				Enables or disables notifications/indications for the characteristic value of <i>characteristic</i>. If <i>characteristic</i>
   *							allows both, notifications will be used.
   *                          When notifications/indications are enabled, updates to the characteristic value will be received via delegate method 
   *                          @link peripheral:didUpdateValueForCharacteristic:error: @/link. Since it is the peripheral that chooses when to send an update,
   *                          the application should be prepared to handle them as long as notifications/indications remain enabled.
   *
   *  @see					peripheral:didUpdateNotificationStateForCharacteristic:error:
   *  @seealso                CBConnectPeripheralOptionNotifyOnNotificationKey
   */
  func setNotifyValue(enabled: Bool, forCharacteristic characteristic: CBCharacteristic)

  /*!
   *  @method discoverDescriptorsForCharacteristic:
   *
   *  @param characteristic	A GATT characteristic.
   *
   *  @discussion				Discovers the characteristic descriptor(s) of <i>characteristic</i>.
   *
   *  @see					peripheral:didDiscoverDescriptorsForCharacteristic:error:
   */
  func discoverDescriptorsForCharacteristic(characteristic: CBCharacteristic)

  /*!
   *  @method readValueForDescriptor:
   *
   *  @param descriptor	A GATT characteristic descriptor.
   *
   *  @discussion			Reads the value of <i>descriptor</i>.
   *
   *  @see				peripheral:didUpdateValueForDescriptor:error:
   */
  func readValueForDescriptor(descriptor: CBDescriptor)

  /*!
   *  @method writeValue:forDescriptor:
   *
   *  @param data			The value to write.
   *  @param descriptor	A GATT characteristic descriptor.
   *
   *  @discussion			Writes <i>data</i> to <i>descriptor</i>'s value. Client characteristic configuration descriptors cannot be written using
   *						this method, and should instead use @link setNotifyValue:forCharacteristic: @/link.
   *
   *  @see				peripheral:didWriteValueForCharacteristic:error:
   */
  func writeValue(data: NSData, forDescriptor descriptor: CBDescriptor)
}

/*!
 *  @protocol CBPeripheralDelegate
 *
 *  @discussion Delegate for CBPeripheral.
 *
 */
protocol CBPeripheralDelegate : NSObjectProtocol {

  /*!
   *  @method peripheralDidUpdateName:
   *
   *  @param peripheral	The peripheral providing this update.
   *
   *  @discussion			This method is invoked when the @link name @/link of <i>peripheral</i> changes.
   */
  @available(tvOS 6.0, *)
  optional func peripheralDidUpdateName(peripheral: CBPeripheral)

  /*!
   *  @method peripheral:didModifyServices:
   *
   *  @param peripheral			The peripheral providing this update.
   *  @param invalidatedServices	The services that have been invalidated
   *
   *  @discussion			This method is invoked when the @link services @/link of <i>peripheral</i> have been changed.
   *						At this point, the designated <code>CBService</code> objects have been invalidated.
   *						Services can be re-discovered via @link discoverServices: @/link.
   */
  @available(tvOS 7.0, *)
  optional func peripheral(peripheral: CBPeripheral, didModifyServices invalidatedServices: [CBService])

  /*!
   *  @method peripheralDidUpdateRSSI:error:
   *
   *  @param peripheral	The peripheral providing this update.
   *	@param error		If an error occurred, the cause of the failure.
   *
   *  @discussion			This method returns the result of a @link readRSSI: @/link call.
   *
   *  @deprecated			Use {@link peripheral:didReadRSSI:error:} instead.
   */
  @available(tvOS, introduced=5.0, deprecated=8.0)
  optional func peripheralDidUpdateRSSI(peripheral: CBPeripheral, error: NSError?)

  /*!
   *  @method peripheral:didReadRSSI:error:
   *
   *  @param peripheral	The peripheral providing this update.
   *  @param RSSI			The current RSSI of the link.
   *  @param error		If an error occurred, the cause of the failure.
   *
   *  @discussion			This method returns the result of a @link readRSSI: @/link call.
   */
  @available(tvOS 8.0, *)
  optional func peripheral(peripheral: CBPeripheral, didReadRSSI RSSI: NSNumber, error: NSError?)

  /*!
   *  @method peripheral:didDiscoverServices:
   *
   *  @param peripheral	The peripheral providing this information.
   *	@param error		If an error occurred, the cause of the failure.
   *
   *  @discussion			This method returns the result of a @link discoverServices: @/link call. If the service(s) were read successfully, they can be retrieved via
   *						<i>peripheral</i>'s @link services @/link property.
   *
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverServices error: NSError?)

  /*!
   *  @method peripheral:didDiscoverIncludedServicesForService:error:
   *
   *  @param peripheral	The peripheral providing this information.
   *  @param service		The <code>CBService</code> object containing the included services.
   *	@param error		If an error occurred, the cause of the failure.
   *
   *  @discussion			This method returns the result of a @link discoverIncludedServices:forService: @/link call. If the included service(s) were read successfully, 
   *						they can be retrieved via <i>service</i>'s <code>includedServices</code> property.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverIncludedServicesForService service: CBService, error: NSError?)

  /*!
   *  @method peripheral:didDiscoverCharacteristicsForService:error:
   *
   *  @param peripheral	The peripheral providing this information.
   *  @param service		The <code>CBService</code> object containing the characteristic(s).
   *	@param error		If an error occurred, the cause of the failure.
   *
   *  @discussion			This method returns the result of a @link discoverCharacteristics:forService: @/link call. If the characteristic(s) were read successfully, 
   *						they can be retrieved via <i>service</i>'s <code>characteristics</code> property.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error: NSError?)

  /*!
   *  @method peripheral:didUpdateValueForCharacteristic:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param characteristic	A <code>CBCharacteristic</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method is invoked after a @link readValueForCharacteristic: @/link call, or upon receipt of a notification/indication.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)

  /*!
   *  @method peripheral:didWriteValueForCharacteristic:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param characteristic	A <code>CBCharacteristic</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method returns the result of a {@link writeValue:forCharacteristic:type:} call, when the <code>CBCharacteristicWriteWithResponse</code> type is used.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForCharacteristic characteristic: CBCharacteristic, error: NSError?)

  /*!
   *  @method peripheral:didUpdateNotificationStateForCharacteristic:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param characteristic	A <code>CBCharacteristic</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method returns the result of a @link setNotifyValue:forCharacteristic: @/link call. 
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateNotificationStateForCharacteristic characteristic: CBCharacteristic, error: NSError?)

  /*!
   *  @method peripheral:didDiscoverDescriptorsForCharacteristic:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param characteristic	A <code>CBCharacteristic</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method returns the result of a @link discoverDescriptorsForCharacteristic: @/link call. If the descriptors were read successfully, 
   *							they can be retrieved via <i>characteristic</i>'s <code>descriptors</code> property.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didDiscoverDescriptorsForCharacteristic characteristic: CBCharacteristic, error: NSError?)

  /*!
   *  @method peripheral:didUpdateValueForDescriptor:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param descriptor		A <code>CBDescriptor</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method returns the result of a @link readValueForDescriptor: @/link call.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didUpdateValueForDescriptor descriptor: CBDescriptor, error: NSError?)

  /*!
   *  @method peripheral:didWriteValueForDescriptor:error:
   *
   *  @param peripheral		The peripheral providing this information.
   *  @param descriptor		A <code>CBDescriptor</code> object.
   *	@param error			If an error occurred, the cause of the failure.
   *
   *  @discussion				This method returns the result of a @link writeValue:forDescriptor: @/link call.
   */
  @available(tvOS 5.0, *)
  optional func peripheral(peripheral: CBPeripheral, didWriteValueForDescriptor descriptor: CBDescriptor, error: NSError?)
}

/*!
 *  @enum CBPeripheralManagerAuthorizationStatus
 *
 *  @discussion Represents the current state of a CBPeripheralManager.
 *
 *  @constant CBPeripheralManagerAuthorizationStatusNotDetermined	User has not yet made a choice with regards to this application.
 *  @constant CBPeripheralManagerAuthorizationStatusRestricted		This application is not authorized to share data while backgrounded. The user cannot change this application’s status, possibly due to active restrictions such as parental controls being in place.
 *  @constant CBPeripheralManagerAuthorizationStatusDenied			User has explicitly denied this application from sharing data while backgrounded.
 *  @constant CBPeripheralManagerAuthorizationStatusAuthorized		User has authorized this application to share data while backgrounded.
 *
 */
@available(tvOS 7.0, *)
enum CBPeripheralManagerAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}

/*!
 *  @enum CBPeripheralManagerState
 *
 *  @discussion Represents the current state of a CBPeripheralManager.
 *
 *  @constant CBPeripheralManagerStateUnknown       State unknown, update imminent.
 *  @constant CBPeripheralManagerStateResetting     The connection with the system service was momentarily lost, update imminent.
 *  @constant CBPeripheralManagerStateUnsupported   The platform doesn't support the Bluetooth Low Energy Peripheral/Server role.
 *  @constant CBPeripheralManagerStateUnauthorized  The application is not authorized to use the Bluetooth Low Energy Peripheral/Server role.
 *  @constant CBPeripheralManagerStatePoweredOff    Bluetooth is currently powered off.
 *  @constant CBPeripheralManagerStatePoweredOn     Bluetooth is currently powered on and available to use.
 *
 */
@available(tvOS 6.0, *)
enum CBPeripheralManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Resetting
  case Unsupported
  case Unauthorized
  case PoweredOff
  case PoweredOn
}

/*!
 *  @enum CBPeripheralManagerConnectionLatency
 *
 *  @discussion The latency of a peripheral-central connection controls how frequently messages can be exchanged.
 *
 *	@constant CBPeripheralManagerConnectionLatencyLow       Prioritizes rapid communication over battery life.
 *	@constant CBPeripheralManagerConnectionLatencyMedium    A balance between communication frequency and battery life.
 *	@constant CBPeripheralManagerConnectionLatencyHigh      Prioritizes extending battery life over rapid communication.
 *
 */
@available(tvOS 6.0, *)
enum CBPeripheralManagerConnectionLatency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Low
  case Medium
  case High
}

/*!
 *  @class CBPeripheralManager
 *
 *  @discussion The <code>CBPeripheralManager</code> class is an abstraction of the Peripheral and Broadcaster GAP roles, and the GATT Server
 *              role. Its primary function is to allow you to manage published services within the GATT database, and to advertise these services
 *              to other devices.
 *              Each application has sandboxed access to the shared GATT database. You can add services to the database by calling {@link addService:};
 *              they can be removed via {@link removeService:} and {@link removeAllServices}, as appropriate. While a service is in the database,
 *              it is visible to and can be accessed by any connected GATT Client. However, applications that have not specified the "bluetooth-peripheral"
 *              background mode will have the contents of their service(s) "disabled" when in the background. Any remote device trying to access
 *              characteristic values or descriptors during this time will receive an error response.
 *              Once you've published services that you want to share, you can ask to advertise their availability and allow other devices to connect
 *              to you by calling {@link startAdvertising:}. Like the GATT database, advertisement is managed at the system level and shared by all
 *              applications. This means that even if you aren't advertising at the moment, someone else might be!
 *
 */
@available(tvOS 6.0, *)
class CBPeripheralManager : NSObject {

  /*!
   *  @property delegate
   *
   *  @discussion The delegate object that will receive peripheral events.
   *
   */
  unowned(unsafe) var delegate: @sil_unmanaged CBPeripheralManagerDelegate?

  /*!
   *  @property state
   *
   *  @discussion The current state of the peripheral, initially set to <code>CBPeripheralManagerStateUnknown</code>. Updates are provided by required
   *              delegate method @link peripheralManagerDidUpdateState: @/link.
   *
   */
  var state: CBPeripheralManagerState { get }

  /*!
   *  @property isAdvertising
   *
   *  @discussion Whether or not the peripheral is currently advertising data.
   *
   */
  var isAdvertising: Bool { get }

  /*!
   *  @method authorizationStatus
   *
   *  @discussion	This method does not prompt the user for access. You can use it to detect restricted access and simply hide UI instead of
   *				prompting for access.
   *
   *  @return		The current authorization status for sharing data while backgrounded. For the constants returned, see {@link CBPeripheralManagerAuthorizationStatus}.
   *
   *  @see		CBPeripheralManagerAuthorizationStatus
   */
  @available(tvOS 7.0, *)
  class func authorizationStatus() -> CBPeripheralManagerAuthorizationStatus

  /*!
   *  @method startAdvertising:
   *
   *  @param advertisementData    An optional dictionary containing the data to be advertised.
   *
   *  @discussion                 Starts advertising. Supported advertising data types are <code>CBAdvertisementDataLocalNameKey</code>
   *                              and <code>CBAdvertisementDataServiceUUIDsKey</code>.
   *                              When in the foreground, an application can utilize up to 28 bytes of space in the initial advertisement data for 
   *                              any combination of the supported advertising data types. If this space is used up, there are an additional 10 bytes of 
   *                              space in the scan response that can be used only for the local name. Note that these sizes do not include the 2 bytes 
   *                              of header information that are required for each new data type. Any service UUIDs that do not fit in the allotted space 
   *                              will be added to a special "overflow" area, and can only be discovered by an iOS device that is explicitly scanning
   *                              for them.
   *                              While an application is in the background, the local name will not be used and all service UUIDs will be placed in the
   *                              "overflow" area. However, applications that have not specified the "bluetooth-peripheral" background mode will not be able 
   *                              to advertise anything while in the background.
   *
   *  @see                        peripheralManagerDidStartAdvertising:error:
   *  @seealso                    CBAdvertisementData.h
   *
   */
  func startAdvertising(advertisementData: [String : AnyObject]?)

  /*!
   *  @method stopAdvertising
   *
   *  @discussion Stops advertising.
   *
   */
  func stopAdvertising()

  /*!
   *  @method setDesiredConnectionLatency:forCentral:
   *
   *  @param latency  The desired connection latency.
   *  @param central  A connected central.
   *
   *  @discussion     Sets the desired connection latency for an existing connection to <i>central</i>. Connection latency changes are not guaranteed, so the
   *                  resultant latency may vary. If a desired latency is not set, the latency chosen by <i>central</i> at the time of connection establishment
   *                  will be used. Typically, it is not necessary to change the latency.
   *
   *  @see            CBPeripheralManagerConnectionLatency
   *
   */
  func setDesiredConnectionLatency(latency: CBPeripheralManagerConnectionLatency, forCentral central: CBCentral)

  /*!
   *  @method addService:
   *
   *  @param service  A GATT service.
   *
   *  @discussion     Publishes a service and its associated characteristic(s) to the local database. If the service contains included services,
   *                  they must be published first.
   *
   *  @see            peripheralManager:didAddService:error:
   */
  func addService(service: CBMutableService)

  /*!
   *  @method removeService:
   *
   *  @param service  A GATT service.
   *
   *  @discussion     Removes a published service from the local database. If the service is included by other service(s), they must be removed
   *                  first.
   *
   */
  func removeService(service: CBMutableService)

  /*!
   *  @method removeAllServices
   *
   *  @discussion Removes all published services from the local database.
   *
   */
  func removeAllServices()

  /*!
   *  @method respondToRequest:withResult:
   *
   *  @param request  The original request that was received from the central.
   *  @param result   The result of attempting to fulfill <i>request</i>.
   *
   *  @discussion     Used to respond to request(s) received via the @link peripheralManager:didReceiveReadRequest: @/link or
   *                  @link peripheralManager:didReceiveWriteRequests: @/link delegate methods.
   *
   *  @see            peripheralManager:didReceiveReadRequest:
   *  @see            peripheralManager:didReceiveWriteRequests:
   */
  func respondToRequest(request: CBATTRequest, withResult result: CBATTError)

  /*!
   *  @method updateValue:forCharacteristic:onSubscribedCentrals:
   *
   *  @param value            The value to be sent via a notification/indication.
   *  @param characteristic   The characteristic whose value has changed.
   *  @param centrals         A list of <code>CBCentral</code> objects to receive the update. Note that centrals which have not subscribed to
   *                          <i>characteristic</i> will be ignored. If <i>nil</i>, all centrals that are subscribed to <i>characteristic</i> will be updated.
   *
   *  @discussion             Sends an updated characteristic value to one or more centrals, via a notification or indication. If <i>value</i> exceeds
   *							{@link maximumUpdateValueLength}, it will be truncated to fit.
   *
   *  @return                 <i>YES</i> if the update could be sent, or <i>NO</i> if the underlying transmit queue is full. If <i>NO</i> was returned,
   *                          the delegate method @link peripheralManagerIsReadyToUpdateSubscribers: @/link will be called once space has become
   *                          available, and the update should be re-sent if so desired.
   *
   *  @see                    peripheralManager:central:didSubscribeToCharacteristic:
   *  @see                    peripheralManager:central:didUnsubscribeFromCharacteristic:
   *  @see                    peripheralManagerIsReadyToUpdateSubscribers:
   *	@seealso				maximumUpdateValueLength
   */
  func updateValue(value: NSData, forCharacteristic characteristic: CBMutableCharacteristic, onSubscribedCentrals centrals: [CBCentral]?) -> Bool
  convenience init()
}

/*!
 *  @protocol CBPeripheralManagerDelegate
 *
 *  @discussion The delegate of a @link CBPeripheralManager @/link object must adopt the <code>CBPeripheralManagerDelegate</code> protocol. The
 *              single required method indicates the availability of the peripheral manager, while the optional methods provide information about
 *              centrals, which can connect and access the local database.
 *
 */
protocol CBPeripheralManagerDelegate : NSObjectProtocol {

  /*!
   *  @method peripheralManagerDidUpdateState:
   *
   *  @param peripheral   The peripheral manager whose state has changed.
   *
   *  @discussion         Invoked whenever the peripheral manager's state has been updated. Commands should only be issued when the state is 
   *                      <code>CBPeripheralManagerStatePoweredOn</code>. A state below <code>CBPeripheralManagerStatePoweredOn</code>
   *                      implies that advertisement has paused and any connected centrals have been disconnected. If the state moves below
   *                      <code>CBPeripheralManagerStatePoweredOff</code>, advertisement is stopped and must be explicitly restarted, and the
   *                      local database is cleared and all services must be re-added.
   *
   *  @see                state
   *
   */
  @available(tvOS 6.0, *)
  func peripheralManagerDidUpdateState(peripheral: CBPeripheralManager)

  /*!
   *  @method peripheralManager:willRestoreState:
   *
   *  @param peripheral	The peripheral manager providing this information.
   *  @param dict			A dictionary containing information about <i>peripheral</i> that was preserved by the system at the time the app was terminated.
   *
   *  @discussion			For apps that opt-in to state preservation and restoration, this is the first method invoked when your app is relaunched into
   *						the background to complete some Bluetooth-related task. Use this method to synchronize your app's state with the state of the
   *						Bluetooth system.
   *
   *  @seealso            CBPeripheralManagerRestoredStateServicesKey;
   *  @seealso            CBPeripheralManagerRestoredStateAdvertisementDataKey;
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, willRestoreState dict: [String : AnyObject])

  /*!
   *  @method peripheralManagerDidStartAdvertising:error:
   *
   *  @param peripheral   The peripheral manager providing this information.
   *  @param error        If an error occurred, the cause of the failure.
   *
   *  @discussion         This method returns the result of a @link startAdvertising: @/link call. If advertisement could
   *                      not be started, the cause will be detailed in the <i>error</i> parameter.
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManagerDidStartAdvertising(peripheral: CBPeripheralManager, error: NSError?)

  /*!
   *  @method peripheralManager:didAddService:error:
   *
   *  @param peripheral   The peripheral manager providing this information.
   *  @param service      The service that was added to the local database.
   *  @param error        If an error occurred, the cause of the failure.
   *
   *  @discussion         This method returns the result of an @link addService: @/link call. If the service could
   *                      not be published to the local database, the cause will be detailed in the <i>error</i> parameter.
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didAddService service: CBService, error: NSError?)

  /*!
   *  @method peripheralManager:central:didSubscribeToCharacteristic:
   *
   *  @param peripheral       The peripheral manager providing this update.
   *  @param central          The central that issued the command.
   *  @param characteristic   The characteristic on which notifications or indications were enabled.
   *
   *  @discussion             This method is invoked when a central configures <i>characteristic</i> to notify or indicate.
   *                          It should be used as a cue to start sending updates as the characteristic value changes.
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didSubscribeToCharacteristic characteristic: CBCharacteristic)

  /*!
   *  @method peripheralManager:central:didUnsubscribeFromCharacteristic:
   *
   *  @param peripheral       The peripheral manager providing this update.
   *  @param central          The central that issued the command.
   *  @param characteristic   The characteristic on which notifications or indications were disabled.
   *
   *  @discussion             This method is invoked when a central removes notifications/indications from <i>characteristic</i>.
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, central: CBCentral, didUnsubscribeFromCharacteristic characteristic: CBCharacteristic)

  /*!
   *  @method peripheralManager:didReceiveReadRequest:
   *
   *  @param peripheral   The peripheral manager requesting this information.
   *  @param request      A <code>CBATTRequest</code> object.
   *
   *  @discussion         This method is invoked when <i>peripheral</i> receives an ATT request for a characteristic with a dynamic value.
   *                      For every invocation of this method, @link respondToRequest:withResult: @/link must be called.
   *
   *  @see                CBATTRequest
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveReadRequest request: CBATTRequest)

  /*!
   *  @method peripheralManager:didReceiveWriteRequests:
   *
   *  @param peripheral   The peripheral manager requesting this information.
   *  @param requests     A list of one or more <code>CBATTRequest</code> objects.
   *
   *  @discussion         This method is invoked when <i>peripheral</i> receives an ATT request or command for one or more characteristics with a dynamic value.
   *                      For every invocation of this method, @link respondToRequest:withResult: @/link should be called exactly once. If <i>requests</i> contains
   *                      multiple requests, they must be treated as an atomic unit. If the execution of one of the requests would cause a failure, the request
   *                      and error reason should be provided to <code>respondToRequest:withResult:</code> and none of the requests should be executed.
   *
   *  @see                CBATTRequest
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManager(peripheral: CBPeripheralManager, didReceiveWriteRequests requests: [CBATTRequest])

  /*!
   *  @method peripheralManagerIsReadyToUpdateSubscribers:
   *
   *  @param peripheral   The peripheral manager providing this update.
   *
   *  @discussion         This method is invoked after a failed call to @link updateValue:forCharacteristic:onSubscribedCentrals: @/link, when <i>peripheral</i> is again
   *                      ready to send characteristic value updates.
   *
   */
  @available(tvOS 6.0, *)
  optional func peripheralManagerIsReadyToUpdateSubscribers(peripheral: CBPeripheralManager)
}

/*!
 *  @const  CBPeripheralManagerOptionShowPowerAlertKey
 *
 *  @discussion A NSNumber (Boolean) indicating that the system should, if Bluetooth is powered off when <code>CBPeripheralManager</code> is instantiated, display
 *				a warning dialog to the user.
 *
 *  @see		initWithDelegate:queue:options:
 *
 */
@available(tvOS 7.0, *)
let CBPeripheralManagerOptionShowPowerAlertKey: String

/*!
 *  @const  CBPeripheralManagerOptionRestoreIdentifierKey
 *
 *  @discussion A NSString containing a unique identifier (UID) for the <code>CBPeripheralManager</code> that is being instantiated. This UID is used
 *				by the system to identify a specific <code>CBPeripheralManager</code> instance for restoration and, therefore, must remain the same for
 *				subsequent application executions in order for the manager to be restored.
 *
 *  @see		initWithDelegate:queue:options:
 *  @seealso	centralManager:willRestoreState:
 *
 */
@available(tvOS 7.0, *)
let CBPeripheralManagerOptionRestoreIdentifierKey: String

/*!
 *  @const  CBPeripheralManagerRestoredStateServicesKey
 *
 *  @discussion An NSArray of <code>CBMutableService</code> objects containing all services that were published to the local database at the time the
 *				application was terminated by the system. All information for each service will be restored, including all discovered
 *				services, characteristics and descriptors, as well as characteristic notification states.
 *
 *  @see		peripheralManager:willRestoreState:
 *  @seealso	addService:
 *
 */
@available(tvOS 7.0, *)
let CBPeripheralManagerRestoredStateServicesKey: String

/*!
 *  @const  CBPeripheralManagerRestoredStateAdvertisementDataKey
 *
 *  @discussion A NSDictionary containing the data being advertised at the time the application was terminated by the system.
 *
 *  @see		peripheralManager:willRestoreState:
 *  @seealso	startAdvertising:
 *
 */
@available(tvOS 7.0, *)
let CBPeripheralManagerRestoredStateAdvertisementDataKey: String

/*!
 * @class CBService
 *
 * @discussion
 *      Represents a peripheral's service or a service's included service.
 *
 */
@available(tvOS 5.0, *)
class CBService : CBAttribute {

  /*!
   * @property peripheral
   *
   * @discussion
   *      A back-pointer to the peripheral this service belongs to.
   *
   */
  unowned(unsafe) var peripheral: @sil_unmanaged CBPeripheral { get }

  /*!
   * @property isPrimary
   *
   * @discussion
   *      The type of the service (primary or secondary).
   *
   */
  var isPrimary: Bool { get }

  /*!
   * @property includedServices
   *
   * @discussion
   *      A list of included CBServices that have so far been discovered in this service.
   *
   */
  var includedServices: [CBService]? { get }

  /*!
   * @property characteristics
   *
   * @discussion
   *      A list of CBCharacteristics that have so far been discovered in this service.
   *
   */
  var characteristics: [CBCharacteristic]? { get }
}

/*!
 * @class CBMutableService
 *
 * @discussion
 *      Used to create a local service or included service, which can be added to the local database via <code>CBPeripheralManager</code>.
 *		Once a service is published, it is cached and can no longer be changed. This class adds write access to all properties in the
 *		@link CBService @/link class.
 *
 */
@available(tvOS 6.0, *)
class CBMutableService : CBService {
  var includedServices: [CBService]?
  var characteristics: [CBCharacteristic]?
}

/*!
 *  @const CBUUIDCharacteristicExtendedPropertiesString
 *  @discussion The string representation of the UUID for the extended properties descriptor.
 *				The corresponding value for this descriptor is an <code>NSNumber</code> object.
 */
let CBUUIDCharacteristicExtendedPropertiesString: String

/*!
 *  @const CBUUIDCharacteristicUserDescriptionString
 *  @discussion The string representation of the UUID for the user description descriptor.
 *				The corresponding value for this descriptor is an <code>NSString</code> object.
 */
let CBUUIDCharacteristicUserDescriptionString: String

/*!
 *  @const CBUUIDClientCharacteristicConfigurationString
 *  @discussion The string representation of the UUID for the client configuration descriptor.
 *				The corresponding value for this descriptor is an <code>NSNumber</code> object.
 */
let CBUUIDClientCharacteristicConfigurationString: String

/*!
 *  @const CBUUIDServerCharacteristicConfigurationString
 *  @discussion The string representation of the UUID for the server configuration descriptor.
 *				The corresponding value for this descriptor is an <code>NSNumber</code> object.
 */
let CBUUIDServerCharacteristicConfigurationString: String

/*!
 *  @const CBUUIDCharacteristicFormatString
 *  @discussion The string representation of the UUID for the presentation format descriptor.
 *				The corresponding value for this descriptor is an <code>NSData</code> object.
 */
let CBUUIDCharacteristicFormatString: String

/*!
 *  @const CBUUIDCharacteristicAggregateFormatString
 *  @discussion The string representation of the UUID for the aggregate descriptor.
 */
let CBUUIDCharacteristicAggregateFormatString: String

/*!
 * @class CBUUID
 *
 * @discussion
 *      A 16-bit, 32-bit, or 128-bit Bluetooth UUID.
 *      16-bit and 32-bit UUIDs are implicitly pre-filled with the Bluetooth Base UUID.
 *
 */
@available(tvOS 5.0, *)
class CBUUID : NSObject, NSCopying {

  /*!
   * @property data
   *
   *  @discussion
   *      The UUID as NSData.
   *
   */
  var data: NSData { get }

  /*!
   * @property UUIDString
   *
   *  @discussion
   *      The UUID as NSString.
   *
   */
  @available(tvOS 7.1, *)
  var UUIDString: String { get }

  /*!
   * @method UUIDWithString:
   *
   *  @discussion
   *      Creates a CBUUID with a 16-bit, 32-bit, or 128-bit UUID string representation.
   *      The expected format for 128-bit UUIDs is a string punctuated by hyphens, for example 68753A44-4D6F-1226-9C60-0050E4C00067.
   *
   */
  /*not inherited*/ init(string theString: String)

  /*!
   * @method UUIDWithData:
   *
   *  @discussion
   *      Creates a CBUUID with a 16-bit, 32-bit, or 128-bit UUID data container.
   *
   */
  /*not inherited*/ init(data theData: NSData)

  /*!
   * @method UUIDWithCFUUID:
   *
   *  @discussion
   *      Creates a CBUUID with a CFUUIDRef.
   *
   */
  @available(tvOS, introduced=5.0, deprecated=9.0)
  /*not inherited*/ init(CFUUID theUUID: CFUUID)

  /*!
   * @method UUIDWithNSUUID:
   *
   *  @discussion
   *      Creates a CBUUID with a NSUUID.
   *
   */
  @available(tvOS 7.0, *)
  /*not inherited*/ init(NSUUID theUUID: NSUUID)
  init()
  @available(tvOS 5.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
