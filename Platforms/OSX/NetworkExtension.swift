

/*!
 * @typedef NEAppProxyFlowError
 * @abstract Flow error codes
 */
@available(OSX 10.11, *)
enum NEAppProxyFlowError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEAppProxyFlowErrorNotOpen The flow is not fully open. */
  case NotConnected

  /*! @const NEAppProxyFlowErrorPeerReset The remote peer reset the flow. */
  case PeerReset

  /*! @const NEAppProxyFlowErrorHostUnreachable The remote peer is unreachable. */
  case HostUnreachable

  /*! @const NEAppProxyFlowErrorInvalidArgument An invalid argument was passed to one of the NEAppProxyFlow methods. */
  case InvalidArgument

  /*! @const NEAppProxyFlowErrorAborted The flow was aborted. */
  case Aborted

  /*! @const NEAppProxyFlowErrorRefused The flow was disallowed. */
  case Refused

  /*! @const NEAppProxyFlowErrorTimedOut The flow timed out. */
  case TimedOut

  /*! @const NEAppProxyFlowErrorInternal An internal error occurred. */
  case Internal
}

/*! @const NEAppProxyErrorDomain The NEAppProxyFlow error domain */
@available(OSX 10.11, *)
let NEAppProxyErrorDomain: String

/*!
 * @interface NEAppProxyFlow
 * @discussion The NEAppProxyFlow class is an abstract base class that declares the programmatic interface for a flow of network data.
 *
 * NEAppProxyFlow is part of NetworkExtension.framework.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEAppProxyFlow : NSObject {

  /*!
   * @method openWithLocalAddress:completionHandler:
   * @discussion This function is used by an NEProvider implementation to indicate that it is ready to handle flow data.
   * @param localEndpoint The address and port that should be used as the local endpoint of the socket associated with this flow. If the source application already specifed a local endpoint by binding the socket then this parameter is ignored.
   * @param completionHandler A block that is called when the process of opening flow is complete. A nil value passed to this block indicates that the flow was opened successfully. A non-nil NSError value indicates that the flow failed to open successfully.
   */
  @available(OSX 10.11, *)
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (NSError?) -> Void)

  /*!
   * @method closeReadWithError:
   * @discussion This function is used by an NEProvider implementation to indicate that it does not want to receive any more data from the flow.
   * @param error An error in NEAppProxyErrorDomain that should be passed to the flow's source application.
   */
  @available(OSX 10.11, *)
  func closeReadWith(error: NSError?)

  /*!
   * @method closeWriteWithError:
   * @discussion This functions is used by an NEProvider implementation to indicate that it does not have any more data to write to the flow.
   * @param error An error in NEAppProxyErrorDomain that should be passed to the flow's source application.
   */
  @available(OSX 10.11, *)
  func closeWriteWith(error: NSError?)

  /*!
   * @property metaData
   * @discussion An NEFlowMetaData object containing meta data for the flow.
   */
  @available(OSX 10.11, *)
  var metaData: NEFlowMetaData { get }
  init()
}

/*!
 * @interface NEFlowMetaData
 * @discussion The NEFlowMetaData class declares the programmatic interface for an object that contains extra information about a flow.
 */
@available(OSX 10.11, *)
class NEFlowMetaData : NSObject {

  /*!
   * @property sourceAppUniqueIdentifier
   * @discussion A blob of bytes that uniquely identifies the source app binary of the flow. This value is unique across multiple versions of the same app.
   */
  @available(OSX 10.11, *)
  var sourceAppUniqueIdentifier: NSData { get }

  /*!
   * @property sourceAppSigningIdentifier
   * @discussion A string containing the signing identifier (almost always equivalent to the bundle identifier) of the source app of the flow.
   */
  @available(OSX 10.11, *)
  var sourceAppSigningIdentifier: String { get }
  init()
}

/*!
 * @interface NEAppProxyProvider
 * @discussion The NEAppProxyProvider class declares the programmatic interface for an object that implements the client side of a custom network proxy solution.
 *
 * NEAppProxyProvider is part of NetworkExtension.framework
 */
@available(OSX 10.11, *)
class NEAppProxyProvider : NETunnelProvider {

  /*!
   * @method startProxyWithOptions:completionHandler:
   * @discussion This function is called by the framework when a new proxy instance is being created. Subclasses must override this method to perform whatever steps are necessary to ready the proxy for handling flows of network data.
   * @param options A dictionary containing keys and values passed by the provider's containing app. If the containing app did not start the proxy then this parameter will be nil.
   * @param completionHandler A block that must be called when the process of starting the proxy complete. If the proxy cannot be started then the subclass' implementation of this method must pass a non-nill NSError object to this block. A value of nil passed to the completion handler indicates that the proxy was successfully started.
   */
  @available(OSX 10.11, *)
  func startProxyWithOptions(options: [String : AnyObject]?, completionHandler: (NSError?) -> Void)

  /*!
   * @method stopProxyWithReason:completionHandler:
   * @discussion This function is called by the framework when the proxy is being stopped. Subclasses must override this method to perform whatever steps are necessary to stop the proxy.
   * @param reason An NEProviderStopReason indicating why the proxy is being stopped.
   * @param completionHandler A block that must be called when the proxy is completely stopped.
   */
  @available(OSX 10.11, *)
  func stopProxyWith(reason: NEProviderStopReason, completionHandler: () -> Void)

  /*!
   * @method cancelProxyWithError:
   * @discussion This function is called by proxy provider implementations to stop the proxy when a network error is encountered that renders the proxy no longer viable. Subclasses should not override this method.
   * @param error An NSError object containing details about the error that the prxoy provider implementation encountered.
   */
  @available(OSX 10.11, *)
  func cancelProxyWith(error: NSError?)

  /*!
   * @method handleNewFlow:
   * @discussion This function is called by the framework to deliver a new network data flow to the proxy provider implementation. Subclasses must override this method to perform whatever steps are necessary to ready the proxy to receive data from the flow. The proxy provider implementation indicates that the proxy is ready to handle flow data by calling -[NEFlow openWithCompletionHandler:] on the flow. If the proxy implementation decides to not handle the flow and instead terminate it, the subclass implementation of this method should return NO. If the proxy implementation decides to handle the flow, the subclass implementation of this method should return YES. In this case the proxy implementation is responsible for retaining the NEFlow object.
   * @param flow The new flow
   * @return YES if the proxy implementation has retained the flow and intends to handle the flow data. NO if the proxy implementation has not retained the flow and will not handle the flow data. In this case the flow is terminated.
   */
  @available(OSX 10.11, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}

/*!
 * @interface NEAppProxyProviderManager
 * @discussion The NEAppProxyProviderManager class declares the programmatic interface for an object that is used to configure and control network tunnels provided by NEAppProxyProviders.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEAppProxyProviderManager : NETunnelProviderManager {

  /*!
   * @method loadAllFromPreferencesWithCompletionHandler:
   * @discussion This function asynchronously reads all of the NEAppProxy configurations associated with the calling app that have previously been saved to disk and returns them as NEAppProxyProviderManager objects.
   * @param completionHandler A block that takes an array NEAppProxyProviderManager objects. The array passed to the block may be empty if no NETunnelProvider configurations were successfully read from the disk.  The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.11, *)
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NEAppProxyProviderManager]?, NSError?) -> Void)
  init()
}

/*!
 * @interface NEAppProxyTCPFlow
 * @discussion The NEAppProxyTCPFlow class declares the programmatic interface of an object that is used by NEAppProxyProvider implementations to proxy the payload of TCP connections.
 *
 * NEAppProxyTCPFlow is part of NetworkExtension.framework
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {

  /*!
   * @method readDataWithCompletionHandler:
   * @discussion Read data from the flow.
   * @param completionHandler A block that will be executed when some data is read from the flow. The block is passed either the data that was read or a non-nil error if an error occurred. If data has a length of 0 then no data can be subsequently read from the flow. The completion handler is only called for the single read operation that was initiated by calling this method. If the caller wants to read more data then it should call this method again to schedule another read operation and another execution of the completion handler block.
   */
  @available(OSX 10.11, *)
  func readDataWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)

  /*!
   * @method writeData:completionHandler
   * @discussion Write data to the flow.
   * @param data The data to write.
   * @param completionHandler A block that will be executed when the data is written into the associated socket's receive buffer. The caller should use this callback as an indication that it is possible to write more data to the flow without using up excessive buffer memory. If an error occurs while writing the data then a non-nil NSError object is passed to the block.
   */
  @available(OSX 10.11, *)
  func write(data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)

  /*!
   * @property remoteEndpoint
   * @discussion An NWEndpoint object containing information about the intended remote endpoint of the flow.
   */
  @available(OSX 10.11, *)
  var remoteEndpoint: NWEndpoint { get }
  init()
}

/*!
 * @interface NEAppProxyUDPFlow
 * @discussion The NEAppProxyUDPFlow class declares the programmatic interface of an object that is used by NEAppProxyProvider implementations to proxy the payload of UDP datagrams.
 *
 * NEAppProxyUDPFlow is part of NetworkExtension.framework.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {

  /*!
   * @method readDatagramWithCompletionHandler:
   * @discussion Read a datagram from the flow.
   * @param completionHandler A block that will be executed when datagrams have been read from the flow. The block takes the datagrams that were read, the destination endpoints of the datagrams, and an NSError. If an error occurred while reading then the error parameter will be non-nil. If the datagrams and remoteEndpoints arrays are non-nill but 
   */
  @available(OSX 10.11, *)
  func readDatagramsWithCompletionHandler(completionHandler: ([NSData]?, [NWEndpoint]?, NSError?) -> Void)

  /*!
   * @method writeDatagram:sentByEndpoint:completionHandler:
   * @discussion Write a datagram to the flow.
   * @param datagrams An array of NSData objects containing the data to be written.
   * @param remoteEndpoints The source endpoints of the datagrams.
   * @param completionHandler A block that will be executed when the datagrams have been written to the corresponding socket's receive buffer.
   */
  @available(OSX 10.11, *)
  func writeDatagrams(datagrams: [NSData], sentBy remoteEndpoints: [NWEndpoint], completionHandler: (NSError?) -> Void)

  /*!
   * @property localEndpoint
   * @discussion An NWEndpoint object containing the local endpoint of the flow's corresponding socket.
   */
  @available(OSX 10.11, *)
  var localEndpoint: NWEndpoint? { get }
  init()
}

/*!
 * @interface NEAppRule
 * @discussion The NEAppRule class declares the programmatic interface for an object that contains the match conditions for a rule that is used to match network traffic originated by applications.
 *
 * NEAppRule is used in the context of a Network Extension configuration to specify what traffic should be made available to the Network Extension.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithSigningIdentifier:designatedRequirement:
   * @discussion Initializes a newly-allocated NEAppRule object.
   * @param signingIdentifier The signing identifier of the executable that matches the rule.
   * @param designatedRequirement The designated requirement of the executable that matches the rule.
   */
  @available(OSX 10.11, *)
  init(signingIdentifier: String, designatedRequirement: String)

  /*!
   * @property matchSigningIdentifier
   * @discussion A string containing a signing identifier. If the code signature of the executable being evaluated has a signing identifier equal to this string and all other conditions of the rule match, then the rule matches.
   */
  @available(OSX 10.11, *)
  var matchSigningIdentifier: String { get }

  /*!
   * @property matchDesignatedRequirement
   * @discussion A string containing a designated requirement. If the code signature of the exectuable being evaluated has a designated requirement equal to this string and all other conditions of the rule match, then the rule matches. This property is required on Mac OS X.
   */
  @available(OSX 10.11, *)
  var matchDesignatedRequirement: String { get }

  /*!
   * @property matchPath
   * @discussion A string containing a file system path. If the file system path of the executable being evaluated is equal to this string and all other conditions of the rule match, then the rule matches. This property is optional.
   */
  @available(OSX 10.11, *)
  var matchPath: String?

  /*!
   * @property matchDomains
   * @discussion An array of strings. If the destination host of the network traffic being evaluated has a suffix equal to one of the strings in this array and all other conditions of the rule match, then the rule matches. This property is optional.
   */
  @available(OSX 10.11, *)
  var matchDomains: [AnyObject]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEDNSSettings
 * @discussion The NEDNSSettings class declares the programmatic interface for an object that contains DNS settings.
 */
