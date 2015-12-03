

/*!
 * @class
 *
 * @abstract
 * Represents an IEEE 802.11 channel.
 *
 * @discussion
 * The CWChannel class is used by both CWInterface and CWNetwork as a representation of an IEEE 802.11 Wi-Fi channel.
 */
@available(OSX 10.7, *)
class CWChannel : NSObject, NSCopying, NSSecureCoding {

  /*!
   * @property
   *
   * @abstract 
   * The channel number represented as an integer value.
   */
  @available(OSX 10.7, *)
  var channelNumber: Int { get }

  /*!
   * @property
   *
   * @abstract 
   * The channel width as indicated by the CWChannelWidth type.
   */
  @available(OSX 10.7, *)
  var channelWidth: CWChannelWidth { get }

  /*!
   * @property
   *
   * @abstract
   * The channel band as indicated by the CWChannelBand type.
   */
  @available(OSX 10.7, *)
  var channelBand: CWChannelBand { get }

  /*!
   * @method
   *
   * @param channel
   * The CWChannel with which to compare the receiver.
   *
   * @result 
   * YES if the objects are equal, otherwise NO.
   *
   * @abstract 
   * Determine CWChannel equality.
   *
   * @discussion 
   * CWChannel objects are considered equal if all their corresponding properties are equal.
   */
  @available(OSX 10.7, *)
  func isEqualToChannel(channel: CWChannel) -> Bool
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @class
 *
 * @abstract 
 * Encapsulates the system configuration for a given Wi-Fi interface.
 *
 * @discussion
 * The CWConfiguration class contains basic network configuration settings and also the list of preferred networks.
 * CWConfiguration is an immutable object. For changing configuration settings and/or the preferred networks list, see CWMutableConfiguration.
 */
@available(OSX 10.6, *)
class CWConfiguration : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

  /*!
   * @property
   *
   * @result
   * An NSOrderedSet of CWNetworkProfile objects.
   *
   * @abstract
   * Returns the preferred networks list.
   *
   * @discussion 
   * The order of the ordered set corresponds to the order the preferred networks list.
   */
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: NSOrderedSet { get }

  /*!
   * @property
   *
   * @result
   * YES if the preference is enabled, NO otherwise.
   *
   * @abstract 
   * Returns the preference to require an administrator password to change networks.
   *
   * @discussion
   * If YES, the user may be prompted to enter an administrator password upon attempting to join a Wi-Fi network.
   * This preference is enforced at the API layer.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForAssociation: Bool { get }

  /*!
   * @property
   *
   * @result
   * YES if the preference is enabled, NO otherwise.
   *
   * @abstract 
   * Returns the preference to require an administrator password to change the interface power state.
   *
   * @discussion
   * If YES, the user may be prompted to enter an administrator password upon attempting to turn Wi-Fi on or off.
   * This preference is enforced at the API layer.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForPower: Bool { get }

  /*!
   * @property
   *
   * @result
   * YES if the preference is enabled, NO otherwise.
   *
   * @abstract
   * Returns the preference to require an administrator password to create a computer-to-computer network.
   *
   * @discussion
   * If YES, the user may be prompted to enter an administrator password upon attempting to create an IBSS network.
   * This preference is enforced at the API layer.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForIBSSMode: Bool { get }

  /*!
   * @property
   *
   * @result
   * YES if the preference is enabled, NO otherwise.
   *
   * @abstract
   * Returns the preference to remember all Wi-Fi networks joined unless otherwise specified by the user when joining a particular Wi-Fi network.
   */
  @available(OSX 10.7, *)
  var rememberJoinedNetworks: Bool { get }

  /*!
   * @method
   *
   * @abstract 
   * Initializes a CWConfiguration object.
   */
  @available(OSX 10.6, *)
  init()

  /*!
   * @method
   *
   * @param configuration 
   * A CWConfiguration object.
   *
   * @result 
   * A CWConfiguration object.
   *
   * @abstract 
   * Initializes a CWConfiguration object with the properties of an existing CWConfiguration object.
   */
  @available(OSX 10.7, *)
  init(configuration: CWConfiguration)

  /*!
   * @method
   *
   * @param configuration 
   * The CWConfiguration with which to compare the receiver.
   *
   * @result 
   * YES if the objects are equal, NO otherwise.
   *
   * @abstract 
   * Determine CWConfiguration equality.
   *
   * @discussion 
   * CWConfiguration objects are considered equal if all their corresponding properties are equal.
   */
  @available(OSX 10.6, *)
  func isEqualToConfiguration(configuration: CWConfiguration) -> Bool
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @class
 *
 * @abstract
 * Mutable subclass of CWConfiguration.  Use this class for changing configuration settings and/or the preferred networks list.
 *
 * @discussion
 * To commit configuration changes, use -[CWInterface commitConfiguration:authorization:error:].
 */
@available(OSX 10.6, *)
class CWMutableConfiguration : CWConfiguration {

  /*!
   * @property
   *
   * @abstract
   * Add, remove, or update the preferred networks list.
   */
  @available(OSX 10.7, *)
  @NSCopying var networkProfiles: NSOrderedSet

  /*!
   * @property
   *
   * @abstract
   * Set the preference to require an administrator password to change networks.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForAssociation: Bool

  /*!
   * @property
   *
   * @abstract
   * Set the preference to require an administrator password to change the interface power state.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForPower: Bool

  /*!
   * @property
   *
   * @abstract
   * Set the preference to require an administrator password to change networks.
   */
  @available(OSX 10.7, *)
  var requireAdministratorForIBSSMode: Bool

  /*!
   * @property
   *
   * @abstract
   * Set the preference to require an administrator password to create a computer-to-computer network.
   */
  @available(OSX 10.7, *)
  var rememberJoinedNetworks: Bool

  /*!
   * @method
   *
   * @abstract 
   * Initializes a CWConfiguration object.
   */
  @available(OSX 10.6, *)
  init()

  /*!
   * @method
   *
   * @param configuration 
   * A CWConfiguration object.
   *
   * @result 
   * A CWConfiguration object.
   *
   * @abstract 
   * Initializes a CWConfiguration object with the properties of an existing CWConfiguration object.
   */
  @available(OSX 10.7, *)
  init(configuration: CWConfiguration)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @class
 *
 * @abstract 
 * Control and query a Wi-Fi interface on OS X.
 *
 * @discussion 
 * All actions performed by a CWInterface object are executed on the Wi-Fi device with the corresponding interface name.
 */
@available(OSX 10.6, *)
class CWInterface : NSObject {