@available(OSX 10.11, *)
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithServers:
   * @discussion Initialize a newly-allocated NEDNSSettings object.
   * @param servers An array of DNS server IP address strings.
   */
  @available(OSX 10.11, *)
  init(servers: [String])

  /*!
   * @property servers
   * @discussion An array of DNS server address strings.
   */
  @available(OSX 10.11, *)
  var servers: [String] { get }

  /*! 
   * @property searchDomains
   * @discussion An array of DNS server search domain strings.
   */
  @available(OSX 10.11, *)
  var searchDomains: [String]?

  /*!
   * @property domainName
   * @discussion A string containing the DNS domain.
   */
  @available(OSX 10.11, *)
  var domainName: String?

  /*!
   * @property matchDomains
   * @discussion An array of strings containing domain strings. If this property is non-nil, the DNS settings will only be used to resolve host names within the specified domains.
   */
  @available(OSX 10.11, *)
  var matchDomains: [String]?

  /*!
   * @property matchDomainsNoSearch
   * @discussion A boolean indicating if the match domains should be appended to the search domain list.  Default is NO (match domains will be appended to the search domain list).
   */
  @available(OSX 10.11, *)
  var matchDomainsNoSearch: Bool
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
var NEFilterFlowBytesMax: UInt64 { get }

/*!
 * @typedef NEFilterError
 * @abstract Filter error codes
 */
@available(OSX 10.10, *)
enum NEFilterManagerError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEFilterManagerErrorConfigurationInvalid The filter configuration is invalid */
  case ConfigurationInvalid

  /*! @const NEFilterManagerErrorConfigurationDisabled The filter configuration is not enabled. */
  case ConfigurationDisabled

  /*! @const NEFilterManagerErrorConfigurationStale The filter configuration needs to be loaded. */
  case ConfigurationStale

  /*! @const NEFilterManagerErrorConfigurationCannotBeRemoved The filter configuration cannot be removed. */
  case ConfigurationCannotBeRemoved
}

/*! @const NEFilterErrorDomain The filter error domain */
@available(OSX 10.10, *)
let NEFilterErrorDomain: String

/*! @const NEFilterConfigurationDidChangeNotification Name of the NSNotification that is posted when the filter configuration changes. */
@available(OSX 10.10, *)
let NEFilterConfigurationDidChangeNotification: String

/*!
 * @interface NEFilterManager
 * @discussion The NEFilterManager class declares the programmatic interface for an object that manages content filtering configurations.
 *
 * NEFilterManager declares methods and properties for configuring and controlling a filter.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEFilterManager : NSObject {

  /*!
   * @method sharedManager
   * @return The singleton NEFilterManager object for the calling process.
   */
  @available(OSX 10.10, *)
  class func shared() -> NEFilterManager

  /*!
   * @method loadFromPreferencesWithCompletionHandler:
   * @discussion This function loads the current filter configuration from the caller's filter preferences.
   * @param completionHandler A block that will be called when the load operation is completed. The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method removeFromPreferencesWithCompletionHandler:
   * @discussion This function removes the filter configuration from the caller's filter preferences. If the filter is enabled, the filter becomes disabled.
   * @param completionHandler A block that will be called when the remove operation is completed. The NSError passed to this block will be nil if the remove operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method saveToPreferencesWithCompletionHandler:
   * @discussion This function saves the filter configuration in the caller's filter preferences. If the filter is enabled, it will become active.
   * @param completionHandler A block that will be called when the save operation is completed. The NSError passed to this block will be nil if the save operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @property localizedDescription
   * @discussion A string containing a description of the filter.
   */
  @available(OSX 10.10, *)
  var localizedDescription: String?

  /*!
   * @property providerConfiguration
   * @discussion An NEFilterProviderConfiguration object containing the provider-specific portion of the filter configuration.
   */
  @available(OSX 10.11, *)
  var providerConfiguration: NEFilterProviderConfiguration?

  /*!
   * @property enabled
   * @discussion Toggles the enabled status of the filter. Setting this property will disable filter configurations of other apps. This property will be set to NO when other filter configurations are enabled.
   */
  @available(OSX 10.10, *)
  var isEnabled: Bool
  init()
}
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }

/*!
 * @interface NEFilterProviderConfiguration
 * @discussion The NEFilterProviderConfiguration class declares the programmatic interface of an object that configures a plugin-based content filter.
 */
@available(OSX 10.11, *)
class NEFilterProviderConfiguration : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property filterBrowsers
   * @discussion If YES, the filter plugin will be allowed to filter browser traffic. If NO, the filter plugin will not see any browser flows. Defaults to NO. At least one of filterBrowsers and filterSockets should be set to YES to make the filter take effect.
   */
  @available(OSX 10.11, *)
  var filterBrowsers: Bool

  /*!
   * @property filterSockets
   * @discussion If YES, the filter plugin will be allowed to filter socket traffic. If NO, the filter plugin will not see any socket flows. Defaults to NO. At least one of filterBrowsers and filterSockets should be set to YES to make the filter take effect.
   */
  @available(OSX 10.11, *)
  var filterSockets: Bool

  /*!
   * @property vendorConfiguration
   * @discussion An optional dictionary of plugin-specific keys to be passed to the plugin.
   */
  @available(OSX 10.11, *)
  var vendorConfiguration: [String : AnyObject]?

  /*!
   * @property serverAddress
   * @discussion The optional address of the server used to support the filter.
   */
  @available(OSX 10.11, *)
  var serverAddress: String?

  /*!
   * @property username
   * @discussion The optional username associated with the filter.
   */
  @available(OSX 10.11, *)
  var username: String?

  /*!
   * @property organization
   * @discussion The optional organization associated with the filter.
   */
  @available(OSX 10.11, *)
  var organization: String?

  /*!
   * @property passwordReference
   * @discussion The optional password keychain reference associated with the filter.
   */
  @available(OSX 10.11, *)
  @NSCopying var passwordReference: NSData?

  /*!
   * @property identityReference
   * @discussion The optional certificate identity keychain reference associated with the filter.
   */
  @available(OSX 10.11, *)
  @NSCopying var identityReference: NSData?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv4Settings
 * @discussion The NEIPv4Settings class declares the programmatic interface for an object that contains IPv4 settings.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEIPv4Settings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddresses:subnetMasks:
   * @discussion Initialize a newly-allocated NEIPv4Settings object.
   * @param addresses An array of IPv4 addresses represented as dotted decimal strings.
   * @param subnetMasks An array of IPv4 subnet masks represented as dotted decimal strings.
   * @return The initialized object.
   */
  @available(OSX 10.11, *)
  init(addresses: [String], subnetMasks: [String])

  /*!
   * @property addresses
   * @discussion An array of IPv4 addresses represented as dotted decimal strings. These addresses will be set on the virtual interface used by the VPN tunnel.
   */
  @available(OSX 10.11, *)
  var addresses: [String] { get }

  /*!
   * @property subnetMasks
   * @discussion An array of IPv4 subnet masks represented as dotted decimal strings. These subnet masks will be set along with their corresponding addresses from the addresses array on the virtual interface used by the VPN tunnel.
   */
  @available(OSX 10.11, *)
  var subnetMasks: [String] { get }

  /*!
   * @property includedRoutes
   * @discussion An array of NEIPv4Route objects. Traffic matching these routes will be routed through the virtual interface used by the VPN tunnel.
   */
  @available(OSX 10.11, *)
  var includedRoutes: [NEIPv4Route]?

  /*!
   * @property excludedRoutes
   * @discussion An array of NEIPv4Route objects. Traffic matching these routes will be routed through the current primary physical interface of the device.
   */
  @available(OSX 10.11, *)
  var excludedRoutes: [NEIPv4Route]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv4Route
 * @discussion The NEIPv4Route class declares the programmatic interface for an object that contains settings for an IPv4 route.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEIPv4Route : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithDestinationAddress:subnetMask:
   * @discussion Initialize a newly-allocated NEIPv4Route.
   * @param address The IPv4 address of the destination network.
   * @param subnetMask The subnet mask of the destination network.
   * @return The initialized NEIPv4Route.
   */
  @available(OSX 10.11, *)
  init(destinationAddress address: String, subnetMask: String)

  /*!
   * @property destinationAddress
   * @discussion An IPv4 address represented as a dotted decimal string. 
   */
  @available(OSX 10.11, *)
  var destinationAddress: String { get }

  /*!
   * @property destinationSubnetMask
   * @discussion An IPv4 subnet mask represented as a dotted decimal string. This mask in combination with the destinationAddress property is used to determine the destination network of the route.
   */
  @available(OSX 10.11, *)
  var destinationSubnetMask: String { get }

  /*!
   * @property gatewayAddress
   * @discussion The IPv4 address of the route's gateway. If this property is nil then the route's gateway will be set to the tunnel's virtual interface.
   */
  @available(OSX 10.11, *)
  var gatewayAddress: String?

  /*!
   * @method defaultRoute
   * @return A route object that represents the IPv4 default route.
   */
  @available(OSX 10.11, *)
  class func defaultRoute() -> NEIPv4Route
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv6Settings
 * @discussion The NEIPv6Settings class declares the programmatic interface for an object that contains IPv6 settings.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddresses:networkPrefixLengths:
   * @discussion Initialize a newly-allocated NEIPv6Settings object.
   * @param addresses An array of IPv6 addresses represented as dotted decimal strings.
   * @param networkPrefixLengths An array of NSNumber objects each containing the length in bits of the network prefix of the corresponding address in the addresses parameter.
   * @return The initialized object.
   */
  @available(OSX 10.11, *)
  init(addresses: [String], networkPrefixLengths: [NSNumber])

  /*!
   * @property addresses
   * @discussion An array of IPv6 addresses represented strings. These addresses will be set on the virtual interface used by the VPN tunnel.
   */
  @available(OSX 10.11, *)
  var addresses: [String] { get }

  /*!
   * @property networkPrefixLengths
   * @discussion An array of NSNumber objects each representing the length in bits of the network prefix of the corresponding address in the addresses property.
   */
  @available(OSX 10.11, *)
  var networkPrefixLengths: [NSNumber] { get }

  /*!
   * @property includedRoutes
   * @discussion An array of NEIPv6Route objects. Traffic matching these routes will be routed through the virtual interface used by the VPN tunnel.
   */
  @available(OSX 10.11, *)
  var includedRoutes: [NEIPv6Route]?

  /*!
   * @property excludedRoutes
   * @discussion An array of NEIPv6Route objects. Traffic matching these routes will be routed through the current primary physical interface of the device.
   */
  @available(OSX 10.11, *)
  var excludedRoutes: [NEIPv6Route]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv6Route
 * @discussion The NEIPv6Route class declares the programmatic interface for an object that contains settings for an IPv6 route.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithDestinationAddress:networkPrefixLength:
   * @discussion Initialize a newly-allocated NEIPv6Route.
   * @param address The IPv6 address of the destination network.
   * @param networkPrefixLength A number containing the length in bits of the network prefix of the destination network.
   * @return The initialized NEIPv6Route.
   */
  @available(OSX 10.11, *)
  init(destinationAddress address: String, networkPrefixLength: NSNumber)

  /*!
   * @property destinationAddress
   * @discussion An IPv6 address represented as a string.
   */
  @available(OSX 10.11, *)
  var destinationAddress: String { get }

  /*!
   * @property destinationNetworkPrefixLength
   * @discussion A number containing the length in bits of the network prefix of the destination network. This prefix in combination with the destinationAddress property is used to determine the destination network of the route.
   */
  @available(OSX 10.11, *)
  var destinationNetworkPrefixLength: NSNumber { get }

  /*!
   * @property gatewayAddress
   * @discussion The IPv6 address of the route's gateway. If this property is nil then the route's gateway will be set to the tunnel's virtual interface.
   */
  @available(OSX 10.11, *)
  var gatewayAddress: String?

  /*!
   * @method defaultRoute
   * @return A route object that represents the IPv6 default route.
   */
  @available(OSX 10.11, *)
  class func defaultRoute() -> NEIPv6Route
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @typedef NEOnDemandRuleAction
 * @abstract On Demand rule actions
 */
@available(OSX 10.10, *)
enum NEOnDemandRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEOnDemandRuleActionConnect Start the VPN connection */
  case Connect

  /*! @const NEOnDemandRuleActionDisconnect Do not start the VPN connection, and disconnect the VPN connection if it is not currently disconnected */
  case Disconnect

  /*! @const NEOnDemandRuleActionEvaluateConnection Start the VPN after evaluating the destination host being accessed against the rule's connection rules */
  case EvaluateConnection

  /*! @const NEOnDemandRuleActionIgnore Do not start the VPN connection, and leave the VPN connection in its current state */
  case Ignore
}