  /*!
   * @property
   *
   * @abstract 
   * Returns the BSD name of the Wi-Fi interface (e.g. "en0").
   */
  @available(OSX 10.7, *)
  var interfaceName: String? { get }

  /*!
   * @method
   *
   * @result
   * YES if the Wi-Fi interface is on, NO otherwise.
   *
   * @abstract 
   * Indicates the Wi-Fi interface power state.
   *
   * @discussion 
   * Returns NO if an error occurs.
   */
  @available(OSX 10.7, *)
  func powerOn() -> Bool

  /*!
   * @method
   *
   * @result
   * An NSSet of CWChannel objects.
   *
   * @abstract 
   * Returns the set of channels supported by the Wi-Fi interface for the currently adopted country code.
   *
   * @discussion
   * Returns nil if an error occurs.
   */
  @available(OSX 10.7, *)
  func supportedWLANChannels() -> Set<CWChannel>?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current channel of the Wi-Fi interface.
   *
   * @discussion 
   * Returns nil if an error occurs.
   */
  @available(OSX 10.7, *)
  func wlanChannel() -> CWChannel?

  /*!
   * @method
   *
   * @abstract 
   * Returns the currently active physical layer (PHY) mode of the Wi-Fi interface.
   *
   * @discussion 
   * Returns kCWPHYModeNone if an error occurs.
   */
  @available(OSX 10.7, *)
  func activePHYMode() -> CWPHYMode

  /*!
   * @method
   *
   * @abstract 
   * Returns the current service set identifier (SSID) of the Wi-Fi interface, encoded as a string.
   *
   * @discussion 
   * Returns nil if an error occurs, or if the interface is not participating in a Wi-Fi network,
   * or if the SSID can not be encoded as a valid UTF-8 or WinLatin1 string.
   */
  @available(OSX 10.6, *)
  func ssid() -> String?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current service set identifier (SSID) for the interface, encapsulated in an NSData object.
   *
   * @discussion 
   * Returns nil if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func ssidData() -> NSData?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current basic service set identifier (BSSID) of the Wi-Fi interface, returned as an UTF-8 string.
   *
   * @discussion 
   * Returns a UTF-8 string using hexadecimal characters formatted as XX:XX:XX:XX:XX:XX.
   * Returns nil if an error occurred, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.6, *)
  func bssid() -> String?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current received signal strength indication (RSSI) measurement (dBm) for the Wi-Fi interface.
   *
   * @discussion 
   * Returns 0 if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func rssiValue() -> Int

  /*!
   * @method
   *
   * @abstract 
   * Returns the current noise measurement (dBm) for the Wi-Fi interface.
   *
   * @discussion 
   * Returns 0 if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func noiseMeasurement() -> Int

  /*!
   * @method
   *
   * @abstract 
   * Returns the current security type of the Wi-Fi interface.
   *
   * @discussion 
   * Returns kCWSecurityUnknown if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func security() -> CWSecurity

  /*!
   * @method
   *
   * @abstract 
   * Returns the current transmit rate (Mbps) for the Wi-Fi interface.
   *
   * @discussion 
   * Returns 0 if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func transmitRate() -> Double

  /*!
   * @method
   *
   * @abstract 
   * Returns the currently adopted country code (ISO/IEC 3166-1:1997) for the Wi-Fi interface.
   *
   * @discussion 
   * Returns nil if an error occurs, or if the Wi-Fi interface is off.
   */
  @available(OSX 10.6, *)
  func countryCode() -> String?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current operating mode for the Wi-Fi interface.
   *
   * @discussion
   * Returns kCWInterfaceModeNone if an error occurs, or if the interface is not participating in a Wi-Fi network.
   */
  @available(OSX 10.7, *)
  func interfaceMode() -> CWInterfaceMode

  /*!
   * @method
   *
   * @abstract 
   * Returns the current transmit power (mW) for the Wi-Fi interface.
   *
   * @discussion 
   * Returns 0 if an error occurs.
   */
  @available(OSX 10.7, *)
  func transmitPower() -> Int

  /*!
   * @method
   *
   * @abstract 
   * Returns the hardware media access control (MAC) address for the Wi-Fi interface, returned as an UTF-8 string.
   *
   * @discussion 
   * The standard format for printing a MAC-48 address XX:XX:XX:XX:XX:XX is used to represent
   * the MAC address as a string. 
   * Returns nil if an error occurs.
   */
  @available(OSX 10.7, *)
  func hardwareAddress() -> String?

  /*!
   * @method
   *
   * @result
   * YES if the corresponding network service is active, NO otherwise.
   *
   * @abstract 
   * Indicates the network service state of the Wi-Fi interface.
   *
   * @discussion 
   * Returns NO if an error occurs.
   */
  @available(OSX 10.7, *)
  func serviceActive() -> Bool

  /*!
   * @method
   *
   * @result
   * An NSSet of CWNetwork objects.
   *
   * @abstract 
   * Returns the scan results currently in the scan cache for the Wi-Fi interface.
   *
   * @discussion 
   * Returns nil if an error occurs.
   */
  @available(OSX 10.7, *)
  func cachedScanResults() -> Set<CWNetwork>?

  /*!
   * @method
   *
   * @abstract 
   * Returns the current configuration for the Wi-Fi interface.
   *
   * @discussion
   * Returns nil if an error occurs.
   */
  @available(OSX 10.6, *)
  func configuration() -> CWConfiguration?

  /*!
   * @method 
   *
   * @result
   * An NSSet of NSString objects.
   *
   * @abstract 
   * Returns the list of available Wi-Fi interface names (e.g. "en0").
   *
   * @discussion 
   * Returns an empty NSArray object if no Wi-Fi interfaces exist.
   * Returns nil if an error occurs.
   */
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use +[CWWiFiClient interfaceNames] instead")
  class func interfaceNames() -> Set<String>?

  /*!
   * @method
   *
   * @param name 
   * The name of an available Wi-Fi interface.
   *
   * @abstract 
   * Convenience method for getting a CWInterface object bound to the Wi-Fi interface with a specific interface name.
   *
   * @discussion 
   * Use +[CWInterface interfaceNames] to get a list of available Wi-Fi interface names.
   * Returns a CWInterface object for the default Wi-Fi interface if no interface name is specified.
   */
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient interfaceWithName:] instead")
  convenience init(name: String)

  /*!
   * @method
   *
   * @param name
   * The name of an available Wi-Fi interface.
   *
   * @abstract
   * Initializes a CWInterface object, binding to the Wi-Fi interface with a specific interface name.
   *
   * @discussion
   * Use +[CWInterface interfaceNames] to get a list of available Wi-Fi interface names.
   * Returns a CWInterface object for the default Wi-Fi interface if no interface name is specified.
   */
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient interfaceWithName:] instead")
  init(interfaceName name: String)

  /*!
   * @method
   *
   * @param power 
   * A BOOL value indicating Wi-Fi power state. Specify YES to turn on the Wi-Fi interface.
   *
   * @param error 
   * An NSError object passed by reference, which upon return will contain the error if an error occurs. 
   * This parameter is optional.
   *
   * @result 
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Sets the Wi-Fi interface power state.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.set_power</i> entitlement.
   */
  @available(OSX 10.6, *)
  func setPower(power: Bool) throws

  /*!
   * @method
   *
   * @param channel
   * A CWChannel object.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Sets the Wi-Fi interface channel.
   *
   * @discussion 
   * Setting the channel while the interface is associated to a Wi-Fi network is not permitted.
   * Requires the <i>com.apple.wifi.set_channel</i> entitlement.
   */
  @available(OSX 10.7, *)
  func setWLANChannel(channel: CWChannel) throws

  /*!
   * @method
   *
   * @param key 
   * An NSData object containing the pairwise master key (PMK).
   * Passing nil clear the PMK for the Wi-Fi interface.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Sets the Wi-Fi interface pairwise master key (PMK).
   *
   * @discussion 
   * The specified key must be exactly 32 octets. 
   * Requires the <i>com.apple.wifi.set_pmk</i> entitlement.
   */
  @available(OSX 10.6, *)
  func setPairwiseMasterKey(key: NSData?) throws

  /*!
   * @method
   *
   * @param key 
   * An NSData object containing the WEP key.
   * Passing nil clears the WEP key for the Wi-Fi interface.
   *
   * @param flags 
   * A bitmask indicating which CWCipherKeyFlags to use for the specified WEP key.
   *
   * @param index 
   * An NSInteger indicating which default key index (1-4) to use for the specified key.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Sets the Wi-Fi interface WEP key.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.set_wep_key</i> entitlement.
   */
  @available(OSX 10.6, *)
  func setWEPKey(key: NSData?, flags: CWCipherKeyFlags, index: Int) throws

  /*!
   * @method
   *
   * @param ssid
   * Probe request SSID.  
   * Pass an SSID to perform a directed scan for hidden Wi-Fi networks.
   * This parameter is optional.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * An NSSet of CWNetwork objects, or nil if an error occurs.
   *
   * @abstract 
   * Performs a scan for Wi-Fi networks and returns scan results to the caller.
   *
   * @discussion 
   * This method will block for the duration of the scan.
   * Requires the <i>com.apple.wifi.scan</i> entitlement.
   */
  @available(OSX 10.7, *)
  func scanForNetworksWithSSID(ssid: NSData?) throws -> Set<CWNetwork>

  /*!
   * @method
   *
   * @param networkName
   * Probe request SSID, encoded as an UTF-8 string.
   * Pass a networkName to perform a directed scan for hidden Wi-Fi networks.
   * This parameter is optional.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * An NSSet of CWNetwork objects, or nil if an error occurs.
   *
   * @abstract
   * Performs a scan for Wi-Fi networks and returns scan results to the caller.
   *
   * @discussion
   * This method will block for the duration of the scan.
   * Requires the <i>com.apple.wifi.scan</i> entitlement.
   */
  @available(OSX 10.7, *)
  func scanForNetworksWithName(networkName: String?) throws -> Set<CWNetwork>

  /*!
   * @method
   *
   * @param network
   * The network to which the Wi-Fi interface will associate.
   *
   * @param password
   * The network passphrase or key. Required for association to WEP, WPA Personal, and WPA2 Personal networks.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Associates to a W-Fi network using the specified passphrase.
   *
   * @discussion 
   * This method will block for the duration of the association.
   * Requires the <i>com.apple.wifi.associate</i> entitlement.
   */
  @available(OSX 10.7, *)
  func associateToNetwork(network: CWNetwork, password: String?) throws

  /*!
   * @method
   *
   * @abstract 
   * Disassociates from the current Wi-Fi network.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.associate</i> entitlement.
   */
  @available(OSX 10.6, *)
  func disassociate()

  /*!
   * @method
   *
   * @param network
   * The network to which the Wi-Fi interface will associate.
   *
   * @param username 
   * The username to use for 802.1X authentication.
   *
   * @param password 
   * The password to use for 802.1X authentication.
   *
   * @param identity 
   * The identity to use for IEEE 802.1X authentication. Holds the corresponding client certificate.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract
   * Associates to an enterprise W-Fi network using the specified 802.1X credentials.
   *
   * @discussion
   * This method will block for the duration of the association.
   * Requires the <i>com.apple.wifi.associate</i> entitlement.
   */
  @available(OSX 10.7, *)
  func associateToEnterpriseNetwork(network: CWNetwork, identity: SecIdentity?, username: String?, password: String?) throws

  /*!
   * @method
   *
   * @param ssidData
   * The SSID to use for the IBSS network.
   * Pass nil to use the machine name as the IBSS network name.
   *
   * @param security 
   * The CWIBSSModeSecurity type.
   *
   * @param channel 
   * The channel on which the IBSS network will be created.
   *
   * @param password 
   * The password to be used. This paramter is required for kCWIBSSModeSecurityWEP40 or kCWIBSSModeSecurityWEP104 security types.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract
   * Creates a computer-to-computer (IBSS) network.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.ibss</i> entitlement.
   */
  @available(OSX 10.7, *)
  func startIBSSModeWithSSID(ssidData: NSData, security: CWIBSSModeSecurity, channel: Int, password: String?) throws
  init()
}

/*!
 * @class
 *
 * @abstract 
 * Represents a device participating in a Wi-Fi network, providing accessors to various network attributes.
 */
@available(OSX 10.6, *)
class CWNetwork : NSObject, NSCopying, NSSecureCoding {