/*!
 * @typedef NEOnDemandRuleInterfaceType
 * @abstract On Demand rule network interface types
 */
@available(OSX 10.10, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEOnDemandRuleInterfaceTypeAny */
  @available(OSX 10.11, *)
  case Any

  /*! @const NEOnDemandRuleInterfaceTypeEthernet Wired Ethernet */
  @available(OSX 10.10, *)
  case Ethernet

  /*! @const NEOnDemandRuleInterfaceTypeWiFi WiFi */
  @available(OSX 10.10, *)
  case WiFi
}

/*!
 * @interface NEOnDemandRule
 * @discussion The NEOnDemandRule class declares the programmatic interface for an object that defines an On Demand rule. 
 *
 * NEOnDemandRule is an abstract base class from which other action-specific rule classes are derived.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property action
   * @discussion The rule's action
   */
  @available(OSX 10.10, *)
  var action: NEOnDemandRuleAction { get }

  /*!
   * @property DNSSearchDomainMatch
   * @discussion An array of NSString objects. If the current default search domain is equal to one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the current default search domain does not factor into the rule match.
   */
  @available(OSX 10.10, *)
  var dnsSearchDomainMatch: [String]?

  /*!
   * @property DNSServerAddressMatch
   * @discussion An array of DNS server IP addresses represented as NSString objects. If each of the current default DNS servers is equal to one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the default DNS servers do not factor into the rule match.
   */
  @available(OSX 10.10, *)
  var dnsServerAddressMatch: [String]?

  /*!
   * @property interfaceTypeMatch
   * @discussion The type of interface that this rule matches. If the current primary network interface is of this type and all of the other conditions in the rule match, then the rule matches. If this property is 0 (the default), then the current primary interface type does not factor into the rule match.
   */
  @available(OSX 10.10, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType

  /*!
   * @property SSIDMatch
   * @discussion An array of NSString objects. If the Service Set Identifier (SSID) of the current primary connected network matches one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the current primary connected network SSID does not factor into the rule match.
   */
  @available(OSX 10.10, *)
  var ssidMatch: [String]?

  /*!
   * @property probeURL
   * @discussion An HTTP or HTTPS URL. If a request sent to this URL results in a HTTP 200 OK response and all of the other conditions in the rule match, then then rule matches. If this property is nil (the default), then an HTTP request does not factor into the rule match.
   */
  @available(OSX 10.10, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEOnDemandRuleConnect
 * @discussion The NEOnDemandRuleConnect class declares the programmatic interface for an object that defines an On Demand rule with the "Connect" action.
 *
 * When rules of this class match, the VPN connection is started whenever an application running on the system opens a network connection.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEOnDemandRuleConnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEOnDemandRuleDisconnect
 * @discussion The NEOnDemandRuleDisconnect class declares the programmatic interface for an object that defines an On Demand rule with the "Disconnect" action.
 *
 * When rules of this class match, the VPN connection is not started, and the VPN connection is disconnected if it is not currently disconnected.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEOnDemandRuleDisconnect : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEOnDemandRuleIgnore
 * @discussion The NEOnDemandRuleIgnore class declares the programmatic interface for an object that defines an On Demand rule with the "Ignore" action.
 *
 * When rules of this class match, the VPN connection is not started, and the current status of the VPN connection is left unchanged.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEOnDemandRuleIgnore : NEOnDemandRule {
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEOnDemandRuleEvaluateConnection
 * @discussion The NEOnDemandRuleEvaluateConnection class declares the programmatic interface for an object that defines an On Demand rule with the "Evaluate Connection" action.
 *
 * When rules of this class match, the properties of the network connection being established are matched against a set of connection rules. The action of the matched rule (if any) is used to determine whether or not the VPN will be started.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {

  /*!
   * @property connectionRules
   * @discussion An array of NEEvaluateConnectionRule objects. Each NEEvaluateConnectionRule object is evaluated in order against the properties of the network connection being established.
   */
  @available(OSX 10.10, *)
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEEvaluateConnectionRuleAction
 * @abstract Evaluate Connection rule actions
 */
@available(OSX 10.10, *)
enum NEEvaluateConnectionRuleAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEEvaluateConnectionRuleActionConnectIfNeeded Start the VPN connection if the destination host is not accessible directly */
  case ConnectIfNeeded

  /*! @const NEEvaluateConnectionRuleActionNeverConnect Do not start the VPN connection */
  case NeverConnect
}

/*!
 * @interface NEEvaluateConnectionRule
 * @discussion The NEEvaluateConnectionRule class declares the programmatic interface for an object that associates properties of network connections with an action.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithMatchDomains:andAction
   * @discussion Initialize an NEEvaluateConnectionRule instance with a list of destination host domains and an action
   */
  @available(OSX 10.10, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)

  /*!
   * @property action
   * @discussion The action to take if the properties of the network connection being established match the rule.
   */
  @available(OSX 10.10, *)
  var action: NEEvaluateConnectionRuleAction { get }

  /*!
   * @property matchDomains
   * @discussion An array of NSString objects. If the host name of the destination of the network connection being established shares a suffix with one of the strings in this array, then the rule matches.
   */
  @available(OSX 10.10, *)
  var matchDomains: [String] { get }

  /*!
   * @property useDNSServers
   * @discussion An array of NSString objects. If the rule matches the connection being established and the action is NEEvaluateConnectionRuleActionConnectIfNeeded, the DNS servers specified in this array are used to resolve the host name of the destination while evaluating connectivity to the destination. If the resolution fails for any reason, the VPN is started.
   */
  @available(OSX 10.10, *)
  var useDNSServers: [String]?

  /*!
   * @property probeURL
   * @discussion An HTTP or HTTPS URL. If the rule matches the connection being established and the action is NEEvaluateConnectionRuleActionConnectIfNeeded and a request sent to this URL results in a response with an HTTP response code other than 200, then the VPN is started.
   */
  @available(OSX 10.10, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEPacketTunnelFlow
 * @discussion The NEPacketTunnelFlow class declares the programmatic interface of an object that is used by NEPacketTunnelProvider implementations to tunnel IP packets.
 *
 * NEPacketTunnelFlow is part of NetworkExtension.framework
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEPacketTunnelFlow : NSObject {

  /*!
   * @method readPacketsWithCompletionHandler:
   * @discussion Read available IP packets from the flow.
   * @param completionHandler A block that will be executed to handle the packets. This block takes an array of NSData objects and an array of NSNumber objects. The NSData and NSNumber in corresponding indicies in the array represent one packet. If after handling the packets the caller wants to read more packets then the caller must call this method again.
   */
  @available(OSX 10.11, *)
  func readPacketsWithCompletionHandler(completionHandler: ([NSData], [NSNumber]) -> Void)

  /*!
   * @method writePackets:completionHandler:
   * @discussion Write multiple IP packets to the flow.
   * @param packets An array of NSData objects, each containing packet data to be written.
   * @param protocols An array of NSNumber objects. Each number contains the protocol of the packet in the corresponding index in the packets array.
   */
  @available(OSX 10.11, *)
  func writePackets(packets: [NSData], withProtocols protocols: [NSNumber]) -> Bool
  init()
}

/*!
 * @interface NEPacketTunnelNetworkSettings
 * @discussion The NEPacketTunnelNetworkSettings class declares the programmatic interface for an object that contains IP network settings.
 *
 * NEPacketTunnelNetworkSettings is used by NEPacketTunnelProviders to communicate the desired IP network settings for the packet tunnel to the framework. The framework takes care of applying the contained settings to the system.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {

  /*!
   * @property IPv4Settings
   * @discussion An NEIPv4Settings object that contains the desired tunnel IPv4 settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var iPv4Settings: NEIPv4Settings?

  /*!
   * @property IPv6Settings
   * @discussion An NEIPv6Settings object that contains the desired tunnel IPv6 settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var iPv6Settings: NEIPv6Settings?

  /*!
   * @property tunnelOverheadBytes
   * @discussion An NSNumber object containing the number of bytes of overhead appended to each outbound packet through the tunnel. The MTU for the TUN interface is computed by subtracting this value from the MTU of the primary physical interface.
   */
  @available(OSX 10.11, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?

  /*!
   * @property MTU
   * @discussion An NSNumber object containing the Maximum Transmission Unit (MTU) size in bytes to assign to the TUN interface. If this property is set, the tunnelOverheadBytes property is ignored.
   */
  @available(OSX 10.11, *)
  @NSCopying var mtu: NSNumber?

  /*!
   * @method initWithTunnelRemoteAddress:
   * @discussion This function initializes a newly-allocated NETunnelNetworkSettings object with a given tunnel remote address.
   * @param address The address of the remote endpoint that is providing the tunnel service.
   */
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEPacketTunnelProvider
 * @discussion The NEPacketTunnelProvider class declares the programmatic interface of an object that implements the client side of a custom IP packet tunneling protocol.
 *
 * NEPacketTunnelProvider is part of NetworkExtension.framework.
 */
@available(OSX 10.11, *)
class NEPacketTunnelProvider : NETunnelProvider {

  /*!
   * @method startTunnelWithOptions:completionHandler:
   * @discussion This function is called by the framework when a new tunnel is being created. Subclasses must override this method to perform whatever steps are necessary to establish the tunnel.
   * @param options A dictionary containing keys and values passed by the provider's containing app. If the containing app did not start the tunnel then this parameter will be nil.
   * @param completionHandler A block that must be called when the process of startingt the tunnel is complete. If the tunnel cannot be established then the subclass' implementation of this method must pass a non-nil NSError object to this block. A value of nil passed to the completion handler indicates that the tunnel was successfully established.
   */
  @available(OSX 10.11, *)
  func startTunnelWithOptions(options: [String : NSObject]?, completionHandler: (NSError?) -> Void)

  /*!
   * @method stopTunnelWithReason:completionHandler:
   * @discussion This function is called by the framework when the tunnel is being destroyed. Subclasses must override this method to perform whatever steps are necessary to tear down the tunnel.
   * @param reason An NEProviderStopReason indicating why the tunnel is being stopped.
   * @param completionHandler A block that must be called when the tunnel is completely torn down.
   */
  @available(OSX 10.11, *)
  func stopTunnelWith(reason: NEProviderStopReason, completionHandler: () -> Void)

  /*!
   * @method cancelTunnelWithError:
   * @discussion This function is called by tunnel provider implementations to initiate tunnel destruction when a network error is encountered that renders the tunnel no longer viable. Subclasses should not override this method.
   * @param error An NSError object containing details about the error that the tunnel provider implementation encountered.
   */
  @available(OSX 10.11, *)
  func cancelTunnelWith(error: NSError?)

  /*!
   * @property packetFlow
   * @discussion An NEPacketFlow object that the tunnel provider implementation should use to receive packets from the network stack and inject packets into the network stack. Every time the tunnel is started the packet flow object is in an initialized state and must be explicitly opened before any packets can be received or injected.
   */
  @available(OSX 10.11, *)
  var packetFlow: NEPacketTunnelFlow { get }

  /*!
   * @method createTCPConnectionThroughTunnelToEndpoint:enableTLS:TLSParameters:delegate:
   * @discussion This function can be called by subclass implementations to create a TCP connection to a given network endpoint, through the tunnel established by the provider. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote network endpoint to connect to.
   * @param routeThroughTunnel A flag indicating if the connection should be established through the tunnel provided by this NETunnelProvider.
   * @param enableTLS A flag indicating if a TLS session should be negotiated on the connection.
   * @param TLSParameters A set of optional TLS parameters. Only valid if enableTLS is YES. If TLSParameters is nil, the default system parameters will be used for TLS negotiation.
   * @param delegate An object to use as the connection delegate. This object should conform to the NWTCPConnectionAuthenticationDelegate protocol.
   * @return An NWTCPConnection object.
   */
  @available(OSX 10.11, *)
  func createTCPConnectionThroughTunnelTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection

  /*!
   * @method createUDPSessionThroughTunnelToEndpoint:fromEndpoint:
   * @discussion This function can be called by subclass implementations to create a UDP session between a local network endpoint and a remote network endpoint, through the tunnel established by the provider. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote endpoint to which UDP datagrams will be sent by the UDP session.
   * @param localEndpoint An NWHostEndpoint object that specifies the local IP address endpoint to use as the source endpoint of the UDP session.
   * @return An NWUDPSession object.
   */
  @available(OSX 10.11, *)
  func createUDPSessionThroughTunnelTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}

/*!
 * @typedef NEProviderStopReason
 * @abstract Provider stop reasons
 */
@available(OSX 10.11, *)
enum NEProviderStopReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEProviderStopReasonNone No specific reason. */
  case None

  /*! @const NEProviderStopReasonUserInitiated The user stopped the provider. */
  case UserInitiated

  /*! @const NEProviderStopReasonProviderFailed The provider failed. */
  case ProviderFailed

  /*! @const NEProviderStopReasonNoNetworkAvailable There is no network connectivity. */
  case NoNetworkAvailable

  /*! @const NEProviderStopReasonUnrecoverableNetworkChange The device attached to a new network. */
  case UnrecoverableNetworkChange

  /*! @const NEProviderStopReasonProviderDisabled The provider was disabled. */
  case ProviderDisabled

  /*! @const NEProviderStopReasonAuthenticationCanceled The authentication process was cancelled. */
  case AuthenticationCanceled

  /*! @const NEProviderStopReasonConfigurationFailed The provider could not be configured. */
  case ConfigurationFailed

  /*! @const NEProviderStopReasonIdleTimeout The provider was idle for too long. */
  case IdleTimeout

  /*! @const NEProviderStopReasonConfigurationDisabled The associated configuration was disabled. */
  case ConfigurationDisabled

  /*! @const NEProviderStopReasonConfigurationRemoved The associated configuration was deleted. */
  case ConfigurationRemoved

  /*! @const NEProviderStopReasonSuperceded A high-priority configuration was started. */
  case Superceded

  /*! @const NEProviderStopReasonUserLogout The user logged out. */
  case UserLogout

  /*! @const NEProviderStopReasonUserSwitch The active user changed. */
  case UserSwitch

  /*! @const NEProviderStopReasonConnectionFailed Failed to establish connection. */
  case ConnectionFailed
}

/*!
 * @interface NEProvider
 * @discussion The NEProvider class declares the programmatic interface that is common for all Network Extension providers.
 *
 * See the sub classes of NEProvider for more details. Developers of Network Extension providers should create sub classes of the sub classes of NEProvider.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEProvider : NSObject {

  /*!
   * @method sleepWithCompletionHandler:
   * @discussion This function is called by the framework when the system is about to go to sleep. Subclass developers can override this method to implement custom behavior such as closing connections or pausing some network activity.
   * @param completionHandler When the method is finished handling the sleep event it must execute this completion handler.
   */
  @available(OSX 10.11, *)
  func sleepWithCompletionHandler(completionHandler: () -> Void)

  /*!
   * @method wake
   * @discussion This function is called by the framework immediately after the system wakes up from sleep. Subclass developers can override this method to implement custom behavior such as re-establishing connections or resuming some network activity.
   */
  @available(OSX 10.11, *)
  func wake()

  /*!
   * @method createTCPConnectionToEndpoint:enableTLS:TLSParameters:delegate:
   * @discussion This function can be called by subclass implementations to create a TCP connection to a given network endpoint. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote network endpoint to connect to.
   * @param enableTLS A flag indicating if a TLS session should be negotiated on the connection.
   * @param TLSParameters A set of optional TLS parameters. Only valid if enableTLS is YES. If TLSParameters is nil, the default system parameters will be used for TLS negotiation.
   * @param delegate An object to use as the connections delegate. This object should conform to the NWTCPConnectionAuthenticationDelegate protocol.
   * @return An NWTCPConnection object.
   */
  @available(OSX 10.11, *)
  func createTCPConnectionTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection

  /*!
   * @method createUDPSessionToEndpoint:fromEndpoint:
   * @discussion This function can be called by subclass implementations to create a UDP session between a local network endpoint and a remote network endpoint. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote endpoint to which UDP datagrams will be sent by the UDP session.
   * @param localEndpoint An NWHostEndpoint object that specifies the local IP address endpoint to use as the source endpoint of the UDP session.
   * @return An NWUDPSession object.
   */
  @available(OSX 10.11, *)
  func createUDPSessionTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession

  /*!
   * @property defaultPath
   * @discussion The current default path for connections created by the provider. Use KVO to watch for network changes.
   */
  @available(OSX 10.11, *)
  var defaultPath: NWPath? { get }
  init()
}

/*!
 * @interface NEProxyServer
 * @discussion The NEProxyServer class declares the programmatic interface for an object that contains settings for a proxy server.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddress:port:
   * @discussion This function initializes a newly-allocated NEProxyServer object
   * @param address The string representation of the proxy server IP address.
   * @param port The TCP port of the proxy server.
   */
  @available(OSX 10.11, *)
  init(address: String, port: Int)

  /*!
   * @property address
   * @discussion The string representation of the proxy server IP address.
   */
  @available(OSX 10.11, *)
  var address: String { get }

  /*!
   * @property port
   * @discussion The TCP port of the proxy server.
   */
  @available(OSX 10.11, *)
  var port: Int { get }

  /*!
   * @property authenticationRequired
   * @discussion A flag indicating if the server requires authentication credentials.
   */
  @available(OSX 10.11, *)
  var isAuthenticationRequired: Bool

  /*!
   * @property username
   * @discussion The username portion of the authentication credential to use when communicating with the proxy server.
   */
  @available(OSX 10.11, *)
  var username: String?

  /*!
   * @property password
   * @discussion The password portion of the authentication credential to use when communicating with the proxy server. This property is only saved persistently if the username property is non-nil and non-empty and if the authenticationRequired flag is set.
   */
  @available(OSX 10.11, *)
  var password: String?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEProxySettings
 * @discussion The NEProxySettings class declares the programmatic interface for an object that contains proxy settings.
 *
 * NEProxySettings is used in the context of a Network Extension configuration to specify the proxy that should be used for network traffic when the Network Extension is active.
 */
@available(OSX 10.11, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property autoProxyConfigurationEnabled
   * @discussion A boolean indicating if proxy auto-configuration is enabled.
   */
  @available(OSX 10.11, *)
  var isAutoProxyConfigurationEnabled: Bool

  /*!
   * @property proxyAutoConfigurationURL
   * @discussion A URL specifying where the PAC script is located.
   */
  @available(OSX 10.11, *)
  @NSCopying var proxyAutoConfigurationURL: NSURL?

  /*!
   * @property proxyAutoConfigurationJavaScript
   * @discussion A string containing the PAC JavaScript source code.
   */
  @available(OSX 10.11, *)
  var proxyAutoConfigurationJavaScript: String?

  /*!
   * @property HTTPEnabled
   * @discussion A boolean indicating if the static HTTP proxy is enabled.
   */
  @available(OSX 10.11, *)
  var isHTTPEnabled: Bool

  /*!
   * @property HTTPServer
   * @discussion A NEProxyServer object containing the HTTP proxy server settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var httpServer: NEProxyServer?

  /*!
   * @property HTTPSEnabled
   * @discussion A boolean indicating if the static HTTPS proxy is enabled.
   */
  @available(OSX 10.11, *)
  var isHTTPSEnabled: Bool

  /*!
   * @property HTTPSServer
   * @discussion A NEProxyServer object containing the HTTPS proxy server settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var httpsServer: NEProxyServer?

  /*!
   * @property excludeSimpleHostnames
   * @discussion A flag indicating if the proxy settings should not be used for network destinations specified using single-label host names.
   */
  @available(OSX 10.11, *)
  var excludeSimpleHostnames: Bool

  /*!
   * @property exceptionList
   * @discussion An array of domain strings. If the destination host name of a connection shares a suffix with one of these strings then the proxy settings will not be used for the connection.
   */
  @available(OSX 10.11, *)
  var exceptionList: [String]?

  /*!
   * @property matchDomains
   * @discussion An array of domain strings. If the destination host name of a connection shares a suffix with one of these strings then the proxy settings will be used for the connection. Otherwise the proxy settings will not be used. If this property is nil then all connections to which the Network Extension applies will use the proxy settings.
   */
  @available(OSX 10.11, *)
  var matchDomains: [String]?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NETunnelNetworkSettings
 * @discussion The NETunnelNetworkSettings class declares the programmatic interface for an object that contains network settings.
 *
 * NETunnelNetworkSettings is used by NETunnelProviders to communicate the desired network settings for tunnel to the framework. The framework takes care of applying the contained settings to the system.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithTunnelRemoteAddress:
   * @discussion This function initializes a newly-allocated NETunnelNetworkSettings object with a given tunnel remote address.
   * @param address The address of the remote endpoint that is providing the tunnel service.
   */
  @available(OSX 10.11, *)
  init(tunnelRemoteAddress address: String)

  /*!
   * @property tunnelRemoteAddress
   * @discussion A string containing the IP address of the remote endpoint that is providing the tunnel service.
   */
  @available(OSX 10.11, *)
  var tunnelRemoteAddress: String { get }

  /*!
   * @property DNSSettings
   * @discussion An NEDNSSettings object that contains the desired tunnel DNS settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var dnsSettings: NEDNSSettings?

  /*!
   * @property proxySettings
   * @discussion An NEProxySettings object that contains the desired tunnel proxy settings.
   */
  @available(OSX 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.11, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @typedef NETunnelProviderError
 * @abstract Tunnel Provider error codes
 */
@available(OSX 10.11, *)
enum NETunnelProviderError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NETunnelProviderErrorNetworkSettingsInvalid The provided tunnel network settings are invalid. */
  case NetworkSettingsInvalid

  /*! @const NETunnelProviderErrorNetworkSettingsCanceled The request to set/clear the tunnel network settings was canceled. */
  case NetworkSettingsCanceled

  /*! @const NETunnelProviderErrorNetworkSettingsFailed The request to set/clear the tunnel network settings failed. */
  case NetworkSettingsFailed
}

/*!
 * @typedef NETunnelProviderRoutingMethod
 * @abstract Network traffic routing methods.
 */
@available(OSX 10.11, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NETunnelProviderRoutingMethodDestinationIP Route network traffic to the tunnel based on destination IP */
  case DestinationIP

  /*! @const NETunnelProviderRoutingMethodSourceApplication Route network traffic to the tunnel based on source application */
  case SourceApplication
}

/*! @const NETunnelProviderErrorDomain The tunnel provider error domain */
@available(OSX 10.11, *)
let NETunnelProviderErrorDomain: String

/*!
 * @interface NETunnelProvider
 * @discussion The NETunnelProvider class declares the programmatic interface for an object that provides a network tunnel service.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NETunnelProvider : NEProvider {

  /*!
   * @method handleAppMessage:completionHandler:
   * @discussion This function is called by the framework when the container app sends a message to the provider. Subclasses should override this method to handle the message and optionally send a response.
   * @param messageData An NSData object containing the message sent by the container app.
   * @param completionHandler A block that the method can execute to send a response to the container app. If this parameter is non-nil then the method implementation should always execute the block. If this parameter is nil then the method implementation should treat this as an indication that the container app is not expecting a response.
   */
  @available(OSX 10.11, *)
  func handleAppMessage(messageData: NSData, completionHandler: ((NSData?) -> Void)? = nil)

  /*!
   * @method setTunnelNetworkSettings:completionHandler:
   * @discussion This function is called by tunnel provider implementations to set the network settings of the tunnel, including IP routes, DNS servers, and virtual interface addresses depending on the tunnel type. Subclasses should not override this method. This method can be called multiple times during the lifetime of a particular tunnel. It is not necessary to call this function with nil to clear out the existing settings before calling this function with a non-nil configuration.
   * @param tunnelNetworkSettings An NETunnelNetworkSettings object containing all of the desired network settings for the tunnel. Pass nil to clear out the current network settings.
   * @param completionHandler A block that will be called by the framework when the process of setting or clearing the network settings is complete. If an error occurred during the process of setting or clearing the IP network settings then a non-nill NSError object will be passed to this block containing error details.
   */
  @available(OSX 10.11, *)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @property protocolConfiguration
   * @discussion An NEVPNProtocol object containing the provider's current configuration. The value of this property may change during the lifetime of the tunnel provided by this NETunnelProvider, KVO can be used to detect when changes occur.  For different protocol types, this property will contain the corresponding subclass.   For NEVPNProtocolTypePlugin protocol type, this property will contain the NETunnelProviderProtocol subclass.  For NEVPNProtocolTypeIKEv2 protocol type, this property will contain the NEVPNProtocolIKEv2 subclass.
   */
  @available(OSX 10.11, *)
  var protocolConfiguration: NEVPNProtocol { get }

  /*!
   * @property appRules
   * @discussion An array of NEAppRule objects specifying which applications are currently being routed through the tunnel provided by this NETunnelProvider. If application-based routing is not enabled for the tunnel, then this property is set to nil. 
   */
  @available(OSX 10.11, *)
  var appRules: [NEAppRule]? { get }

  /*!
   * @property routingMethod
   * @discussion The method by which network traffic is routed to the tunnel. The default is NETunnelProviderRoutingMethodDestinationIP.
   */
  @available(OSX 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }

  /*!
   * @property reasserting
   * @discussion A flag that indicates to the framework if this NETunnelProvider is currently re-establishing the tunnel. Setting this flag will cause the session status visible to the user to change to "Reasserting". Clearing this flag will change the user-visible status of the session back to "Connected". Setting and clearing this flag only has an effect if the session is in the "Connected" state.
   */
  @available(OSX 10.11, *)
  var isReasserting: Bool
  init()
}

/*!
 * @interface NETunnelProviderManager
 * @discussion The NETunnelProviderManager class declares the programmatic interface for an object that is used to configure and control network tunnels provided by NETunnelProviders.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NETunnelProviderManager : NEVPNManager {

  /*!
   * @method loadAllFromPreferencesWithCompletionHandler:
   * @discussion This function asynchronously reads all of the NETunnelProvider configurations created by the calling app that have previously been saved to disk and returns them as NETunnelProviderManager objects.
   * @param completionHandler A block that takes an array NETunnelProviderManager objects. The array passed to the block may be empty if no NETunnelProvider configurations were successfully read from the disk.  The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.11, *)
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NETunnelProviderManager]?, NSError?) -> Void)

  /*!
   * @method copyAppRules
   * @discussion This function returns an array of NEAppRule objects.
   */
  @available(OSX 10.11, *)
  func copyAppRules() -> [NEAppRule]?

  /*!
   * @property routingMethod
   * @discussion The method by which network traffic is routed to the tunnel. The default is NETunnelProviderRoutingMethodDestinationIP.
   */
  @available(OSX 10.11, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}

/*!
 * @interface NETunnelProviderProtocol
 * @discussion The NETunnelProviderProtocol class declares the programmatic interface for an object that contains NETunnelProvider-specific configuration settings.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.11, *)
class NETunnelProviderProtocol : NEVPNProtocol {

  /*!
   * @property providerConfiguration
   * @discussion A dictionary containing NETunnelProvider vendor-specific configuration parameters. This dictionary is passed as-is to NETunnelProviders when a tunnel is started.
   */
  @available(OSX 10.11, *)
  var providerConfiguration: [String : AnyObject]?

  /*!
   * @property providerBundleIdentifier
   * @discussion A string containing the bundle identifier of the NETunnelProvider to be used by this configuration.
   */
  @available(OSX 10.11, *)
  var providerBundleIdentifier: String?
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @file NETunnelProviderSession.h
 * @discussion This file declares the NETunnelProviderSession API. The NETunnelProviderSession API is used to control network tunnel services provided by NETunnelProvider implementations.
 *
 * This API is part of NetworkExtension.framework.
 */
@available(OSX 10.11, *)
class NETunnelProviderSession : NEVPNConnection {

  /*!
   * @method startTunnelWithOptions:andReturnError:
   * @discussion This function is used to start the tunnel using the configuration associated with this connection object. The tunnel connection process is started and this function returns immediately.
   * @param options A dictionary that will be passed as-is to the tunnel provider during the process of starting the tunnel.
   * @param error If the tunnel was started successfully, this parameter is set to nil. Otherwise this parameter is set to the error that occurred. Possible errors include:
   *    1. NEVPNErrorConfigurationInvalid
   *    2. NEVPNErrorConfigurationDisabled
   * @return YES if the tunnel was started successfully, NO if an error occurred.
   */
  @available(OSX 10.11, *)
  func startTunnelWithOptions(options: [String : AnyObject]?) throws

  /*!
   * @method stopTunnel
   * @discussion This function is used to stop the tunnel. The tunnel disconnect process is started and this function returns immediately.
   */
  @available(OSX 10.11, *)
  func stopTunnel()

  /*!
   * @method sendProviderMessage:responseHandler:
   * @discussion This function sends a message to the NETunnelProvider and provides a way to receive a response.
   * @param messageData An NSData object containing the message to be sent.
   * @param error If the message was sent successfully, this parameter is set to nil. Otherwise this parameter is set to the error that occurred. Possible errors include:
   *    1. NEVPNErrorConfigurationInvalid
   *    2. NEVPNErrorConfigurationDisabled
   * @param responseHandler A block that handles the response. Can be set to nil if no response is expected.
   * @return YES if the message was sent successfully, NO if an error occurred.
   */
  @available(OSX 10.11, *)
  func sendProviderMessage(messageData: NSData, responseHandler: ((NSData?) -> Void)? = nil) throws
  init()
}

/*!
 * @typedef NEVPNStatus
 * @abstract VPN status codes
 */
@available(OSX 10.10, *)
enum NEVPNStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNStatusInvalid The VPN is not configured. */
  case Invalid

  /*! @const NEVPNStatusDisconnected The VPN is disconnected. */
  case Disconnected

  /*! @const NEVPNStatusConnecting The VPN is connecting. */
  case Connecting

  /*! @const NEVPNStatusConnected The VPN is connected. */
  case Connected

  /*! @const NEVPNStatusReasserting The VPN is reconnecting following loss of underlying network connectivity. */
  case Reasserting

  /*! @const NEVPNStatusDisconnecting The VPN is disconnecting. */
  case Disconnecting
}

/*! @const NEVPNStatusDidChangeNotification Name of the NSNotification that is posted when the VPN status changes. */
@available(OSX 10.10, *)
let NEVPNStatusDidChangeNotification: String

/*! @const NEVPNConnectionStartOptionUsername Specify this key in the options dictionary passed to startVPNTunnelWithOptions:returningError: to override the username saved in the configuration. The value is a string */
@available(OSX 10.11, *)
let NEVPNConnectionStartOptionUsername: String

/*! @const kNEVPNConnectioNEVPNConnectionStartOptionPasswordnOptionAuthPassword Specify this key in the options dictionary passed to startVPNTunnelWithOptions:returningError: to override the password saved in the configuration. The value is a string */
@available(OSX 10.11, *)
let NEVPNConnectionStartOptionPassword: String

/*!
 * @interface NEVPNConnection
 * @discussion The NEVPNConnection class declares the programmatic interface for an object that manages VPN connections.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEVPNConnection : NSObject {

  /*!
   * @method startVPNTunnelAndReturnError:
   * @discussion This function is used to start the VPN tunnel using the current VPN configuration. The VPN tunnel connection process is started and this function returns immediately.
   * @param error If the VPN tunnel was started successfully, this parameter is set to nil. Otherwise this parameter is set to the error that occurred. Possible errors include:
   *    1. NEVPNErrorConfigurationInvalid
   *    2. NEVPNErrorConfigurationDisabled
   * @return YES if the VPN tunnel was started successfully, NO if an error occurred.
   */
  @available(OSX 10.10, *)
  func startVPNTunnel() throws

  /*!
   * @method startVPNTunnelWithOptions:andReturnError:
   * @discussion This function is used to start the VPN tunnel using the current VPN configuration. The VPN tunnel connection process is started and this function returns immediately.
   * @param options A dictionary that will be passed to the tunnel provider during the process of starting the tunnel.
   *    If not nil, 'options' is an NSDictionary may contain the following keys
   *        NEVPNConnectionStartOptionUsername
   *        NEVPNConnectionStartOptionPassword
   * @param error If the VPN tunnel was started successfully, this parameter is set to nil. Otherwise this parameter is set to the error that occurred. Possible errors include:
   *    1. NEVPNErrorConfigurationInvalid
   *    2. NEVPNErrorConfigurationDisabled
   * @return YES if the VPN tunnel was started successfully, NO if an error occurred.
   */
  @available(OSX 10.11, *)
  func startVPNTunnelWithOptions(options: [String : NSObject]?) throws

  /*!
   * @method stopVPNTunnel:
   * @discussion This function is used to stop the VPN tunnel. The VPN tunnel disconnect process is started and this function returns immediately.
   */
  @available(OSX 10.10, *)
  func stopVPNTunnel()

  /*!
   * @property status
   * @discussion The current status of the VPN.
   */
  @available(OSX 10.10, *)
  var status: NEVPNStatus { get }

  /*!
   * @property connectedDate
   * @discussion The date and time when the connection status changed to NEVPNStatusConnected. This property is nil if the connection is not fully established.
   */
  @available(OSX 10.11, *)
  var connectedDate: NSDate? { get }
  init()
}

/*!
 * @typedef NEVPNError
 * @abstract VPN error codes
 */
@available(OSX 10.10, *)
enum NEVPNError : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNErrorConfigurationInvalid The VPN configuration is invalid */
  case ConfigurationInvalid

  /*! @const NEVPNErrorConfigurationDisabled The VPN configuration is not enabled. */
  case ConfigurationDisabled

  /*! @const NEVPNErrorConnectionFailed The connection to the VPN server failed. */
  case ConnectionFailed

  /*! @const NEVPNErrorConfigurationStale The VPN configuration is stale and needs to be loaded. */
  case ConfigurationStale

  /*! @const NEVPNErrorConfigurationReadWriteFailed The VPN configuration cannot be read from or written to disk. */
  case ConfigurationReadWriteFailed

  /*! @const NEVPNErrorConfigurationUnknown An unknown configuration error occurred. */
  case ConfigurationUnknown
}