  /*!
   * @property
   *
   * @abstract
   * Returns the service set identifier (SSID) for the Wi-Fi network device, encoded as a string.
   *
   * @discussion
   * Returns nil if the SSID can not be encoded as a valid UTF-8 or WinLatin1 string.
   */
  @available(OSX 10.6, *)
  var ssid: String? { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the service set identifier (SSID) for the Wi-Fi network device, encapsulated in an NSData object.
   *
   * @discussion
   * The SSID is defined as 1-32 octets.
   */
  @available(OSX 10.7, *)
  var ssidData: NSData? { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the basic service set identifier (BSSID) for the Wi-Fi network device, returned as UTF-8 string.
   *
   * @discussion
   * Returns a UTF-8 string using hexadecimal characters formatted as XX:XX:XX:XX:XX:XX.
   */
  @available(OSX 10.6, *)
  var bssid: String? { get }

  /*!
   * @property
   *
   * @abstract 
   * The operating channel of the Wi-Fi device.
   */
  @available(OSX 10.7, *)
  var wlanChannel: CWChannel { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the received signal strength indication (RSSI) measurement (dBm) for the Wi-Fi device.
   */
  @available(OSX 10.7, *)
  var rssiValue: Int { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the noise measurement (dBm) for the Wi-Fi device.
   */
  @available(OSX 10.7, *)
  var noiseMeasurement: Int { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns information element data included in beacon or probe response frames.
   */
  @available(OSX 10.7, *)
  var informationElementData: NSData? { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the advertised country code (ISO/IEC 3166-1:1997) for the Wi-Fi device.
   */
  @available(OSX 10.7, *)
  var countryCode: String? { get }

  /*!
   * @property
   *
   * @abstract
   * Returns the beacon interval (ms) for the Wi-Fi device.
   */
  @available(OSX 10.7, *)
  var beaconInterval: Int { get }

  /*!
   * @property
   *
   * @result
   * YES if the Wi-Fi device is part of an IBSS network, NO otherwise.
   *
   * @abstract
   * Indicates whether or not the Wi-Fi device is participating in an independent basic service set (IBSS), or ad-hoc Wi-Fi network.
   */
  @available(OSX 10.7, *)
  var ibss: Bool { get }

  /*!
   * @method
   *
   * @param network 
   * A CWNetwork object.
   *
   * @result
   * YES if the objects are equal, NO otherwise.
   *
   * @abstract 
   * Determine CWNetwork equality.
   *
   * @discussion
   * CWNetwork objects are considered equal if their corresponding <i>ssidData</i> and <i>bssid</i> properties are equal.
   */
  @available(OSX 10.6, *)
  func isEqualToNetwork(network: CWNetwork) -> Bool

  /*!
   * @method
   *
   * @param security
   * A CWSecurity type value.
   *
   * @result
   * <i>YES</i> if the Wi-Fi device supports the specified security type, <i>NO</i> otherwise.
   *
   * @abstract 
   * Determine which security types a Wi-Fi device supports.
   */
  @available(OSX 10.7, *)
  func supportsSecurity(security: CWSecurity) -> Bool

  /*!
   * @method
   *
   * @param phyMode
   * A CWPHYMode type value.
   *
   * @result 
   * YES if the Wi-Fi device supports the specified PHY mode, NO otherwise.
   *
   * @abstract
   * Determine which PHY modes a Wi-Fi device supports.
   */
  @available(OSX 10.8, *)
  func supportsPHYMode(phyMode: CWPHYMode) -> Bool
  init()
  @available(OSX 10.6, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @class
 *
 * @abstract 
 * Encapsulates a preferred network entry.
 */
@available(OSX 10.7, *)
class CWNetworkProfile : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

  /*!
   * @property
   *
   * @abstract 
   * Returns the service set identifier (SSID) for the Wi-Fi network profile, encoded as a string.
   *
   * @discussion 
   * Returns nil if the SSID can not be encoded as a valid UTF-8 or WinLatin1 string.
   */
  @available(OSX 10.7, *)
  var ssid: String? { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the service set identifier (SSID) for the Wi-Fi network profile, encapsulated in an NSData object.
   *
   * @discussion
   * The SSID is 1-32 octets.
   */
  @available(OSX 10.7, *)
  @NSCopying var ssidData: NSData? { get }

  /*!
   * @property
   *
   * @abstract 
   * Returns the security type of the Wi-Fi network profile.
   */
  @available(OSX 10.7, *)
  var security: CWSecurity { get }

  /*!
   * @method
   *
   * @abstract 
   * Initializes a CWNetworkProfile object.
   */
  @available(OSX 10.7, *)
  init()

  /*!
   * @method
   *
   * @param networkProfile 
   * A CWNetworkProfile object.
   *
   * @result 
   * A CWNetworkProfile object.
   *
   * @abstract 
   * Initializes a CWNetworkProfile object with the properties of an existing CWNetworkProfile object.
   */
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)

  /*!
   * @method
   *
   * @param network
   * A CWNetworkProfile object.
   *
   * @result
   * YES if the objects are equal, NO otherwise.
   *
   * @abstract
   * Determine CWNetworkProfile equality.
   *
   * @discussion
   * CWNetworkProfile objects are considered equal if their corresponding <i>ssidData</i> and <i>security</i> properties are equal.
   */
  @available(OSX 10.7, *)
  func isEqualToNetworkProfile(networkProfile: CWNetworkProfile) -> Bool
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.7, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @class
 *
 * @abstract
 * Mutable subclass of CWNetworkProfile.  Use this class for changing profile properties.
 *
 * @discussion
 * To commit Wi-Fi network profile changes, use -[CWMutableConfiguration setNetworkProfiles:] and 
 * -[CWInterface commitConfiguration:authorization:error:].
 */
@available(OSX 10.7, *)
class CWMutableNetworkProfile : CWNetworkProfile {

  /*!
   * @property
   *
   * @abstract
   * Set the service set identifier (SSID).
   */
  @available(OSX 10.7, *)
  @NSCopying var ssidData: NSData

  /*!
   * @property
   *
   * @abstract
   * Set the security type.
   */
  @available(OSX 10.7, *)
  var security: CWSecurity

  /*!
   * @method
   *
   * @abstract 
   * Initializes a CWNetworkProfile object.
   */
  @available(OSX 10.7, *)
  init()

  /*!
   * @method
   *
   * @param networkProfile 
   * A CWNetworkProfile object.
   *
   * @result 
   * A CWNetworkProfile object.
   *
   * @abstract 
   * Initializes a CWNetworkProfile object with the properties of an existing CWNetworkProfile object.
   */
  @available(OSX 10.7, *)
  init(networkProfile: CWNetworkProfile)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @protocol
 *
 * @abstract 
 * Receive Wi-Fi event notifications.
 */
protocol CWEventDelegate {

  /*!
   * @method
   *
   * @abstract
   * Invoked if the connection to the Wi-Fi subsystem is temporarily interrupted.
   *
   * @discussion
   * All event notifications for which the Wi-Fi client has registered will be automatically re-registered if 
   * the connection is interrupted.  
   * The Wi-Fi client should re-sync any local state which is updated as a result of Wi-Fi event notifications.
   */
  optional func clientConnectionInterrupted()

  /*!
   * @method
   *
   * @abstract
   * Invoked if the connection to the Wi-Fi subsystem is permanently invalidated.
   */
  optional func clientConnectionInvalidated()

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the Wi-Fi power state changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypePowerDidChange event type
   * to register for power event notifications.
   * Use -[CWInterface powerOn] to query the current Wi-Fi power state.
   */
  optional func powerStateDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the current SSID changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeSSIDDidChange event type
   * to register for SSID event notifications.
   * Use -[CWInterface ssidData] or -[CWInterface ssid] to query the current SSID.
   */
  optional func ssidDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the current BSSID changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeBSSIDDidChange event type
   * to register for BSSID event notifications.
   * Use -[CWInterface bssid] to query the current BSSID.
   */
  optional func bssidDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the currently adopted country code changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeCountryCodeDidChange event type 
   * to register for country code event notifications.
   * Use -[CWInterface countryCode] to query the currently adopted country code.
   */
  optional func countryCodeDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the Wi-Fi link state changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkDidChange event type
   * to register for link event notifications.
   */
  optional func linkDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @param rssi
   * The RSSI value for the currently associated network on the Wi-Fi interface.
   *
   * @param transmitRate
   * The transmit rate for the currently associated network on the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the Wi-Fi link quality changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type
   * to register for link quality event notifications.
   * Use -[CWInterface rssiValue] and -[CWInterface transmitRate] to query the current RSSI and transmit rate, respectively.
   */
  optional func linkQualityDidChangeForWiFiInterfaceWithName(interfaceName: String, rssi: Int, transmitRate: Double)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the Wi-Fi operating mode changes.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeModeDidChange event type
   * to register for interface mode event notifications.
   * Use -[CWInterface interfaceMode] to query the current operating mode.
   */
  optional func modeDidChangeForWiFiInterfaceWithName(interfaceName: String)

  /*!
   * @method
   *
   * @param interfaceName
   * The name of the Wi-Fi interface.
   *
   * @abstract
   * Invoked when the Wi-Fi interface scan cache is updated with new scan results.
   *
   * @discussion
   * Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeScanCacheUpdated event type
   * to register for scan cache event notifications.
   * Use -[CWInterface cachedScanResults] to query scan cache results from the last scan.
   */
  optional func scanCacheUpdatedForWiFiInterfaceWithName(interfaceName: String)
}

/*!
 * @class
 *
 * @abstract
 * The interface to the Wi-Fi subsystem on OS X.
 * 
 * @discussion 
 * Provides access to all Wi-Fi interfaces and allows Wi-Fi clients to setup event notifications.
 * 
 * CWWiFiClient objects are heavy objects, therefore, clients of the CoreWLAN framework should use a single, 
 * long-running instance rather than creating several short-lived instances.  
 * For convenience, +[CWWiFiClient sharedWiFiClient] can be used to return a singleton instance.
 *
 * The CWWiFiClient object should be used to instantiate CWInterface objects rather than using a CWInterface
 * initializer directly.
 */
@available(OSX 10.10, *)
class CWWiFiClient : NSObject {

  /*!
   * @property
   *
   * @abstract
   * Sets the delegate to the specified object, which may implement CWWiFiEventDelegate protocol for Wi-Fi event handling.
   *
   * @discussion
   * Clients may register for specific Wi-Fi events using -[CWWiFiClient startMonitoringEventWithType:error:].
   */
  @available(OSX 10.10, *)
  weak var delegate: @sil_weak AnyObject?

  /*!
   * @method
   *
   * @abstract 
   * Returns the shared CWWiFiClient instance. There is a single shared instance per process.
   */
  @available(OSX 10.10, *)
  class func sharedWiFiClient() -> CWWiFiClient

  /*!
   * @method
   *
   * @abstract
   * Initializes a CWWiFiClient object.
   */
  @available(OSX 10.10, *)
  init?()

  /*!
   * @method
   *
   * @abstract
   * Returns the CWInterface object for the default Wi-Fi interface.
   */
  @available(OSX 10.10, *)
  func interface() -> CWInterface?

  /*!
   * @method
   *
   * @result 
   * An NSArray of NSString objects corresponding to Wi-Fi interface names.
   *
   * @abstract
   * Returns the list of available Wi-Fi interface names (e.g. "en0").
   *
   * @discussion
   * If no Wi-Fi interfaces are available, this method will return an empty array.
   * Returns nil if an error occurs.
   */
  @available(OSX 10.10, *)
  class func interfaceNames() -> [String]?

  /*!
   * @method
   *
   * @param interfaceName
   * The name of an available Wi-Fi interface.
   *
   * @abstract
   * Get the CWInterface object bound to the Wi-Fi interface with a specific interface name.
   *
   * @discussion
   * Use +[CWWiFiClient interfaceNames] to get a list of available Wi-Fi interface names.
   * Returns a CWInterface object for the default Wi-Fi interface if no interface name is specified.
   */
  @available(OSX 10.10, *)
  func interfaceWithName(interfaceName: String?) -> CWInterface?

  /*!
   * @method
   *
   * @result 
   * An NSArray of CWInterface objects.
   *
   * @abstract 
   * Returns all available Wi-Fi interfaces.
   *
   * @discussion 
   * If no Wi-Fi interfaces are available, this method will return an empty array.
   * Returns nil if an error occurs.
   */
  @available(OSX 10.10, *)
  func interfaces() -> [CWInterface]?

  /*!
   * @method
   *
   * @param type
   * A CWEventType value.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract 
   * Register for specific Wi-Fi event notifications.
   * 
   * @discussion
   * Requires the <i>com.apple.wifi.events</i> entitlement.
   */
  @available(OSX 10.10, *)
  func startMonitoringEventWithType(type: CWEventType) throws

  /*!
   * @method
   *
   * @param type
   * A CWEventType value.
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract
   * Unregister for specific Wi-Fi event notifications.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.events</i> entitlement.
   */
  @available(OSX 10.10, *)
  func stopMonitoringEventWithType(type: CWEventType) throws

  /*!
   * @method
   *
   * @param error
   * An NSError object passed by reference, which upon return will contain the error if an error occurs.
   * This parameter is optional.
   *
   * @result
   * A BOOL value indicating whether or not an error occurred. YES indicates no error occurred.
   *
   * @abstract
   * Unregister for all Wi-Fi event notifications.
   *
   * @discussion
   * Requires the <i>com.apple.wifi.events</i> entitlement.
   */
  @available(OSX 10.10, *)
  func stopMonitoringAllEvents() throws
}

/*!
 * @constant CWErrorDomain
 *
 * @abstract 
 * Error domain corresponding to the CWErr type.
 */
@available(OSX 10.7, *)
let CWErrorDomain: String

/*!
 * @constant CWPowerDidChangeNotification
 *
 * @abstract
 * Posted when the power state of the Wi-Fi interface changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypePowerDidChange event type")
let CWPowerDidChangeNotification: String

/*!
 * @constant CWSSIDDidChangeNotification
 *
 * @abstract
 * Posted when the SSID of the Wi-Fi interface changes.
 *
 * @discussion 
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeSSIDDidChange event type")
let CWSSIDDidChangeNotification: String

/*!
 * @constant CWBSSIDDidChangeNotification
 *
 * @abstract
 * Posted when the BSSID of the Wi-Fi interface changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeBSSIDDidChange event type")
let CWBSSIDDidChangeNotification: String

/*!
 * @constant CWLinkDidChangeNotification
 *
 * @abstract
 * Posted when the link of the Wi-Fi interface changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkDidChange event type")
let CWLinkDidChangeNotification: String

/*!
 * @constant CWModeDidChangeNotification
 *
 * @abstract
 * Posted when the operating mode of the Wi-Fi interface changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeModeDidChange event type")
let CWModeDidChangeNotification: String

/*!
 * @constant CWCountryCodeDidChangeNotification
 *
 * @abstract
 * Posted when the adopted country code of the Wi-Fi interface changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeCountryCodeDidChange event type")
let CWCountryCodeDidChangeNotification: String

/*!
 * @constant CWScanCacheDidUpdateNotification
 *
 * @abstract
 * Posted when the scan cache of the Wi-Fi interface is updated with new scan results.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.7, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeScanCacheUpdated event type")
let CWScanCacheDidUpdateNotification: String

/*!
 * @constant CWLinkQualityDidChangeNotification
 *
 * @abstract
 * Posted when the link quality of the current Wi-Fi association changes.
 *
 * @discussion
 * The <i>object</i> for this notification is the corresponding Wi-Fi interface name.
 * This notification does not contain a <i>userInfo</i> dictionary.
 */
@available(OSX, introduced=10.7, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
let CWLinkQualityDidChangeNotification: String

/*!
 * @constant CWLinkQualityNotificationRSSIKey
 *
 * @abstract
 * NSNumber containing the current RSSI value for the Wi-Fi interface.
 *
 * @discussion
 * Found in the <i>userInfo</i> dictionary for the <i>CWLinkQualityChangedNotification</i>.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
let CWLinkQualityNotificationRSSIKey: String

/*!
 * @constant CWLinkQualityNotificationTransmitRateKey
 *
 * @abstract
 * NSNumber containing the current transmit rate for the Wi-Fi interface.
 *
 * @discussion
 * Found in the <i>userInfo</i> dictionary for the <i>CWLinkQualityChangedNotification</i>.
 */
@available(OSX, introduced=10.6, deprecated=10.10, message="Use -[CWWiFiClient startMonitoringEventWithType:error:] with the CWEventTypeLinkQualityDidChange event type")
let CWLinkQualityNotificationTransmitRateKey: String

/*!
 * @typedef CWErr
 *
 * @abstract Error codes corresponding to the CWErrorDomain domain.
 *
 * @constant kCWNoErr
 * Success.
 *
 * @constant kCWEAPOLErr
 * EAPOL-related error.
 *
 * @constant kCWInvalidParameterErr
 * Parameter error.
 *
 * @constant kCWNoMemoryErr
 * Memory allocation failed.
 *
 * @constant kCWUnknownErr
 * Unexpected error condition encountered for which no error code exists.
 *
 * @constant kCWNotSupportedErr
 * Operation not supported.
 *
 * @constant kCWInvalidFormatErr
 * Invalid protocol element field detected.
 *
 * @constant kCWTimeoutErr 
 * Operation timed out.
 *
 * @constant kCWUnspecifiedFailureErr 
 * Access point did not specify a reason for authentication/association failure.
 *
 * @constant kCWUnsupportedCapabilitiesErr
 * Access point cannot support all requested capabilities.
 *
 * @constant kCWReassociationDeniedErr
 * Reassociation was denied because the access point was unable to determine that an association exists.
 *
 * @constant kCWAssociationDeniedErr
 * Association was denied for an unspecified reason.
 *
 * @constant kCWAuthenticationAlgorithmUnsupportedErr
 * Specified authentication algorithm is not supported.
 *
 * @constant kCWInvalidAuthenticationSequenceNumberErr 
 * Authentication frame received with an authentication sequence number out of expected sequence.
 *
 * @constant kCWChallengeFailureErr
 * Authentication was rejected because of a challenge failure.
 *
 * @constant kCWAPFullErr
 * Access point is unable to handle another associated station.
 *
 * @constant kCWUnsupportedRateSetErr
 * Interface does not support all of the rates in the basic rate set of the access point.
 *
 * @constant kCWShortSlotUnsupportedErr
 * Association denied because short slot time option is not supported by requesting station.
 *
 * @constant kCWDSSSOFDMUnsupportedErr
 * Association denied because DSSS-OFDM is not supported by requesting station.
 *
 * @constant kCWInvalidInformationElementErr
 * Invalid information element included in association request.
 *
 * @constant kCWInvalidGroupCipherErr
 * Invalid group cipher requested.
 *
 * @constant kCWInvalidPairwiseCipherErr
 * Invalid pairwise cipher requested.
 *
 * @constant kCWInvalidAKMPErr 
 * Invalid authentication selector requested.
 *
 * @constant kCWUnsupportedRSNVersionErr 
 * Invalid WPA/WPA2 version specified.
 *
 * @constant kCWInvalidRSNCapabilitiesErr 
 * Invalid RSN capabilities specified in association request.
 *
 * @constant kCWCipherSuiteRejectedErr 
 * Cipher suite rejected due to network security policy.
 *
 * @constant kCWInvalidPMKErr 
 * PMK rejected by the access point.
 *
 * @constant kCWSupplicantTimeoutErr 
 * WPA/WPA2 handshake timed out.
 *
 * @constant kCWHTFeaturesNotSupportedErr 
 * Association was denied because the requesting station does not support HT features.
 *
 * @constant kCWPCOTransitionTimeNotSupportedErr
 * Association was denied because the requesting station does not support the PCO transition time required by the AP.
 *
 * @constant kCWReferenceNotBoundErr 
 * No interface is bound to the CWInterface object.
 *
 * @constant kCWIPCFailureErr 
 * Error communicating with a separate process.
 *
 * @constant kCWOperationNotPermittedErr 
 * Calling process does not have permission to perform this operation.
 *
 * @constant kCWErr 
 * Generic error, no specific error code exists to describe the error condition.
 */
@available(OSX 10.6, *)
enum CWErr : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CWNoErr
  case CWEAPOLErr
  case CWInvalidParameterErr
  case CWNoMemoryErr
  case CWUnknownErr
  case CWNotSupportedErr
  case CWInvalidFormatErr
  case CWTimeoutErr
  case CWUnspecifiedFailureErr
  case CWUnsupportedCapabilitiesErr
  case CWReassociationDeniedErr
  case CWAssociationDeniedErr
  case CWAuthenticationAlgorithmUnsupportedErr
  case CWInvalidAuthenticationSequenceNumberErr
  case CWChallengeFailureErr
  case CWAPFullErr
  case CWUnsupportedRateSetErr
  case CWShortSlotUnsupportedErr
  case CWDSSSOFDMUnsupportedErr
  case CWInvalidInformationElementErr
  case CWInvalidGroupCipherErr
  case CWInvalidPairwiseCipherErr
  case CWInvalidAKMPErr
  case CWUnsupportedRSNVersionErr
  case CWInvalidRSNCapabilitiesErr
  case CWCipherSuiteRejectedErr
  case CWInvalidPMKErr
  case CWSupplicantTimeoutErr
  case CWHTFeaturesNotSupportedErr
  case CWPCOTransitionTimeNotSupportedErr
  case CWReferenceNotBoundErr
  case CWIPCFailureErr
  case CWOperationNotPermittedErr
  case CWErr
}

/*!
 * @typedef CWPHYMode
 *
 * @abstract Type describing the IEEE 802.11 physical layer mode.
 *
 * @constant kCWPHYModeNone 
 *
 * @constant kCWPHYMode11a 
 * IEEE 802.11a physical layer mode.
 *
 * @constant kCWPHYMode11b
 * IEEE 802.11b physical layer mode.
 *
 * @constant kCWPHYMode11g 
 * IEEE 802.11g physical layer mode.
 *
 * @constant kCWPHYMode11n 
 * IEEE 802.11n physical layer mode.
 *
 * @constant kCWPHYMode11ac
 * IEEE 802.11ac physical layer mode.
 */
@available(OSX 10.7, *)
enum CWPHYMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ModeNone
  case Mode11a
  case Mode11b
  case Mode11g
  case Mode11n
  case Mode11ac
}

/*!
 * @typedef CWInterfaceMode
 *
 * @abstract Wi-Fi interface operating modes returned by -[CWInterface interfaceMode].
 *
 * @constant kCWInterfaceModeNone
 * Interface is not in any mode.
 *
 * @constant kCWInterfaceModeStation 
 * Interface is participating in an infrastructure network as a non-AP station.
 *
 * @constant kCWInterfaceModeIBSS 
 * Interface is participating in an IBSS network.
 *
 * @constant kCWInterfaceModeHostAP 
 * Interface is participating in an infrastructure network as an access point.
 */
@available(OSX 10.7, *)
enum CWInterfaceMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Station
  case IBSS
  case HostAP
}

/*!
 * @typedef CWSecurity
 *
 * @abstract Wi-Fi security types.
 *
 * @constant kCWSecurityNone 
 * Open System authentication.
 *
 * @constant kCWSecurityWEP 
 * WEP security.
 *
 * @constant kCWSecurityWPAPersonal
 * WPA Personal authentication.
 *
 * @constant kCWSecurityWPAPersonalMixed 
 * WPA/WPA2 Personal authentication.
 *
 * @constant kCWSecurityWPA2Personal 
 * WPA2 Personal authentication.
 *
 * @constant kCWSecurityDynamicWEP 
 * Dynamic WEP security.
 *
 * @constant kCWSecurityWPAEnterprise 
 * WPA Enterprise authentication.
 *
 * @constant kCWSecurityWPAEnterpriseMixed 
 * WPA/WPA2 Enterprise authentication.
 *
 * @constant kCWSecurityWPA2Enterprise
 * WPA2 Enterprise authentication.
 *
 * @constant kCWSecurityUnknown 
 * Unknown security type.
 */
@available(OSX 10.7, *)
enum CWSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP
  case WPAPersonal
  case WPAPersonalMixed
  case WPA2Personal
  case Personal
  case DynamicWEP
  case WPAEnterprise
  case WPAEnterpriseMixed
  case WPA2Enterprise
  case Enterprise
  case Unknown
}

/*!
 * @typedef CWIBSSModeSecurity
 *
 * @abstract IBSS security types used in -[CWInterface startIBSSModeWithSSID:security:channel:password:error:].
 *
 * @constant kCWIBSSModeSecurityNone 
 * Open System authentication.
 *
 * @constant kCWIBSSModeSecurityWEP40
 * WEP security.
 *
 * @constant kCWIBSSModeSecurityWEP104
 * WPA Personal authentication.
 */
@available(OSX 10.7, *)
enum CWIBSSModeSecurity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case WEP40
  case WEP104
}

/*!
 * @typedef CWChannelWidth
 *
 * @abstract Channel width values returned by -[CWChannel channelWidth].
 *
 * @constant kCWChannelWidthUnknown
 * Unknown channel width.
 *
 * @constant kCWChannelWidth20MHz 
 * 20MHz channel width.
 *
 * @constant kCWChannelWidth40MHz
 * 40MHz channel width.
 *
 * @constant kCWChannelWidth80MHz 
 * 80MHz channel width.
 *
 * @constant kCWChannelWidth160MHz
 * 160MHz channel width.
 */
@available(OSX 10.7, *)
enum CWChannelWidth : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case WidthUnknown
  case Width20MHz
  case Width40MHz
  case Width80MHz
  case Width160MHz
}

/*!
 * @typedef CWChannelBand
 *
 * @abstract Channel band values returned by -[CWChannel channelBand].
 *
 * @constant kCWChannelBandUnknown
 * Unknown channel band.
 *
 * @constant kCWChannelBand2GHz
 * 2.4GHz channel band.
 *
 * @constant kCWChannelBand5GHz
 * 5GHz channel band.
 */
@available(OSX 10.7, *)
enum CWChannelBand : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case BandUnknown
  case Band2GHz
  case Band5GHz
}

/*!
 * @typedef CWCipherKeyFlags
 *
 * @abstract Cipher key flags used in -[CWInterface setWEPKey:flags:index:error:].
 *
 * @constant kCWCipherKeyFlagsNone 
 * Open System authentication.
 *
 * @constant kCWCipherKeyFlagsUnicast
 * Cipher key will be used for unicast packets.
 *
 * @constant kCWCipherKeyFlagsMulticast 
 * Cipher key will be used for multicast packets.
 *
 * @constant kCWCipherKeyFlagsTx 
 * Cipher key will be used for packets sent from the interface.
 *
 * @constant kCWCipherKeyFlagsRx 
 * Cipher key will be used for packets received by the interface.
 */
@available(OSX 10.7, *)
struct CWCipherKeyFlags : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: CWCipherKeyFlags { get }
  static var Unicast: CWCipherKeyFlags { get }
  static var Multicast: CWCipherKeyFlags { get }
  static var Tx: CWCipherKeyFlags { get }
  static var Rx: CWCipherKeyFlags { get }
}

/*!
 * @typedef CWKeychainDomain
 *
 * @abstract Keychain domain types used by CoreWLAN keychain methods.
 *
 * @constant kCWKeychainDomainNone
 * No keychain domain specified.
 *
 * @constant kCWKeychainDomainUser
 * The user keychain domain. If iCloud Keychain is enabled, the iCloud keychain is the user keychain.
 *
 * @constant kCWKeychainDomainSystem
 * The system keychain domain.
 */
@available(OSX 10.10, *)
enum CWKeychainDomain : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case User
  case System
}

/*!
 * @typedef CWEventType
 *
 * @abstract Wi-Fi event types used in -[CWWiFiClient startMonitoringEventWithType:error:].
 *
 * @constant CWEventTypeNone 
 * No event type specified.
 *
 * @constant CWEventTypePowerDidChange
 * Posted when the power state of any Wi-Fi interface changes.
 *
 * @constant CWEventTypeSSIDDidChange 
 * Posted when the current SSID of any Wi-Fi interface changes.
 *
 * @constant CWEventTypeBSSIDDidChange
 * Posted when the current BSSID of any Wi-Fi interface changes.
 *
 * @constant CWEventTypeCountryCodeDidChange
 * Posted when the adopted country code of any Wi-Fi interface changes.
 *
 * @constant CWEventTypeLinkDidChange 
 * Posted when the link state for any Wi-Fi interface changes.
 *
 * @constant CWEventTypeLinkQualityDidChange
 * Posted when the RSSI or transmit rate for any Wi-Fi interface changes.
 *
 * @constant CWEventTypeModeDidChange 
 * Posted when the operating mode of any Wi-Fi interface changes.
 *
 * @constant CWEventTypeScanCacheUpdated
 * Posted when the scan cache of any Wi-Fi interface is updated with new scan results.
 *
 * @constant CWEventTypeUnknown
 * Unknown event type.
 */
@available(OSX 10.10, *)
enum CWEventType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case PowerDidChange
  case SSIDDidChange
  case BSSIDDidChange
  case CountryCodeDidChange
  case LinkDidChange
  case LinkQualityDidChange
  case ModeDidChange
  case ScanCacheUpdated
  case Unknown
}