/*! @const NEVPNErrorDomain The VPN error domain */
@available(OSX 10.10, *)
let NEVPNErrorDomain: String

/*! @const NEVPNConfigurationChangeNotification Name of the NSNotification that is posted when the VPN configuration changes. */
@available(OSX 10.10, *)
let NEVPNConfigurationChangeNotification: String

/*!
 * @interface NEVPNManager
 * @discussion The NEVPNManager class declares the programmatic interface for an object that manages Virtual Private Network (VPN) configurations.
 *
 * NEVPNManager declares methods and properties for configuring and controlling a VPN.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEVPNManager : NSObject {

  /*!
   * @method sharedManager
   * @return The singleton NEVPNManager object for the calling process.
   */
  @available(OSX 10.10, *)
  class func shared() -> NEVPNManager

  /*!
   * @method loadFromPreferencesWithCompletionHandler:
   * @discussion This function loads the current VPN configuration from the caller's VPN preferences.
   * @param completionHandler A block that will be called on the main thread when the load operation is completed. The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method removeFromPreferencesWithCompletionHandler:
   * @discussion This function removes the VPN configuration from the caller's VPN preferences. If the VPN is enabled, has VPN On Demand enabled, and has VPN On Demand rules, the VPN is disabled and the VPN On Demand rules are de-activated.
   * @param completionHandler A block that will be called on the main thread when the remove operation is completed. The NSError passed to this block will be nil if the remove operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func removeFromPreferences(completionHandler completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @method saveToPreferencesWithCompletionHandler:
   * @discussion This function saves the VPN configuration in the caller's VPN preferences. If the VPN is enabled, has VPN On Demand enabled, and has VPN On Demand rules, the VPN On Demand rules are activated.
   *
   * @param completionHandler A block that will be called on the main thread when the save operation is completed. The NSError passed to this block will be nil if the save operation succeeded, non-nil otherwise.
   */
  @available(OSX 10.10, *)
  func saveToPreferences(completionHandler completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @method setAuthorization:
   * @discussion This function sets an authorization object that can be used to obtain the authorization rights necessary to modify the system VPN configuration.
   * @param authorization The AuthorizationRef to use to obtain rights.
   */
  @available(OSX 10.10, *)
  func setAuthorization(authorization: AuthorizationRef)

  /*!
   * @property onDemandRules
   * @discussion An array of NEOnDemandRule objects.
   */
  @available(OSX 10.10, *)
  var onDemandRules: [NEOnDemandRule]?

  /*!
   * @property onDemandEnabled
   * @discussion Toggles VPN On Demand.
   */
  @available(OSX 10.10, *)
  var isOnDemandEnabled: Bool

  /*!
   * @property localizedDescription
   * @discussion A string containing a description of the VPN.
   */
  @available(OSX 10.10, *)
  var localizedDescription: String?

  /*!
   * @property protocol
   * @discussion An NEVPNProtocol object containing the protocol-specific portion of the VPN configuration.
   */
  @available(OSX, introduced=10.10, deprecated=10.11, message="Use protocolConfiguration instead")
  var `protocol`: NEVPNProtocol?

  /*!
   * @property protocolConfiguration
   * @discussion An NEVPNProtocol object containing the protocol-specific portion of the VPN configuration.
   */
  @available(OSX 10.11, *)
  var protocolConfiguration: NEVPNProtocol?

  /*!
   * @property connection
   * @discussion The NEVPNConnection object used for controlling the VPN tunnel.
   */
  @available(OSX 10.10, *)
  var connection: NEVPNConnection { get }

  /*!
   * @property enabled
   * @discussion Toggles the enabled status of the VPN. Setting this property will disable VPN configurations of other apps. This property will be set to NO  when other VPN configurations are enabled.
   */
  @available(OSX 10.10, *)
  var isEnabled: Bool
  init()
}

/*!
 * @interface NEVPNProtocol
 * @discussion The NEVPNProtocol class declares the programmatic interface of an object that manages the protocol-specific portion of a VPN configuration.
 *
 * NEVPNProtocol is an abstract base class from which other protocol-specific classes are derived.
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEVPNProtocol : NSObject, NSCopying, NSSecureCoding {

  /*!
   * @property serverAddress
   * @discussion The VPN server. Depending on the protocol, may be an IP address, host name, or URL.
   */
  @available(OSX 10.10, *)
  var serverAddress: String?

  /*!
   * @property username
   * @discussion The username component of the VPN authentication credential.
   */
  @available(OSX 10.10, *)
  var username: String?

  /*!
   * @property passwordReference
   * @discussion The password component of the VPN authentication credential. The value is a persistent reference to a keychain item with the kSecClassGenericPassword class.
   */
  @available(OSX 10.10, *)
  @NSCopying var passwordReference: NSData?

  /*!
   * @property identityReference
   * @discussion The certificate and private key component of the VPN authentication credential. The value is a persistent reference to a keychain item with the kSecClassIdentity class.
   */
  @available(OSX 10.10, *)
  @NSCopying var identityReference: NSData?

  /*!
   * @property identityData
   * @discussion The PKCS12 data for the VPN authentication identity. The value is a NSData in PKCS12 format.
   */
  @available(OSX 10.11, *)
  @NSCopying var identityData: NSData?

  /*!
   * @property identityDataPassword 
   * @discussion The password to be used to decrypt the PKCS12 identity data.
   */
  @available(OSX 10.11, *)
  var identityDataPassword: String?

  /*!
   * @property disconnectOnSleep
   * @discussion If YES, the VPN connection will be disconnected when the device goes to sleep. The default is NO.
   */
  @available(OSX 10.10, *)
  var isDisconnectOnSleep: Bool

  /*!
   * @property proxySettings
   * @discussion An NEProxySettings object containing the proxy settings to use for connections routed through the tunnel.
   */
  @available(OSX 10.11, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEVPNIKEv2EncryptionAlgorithm
 * @abstract IKEv2 Encryption Algorithms
 */
@available(OSX 10.10, *)
enum NEVPNIKEv2EncryptionAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEv2EncryptionAlgorithmDES Data Encryption Standard (DES) */
  case AlgorithmDES

  /*! @const NEVPNIKEv2EncryptionAlgorithm3DES Triple Data Encryption Algorithm (aka 3DES) */
  case Algorithm3DES

  /*! @const NEVPNIKEv2EncryptionAlgorithmAES128 Advanced Encryption Standard 128 bit (AES128) */
  case AlgorithmAES128

  /*! @const NEVPNIKEv2EncryptionAlgorithmAES256 Advanced Encryption Standard 256 bit (AES256) */
  case AlgorithmAES256

  /*! @const NEVPNIKEv2EncryptionAlgorithmAES128GCM Advanced Encryption Standard 128 bit (AES128GCM) */
  @available(OSX 10.11, *)
  case AlgorithmAES128GCM

  /*! @const NEVPNIKEv2EncryptionAlgorithmAES256GCM Advanced Encryption Standard 256 bit (AES256GCM) */
  @available(OSX 10.11, *)
  case AlgorithmAES256GCM
}