/*!
 * @method
 *
 * @param domain 
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param password 
 * An NSString passed by reference, which upon return will contain the Wi-Fi keychain password for the specified SSID.
 * This parameter is optional.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Finds and returns (by reference) the password for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainFindWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus

/*!
 * @method
 *
 * @param domain 
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param password 
 * The Wi-Fi network password.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Sets the Wi-Fi network keychain password for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainSetWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData, _ password: String) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Deletes the password for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainDeleteWiFiPassword(domain: CWKeychainDomain, _ ssid: NSData) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param username 
 * An NSString passed by reference, which upon return will contain the 802.1X username for the specified SSID.
 * This parameter is optional.
 *
 * @param password
 * An NSString passed by reference, which upon return will contain the 802.1X password for the specified SSID.
 * This parameter is optional.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Finds and returns the 802.1X username and password stored for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainFindWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData, _ username: AutoreleasingUnsafeMutablePointer<NSString?>, _ password: AutoreleasingUnsafeMutablePointer<NSString?>) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param username
 * The 802.1X username.
 *
 * @param password
 * The 802.1X password. This parameter is optional.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Sets the 802.1X username and password for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainSetWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData, _ username: String?, _ password: String?) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Deletes the 802.1X username and password for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainDeleteWiFiEAPUsernameAndPassword(domain: CWKeychainDomain, _ ssid: NSData) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param identity 
 * A SecIdentityRef passed by reference, which upon return will contain the SecIdentityRef associated with the specified SSID.
 * This parameter is optional.  The returned value must be released by the caller.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Finds and returns the identity stored for the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainCopyWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: NSData, _ identity: UnsafeMutablePointer<Unmanaged<SecIdentity>?>) -> OSStatus

/*!
 * @method
 *
 * @param domain
 * The keychain domain, which determines which keychain will be used.
 *
 * @param ssid
 * The service set identifier (SSID) which is used to uniquely identify the keychain item.
 *
 * @param identity 
 * The identity containing the certificate to use for 802.1X authentication.
 * Passing nil clears any identity association for the specified SSID.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Associates an identity to the specified SSID and keychain domain.
 */