/*!
 * @typedef NEVPNIKEv2IntegrityAlgorithm
 * @abstract IKEv2 Integrity Algorithms
 */
@available(OSX 10.10, *)
enum NEVPNIKEv2IntegrityAlgorithm : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEv2IntegrityAlgorithmSHA96 SHA-1 96 bit */
  case SHA96

  /*! @const NEVPNIKEv2IntegrityAlgorithmSHA160 SHA-1 160 bit */
  case SHA160

  /*! @const NEVPNIKEv2IntegrityAlgorithmSHA256 SHA-2 256 bit */
  case SHA256

  /*! @const NEVPNIKEv2IntegrityAlgorithmSHA384 SHA-2 384 bit */
  case SHA384

  /*! @const NEVPNIKEv2IntegrityAlgorithmSHA512 SHA-2 512 bit */
  case SHA512
}

/*!
 * @typedef NEVPNIKEv2DeadPeerDetectionRate
 * @abstract IKEv2 Dead Peer Detection Rates
 */
@available(OSX 10.10, *)
enum NEVPNIKEv2DeadPeerDetectionRate : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEv2DeadPeerDetectionRateNone Do not perform dead peer detection */
  case None

  /*! @const NEVPNIKEv2DeadPeerDetectionRateLow Run dead peer detection once every 30 minutes. If the peer does not respond, retry 5 times at 1 second intervals before declaring the peer dead */
  case Low

  /*! @const NEVPNIKEv2DeadPeerDetectionRateMedium Run dead peer detection once every 10 minutes. If the peer does not respond, retry 5 times at 1 second intervals before declaring the peer dead */
  case Medium

  /*! @const NEVPNIKEv2DeadPeerDetectionRateHigh Run dead peer detection once every 1 minute. If the peer does not respond, retry 5 times at 1 second intervals before declaring the peer dead */
  case High
}

/*!
 * @typedef NEVPNIKEv2DiffieHellmanGroup
 * @abstract IKEv2 Diffie Hellman groups
 */
@available(OSX 10.10, *)
enum NEVPNIKEv2DiffieHellmanGroup : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEv2DiffieHellmanGroup0 Diffie Hellman group 0 */
  case Group0

  /*! @const NEVPNIKEv2DiffieHellmanGroup1 Diffie Hellman group 1 */
  case Group1

  /*! @const NEVPNIKEv2DiffieHellmanGroup2 Diffie Hellman group 2 */
  case Group2

  /*! @const NEVPNIKEv2DiffieHellmanGroup5 Diffie Hellman group 5 */
  case Group5

  /*! @const NEVPNIKEv2DiffieHellmanGroup14 Diffie Hellman group 14 */
  case Group14

  /*! @const NEVPNIKEv2DiffieHellmanGroup15 Diffie Hellman group 15 */
  case Group15

  /*! @const NEVPNIKEv2DiffieHellmanGroup16 Diffie Hellman group 16 */
  case Group16

  /*! @const NEVPNIKEv2DiffieHellmanGroup17 Diffie Hellman group 17 */
  case Group17

  /*! @const NEVPNIKEv2DiffieHellmanGroup18 Diffie Hellman group 18 */
  case Group18

  /*! @const NEVPNIKEv2DiffieHellmanGroup19 Diffie Hellman group 19 */
  case Group19

  /*! @const NEVPNIKEv2DiffieHellmanGroup20 Diffie Hellman group 20 */
  case Group20

  /*! @const NEVPNIKEv2DiffieHellmanGroup21 Diffie Hellman group 21 */
  case Group21
}

/*!
 * @typedef NEVPNIKEv2CertificateType
 * @abstract IKEv2 Certificate types
 */
@available(OSX 10.11, *)
enum NEVPNIKEv2CertificateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEv2CertificateType RSA */
  case RSA

  /*! @const NEVPNIKEv2CertificateTypeECDSA256 ECDSA with p-256 curve */
  case ECDSA256

  /*! @const NEVPNIKEv2CertificateTypeECDSA384 ECDSA with p-384 curve */
  case ECDSA384

  /*! @const NEVPNIKEv2CertificateTypeECDSA521 ECDSA with p-521 curve */
  case ECDSA521
}

/*!
 * @class NEVPNIKEv2SecurityAssociationParameters
 * @discussion The NEVPNIKEv2SecurityAssociationParameters class declares the programmatic interface of an object that manages parameters for an IPSec Security Association
 *
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property encryptionAlgorithm
   * @discussion The algorithm used by the Security Association to encrypt and decrypt data. Default is NEVPNIKEv2EncryptionAlgorithm3DES.
   */
  @available(OSX 10.10, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm

  /*!
   * @property integrityAlgorithm
   * @discussion The algorithm used by the Security Association to verify the integrity of data. Default is NEVPNIKEv2IntegrityAlgorithmSHA96. The IKE psedo-random function algorithm will be inferred based on the integrity algorithm.
   */
  @available(OSX 10.10, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm

  /*!
   * @property diffieHellmanGroup
   * @discussion The Diffie Hellman group used by the Security Association. Default is NEVPNIKEv2DiffieHellmanGroup2.
   */
  @available(OSX 10.10, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup

  /*!
   * @property lifetimeMinutes
   * @discussion The life time of the Security Association, in minutes. Default is 60 for IKE Security Associations, and 30 for Child Security Associations. Before the lifetime is reached, IKEv2 will attempt to rekey the Security Association to maintain the connection.
   */
  @available(OSX 10.10, *)
  var lifetimeMinutes: Int32
  init()
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.10, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEVPNProtocolIKEv2
 * @discussion The NEVPNProtocolIKEv2 class declares the programmatic interface of an object that manages the IKEv2-specific portion of a VPN configuration.
 *
 * Instances of this class use IKE version 2 for key negotiation.
 * Instances of this class are thread safe.
 */
@available(OSX 10.10, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {

  /*!
   * @property deadPeerDetectionRate
   * @discussion How frequently the IKEv2 client will run the dead peer detection algorithm.  Default is NEVPNIKEv2DeadPeerDetectionRateMedium.
   */
  @available(OSX 10.10, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate

  /*!
   * @property serverCertificateIssuerCommonName
   * @discussion A string containing the Subject Common Name field of the Certificate Authority certificate that issued the IKEv2 server's certificate.
   */
  @available(OSX 10.10, *)
  var serverCertificateIssuerCommonName: String?

  /*!
   * @property serverCertificateCommonName
   * @discussion A string containing the value to verify in the IKEv2 server certificate's Subject Common Name field.
   */
  @available(OSX 10.10, *)
  var serverCertificateCommonName: String?

  /*!
   * @property certificateType
   * @discussion contains the type of certificate if an certificate is configured.  Default is RSA.
   */
  @available(OSX 10.11, *)
  var certificateType: NEVPNIKEv2CertificateType

  /*!
   * @property useConfigurationAttributeInternalIPSubnet
   * @discussion Boolean indicating if client should use INTERNAL_IP4_SUBNET / INTERNAL_IP6_SUBNET attributes.  Default is False.
   */
  @available(OSX 10.11, *)
  var isUseConfigurationAttributeInternalIPSubnet: Bool

  /*!
   * @property IKESecurityAssociationParameters
   * @discussion Parameters for the IKE SA
   */
  @available(OSX 10.10, *)
  var ikeSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }

  /*!
   * @property childSecurityAssociationParameters
   * @discussion Parameters for the child SA
   */
  @available(OSX 10.10, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }

  /*!
   * @property disableMOBIKE
   * @discussion Disable MOBIKE negotiation. Default is NO.
   */
  @available(OSX 10.11, *)
  var isDisableMOBIKE: Bool

  /*!
   * @property disableRedirect
   * @discussion Disable Server Redirect. Default is NO.
   */
  @available(OSX 10.11, *)
  var isDisableRedirect: Bool

  /*!
   * @property enablePFS
   * @discussion Enable Perfect Forward Secrecy. Default is NO.
   */
  @available(OSX 10.11, *)
  var isEnablePFS: Bool

  /*!
   * @property enableRevocationCheck
   * @discussion Enable certificate revocation check. Default is NO.
   */
  @available(OSX 10.11, *)
  var isEnableRevocationCheck: Bool

  /*!
   * @property strictRevocationCheck
   * @discussion Require positive certificate revocation check response for peer certificate validation to pass. Default is NO.
   */
  @available(OSX 10.11, *)
  var isStrictRevocationCheck: Bool
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEVPNIKEAuthenticationMethod
 * @abstract Internet Key Exchange (IKE) authentication methods used to authenticate with the IPSec server.
 */
@available(OSX 10.10, *)
enum NEVPNIKEAuthenticationMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEVPNIKEAuthenticationMethodNone Do not authenticate with the IPSec server */
  case None

  /*! @const NEVPNIKEAuthenticationMethodCertificate Use a certificate and private key as the authentication credential */
  case Certificate

  /*! @const NEVPNIKEAuthenticationMethodSharedSecret Use a shared secret as the authentication credential */
  case SharedSecret
}

/*!
 * @interface NEVPNProtocolIPSec
 * @discussion The NEVPNProtocolIPSec class declares the programmatic interface of an object that manages the IPSec-specific portion of a VPN configuration.
 *
 * Instances of this class use IKE version 1 for key negotiation.
 */
@available(OSX 10.10, *)
class NEVPNProtocolIPSec : NEVPNProtocol {

  /*!
   * @property authenticationMethod
   * @discussion The method used to authenticate with the IPSec server. Note that if this property is set to NEVPNIKEAuthenticationMethodNone, extended authentication will still be negotiated if useExtendedAuthentication is set to YES.
   */
  @available(OSX 10.10, *)
  var authenticationMethod: NEVPNIKEAuthenticationMethod

  /*!
   * @property useExtendedAuthentication
   * @discussion A flag indicating if extended authentication will be negotiated. This authentication is in addition to the IKE authentication used to authenticate the endpoints of the IKE session.
   *   For IKE version 1, when this flag is set X-Auth authentication will be negotiated as part of the IKE session, using the username and password properties as the credential.
   *   For IKE version 2, when this flag is set EAP authentication will be negotiated as part of the IKE session, using the username, password, and/or identity properties as the credential depending on which EAP method the server requires.
   */
  @available(OSX 10.10, *)
  var isUseExtendedAuthentication: Bool

  /*!
   * @property sharedSecretReference
   * @discussion A persistent reference to a keychain item of class kSecClassGenericPassword containing the IKE shared secret.
   */
  @available(OSX 10.10, *)
  @NSCopying var sharedSecretReference: NSData?

  /*!
   * @property localIdentifier
   * @discussion A string identifying the local IPSec endpoint for authentication purposes.
   */
  @available(OSX 10.10, *)
  var localIdentifier: String?

  /*!
   * @property remoteIdentifier
   * @discussion A string identifying the remote IPSec endpoint for authentication purposes.
   */
  @available(OSX 10.10, *)
  var remoteIdentifier: String?
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NWBonjourServiceEndpoint
 * @discussion NWBonjourServiceEndpoint is a subclass of NWEndpoint. It represents an endpoint 
 *		backed by a Bonjour service, specified with a name, type, and domain. For example, the 
 *		Bonjour service MyMusicStudio._music._tcp.local. has the name "MyMusicStudio", 
 *		the type "_music._tcp", and the domain "local".
 */
@available(OSX 10.11, *)
class NWBonjourServiceEndpoint : NWEndpoint {

  /*!
   * @method endpointWithName:type:domain:
   * @param name The Bonjour service name.
   * @param type The Bonjour service type.
   * @param domain The Bonjour service domain.
   * @return An initialized NWBonjourServiceEndpoint object.
   */
  @available(OSX 10.11, *)
  convenience init(name: String, type: String, domain: String)

  /*!
   * @property name
   * @discussion The endpoint's Bonjour service name.
   */
  @available(OSX 10.11, *)
  var name: String { get }

  /*!
   * @property type
   * @discussion The endpoint's Bonjour service type.
   */
  @available(OSX 10.11, *)
  var type: String { get }

  /*!
   * @property domain
   * @discussion The endpoint's Bonjour service domain.
   */
  @available(OSX 10.11, *)
  var domain: String { get }
  init()
}

/*!
 * @interface NWEndpoint
 * @discussion NWEndpoint is a generic class to represent network endpoints, such as a port on a remote server.
 */
@available(OSX 10.11, *)
class NWEndpoint : NSObject {
  init()
}

/*!
 * @interface NWHostEndpoint
 * @discussion NWHostEndpoint is a subclass of NWEndpoint. It represents an endpoint backed by a 
 *		hostname and port. Note that a hostname string may be an IP or IPv6 address.
 */
@available(OSX 10.11, *)
class NWHostEndpoint : NWEndpoint {

  /*!
   * @method endpointWithHostname:port:
   * @param hostname A string representation of the hostname or address, such as www.apple.com or 10.0.0.1.
   * @param port A string containing the port on the host, such as 80.
   * @return An initialized NWHostEndpoint object.
   */
  @available(OSX 10.11, *)
  convenience init(hostname: String, port: String)

  /*!
   * @property hostname
   * @discussion The endpoint's hostname.
   */
  @available(OSX 10.11, *)
  var hostname: String { get }

  /*!
   * @property port
   * @discussion The endpoint's port.
   */
  @available(OSX 10.11, *)
  var port: String { get }
  init()
}

/*!
 * @typedef NWPathStatus
 * @abstract Path status values
 */
@available(OSX 10.11, *)
enum NWPathStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NWPathStatusInvalid The path cannot be evaluated. */
  case Invalid

  /*! @const NWPathStatusSatisfied The path is ready to be used for traffic. */
  case Satisfied

  /*! @const NWPathStatusUnsatisfied The network for this connection is not available. */
  case Unsatisfied

  /*! @const NWPathStatusSatisfiable The path may become satisfied upon
  	 *		a connection attempt. */
  case Satisfiable
}

/*!
 * @interface NWPath
 * @discussion A network path, represented with NWPath, expresses the viability status and 
 *		properties of the path that a networking connection will take on the device. For example, 
 *		if the path status is NWPathStatusSatisfied, then a connection could use that path.
 */
@available(OSX 10.11, *)
class NWPath : NSObject {

  /*!
   * @property status
   * @discussion The evaluated NWPathStatus of the NWPath.
   */
  @available(OSX 10.11, *)
  var status: NWPathStatus { get }

  /*!
   * @property expensive
   * @discussion Returns YES is the path is considered expensive, as when using a cellular data plan.
   */
  @available(OSX 10.11, *)
  var isExpensive: Bool { get }

  /*!
   * @method isEqualToPath:
   * @param path An NWPath object to compare.
   * @return YES if the two path objects have the same content, NO otherwise.
   */
  @available(OSX 10.11, *)
  func isEqualTo(path: NWPath) -> Bool
  init()
}

/*!
 * @typedef NWTCPConnectionState
 * @abstract Defined connection states. New types may be defined in the future.
 */
@available(OSX 10.11, *)
enum NWTCPConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @constant NWTCPConnectionStateInvalid The connection is in an invalid or uninitialized state */
  case Invalid

  /*! @constant NWTCPConnectionStateConnecting The connection is attempting */
  case Connecting

  /*! @constant NWTCPConnectionStateWaiting The connection has attempted but failed. It is now
  	 *		waiting for better condition(s) before trying again.
  	 */
  case Waiting

  /*! @constant NWTCPConnectionStateConnected The connection is established. It is now possible
  	 *		to transfer data. If TLS is in use, the TLS handshake would have finished when the connection
  	 *		is in this state.
  	 */
  case Connected

  /*! @constant NWTCPConnectionStateDisconnected The connection is disconnected. It is no longer
  	 *		possible to transfer data. The application should call cancellation method to clean up resources
  	 *		when the connection is in this state.
  	 */
  case Disconnected

  /*! @constant NWTCPConnectionStateCancelled The connection is cancelled. This is triggered by
  	 *		the cancellation method.
  	 */
  case Cancelled
}

/*!
 * @interface NWTCPConnection
 * @discussion Establish TCP connections to an endpoint, and send and receive data on the TCP connection.
 */
@available(OSX 10.11, *)
class NWTCPConnection : NSObject {

  /*!
   * @method initWithUpgradeForConnection:
   * @discussion This convenience initializer can be used to create a new connection that would only
   * 		be connected if there exists a better path (as determined by the system) to the destination
   * 		endpoint of the original connection. It will be initialized using the same destination endpoint
   * 		and set of parameters from the original connection.
   *
   * 		If the original connection becomes disconnected or cancelled, the new "upgrade" connection
   * 		would automatically be considered better.
   *
   *		The caller should create an NWTCPConnection and watch for the hasBetterPath property.
   *		When this property is YES, the caller should attempt to create a new upgrade
   *		connection, with the goal to start transferring data on the new better path as soon as
   *		possible to reduce power and potentially monetary cost. When the new upgrade connection
   *		becomes connected and when the caller wraps up the previous caller session on
   *		the original connection, the caller can start using the new upgrade connection and
   *		tear down the original one.
   *
   * @param connection The original connection from which the caller will upgrade
   * @return An initialized NWTCPConnection
   */
  @available(OSX 10.11, *)
  init(upgradeFor connection: NWTCPConnection)

  /*!
   * @property state
   * @discussion The status of the connection. Use KVO to watch this property to get updates.
   */
  @available(OSX 10.11, *)
  var state: NWTCPConnectionState { get }

  /*!
   * @property viable
   * @discussion YES if the connection can read and write data, NO otherwise. Use KVO to watch this property.
   */
  @available(OSX 10.11, *)
  var isViable: Bool { get }

  /*!
   * @property hasBetterPath
   * @discussion YES if the system determines there is a better path the destination can be reached if
   *		the caller creates a new connection using the same endpoint and parameters. This can
   *		be done using the convenience upgrade initializer method.
   *		Use KVO to watch this property to get updates.
   */
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }

  /*!
   * @property endpoint
   * @discussion The destination endpoint with which this connection was created.
   */
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }

  /*!
   * @property connectedPath
   * @discussion The network path over which the connection was established. The caller can query
   *		additional properties from the NWPath object for more information.
   *
   * 		Note that this contains a snapshot of information at the time of connection establishment
   * 		for this connection only. As a result, some underlying properties might change in time and
   * 		might not reflect the path for other connections that might be established at different times.
   */
  @available(OSX 10.11, *)
  var connectedPath: NWPath? { get }

  /*!
   * @property localAddress
   * @discussion The IP address endpoint from which the connection was connected.
   */
  @available(OSX 10.11, *)
  var localAddress: NWEndpoint? { get }

  /*!
   * @property remoteAddress
   * @discussion The IP address endpoint to which the connection was connected.
   */
  @available(OSX 10.11, *)
  var remoteAddress: NWEndpoint? { get }

  /*!
   * @property txtRecord
   * @discussion When the connection is connected to a Bonjour service endpoint, the TXT record associated
   * 		with the Bonjour service is available via this property. Beware that the value comes from
   * 		the network. Care must be taken when parsing this potentially malicious value.
   */
  @available(OSX 10.11, *)
  var txtRecord: NSData? { get }

  /*!
   * @property error
   * @discussion The connection-wide error property indicates any fatal error that occurred while
   * 		processing the connection or performing data reading or writing.
   */
  @available(OSX 10.11, *)
  var error: NSError? { get }

  /*!
   * @method cancel:
   * @discussion Cancel the connection. This will clean up the resources associated with this object
   * 		and transition this object to NWTCPConnectionStateCancelled state.
   */
  @available(OSX 10.11, *)
  func cancel()

  /*!
   * @method readLength:completionHandler:
   * @discussion Read "length" number of bytes. See readMinimumLength:maximumLength:completionHandler:
   * 		for a complete discussion of the callback behavior.
   * @param length The exact number of bytes the application wants to read
   *		for a complete discussion of the callback behavior.
   * @param length The exact number of bytes the caller wants to read
   * @param completion The completion handler to be invoked when there is data to read or an error occurred
   */
  @available(OSX 10.11, *)
  func readLength(length: Int, completionHandler completion: (NSData?, NSError?) -> Void)

  /*!
   * @method readMinimumLength:maximumLength:completionHandler:
   *
   * @discussion Read the requested range of bytes. The completion handler will be invoked when:
   * 		- Exactly "length" number of bytes have been read. 'data' will be non-nil.
   *
   * 		- Fewer than "length" number of bytes, including 0 bytes, have been read, and the connection's
   * 		read side has been closed. 'data' might be nil, depending on whether there was any data to be
   * 		read when the connection's read side was closed.
   *
   * 		- Some fatal error has occurred, and 'data' will be nil.
   *
   * 		To know when to schedule a read again, check for the condition whether an error has occurred.
   *
   *		For better performance, the caller should pick the effective minimum and maximum lengths.
   *		For example, if the caller absolutely needs a specific number of bytes before it can
   *		make any progress, use that value as the minimum. The maximum bytes can be the upperbound
   *		that the caller wants to read. Typically, the minimum length can be the caller
   *		protocol fixed-size header and the maximum length can be the maximum size of the payload or
   *		the size of the current read buffer.
   *
   * @param minimum The minimum number of bytes the caller wants to read
   * @param maximum The maximum number of bytes the caller wants to read
   * @param completion The completion handler to be invoked when there is data to read or an error occurred
   */
  @available(OSX 10.11, *)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (NSData?, NSError?) -> Void)

  /*!
   * @method write:completionHandler:
   * @discussion Write the given data object content. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param data The data object whose content will be written
   * @param completion The completion handler to be invoked when the data content has been written or an error has occurred.
   * 		If the error is nil, the write succeeded and the caller can write more data.
   */
  @available(OSX 10.11, *)
  func write(data: NSData, completionHandler completion: (NSError?) -> Void)

  /*!
   * @method writeClose:
   * @discussion Close this connection's write side such that further write requests won't succeed.
   * 		Note that this has the effect of closing the read side of the peer connection.
   * 		When the connection's read side and write side are closed, the connection is considered
   * 		disconnected and will transition to the appropriate state.
   */
  @available(OSX 10.11, *)
  func writeClose()
  init()
}