@available(OSX 10.9, *)
func CWKeychainSetWiFiEAPIdentity(domain: CWKeychainDomain, _ ssid: NSData, _ identity: SecIdentity?) -> OSStatus

/*!
 * @method
 *
 * @param identityList 
 * A CFArrayRef passed by reference, which upon return will be populated with a list of SecIdentityRef objects.
 * This parameter is optional.  The returned value must be released by the caller.
 *
 * @result
 * An OSStatus error code indicating whether or not a failure occurred.
 * <i>errSecSuccess</i> indicates no error occurred.
 *
 * @abstract 
 * Finds and returns all available identities.
 */
@available(OSX 10.7, *)
func CWKeychainCopyEAPIdentityList(list: UnsafeMutablePointer<Unmanaged<CFArray>?>) -> OSStatus

/*!
 * @method
 *
 * @param networks 
 * The set of networks to merge.
 *
 * @abstract 
 * Merges the specified set of CWNetwork objects.
 *
 * @discussion 
 * Duplicate networks are defined as networks with the same SSID, security type, and BSS type (IBSS or Infrastructure).
 * When duplicate networks exist, the network with the best RSSI value will be chosen.
 */
@available(OSX 10.7, *)
func CWMergeNetworks(networks: Set<CWNetwork>) -> Set<CWNetwork>