/*!
 * @protocol NWTCPConnectionAuthenticationDelegate
 * @discussion Allows the caller to take custom actions on some connection events.
 */
protocol NWTCPConnectionAuthenticationDelegate : NSObjectProtocol {

  /*!
   * @method shouldProvideIdentityForConnection:
   * @discussion The caller can implement this optional protocol method to decide whether it
   *		wants to provide the identity for this connection for authentication. If this delegate
   *		method is not implemented, the return value will default to YES if
   *		provideIdentityForConnection:completionHandler: is implemented.
   * @param connection The connection sending this message
   * @return YES to provide the identity for this connection, in which case, the delegate method
   *		provideIdentityForConnection:completionHandler: will be called.
   */
  @available(OSX 10.11, *)
  optional func shouldProvideIdentityFor(connection: NWTCPConnection) -> Bool

  /*!
   * @method provideIdentityForConnection:completionHandler:
   * @discussion The caller can implement this optional protocol method to provide the identity
   *		and an optional certificate chain to be used for authentication.
   * @param connection The connection sending this message
   * @param completion The completion handler for passing identity and certificate chain to the connection.
   *		The "identity" argument is required and must not be nil. The "certificateChain" argument is optional,
   *		and is an array of one or more SecCertificateRef objects. The certificate chain must contain objects
   *		of type SecCertificateRef only. If the certificate chain is set, it will be used. Otherwise, the leaf
   *		certificate will be extracted from the SecIdentityRef object and will be used for authentication.
   *
   *		The caller is responsible for keeping the argument object(s) alive for the duration of the
   *		completion handler invocation.
   */
  @available(OSX 10.11, *)
  optional func provideIdentityFor(connection: NWTCPConnection, completionHandler completion: (SecIdentity, [AnyObject]) -> Void)

  /*!
   * @method shouldEvaluateTrustForConnection:
   * @discussion The caller can implement this optional protocol method to decide whether it
   *		wants to take over the default trust evaluation for this connection. If this delegate method
   *		is not implemented, the return value will default to YES if
   *		provideIdentityForConnection:completionHandler: is implemented.
   * @param connection The connection sending this message
   * @return YES to take over the default trust evaluation, in which case, the delegate method
   *		evaluateTrustForConnection:peerCertificateChain:completionHandler: will be called.
   */
  @available(OSX 10.11, *)
  optional func shouldEvaluateTrustFor(connection: NWTCPConnection) -> Bool

  /*!
   * @method evaluateTrustForConnection:peerCertificateChain:completionHandler:
   * @discussion The caller can implement this optional protocol method to set up custom policies
   *		for peer certificate trust evaluation. If the delegate method is implemented, the caller
   *		is responsible for creating and setting up the SecTrustRef object and passing it to the
   *		completion handler. Otherwise, the default trust evaluation policy is used for the connection.
   * @param connection The connection sending this message
   * @param peerCertificateChain The peer certificate chain
   * @param completion The completion handler for passing the SecTrustRef object to the connection.
   *		The SecTrustRef object "trust" is required and must not be nil. It will be evaluated using
   *		SecTrustEvaluate() if necessary. The caller is responsible for keeping the argument object
   *		alive for the duration of the completion handler invocation.
   */
  @available(OSX 10.11, *)
  optional func evaluateTrustFor(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
class NWTLSParameters : NSObject {

  /*!
   * @property TLSSessionID
   * @discussion The session ID for the associated connection, used for TLS session resumption.
   *		This property is optional when using TLS.
   */
  @available(OSX 10.11, *)
  @NSCopying var tlsSessionID: NSData?

  /*!
   * @property SSLCipherSuites
   * @discussion The set of allowed cipher suites, as defined in <Security/CipherSuite.h>.
   *		If set to nil, the default cipher suites will be used.
   */
  @available(OSX 10.11, *)
  var sslCipherSuites: Set<NSNumber>?

  /*!
   * @property minimumSSLProtocolVersion
   * @discussion The minimum allowed SSLProtocol value. as defined in <Security/SecureTransport.h>.
   *		If set, the SSL handshake will not accept any protocol version older than the minimum.
   */
  @available(OSX 10.11, *)
  var minimumSSLProtocolVersion: Int

  /*!
   * @property maximumSSLProtocolVersion
   * @discussion The maximum allowed SSLProtocol value. as defined in <Security/SecureTransport.h>.
   *		If set, the SSL handshake will not accept any protocol version newer than the maximum.
   *		This property should be used with caution, since it may limit the use of preferred
   *		SSL protocols.
   */
  @available(OSX 10.11, *)
  var maximumSSLProtocolVersion: Int
  init()
}

/*!
 * @typedef NWUDPSessionState
 * @abstract UDP session state values
 */
@available(OSX 10.11, *)
enum NWUDPSessionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @constant NWUDPSessionStateInvalid The session is in an invalid or uninitialized state. */
  case Invalid

  /*! @constant NWUDPSessionStateWaiting The session is waiting for better conditions before
  	 *		attempting to make the session ready.
  	 */
  case Waiting

  /*! @constant NWUDPSessionStatePreparing The endpoint is being resolved */
  case Preparing

  /*! @constant NWUDPSessionStateReady The session is ready for reading and writing data */
  case Ready

  /*! @constant NWUDPSessionStateFailed None of the currently resolved endpoints can be used
  	 *		at this time, either due to problems with the path or the client rejecting the
  	 *		endpoints.
  	 */
  case Failed

  /*! @constant NWUDPSessionStateCancelled The session has been cancelled by the client */
  case Cancelled
}

/*!
 * @interface NWUDPSession
 * @discussion Open UDP datagram sessions to an endpoint, and send and receive datagrams.
 */
@available(OSX 10.11, *)
class NWUDPSession : NSObject {

  /*!
   * @method initWithUpgradeForSession:
   * @discussion This convenience initializer can be used to create a new session based on the
   *		original session's endpoint and parameters.
   *
   *		The application should create an NWUDPSession and watch the "hasBetterPath" property. 
   *		When this property is YES, it should call initWithUpgradeForSession: to create a new
   *		session, with the goal to start transferring data on the new better path as soon as
   *		possible to reduce power and potentially monetary cost. When the new "upgrade" session
   *		becomes ready and when the application wraps up the previous application session on
   *		the original session, the application can start using the new "upgrade" session and
   *		tear down the original one.
   *
   * @param session The original session from which the application will upgrade
   * @return An initialized NWUDPSession object.
   */
  @available(OSX 10.11, *)
  init(upgradeFor session: NWUDPSession)

  /*!
   * @property state
   * @discussion The current state of the UDP session. If the state is NWUDPSessionStateReady, 
   *		then the connection is eligible for reading and writing. The state will be
   *		NWUDPSessionStateFailed if the endpoint could not be resolved, or all endpoints have been 
   *		rejected. Use KVO to watch for changes.
   */
  @available(OSX 10.11, *)
  var state: NWUDPSessionState { get }

  /*!
   * @property endpoint
   * @discussion The provided endpoint.
   */
  @available(OSX 10.11, *)
  var endpoint: NWEndpoint { get }

  /*!
   * @property resolvedEndpoint
   * @discussion The currently targeted remote endpoint. Use KVO to watch for changes.
   */
  @available(OSX 10.11, *)
  var resolvedEndpoint: NWEndpoint? { get }

  /*!
   * @property viable
   * @discussion YES if the connection can read and write data, NO otherwise. 
   *		Use KVO to watch this property.
   */
  @available(OSX 10.11, *)
  var isViable: Bool { get }

  /*!
   * @property hasBetterPath
   * @discussion YES if there is another path available that is preferred over the currentPath. 
   *		To take advantage of this path, create a new UDPSession. Use KVO to watch for changes.
   */
  @available(OSX 10.11, *)
  var hasBetterPath: Bool { get }

  /*!
   * @property currentPath
   * @discussion The current evaluated path for the resolvedEndpoint. Use KVO to watch for changes.
   */
  @available(OSX 10.11, *)
  var currentPath: NWPath? { get }

  /*!
   * @method tryNextResolvedEndpoint
   * @discussion Mark the current value of resolvedEndpoint as unusable, and try to switch to the 
   *		next available endpoint. This should be used when the caller has attempted to communicate
   *		with the current resolvedEndpoint, and the caller has determined that it is unusable. If
   *		there are no other resolved endpoints, the session will move to the failed state.
   */
  @available(OSX 10.11, *)
  func tryNextResolvedEndpoint()

  /*!
   * @property maximumDatagramLength
   * @discussion The maximum size of a datagram to be written currently. If a datagram is written
   *		with a longer length, the datagram may be fragmented or encounter an error. Note that this
   *		value is not guaranteed to be the maximum datagram length for end-to-end communication 
   *		across the network. Use KVO to watch for changes.
   */
  @available(OSX 10.11, *)
  var maximumDatagramLength: Int { get }

  /*!
   * @method setReadHandler:maxDatagrams
   * @discussion Set a read handler for datagrams. Reads will be scheduled by the system, so this
   *		method only needs to be called once for a session.
   * @param handler A handler called when datagrams have been read, or when an error has occurred.
   * @param minDatagrams The maximum number of datagrams to send to the handler.
   */
  @available(OSX 10.11, *)
  func setReadHandler(handler: ([NSData]?, NSError?) -> Void, maxDatagrams: Int)

  /*!
   * @method writeMultipleDatagrams:completionHandler
   * @discussion Write multiple datagrams. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param datagram An NSArray of NSData objects, containing the ordered list datagrams to write.
   * @param completionHandler A handler called when the write request has either succeeded or failed.
   */
  @available(OSX 10.11, *)
  func writeMultipleDatagrams(datagramArray: [NSData], completionHandler: (NSError?) -> Void)

  /*!
   * @method writeDatagram:completionHandler
   * @discussion Write a single datagram. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param datagram An NSData containing the datagram to write.
   * @param completionHandler A handler called when the write request has either succeeded or failed.
   */
  @available(OSX 10.11, *)
  func writeDatagram(datagram: NSData, completionHandler: (NSError?) -> Void)

  /*!
   * @method cancel
   * @discussion Move into the NWUDPSessionStateCancelled state. The connection will be terminated,
   *		and all handlers will be cancelled.
   */
  @available(OSX 10.11, *)
  func cancel()
  init()
}
