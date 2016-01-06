

/*!
 * @typedef NEAppProxyFlowError
 * @abstract Flow error codes
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
let NEAppProxyErrorDomain: String

/*!
 * @interface NEAppProxyFlow
 * @discussion The NEAppProxyFlow class is an abstract base class that declares the programmatic interface for a flow of network data.
 *
 * NEAppProxyFlow is part of NetworkExtension.framework.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEAppProxyFlow : NSObject {

  /*!
   * @method openWithLocalAddress:completionHandler:
   * @discussion This function is used by an NEProvider implementation to indicate that it is ready to handle flow data.
   * @param localEndpoint The address and port that should be used as the local endpoint of the socket associated with this flow. If the source application already specifed a local endpoint by binding the socket then this parameter is ignored.
   * @param completionHandler A block that is called when the process of opening flow is complete. A nil value passed to this block indicates that the flow was opened successfully. A non-nil NSError value indicates that the flow failed to open successfully.
   */
  @available(iOS 9.0, *)
  func openWithLocalEndpoint(localEndpoint: NWHostEndpoint?, completionHandler: (NSError?) -> Void)

  /*!
   * @method closeReadWithError:
   * @discussion This function is used by an NEProvider implementation to indicate that it does not want to receive any more data from the flow.
   * @param error An error in NEAppProxyErrorDomain that should be passed to the flow's source application.
   */
  @available(iOS 9.0, *)
  func closeReadWith(error: NSError?)

  /*!
   * @method closeWriteWithError:
   * @discussion This functions is used by an NEProvider implementation to indicate that it does not have any more data to write to the flow.
   * @param error An error in NEAppProxyErrorDomain that should be passed to the flow's source application.
   */
  @available(iOS 9.0, *)
  func closeWriteWith(error: NSError?)

  /*!
   * @property metaData
   * @discussion An NEFlowMetaData object containing meta data for the flow.
   */
  @available(iOS 9.0, *)
  var metaData: NEFlowMetaData { get }
  init()
}

/*!
 * @interface NEFlowMetaData
 * @discussion The NEFlowMetaData class declares the programmatic interface for an object that contains extra information about a flow.
 */
@available(iOS 9.0, *)
class NEFlowMetaData : NSObject {

  /*!
   * @property sourceAppUniqueIdentifier
   * @discussion A blob of bytes that uniquely identifies the source app binary of the flow. This value is unique across multiple versions of the same app.
   */
  @available(iOS 9.0, *)
  var sourceAppUniqueIdentifier: NSData { get }

  /*!
   * @property sourceAppSigningIdentifier
   * @discussion A string containing the signing identifier (almost always equivalent to the bundle identifier) of the source app of the flow.
   */
  @available(iOS 9.0, *)
  var sourceAppSigningIdentifier: String { get }
  init()
}

/*!
 * @interface NEAppProxyProvider
 * @discussion The NEAppProxyProvider class declares the programmatic interface for an object that implements the client side of a custom network proxy solution.
 *
 * NEAppProxyProvider is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEAppProxyProvider : NETunnelProvider {

  /*!
   * @method startProxyWithOptions:completionHandler:
   * @discussion This function is called by the framework when a new proxy instance is being created. Subclasses must override this method to perform whatever steps are necessary to ready the proxy for handling flows of network data.
   * @param options A dictionary containing keys and values passed by the provider's containing app. If the containing app did not start the proxy then this parameter will be nil.
   * @param completionHandler A block that must be called when the process of starting the proxy complete. If the proxy cannot be started then the subclass' implementation of this method must pass a non-nill NSError object to this block. A value of nil passed to the completion handler indicates that the proxy was successfully started.
   */
  @available(iOS 9.0, *)
  func startProxy(options options: [String : AnyObject]? = [:], completionHandler: (NSError?) -> Void)

  /*!
   * @method stopProxyWithReason:completionHandler:
   * @discussion This function is called by the framework when the proxy is being stopped. Subclasses must override this method to perform whatever steps are necessary to stop the proxy.
   * @param reason An NEProviderStopReason indicating why the proxy is being stopped.
   * @param completionHandler A block that must be called when the proxy is completely stopped.
   */
  @available(iOS 9.0, *)
  func stopProxyWith(reason: NEProviderStopReason, completionHandler: () -> Void)

  /*!
   * @method cancelProxyWithError:
   * @discussion This function is called by proxy provider implementations to stop the proxy when a network error is encountered that renders the proxy no longer viable. Subclasses should not override this method.
   * @param error An NSError object containing details about the error that the prxoy provider implementation encountered.
   */
  @available(iOS 9.0, *)
  func cancelProxyWith(error: NSError?)

  /*!
   * @method handleNewFlow:
   * @discussion This function is called by the framework to deliver a new network data flow to the proxy provider implementation. Subclasses must override this method to perform whatever steps are necessary to ready the proxy to receive data from the flow. The proxy provider implementation indicates that the proxy is ready to handle flow data by calling -[NEFlow openWithCompletionHandler:] on the flow. If the proxy implementation decides to not handle the flow and instead terminate it, the subclass implementation of this method should return NO. If the proxy implementation decides to handle the flow, the subclass implementation of this method should return YES. In this case the proxy implementation is responsible for retaining the NEFlow object.
   * @param flow The new flow
   * @return YES if the proxy implementation has retained the flow and intends to handle the flow data. NO if the proxy implementation has not retained the flow and will not handle the flow data. In this case the flow is terminated.
   */
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEAppProxyFlow) -> Bool
  init()
}

/*!
 * @interface NEAppProxyProviderManager
 * @discussion The NEAppProxyProviderManager class declares the programmatic interface for an object that is used to configure and control network tunnels provided by NEAppProxyProviders.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEAppProxyProviderManager : NETunnelProviderManager {

  /*!
   * @method loadAllFromPreferencesWithCompletionHandler:
   * @discussion This function asynchronously reads all of the NEAppProxy configurations associated with the calling app that have previously been saved to disk and returns them as NEAppProxyProviderManager objects.
   * @param completionHandler A block that takes an array NEAppProxyProviderManager objects. The array passed to the block may be empty if no NETunnelProvider configurations were successfully read from the disk.  The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEAppProxyTCPFlow : NEAppProxyFlow {

  /*!
   * @method readDataWithCompletionHandler:
   * @discussion Read data from the flow.
   * @param completionHandler A block that will be executed when some data is read from the flow. The block is passed either the data that was read or a non-nil error if an error occurred. If data has a length of 0 then no data can be subsequently read from the flow. The completion handler is only called for the single read operation that was initiated by calling this method. If the caller wants to read more data then it should call this method again to schedule another read operation and another execution of the completion handler block.
   */
  @available(iOS 9.0, *)
  func readDataWithCompletionHandler(completionHandler: (NSData?, NSError?) -> Void)

  /*!
   * @method writeData:completionHandler
   * @discussion Write data to the flow.
   * @param data The data to write.
   * @param completionHandler A block that will be executed when the data is written into the associated socket's receive buffer. The caller should use this callback as an indication that it is possible to write more data to the flow without using up excessive buffer memory. If an error occurs while writing the data then a non-nil NSError object is passed to the block.
   */
  @available(iOS 9.0, *)
  func write(data: NSData, withCompletionHandler completionHandler: (NSError?) -> Void)

  /*!
   * @property remoteEndpoint
   * @discussion An NWEndpoint object containing information about the intended remote endpoint of the flow.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEAppProxyUDPFlow : NEAppProxyFlow {

  /*!
   * @method readDatagramWithCompletionHandler:
   * @discussion Read a datagram from the flow.
   * @param completionHandler A block that will be executed when datagrams have been read from the flow. The block takes the datagrams that were read, the destination endpoints of the datagrams, and an NSError. If an error occurred while reading then the error parameter will be non-nil. If the datagrams and remoteEndpoints arrays are non-nill but 
   */
  @available(iOS 9.0, *)
  func readDatagramsWithCompletionHandler(completionHandler: ([NSData]?, [NWEndpoint]?, NSError?) -> Void)

  /*!
   * @method writeDatagram:sentByEndpoint:completionHandler:
   * @discussion Write a datagram to the flow.
   * @param datagrams An array of NSData objects containing the data to be written.
   * @param remoteEndpoints The source endpoints of the datagrams.
   * @param completionHandler A block that will be executed when the datagrams have been written to the corresponding socket's receive buffer.
   */
  @available(iOS 9.0, *)
  func writeDatagrams(datagrams: [NSData], sentBy remoteEndpoints: [NWEndpoint], completionHandler: (NSError?) -> Void)

  /*!
   * @property localEndpoint
   * @discussion An NWEndpoint object containing the local endpoint of the flow's corresponding socket.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEAppRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithSigningIdentifier:
   * @discussion Initializes a newly-allocated NEAppRule object.
   * @param signingIdentifier The signing identifier of the executable that matches the rule.
   */
  @available(iOS 9.0, *)
  init(signingIdentifier: String)

  /*!
   * @property matchSigningIdentifier
   * @discussion A string containing a signing identifier. If the code signature of the executable being evaluated has a signing identifier equal to this string and all other conditions of the rule match, then the rule matches.
   */
  @available(iOS 9.0, *)
  var matchSigningIdentifier: String { get }

  /*!
   * @property matchDomains
   * @discussion An array of strings. If the destination host of the network traffic being evaluated has a suffix equal to one of the strings in this array and all other conditions of the rule match, then the rule matches. This property is optional.
   */
  @available(iOS 9.0, *)
  var matchDomains: [AnyObject]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEDNSSettings
 * @discussion The NEDNSSettings class declares the programmatic interface for an object that contains DNS settings.
 */
@available(iOS 9.0, *)
class NEDNSSettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithServers:
   * @discussion Initialize a newly-allocated NEDNSSettings object.
   * @param servers An array of DNS server IP address strings.
   */
  @available(iOS 9.0, *)
  init(servers: [String])

  /*!
   * @property servers
   * @discussion An array of DNS server address strings.
   */
  @available(iOS 9.0, *)
  var servers: [String] { get }

  /*! 
   * @property searchDomains
   * @discussion An array of DNS server search domain strings.
   */
  @available(iOS 9.0, *)
  var searchDomains: [String]?

  /*!
   * @property domainName
   * @discussion A string containing the DNS domain.
   */
  @available(iOS 9.0, *)
  var domainName: String?

  /*!
   * @property matchDomains
   * @discussion An array of strings containing domain strings. If this property is non-nil, the DNS settings will only be used to resolve host names within the specified domains.
   */
  @available(iOS 9.0, *)
  var matchDomains: [String]?

  /*!
   * @property matchDomainsNoSearch
   * @discussion A boolean indicating if the match domains should be appended to the search domain list.  Default is NO (match domains will be appended to the search domain list).
   */
  @available(iOS 9.0, *)
  var matchDomainsNoSearch: Bool
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEFilterControlProvider
 * @discussion The NEFilterControlProvider class declares the programmatic interface for an object that is responsible for installing filtering rules on the device.
 */
@available(iOS 9.0, *)
class NEFilterControlProvider : NEFilterProvider {

  /*!
   * @property remediationMap
   * @discussion A dictionary containing custom strings to be inserted into the "content blocked" page displayed in WebKit. Each key in this dictionary corresponds to a string in the "content blocked" page. The value of each key is a dictionary that maps keys to the custom strings to be inserted into the "content blocked" page. The keys for the sub-dictionaries are defined by the control provider. When the data provider creates a "remediate" verdict using [NEFilterDataVerdict remediateVerdictWithRemediationURLMapKey:remediationButtonTextMapKey:], it passes the key corresponding to the custom string to be inserted into the "content blocked" page.
  
  	Here is a sample remediationMap dictionary:
  
  	remediationMap = @{ NEFilterProviderRemediationMapRemediationURLs :
  							@{
  								@"RemediateKey1" : @"http://www.remediation_url_1.com",
  								@"RemediateKey2" : @"http://www.remediation_url_2.com"
  							 },
  						NEFilterProviderRemediationMapRemediationButtonTexts :
  							@{
  								@"RemediationButtonText1" : @"Remediate URL"
  							 }
  					  };
  
   */
  @available(iOS 9.0, *)
  var remediationMap: [String : [String : NSObject]]?

  /*!
   * @property URLAppendStringMap
   * @discussion A dictionary containing strings to be appended to URLs.
   */
  @available(iOS 9.0, *)
  var urlAppendStringMap: [String : String]?

  /*!
   * @method handleRemediationForFlow:completionHandler:
   * @discussion This function is called by the framework when the NEFilterDataProvider indicates that the filtering verdict for the given flow is NEFilterRemediateVerdictNeedRules. Subclass implementations must override this method and implement whatever steps are necessary to remediate the given flow.
   * @param flow An NEFilterFlow object containing details about the flow that requires remediation.
   * @param completionHandler A block that must be called when the NEFilterControlProvider is ready for the NEFilterDataProvider to re-process the new flow. NEFilterControlVerdict stores the verdict through which the control provider determines if a flow needs to be dropped or allowed. The verdict also indicates if the control plugin wants the data plugin to update its rules and handle the verdict.
   */
  @available(iOS 9.0, *)
  func handleRemediationFor(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)

  /*!
   * @method handleNewFlow:completionHandler:
   * @discussion This function is called by the framework when the NEFilterDataProvider indicates that the filtering verdict for the given flow is NEFilterNewFlowVerdictNeedRules. Subclass implementations must override this method and implement whatever steps are necessary to fetch new rules pertaining to the given flow and place them on disk in a location accessible by the NEFilterDataProvider.
   * @param flow An NEFilterFlow object containing details about the flow that requires a rules update.
   * @param completionHandler A block that must be called when the NEFilterControlProvider is ready for the NEFilterDataProvider to re-process the new flow. NEFilterControlVerdict stores the verdict through which the control provider determines if a flow needs to be dropped or allowed. The verdict also indicates if the control plugin wants the data plugin to update its rules and handle the verdict.
   */
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow, completionHandler: (NEFilterControlVerdict) -> Void)

  /*!
   * @method notifyRulesChanged
   * @discussion This function is called by filter control implementations to notify the data provider "out of band" that the rules changed.
   */
  @available(iOS 9.0, *)
  func notifyRulesChanged()
  init()
}

/*!
 * @interface NEFilterDataProvider
 * @discussion The NEFilterDataProvider class declares the programmatic interface for an object that evaluates network data flows based on a set of locally-available rules and makes decisions about whether to block or allow the flows.
 */
@available(iOS 9.0, *)
class NEFilterDataProvider : NEFilterProvider {

  /*!
   * @method handleNewFlow:
   * @discussion This function is called by the framework when a filtering decision needs to be made about a new network data flow. Subclasses must override this method to implement the steps necessary to match the flow against some locally stored rules and return an appropriate verdict.
   * @param flow An NEFilterFlow object containing details about the new flow.
   * @return An NEFilterNewFlowVerdict object containing the veridct for the new flow.
   */
  @available(iOS 9.0, *)
  func handleNewFlow(flow: NEFilterFlow) -> NEFilterNewFlowVerdict

  /*!
   * @method handleInboundDataFromFlow:readBytesStartOffset:readBytes:
   * @discussion This function is called by the framework when a filtering decision needs to be made about some inbound data that the filter previously requested access to via the NEFilterFlowDataVerdict or the NEFilterNewFlowVerdict. Subclasses must override this method.
   * @param flow The NEFilterFlow from which the data was read.
   * @param offset The offset in bytes from the start of the flow's data of readBytes.
   * @param readBytes The data that was read.
   * @return An NEFilterFlowDataVerdict containing the verdict for the flow.
   */
  @available(iOS 9.0, *)
  func handleInboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: NSData) -> NEFilterDataVerdict

  /*!
   * @method handleOutboundDataFromFlow:readBytesStartOffset:readBytes:
   * @discussion This function is called by the framework when a filtering decision needs to be made about some outbound data that the filter previously requested access to via the NEFilterFlowDataVerdict or the NEFilterNewFlowVerdict. Subclasses must override this method.
   * @param flow The NEFilterFlow from which the data was read.
   * @param readBytesStartOffset The offset in bytes from the start of the flow's data of readBytes.
   * @param readBytes The data that was read.
   * @return An NEFilterFlowDataVerdict containing the verdict for the flow.
   */
  @available(iOS 9.0, *)
  func handleOutboundDataFrom(flow: NEFilterFlow, readBytesStartOffset offset: Int, readBytes: NSData) -> NEFilterDataVerdict

  /*!
   * @method handleInboundDataCompleteForFlow:
   * @discussion This function is called by the framework after all of the inbound data for a flow has been seen by the filter. Subclasses must override this method to return an appropriate pass/block result.
   * @param flow The flow
   * @return The final NEFilterFlowDataVerdict verdict for the flow.
   */
  @available(iOS 9.0, *)
  func handleInboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict

  /*!
   * @method handleOutboundDataCompleteForFlow:
   * @discussion This function is called by the framework after all of the outbound data for a flow has been seen by the filter. Subclasses must override this method to return an appropriate pass/block result.
   * @param flow The flow
   * @return The final NEFilterFlowDataVerdict verdict for the flow.
   */
  @available(iOS 9.0, *)
  func handleOutboundDataCompleteFor(flow: NEFilterFlow) -> NEFilterDataVerdict

  /*!
   * @method handleRemediationForFlow:
   * @discussion This function is called by the framework after the user requests remediation for a blocked flow. Subclasses must override this method to return an appropriate pass/block result.
   * @param flow The flow
   * @return The final NEFilterRemediationVerdict verdict for the flow.
   */
  @available(iOS 9.0, *)
  func handleRemediationFor(flow: NEFilterFlow) -> NEFilterRemediationVerdict

  /*!
   * @meethod handleRulesChanged
   * @discussion This function is called by the framework when -[NEFilterControlProvider notifyRulesChanged] is called. Subclasses should override this method to reload new rules from disk.
   */
  @available(iOS 9.0, *)
  func handleRulesChanged()
  init()
}

/*!
 * @interface NEFilterDataVerdict
 * @discussion The NEFilterDataVerdict class declares the programmatic interface of an object that is the verdict for a flow of network data after some of the data has been seen by the filter.
 *
 * NEFilterDataVerdict is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterDataVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {

  /*!
   * @method allowVerdict
   * @discussion This class method returns a verdict indicating that the flow should be allowed.
   * @return The NEFilterDataVerdict object.
   */
  @available(iOS 9.0, *)
  class func allow() -> NEFilterDataVerdict

  /*!
   * @method dropVerdict
   * @discussion This class method returns a verdict indicating that the flow should be dropped.
   * @return The NEFilterDataVerdict object.
   */
  @available(iOS 9.0, *)
  class func drop() -> NEFilterDataVerdict

  /*!
   * @method remediateVerdictWithRemediationURLMapKey:remediationButtonTextMapKey:
   * @discussion This class method returns a verdict indicating that a "content blocked" page should be displayed to the user. The block page should contain a link to the given URL.
   * @param remediationURLMapKey Remediation map key used by data plugin to get remediation url. Passing nil will result into data provider being notified with the callback handleRemediationForFlow:
   * @param remediationButtonTextMapKey Remediation button map key used by the data plugin to get the remediation button text. Passing nil will set the button text to "Request Access"
   * @return The NEFilterDataVerdict object.
   */
  @available(iOS 9.0, *)
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String?, remediationButtonTextMapKey: String?) -> NEFilterDataVerdict

  /*!
   * @method dataVerdictWithPassBytes:peekBytes:
   * @discussion This class method returns a data verdict indicating that the filter is passing a given number of bytes through the filter and needs to see a given number of bytes after the bytes that are passed.
   * @param passBytes The number of bytes to pass through the filter. Note that the framework does not pass the bytes to the destination until a "final" allow/drop/remediate verdict is returned.
   * @param peekBytes The number of bytes after the end of the bytes passed that the filter wants to see in the next call to -[NEFilterDataProvider handleOutboundDataFromFlow:readBytesStartOffset:readBytes:] or -[NEFilterDataProvider handleInboundDataFromFlow:readBytesStartOffset:readBytes:].
   * @return The data flow verdict.
   */
  @available(iOS 9.0, *)
  /*not inherited*/ init(passBytes: Int, peekBytes: Int)

  /*!
   * @method needRulesVerdict
   * @discussion This class method returns a verdict indicating that control provider needs to be asked how to handle the data flow. The control provider can either drop or allow the flow, or update the rules and ask the data provider to decide on the data flow again.
   * @return The NEFilterDataVerdict object.
   */
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterDataVerdict
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEFilterRemediationVerdict
 * @discussion The NEFilterRemediationVerdict class declares the programmatic interface of an object that is the verdict for a flow which has been blocked by the filter, but the user has made a request for remediation.
 *
 * NEFilterRemediationVerdict is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterRemediationVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {

  /*!
   * @method allowVerdict
   * @discussion This class method returns a verdict indicating that the flow should be allowed.
   * @return The NEFilterRemediationVerdict object.
   */
  @available(iOS 9.0, *)
  class func allow() -> NEFilterRemediationVerdict

  /*!
   * @method dropVerdict
   * @discussion This class method returns a verdict indicating that the flow should be dropped.
   * @return The NEFilterRemediationVerdict object.
   */
  @available(iOS 9.0, *)
  class func drop() -> NEFilterRemediationVerdict

  /*!
   * @method needRulesVerdict
   * @discussion This class method returns a verdict indicating that control provider needs to be asked how to handle the remediation. The control provider can either drop or allow the flow, or update the rules and ask the data provider to decide on the data flow again.
   * @return The NEFilterRemediationVerdict object.
   */
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterRemediationVerdict
  init()
  init?(coder aDecoder: NSCoder)
}
var NEFilterFlowBytesMax: UInt64 { get }

/*!
 * @interface NEFilterFlow
 * @discussion The NEFilterFlow class declares the programmatic interface of an object that represents a flow of network data to be filtered.
 *
 * NEFilterFlow is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterFlow : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property URL
   * @discussion The flow's HTTP request URL. Will be nil if the flow did not originate from WebKit.
   */
  @available(iOS 9.0, *)
  var url: NSURL? { get }
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEFilterBrowserFlow
 * @discussion The NEFilterBrowserFlow class declares the programmatic interface of an object that represents a flow of network data to be filtered, which is originated from NEFilterSource.
 *
 * NEFilterBrowserFlow is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterBrowserFlow : NEFilterFlow, NSSecureCoding, NSCopying {

  /*!
   *	@property request
   *	@discussion The NSURLRequest of the flow.
   */
  @available(iOS 9.0, *)
  var request: NSURLRequest { get }

  /*!
   *	@property response
   *	@discussion The NSURLResponse of the flow. This will be nil until the request is sent to the server and the response headers are received.
   */
  @available(iOS 9.0, *)
  var response: NSURLResponse? { get }

  /*!
   *	@property parentURL
   *	@discussion The parent URL for the current flow which is created to load the sub frames because the flow with the parent URL was allowed. Will be nil if the parent flow does not exist.
   */
  @available(iOS 9.0, *)
  var parentURL: NSURL? { get }
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEFilterSocketFlow
 * @discussion The NEFilterSocketFlow class declares the programmatic interface of an object that represents a flow of network data to be filtered, which is originated from the socket.
 *
 * NEFilterSocketFlow is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterSocketFlow : NEFilterFlow, NSSecureCoding, NSCopying {

  /*!
   * @property remoteEndpoint
   * @discussion The flow's remote endpoint.
   */
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint { get }

  /*!
   * @property localEndpoint
   * @discussion The flow's local endpoint.
   */
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint { get }

  /*!
   *	@property socketFamily
   *	@discussion Socket family of the socket flow, such as PF_INET.
   */
  @available(iOS 9.0, *)
  var socketFamily: Int32

  /*!
   *	@property socketType
   *	@discussion Socket type of the socket flow, such as SOCK_STREAM.
   */
  @available(iOS 9.0, *)
  var socketType: Int32

  /*!
   *	@property socketProtocol
   *	@discussion Socket protocol of the socket flow, such as IPPROTO_TCP.
   */
  @available(iOS 9.0, *)
  var socketProtocol: Int32
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEFilterError
 * @abstract Filter error codes
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
let NEFilterErrorDomain: String

/*! @const NEFilterConfigurationDidChangeNotification Name of the NSNotification that is posted when the filter configuration changes. */
@available(iOS 8.0, *)
let NEFilterConfigurationDidChangeNotification: String

/*!
 * @interface NEFilterManager
 * @discussion The NEFilterManager class declares the programmatic interface for an object that manages content filtering configurations.
 *
 * NEFilterManager declares methods and properties for configuring and controlling a filter.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 8.0, *)
class NEFilterManager : NSObject {

  /*!
   * @method sharedManager
   * @return The singleton NEFilterManager object for the calling process.
   */
  @available(iOS 8.0, *)
  class func shared() -> NEFilterManager

  /*!
   * @method loadFromPreferencesWithCompletionHandler:
   * @discussion This function loads the current filter configuration from the caller's filter preferences.
   * @param completionHandler A block that will be called when the load operation is completed. The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method removeFromPreferencesWithCompletionHandler:
   * @discussion This function removes the filter configuration from the caller's filter preferences. If the filter is enabled, the filter becomes disabled.
   * @param completionHandler A block that will be called when the remove operation is completed. The NSError passed to this block will be nil if the remove operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func removeFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method saveToPreferencesWithCompletionHandler:
   * @discussion This function saves the filter configuration in the caller's filter preferences. If the filter is enabled, it will become active.
   * @param completionHandler A block that will be called when the save operation is completed. The NSError passed to this block will be nil if the save operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func saveToPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @property localizedDescription
   * @discussion A string containing a description of the filter.
   */
  @available(iOS 8.0, *)
  var localizedDescription: String?

  /*!
   * @property providerConfiguration
   * @discussion An NEFilterProviderConfiguration object containing the provider-specific portion of the filter configuration.
   */
  @available(iOS 9.0, *)
  var providerConfiguration: NEFilterProviderConfiguration?

  /*!
   * @property enabled
   * @discussion Toggles the enabled status of the filter. Setting this property will disable filter configurations of other apps. This property will be set to NO when other filter configurations are enabled.
   */
  @available(iOS 8.0, *)
  var isEnabled: Bool
  init()
}

/*!
 *	Key to specify in the NSDictionary which is returned as a value in remediationMap.
 *	This key is used to indicate the Remediation URL. The URL should follow the scheme
 *	http or https to be used by the content filter.
 */
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationURLs: String
@available(iOS 9.0, *)
let NEFilterProviderRemediationMapRemediationButtonTexts: String
var NEFilterProviderRemediationURLFlowURLHostname: String { get }
var NEFilterProviderRemediationURLFlowURL: String { get }
var NEFilterProviderRemediationURLOrganization: String { get }
var NEFilterProviderRemediationURLUsername: String { get }

/*!
 * @interface NEFilterProvider
 * @discussion The NEFilterProvider class is an abstract base class that declares the programmatic interface of an object that implements a socket filter.
 *
 * NEFilterProvider is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterProvider : NEProvider {

  /*!
   * @method startFilterWithCompletionHandler:
   * @discussion This function is called by the framework when the content filter is being started. Subclasses must override this method and perform whatever steps are necessary to start the filter.
   * @param completionHandler A block that must be called when the process of starting the filter is complete. If the filter was started successfully, subclass implementations must pass the nil value to this block. If an error occurred while starting the filter, sublcass implementations must pass a non-nil NSError containing more details about the error.
   */
  @available(iOS 9.0, *)
  func startFilterWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method stopFilterWithReason:completionHandler:
   * @discussion This function is called by the framework when the content filter is being stopped. Subclasses must override this method and perform whatever steps are necessary to stop the filter.
   * @param reason An NEProviderStopReason indicating why the filter is being stopped.
   * @param completionHandler A block that must be called when the process of stopping the filter is complete.
   */
  @available(iOS 9.0, *)
  func stopFilterWith(reason: NEProviderStopReason, completionHandler: () -> Void)

  /*!
   * @property filterConfiguration
   * @discussion An NEContentFilterConfiguration object containing the current filter configuration. The value of this property can change during the lifetime of a filter. Filter implementations can use KVO to be notified when the configuration changes.
   */
  @available(iOS 9.0, *)
  var filterConfiguration: NEFilterProviderConfiguration { get }
  init()
}

/*!
 * @interface NEFilterVerdict
 * @discussion The NEFilterVerdict class declares the programmatic interface for an object that is the verdict for a flow of network data.
 *
 * NEFilterVerdict is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterVerdict : NSObject, NSSecureCoding, NSCopying {
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEFilterNewFlowVerdict
 * @discussion The NEFilterNewFlowVerdict declares the programmatic interface of an object that is the verdict for a new flow of network data before any of the flow's data has been seen by the filter.
 *
 * NEFilterNewFlowVerdict is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterNewFlowVerdict : NEFilterVerdict, NSSecureCoding, NSCopying {

  /*!
   * @method needRulesVerdict
   * @discussion This class method returns a verdict indicating that control provider needs to be asked how to handle the new flow. The control provider can either drop or allow the flow, or update the rules and ask the data provider to decide on the new flow again.
   * @return The NEFilterNewFlowVerdict object.
   */
  @available(iOS 9.0, *)
  class func needRules() -> NEFilterNewFlowVerdict

  /*!
   * @method allowVerdict
   * @discussion This class method returns a verdict indicating that the flow should be allowed.
   * @return The NEFilterNewFlowVerdict object.
   */
  @available(iOS 9.0, *)
  class func allow() -> NEFilterNewFlowVerdict

  /*!
   * @method dropVerdict
   * @discussion This class method returns a verdict indicating that the flow should be dropped.
   * @return The NEFilterNewFlowVerdict object.
   */
  @available(iOS 9.0, *)
  class func drop() -> NEFilterNewFlowVerdict

  /*!
   * @method remediateVerdictWithRemediationURLMapKey:remediationButtonTextMapKey:
   * @discussion This class method returns a verdict indicating that a "content blocked" page should be displayed to the user. The block page should contain a link to the given URL.
   * @param remediationURLMapKey Remediation map key used by data plugin to get remediation url
   * @return The NEFilterNewFlowVerdict object.
   */
  @available(iOS 9.0, *)
  class func remediateVerdictWithRemediationURLMapKey(remediationURLMapKey: String, remediationButtonTextMapKey: String) -> NEFilterNewFlowVerdict

  /*!
   * @method URLAppendStringVerdictWithMapKey
   * @discussion This class method returns a verdict indicating that safe search URL for the new should be specified
   * @param urlAppendMapKey URL Append map key to be used by the data plugin to notify what the url should be appended with
   * @return The NEFilterNewFlowVerdict object.
   */
  @available(iOS 9.0, *)
  class func urlAppendStringVerdictWithMapKey(urlAppendMapKey: String) -> NEFilterNewFlowVerdict

  /*!
   * @method filterDataVerdictWithFilterInbound:peekInboundBytes:filterOutbound:peekOutboundBytes:
   * @discussion This class method returns a new flow verdict indicating that the filter needs to make a decision about a new flow after seeing a portion of the flow's data.
   * @param filterInbound A boolean indicating if the filter needs to see inbound data
   * @param peekInboundBytes The number of inbound bytes that the filter needs to see in the subsequent call to -[NEFilterDataProvider handleInboundDataFromFlow:readBytesStartOffset:readBytes:].
   * @param filterOutbound  boolean indicating if the filter needs to see outbound data
   * @param peekOutboundBytes The number of outbound bytes that the filter needs to see in the subsequent call to -[NEFilterDataProvider handleOutboundDataFromFlow:readBytesStartOffset:readBytes:].
   * @return The new flow verdict.
   */
  @available(iOS 9.0, *)
  class func filterDataVerdictWithFilterInbound(filterInbound: Bool, peekInboundBytes: Int, filterOutbound: Bool, peekOutboundBytes: Int) -> NEFilterNewFlowVerdict
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEFilterControlVerdict
 * @discussion The NEFilterControlVerdict declares the programmatic interface of an object that is the verdict for a new flow of network data by the control provider.
 *
 * NEFilterControlVerdict is part of NetworkExtension.framework
 */
@available(iOS 9.0, *)
class NEFilterControlVerdict : NEFilterNewFlowVerdict, NSSecureCoding, NSCopying {

  /*!
   * @method allowVerdictWithUpdateRules:
   * @discussion This class method returns a verdict indicating that the flow should be allowed to go through, and also tell the data provider whether to update its rules or not.
   * @param updateRules YES if the control provider has updated the rules and wants to communicate that to the data provider
   * @return The NEFilterControlVerdict object.
   */
  @available(iOS 9.0, *)
  class func allowVerdictWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict

  /*!
   * @method dropVerdictWithUpdateRules:
   * @discussion This class method returns a verdict indicating that the flow should be dropped, and also tell the data provider whether to update its rules or not.
   * @param updateRules YES if the control provider has updated the rules and wants to communicate that to the data provider
   * @return The NEFilterControlVerdict object.
   */
  @available(iOS 9.0, *)
  class func dropVerdictWithUpdateRules(updateRules: Bool) -> NEFilterControlVerdict

  /*!
   * @method updateRules
   * @discussion This class method returns a verdict indicating that the flow should be handled by the data provider, and the rules needed by the data provider have been set.
   * @return The NEFilterControlVerdict object.
   */
  @available(iOS 9.0, *)
  class func updateRules() -> NEFilterControlVerdict
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @interface NEFilterProviderConfiguration
 * @discussion The NEFilterProviderConfiguration class declares the programmatic interface of an object that configures a plugin-based content filter.
 */
@available(iOS 9.0, *)
class NEFilterProviderConfiguration : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property filterBrowsers
   * @discussion If YES, the filter plugin will be allowed to filter browser traffic. If NO, the filter plugin will not see any browser flows. Defaults to NO. At least one of filterBrowsers and filterSockets should be set to YES to make the filter take effect.
   */
  @available(iOS 9.0, *)
  var filterBrowsers: Bool

  /*!
   * @property filterSockets
   * @discussion If YES, the filter plugin will be allowed to filter socket traffic. If NO, the filter plugin will not see any socket flows. Defaults to NO. At least one of filterBrowsers and filterSockets should be set to YES to make the filter take effect.
   */
  @available(iOS 9.0, *)
  var filterSockets: Bool

  /*!
   * @property vendorConfiguration
   * @discussion An optional dictionary of plugin-specific keys to be passed to the plugin.
   */
  @available(iOS 9.0, *)
  var vendorConfiguration: [String : AnyObject]?

  /*!
   * @property serverAddress
   * @discussion The optional address of the server used to support the filter.
   */
  @available(iOS 9.0, *)
  var serverAddress: String?

  /*!
   * @property username
   * @discussion The optional username associated with the filter.
   */
  @available(iOS 9.0, *)
  var username: String?

  /*!
   * @property organization
   * @discussion The optional organization associated with the filter.
   */
  @available(iOS 9.0, *)
  var organization: String?

  /*!
   * @property passwordReference
   * @discussion The optional password keychain reference associated with the filter.
   */
  @available(iOS 9.0, *)
  @NSCopying var passwordReference: NSData?

  /*!
   * @property identityReference
   * @discussion The optional certificate identity keychain reference associated with the filter.
   */
  @available(iOS 9.0, *)
  @NSCopying var identityReference: NSData?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @typedef NEHotspotHelperCommandType
 * @abstract The type of the NEHotspotHelperCommand object.
 * @const kNEHotspotHelperCommandTypeNone Placeholder for the null command.
 * @const kNEHotspotHelperCommandTypeFilterScanList Filter the Wi-Fi scan list.
 * @const kNEHotspotHelperCommandTypeEvaluate Evaluate the network.
 * @const kNEHotspotHelperCommandTypeAuthenticate Authenticate to the network.
 * @const kNEHotspotHelperCommandTypePresentUI Present user interface.
 * @const kNEHotspotHelperCommandTypeMaintain Maintain the network.
 * @const kNEHotspotHelperCommandTypeLogoff Logoff the network.
 */
@available(iOS 9.0, *)
enum NEHotspotHelperCommandType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case FilterScanList
  case Evaluate
  case Authenticate
  case PresentUI
  case Maintain
  case Logoff
}

/*!
 * @typedef NEHotspotHelperResult
 * @abstract The result of processing the NEHotspotHelperCommand.
 * @discussion The HotspotHelper provides the result of
 *   processing the NEHotspotHelperCommand when it instantiates
 *   its NEHotspotHelperResponse.
 * @const kNEHotspotHelperResultSuccess The operation was successful.
 * @const kNEHotspotHelperResultFailure The operation failed.
 * @const kNEHotspotHelperResultUIRequired The operation requires user
 *   interaction. This result is only valid in response to a command with type
 *   kNEHotspotHelperCommandTypeAuthenticate.
 * @const kNEHotspotHelperResultCommandNotRecognized The helper did not
 *   recognize the command type.
 * @const kNEHotspotHelperResultAuthenticationRequired The network requires
 *   authentication again. This result is only valid in response to a
 *   command with type kNEHotspotHelperCommandTypeMaintain.
 * @const kNEHotspotHelperResultUnsupportedNetwork After attempting to
 *   authenticate, the helper determined that it can't perform the
 *   authentication. This result is only valid in response to commands of type
 *   kNEHotspotHelperCommandTypeAuthenticate and
 *   kNEHotspotHelperCommandTypePresentUI.
 * @const kNEHotspotHelperResultTemporaryFailure The helper determined that
 *   it is temporarily unable to perform the authentication.
 *   This result is only valid in response to commands of type
 *   kNEHotspotHelperCommandTypeAuthenticate and
 *   kNEHotspotHelperCommandTypePresentUI.
 */
@available(iOS 9.0, *)
enum NEHotspotHelperResult : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Success
  case Failure
  case UIRequired
  case CommandNotRecognized
  case AuthenticationRequired
  case UnsupportedNetwork
  case TemporaryFailure
}

/*!
 * @typedef NEHotspotHelperConfidence
 * @abstract
 *   The HotspotHelper's confidence in its ability to handle the network.
 * @discussion
 *   The HotspotHelper indicates its confidence in being able to handle the
 *   given hotspot network.
 * @const kNEHotspotHelperConfidenceNone The helper is unable to handle
 *   the network.
 * @const kNEHotspotHelperConfidenceLow The helper has some confidence
 *   in being able to handle the network.
 * @const kNEHotspotHelperConfidenceHigh The helper has high confidence
 *   in being able to handle the network.
 */
@available(iOS 9.0, *)
enum NEHotspotHelperConfidence : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Low
  case High
}

/*!
 * @interface NEHotspotNetwork
 * @discussion
 *   The NEHotspotNetwork class conveys information about the
 *   network to the HotspotHelper. When the HotspotHelper is asked
 *   to evaluate the current network or filter the Wi-Fi scan list, it
 *   annotates the NEHotspotNetwork via the setConfidence method.
 */
@available(iOS 9.0, *)
class NEHotspotNetwork : NSObject {

  /*!
   * @property SSID
   * @discussion The SSID for the Wi-Fi network.
   */
  @available(iOS 9.0, *)
  var ssid: String { get }

  /*!
   * @property BSSID
   * @discussion The BSSID for the Wi-Fi network.
   */
  @available(iOS 9.0, *)
  var bssid: String { get }

  /*!
   * @property signalStrength
   * @discussion
   *   The signal strength for the Wi-Fi network. The value lies within
   *   the range 0.0 (weak/no signal) to 1.0 (strong signal).
   */
  @available(iOS 9.0, *)
  var signalStrength: Double { get }

  /*!
   * @property secure
   * @discussion Indicates whether the network is secure
   */
  @available(iOS 9.0, *)
  var isSecure: Bool { get }

  /*!
   * @property autoJoined
   * @discussion
   *   Indicates whether the network was joined automatically
   *   (YES) or joined by the user (NO).
   */
  @available(iOS 9.0, *)
  var didAutoJoin: Bool { get }

  /*!
   * @property justJoined
   * @discussion
   *   Indicates whether the network was just joined. Useful in the
   *   Maintaining state to differentiate whether the Maintain command
   *   is for the initial join, or the subsequent periodic callback.
   */
  @available(iOS 9.0, *)
  var didJustJoin: Bool { get }

  /*!
   * @property chosenHelper
   * @discussion
   *   Indicates whether the HotspotHelper is the chosen helper for
   *   the network. The NEHotspotNetwork must have been instantiated via a
   *   call to the +[NEHotspotHelper supportedNetworkInterfaces] method. This
   *   is useful to restore state after the HotspotHelper application is quit
   *   and restarted.
   */
  @available(iOS 9.0, *)
  var isChosenHelper: Bool { get }

  /*!
   * @method setConfidence
   * @abstract
   *   Indicate the confidence in being able to handle the network.
   * @discussion
   *   Use this method to indicate the confidence in being able to
   *   successfully authenticate to the given network. Used in the response
   *   to the kNEHotspotHelperCommandTypeEvaluate and
   *   kNEHotspotHelperCommandTypeFilterScanList commands.
   */
  @available(iOS 9.0, *)
  func setConfidence(confidence: NEHotspotHelperConfidence)

  /*!
   * @method setPassword
   * @abstract
   *   Provide the password for a secure network
   * @discussion
   *   The HotspotHelper may set a password for a secure network. The format
   *   password string must adhere to IEEE 802.11 guidelines appropriate for
   *   the particular security scheme.
   *
   *   Used only in the response to the kNEHotspotHelperCommandTypeFilterScanList
   *   command.
   */
  @available(iOS 9.0, *)
  func setPassword(password: String)
  init()
}

/*!
 * @interface NEHotspotHelperCommand
 * @discussion
 *   An NEHotspotHelperCommand object is provided to the helper's
 *   command handler block. The HotspotHelper processes the command
 *   instantiates an NEHotspotHelperResponse object, sets the annotated
 *   network or networkList (Evaluate/FilterScanList only),
 *   then delivers it.
 */
@available(iOS 9.0, *)
class NEHotspotHelperCommand : NSObject {

  /*!
   * @property commandType
   * @discussion
   *   The type of the command.
   */
  @available(iOS 9.0, *)
  var commandType: NEHotspotHelperCommandType { get }

  /*!
   * @property network
   * @discussion
   *   The network associated with the command. May be nil.
   */
  @available(iOS 9.0, *)
  var network: NEHotspotNetwork? { get }

  /*!
   * @property networkList
   * @discussion
   *   The list of networks associated with a command. Will be nil unless
   *   the command type is kNEHotspotHelperCommandTypeFilterScanList.
   *   This property returns an NSArray of NEHotspotNetwork.
   */
  @available(iOS 9.0, *)
  var networkList: [NEHotspotNetwork]? { get }

  /*!
   * @method createResponse:
   * @abstract
   *   Create a response to the command.
   * @discussion
   *   Instantiate an NEHotspotHelperResponse for the command.
   * @return
   *   NEHotspotHelperResponse with the specified result.
   */
  @available(iOS 9.0, *)
  func createResponse(result: NEHotspotHelperResult) -> NEHotspotHelperResponse

  /*!
   * @method createTCPConnection
   * @abstract
   *   Create a new TCP connection over the interface associated with the command.
   * @discussion
   *   Instantiate an NWTCPConnection to the specified endpoint
   *   bound to the network interface associated with the command.
   * @return
   *   non-nil NWTCPConnection object if successful, nil otherwise
   */
  @available(iOS 9.0, *)
  func createTCPConnection(endpoint: NWEndpoint) -> NWTCPConnection

  /*!
   * @method createUDPSession
   * @abstract
   *   Create a new UDP session over the interface associated with the command.
   * @discussion
   *   Instantiate an NWUDPSession to the specified endpoint
   *   bound to the network interface associated with the command.
   * @return
   *   non-nil NWUDPSession object if successful, nil otherwise
   */
  @available(iOS 9.0, *)
  func createUDPSession(endpoint: NWEndpoint) -> NWUDPSession
  init()
}

/*!
 * @interface NEHotspotHelperResponse
 * @discussion
 *   The HotspotHelper creates an NEHotspotHelperResponse object to provide
 *   the results of running the corresponding NEHotspotHelperCommand.
 */
@available(iOS 9.0, *)
class NEHotspotHelperResponse : NSObject {

  /*!
   * @method setNetwork
   * @abstract
   *   Set the network that conveys the confidence level.
   * @discussion
   *   Provide the annotated NEHotspotNetwork object in the response to the
   *   kNEHotspotHelperCommandTypeEvaluate command. The helper sets the
   *   confidence in the network object to indicate its ability to handle
   *   the current network.
   */
  @available(iOS 9.0, *)
  func setNetwork(network: NEHotspotNetwork)

  /*!
   * @method setNetworkList
   * @abstract
   *   Set the list of handled networks.
   * @discussion
   *   Provide an NSArray of annotated NEHotspotNetwork objects in response
   *   to the kNEHotspotHelperCommandTypeFilterScanList command.
   *   The helper provides the list of network objects that it is capable of
   *   handling with at least low confidence. Networks that it has no
   *   confidence in handling should not be specified.
   */
  @available(iOS 9.0, *)
  func setNetworkList(networkList: [NEHotspotNetwork])

  /*!
   * @method deliver
   * @abstract
   *   Delivers the response to the command.
   * @discussion
   *   Deliver the NEHotspotHelperResponse to the HotspotHelper infrastructure.
   */
  @available(iOS 9.0, *)
  func deliver()
  init()
}

/*!
 * @typedef NEHotspotHelperHandler
 * @abstract
 *   The type definition for the HotspotHelper's command handler block.
 * @discussion
 *   The application provides a block of this type when it
 *   invokes the +[NEHotspotHelper registerWithOptions:queue:handler] method.
 *   The block is invoked every time there is a command to be processed.
 */
@available(iOS 9.0, *)
typealias NEHotspotHelperHandler = (NEHotspotHelperCommand) -> Void

/*!
 * @const kNEHotspotHelperOptionDisplayName
 * @abstract
 *   The string displayed in Wi-Fi Settings for a network handled by
 *   the application.
 * @discussion
 *   This key specifies the display name for the application, if an alternate
 *   name is desired.  If this property is not specified, the application's
 *   name is used.
 *
 *   This name appears in Settings -> Wi-Fi underneath the Wi-Fi network
 *   name if the helper indicated that it was able to handle the network.
 */
@available(iOS 9.0, *)
let kNEHotspotHelperOptionDisplayName: String

/*!
 * @interface NEHotspotHelper
 * @discussion
 *   The NEHotspotHelper class allows an application to register itself as a
 *   HotspotHelper.
 */
@available(iOS 9.0, *)
class NEHotspotHelper : NSObject {

  /*!
   * @method registerWithOptions:queue:handler
   * @abstract
   *   Register the application as a HotspotHelper.
   * @discussion
   *   Once this API is invoked successfully, the application becomes
   *   eligible to be launched in the background and participate in
   *   various hotspot related functions.
   *
   *   This function should be called once when the application starts up.
   *   Invoking it again will have no effect and result in FALSE being returned.
   *
   *   The 'options' dictionary may be nil, or contain the single property
   *   kNEHotspotHelperOptionDisplayName.
   *
   * @param options If not nil, 'options' is an NSDictionary containing
   *   kNEHotspotHelperOption* keys (currently just
   *   kNEHotspotHelperOptionDisplayName).
   * @param queue The dispatch_queue_t to invoke the handle block on.
   * @param handler The NEHotspotHelperHandler block to execute to process
   *   helper commands.
   * @return
   *   YES if the registration was successful, NO otherwise.
   * @note Notes
   * @note 1
   *   The application's Info.plist MUST include a UIBackgroundModes array
   *   containing 'network-authentication'.
   * @note 2
   *   The application MUST set 'com.apple.developer.networking.HotspotHelper'
   *   as one of its entitlements. The value of the entitlement is a boolean
   *   value true.
   */
  @available(iOS 9.0, *)
  class func register(options options: [String : NSObject]? = [:], queue: dispatch_queue_t, handler: NEHotspotHelperHandler) -> Bool

  /*!
   * @method logoff:
   * @abstract
   *   Terminate the authentication session.
   * @discussion
   *   The application invokes this method when it wants to logoff from the
   *   current network. Invoking this method causes an NEHotspotHelperCommand
   *   of type kNEHotspotHelperCommandTypeLogoff to be issued to the application's
   *   'handler' block (see +[NEHotspotHelper registerWithOptions:queue:handler]).
   *
   *   'network' must correspond to the currently associated Wi-Fi network
   *   i.e. it must have come from the NEHotspotHelperCommand's 'network' property
   *   or from the +[NEHotspotHelper supportedInterfaces] method.
   * @return
   *   YES if the logoff command was successfully queued, NO otherwise.
   * @note Notes
   * @note 1
   *   The application MUST NOT actually logoff from the network until it
   *   receives the command to logoff.
   * @note 2
   *   After the application invokes -[NEHotspotHelperResponse deliver] indicating
   *   kNEHotspotHelperResultSuccess, the Wi-Fi network is disassociated.
   */
  @available(iOS 9.0, *)
  class func logoff(network: NEHotspotNetwork) -> Bool

  /*!
   * @method supportedNetworkInterfaces
   * @abstract
   *   Return the list of network interfaces managed by the
   *   HotspotHelper infrastructure.
   * @discussion
   *   Each network interface is represented by an NEHotspotNetwork object.
   *   Currently, the returned array contains exactly one NEHotspotNetwork
   *   object representing the Wi-Fi interface.
   *
   *   The main purpose of this method is to allow a HotspotHelper to provide
   *   accurate status in its UI at times when it has not been given a command
   *   to process. This method coupled with -[NEHotspotNetwork isChosenHelper]
   *   allows the application to know whether it is the one that is handling
   *   the current network.
   * @return
   *   nil if no network interfaces are being managed,
   *   non-nil NSArray of NEHotspotNetwork objects otherwise.
   */
  @available(iOS 9.0, *)
  class func supportedNetworkInterfaces() -> [AnyObject]
  init()
}

/*!
 * @category NSMutableURLRequest(NEHotspotHelper)
 * @discussion
 *   Extend NSMutableURLRequest to include a method to bind the
 *   request to the network interface associated with the specified
 *   NEHotspotHelperCommand object.
 */
extension NSMutableURLRequest {

  /*!
   * @method bindToHotspotHelperCommand:
   * @discussion
   *   Binds the NSMutableURLRequest to the network interface associated with
   *   the NEHotspotHelperCommand object.
   */
  @available(iOS 9.0, *)
  func bindTo(command: NEHotspotHelperCommand)
}

/*!
 * @interface NEIPv4Settings
 * @discussion The NEIPv4Settings class declares the programmatic interface for an object that contains IPv4 settings.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEIPv4Settings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddresses:subnetMasks:
   * @discussion Initialize a newly-allocated NEIPv4Settings object.
   * @param addresses An array of IPv4 addresses represented as dotted decimal strings.
   * @param subnetMasks An array of IPv4 subnet masks represented as dotted decimal strings.
   * @return The initialized object.
   */
  @available(iOS 9.0, *)
  init(addresses: [String], subnetMasks: [String])

  /*!
   * @property addresses
   * @discussion An array of IPv4 addresses represented as dotted decimal strings. These addresses will be set on the virtual interface used by the VPN tunnel.
   */
  @available(iOS 9.0, *)
  var addresses: [String] { get }

  /*!
   * @property subnetMasks
   * @discussion An array of IPv4 subnet masks represented as dotted decimal strings. These subnet masks will be set along with their corresponding addresses from the addresses array on the virtual interface used by the VPN tunnel.
   */
  @available(iOS 9.0, *)
  var subnetMasks: [String] { get }

  /*!
   * @property includedRoutes
   * @discussion An array of NEIPv4Route objects. Traffic matching these routes will be routed through the virtual interface used by the VPN tunnel.
   */
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv4Route]?

  /*!
   * @property excludedRoutes
   * @discussion An array of NEIPv4Route objects. Traffic matching these routes will be routed through the current primary physical interface of the device.
   */
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv4Route]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv4Route
 * @discussion The NEIPv4Route class declares the programmatic interface for an object that contains settings for an IPv4 route.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEIPv4Route : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithDestinationAddress:subnetMask:
   * @discussion Initialize a newly-allocated NEIPv4Route.
   * @param address The IPv4 address of the destination network.
   * @param subnetMask The subnet mask of the destination network.
   * @return The initialized NEIPv4Route.
   */
  @available(iOS 9.0, *)
  init(destinationAddress address: String, subnetMask: String)

  /*!
   * @property destinationAddress
   * @discussion An IPv4 address represented as a dotted decimal string. 
   */
  @available(iOS 9.0, *)
  var destinationAddress: String { get }

  /*!
   * @property destinationSubnetMask
   * @discussion An IPv4 subnet mask represented as a dotted decimal string. This mask in combination with the destinationAddress property is used to determine the destination network of the route.
   */
  @available(iOS 9.0, *)
  var destinationSubnetMask: String { get }

  /*!
   * @property gatewayAddress
   * @discussion The IPv4 address of the route's gateway. If this property is nil then the route's gateway will be set to the tunnel's virtual interface.
   */
  @available(iOS 9.0, *)
  var gatewayAddress: String?

  /*!
   * @method defaultRoute
   * @return A route object that represents the IPv4 default route.
   */
  @available(iOS 9.0, *)
  class func defaultRoute() -> NEIPv4Route
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv6Settings
 * @discussion The NEIPv6Settings class declares the programmatic interface for an object that contains IPv6 settings.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEIPv6Settings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddresses:networkPrefixLengths:
   * @discussion Initialize a newly-allocated NEIPv6Settings object.
   * @param addresses An array of IPv6 addresses represented as dotted decimal strings.
   * @param networkPrefixLengths An array of NSNumber objects each containing the length in bits of the network prefix of the corresponding address in the addresses parameter.
   * @return The initialized object.
   */
  @available(iOS 9.0, *)
  init(addresses: [String], networkPrefixLengths: [NSNumber])

  /*!
   * @property addresses
   * @discussion An array of IPv6 addresses represented strings. These addresses will be set on the virtual interface used by the VPN tunnel.
   */
  @available(iOS 9.0, *)
  var addresses: [String] { get }

  /*!
   * @property networkPrefixLengths
   * @discussion An array of NSNumber objects each representing the length in bits of the network prefix of the corresponding address in the addresses property.
   */
  @available(iOS 9.0, *)
  var networkPrefixLengths: [NSNumber] { get }

  /*!
   * @property includedRoutes
   * @discussion An array of NEIPv6Route objects. Traffic matching these routes will be routed through the virtual interface used by the VPN tunnel.
   */
  @available(iOS 9.0, *)
  var includedRoutes: [NEIPv6Route]?

  /*!
   * @property excludedRoutes
   * @discussion An array of NEIPv6Route objects. Traffic matching these routes will be routed through the current primary physical interface of the device.
   */
  @available(iOS 9.0, *)
  var excludedRoutes: [NEIPv6Route]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEIPv6Route
 * @discussion The NEIPv6Route class declares the programmatic interface for an object that contains settings for an IPv6 route.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEIPv6Route : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithDestinationAddress:networkPrefixLength:
   * @discussion Initialize a newly-allocated NEIPv6Route.
   * @param address The IPv6 address of the destination network.
   * @param networkPrefixLength A number containing the length in bits of the network prefix of the destination network.
   * @return The initialized NEIPv6Route.
   */
  @available(iOS 9.0, *)
  init(destinationAddress address: String, networkPrefixLength: NSNumber)

  /*!
   * @property destinationAddress
   * @discussion An IPv6 address represented as a string.
   */
  @available(iOS 9.0, *)
  var destinationAddress: String { get }

  /*!
   * @property destinationNetworkPrefixLength
   * @discussion A number containing the length in bits of the network prefix of the destination network. This prefix in combination with the destinationAddress property is used to determine the destination network of the route.
   */
  @available(iOS 9.0, *)
  var destinationNetworkPrefixLength: NSNumber { get }

  /*!
   * @property gatewayAddress
   * @discussion The IPv6 address of the route's gateway. If this property is nil then the route's gateway will be set to the tunnel's virtual interface.
   */
  @available(iOS 9.0, *)
  var gatewayAddress: String?

  /*!
   * @method defaultRoute
   * @return A route object that represents the IPv6 default route.
   */
  @available(iOS 9.0, *)
  class func defaultRoute() -> NEIPv6Route
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @typedef NEOnDemandRuleAction
 * @abstract On Demand rule actions
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
enum NEOnDemandRuleInterfaceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NEOnDemandRuleInterfaceTypeAny */
  @available(iOS 9.0, *)
  case Any

  /*! @const NEOnDemandRuleInterfaceTypeWiFi WiFi */
  @available(iOS 8.0, *)
  case WiFi

  /*! @const NEOnDemandRuleInterfaceTypeCellular Cellular */
  @available(iOS 8.0, *)
  case Cellular
}

/*!
 * @interface NEOnDemandRule
 * @discussion The NEOnDemandRule class declares the programmatic interface for an object that defines an On Demand rule. 
 *
 * NEOnDemandRule is an abstract base class from which other action-specific rule classes are derived.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 8.0, *)
class NEOnDemandRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property action
   * @discussion The rule's action
   */
  @available(iOS 8.0, *)
  var action: NEOnDemandRuleAction { get }

  /*!
   * @property DNSSearchDomainMatch
   * @discussion An array of NSString objects. If the current default search domain is equal to one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the current default search domain does not factor into the rule match.
   */
  @available(iOS 8.0, *)
  var dnsSearchDomainMatch: [String]?

  /*!
   * @property DNSServerAddressMatch
   * @discussion An array of DNS server IP addresses represented as NSString objects. If each of the current default DNS servers is equal to one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the default DNS servers do not factor into the rule match.
   */
  @available(iOS 8.0, *)
  var dnsServerAddressMatch: [String]?

  /*!
   * @property interfaceTypeMatch
   * @discussion The type of interface that this rule matches. If the current primary network interface is of this type and all of the other conditions in the rule match, then the rule matches. If this property is 0 (the default), then the current primary interface type does not factor into the rule match.
   */
  @available(iOS 8.0, *)
  var interfaceTypeMatch: NEOnDemandRuleInterfaceType

  /*!
   * @property SSIDMatch
   * @discussion An array of NSString objects. If the Service Set Identifier (SSID) of the current primary connected network matches one of the strings in this array and all of the other conditions in the rule match, then the rule matches. If this property is nil (the default), then the current primary connected network SSID does not factor into the rule match.
   */
  @available(iOS 8.0, *)
  var ssidMatch: [String]?

  /*!
   * @property probeURL
   * @discussion An HTTP or HTTPS URL. If a request sent to this URL results in a HTTP 200 OK response and all of the other conditions in the rule match, then then rule matches. If this property is nil (the default), then an HTTP request does not factor into the rule match.
   */
  @available(iOS 8.0, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NEOnDemandRuleEvaluateConnection : NEOnDemandRule {

  /*!
   * @property connectionRules
   * @discussion An array of NEEvaluateConnectionRule objects. Each NEEvaluateConnectionRule object is evaluated in order against the properties of the network connection being established.
   */
  @available(iOS 8.0, *)
  var connectionRules: [NEEvaluateConnectionRule]?
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEEvaluateConnectionRuleAction
 * @abstract Evaluate Connection rule actions
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NEEvaluateConnectionRule : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithMatchDomains:andAction
   * @discussion Initialize an NEEvaluateConnectionRule instance with a list of destination host domains and an action
   */
  @available(iOS 8.0, *)
  init(matchDomains domains: [String], andAction action: NEEvaluateConnectionRuleAction)

  /*!
   * @property action
   * @discussion The action to take if the properties of the network connection being established match the rule.
   */
  @available(iOS 8.0, *)
  var action: NEEvaluateConnectionRuleAction { get }

  /*!
   * @property matchDomains
   * @discussion An array of NSString objects. If the host name of the destination of the network connection being established shares a suffix with one of the strings in this array, then the rule matches.
   */
  @available(iOS 8.0, *)
  var matchDomains: [String] { get }

  /*!
   * @property useDNSServers
   * @discussion An array of NSString objects. If the rule matches the connection being established and the action is NEEvaluateConnectionRuleActionConnectIfNeeded, the DNS servers specified in this array are used to resolve the host name of the destination while evaluating connectivity to the destination. If the resolution fails for any reason, the VPN is started.
   */
  @available(iOS 8.0, *)
  var useDNSServers: [String]?

  /*!
   * @property probeURL
   * @discussion An HTTP or HTTPS URL. If the rule matches the connection being established and the action is NEEvaluateConnectionRuleActionConnectIfNeeded and a request sent to this URL results in a response with an HTTP response code other than 200, then the VPN is started.
   */
  @available(iOS 8.0, *)
  @NSCopying var probeURL: NSURL?
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
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
@available(iOS 9.0, *)
class NEPacketTunnelFlow : NSObject {

  /*!
   * @method readPacketsWithCompletionHandler:
   * @discussion Read available IP packets from the flow.
   * @param completionHandler A block that will be executed to handle the packets. This block takes an array of NSData objects and an array of NSNumber objects. The NSData and NSNumber in corresponding indicies in the array represent one packet. If after handling the packets the caller wants to read more packets then the caller must call this method again.
   */
  @available(iOS 9.0, *)
  func readPacketsWithCompletionHandler(completionHandler: ([NSData], [NSNumber]) -> Void)

  /*!
   * @method writePackets:completionHandler:
   * @discussion Write multiple IP packets to the flow.
   * @param packets An array of NSData objects, each containing packet data to be written.
   * @param protocols An array of NSNumber objects. Each number contains the protocol of the packet in the corresponding index in the packets array.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEPacketTunnelNetworkSettings : NETunnelNetworkSettings {

  /*!
   * @property IPv4Settings
   * @discussion An NEIPv4Settings object that contains the desired tunnel IPv4 settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var iPv4Settings: NEIPv4Settings?

  /*!
   * @property IPv6Settings
   * @discussion An NEIPv6Settings object that contains the desired tunnel IPv6 settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var iPv6Settings: NEIPv6Settings?

  /*!
   * @property tunnelOverheadBytes
   * @discussion An NSNumber object containing the number of bytes of overhead appended to each outbound packet through the tunnel. The MTU for the TUN interface is computed by subtracting this value from the MTU of the primary physical interface.
   */
  @available(iOS 9.0, *)
  @NSCopying var tunnelOverheadBytes: NSNumber?

  /*!
   * @property MTU
   * @discussion An NSNumber object containing the Maximum Transmission Unit (MTU) size in bytes to assign to the TUN interface. If this property is set, the tunnelOverheadBytes property is ignored.
   */
  @available(iOS 9.0, *)
  @NSCopying var mtu: NSNumber?

  /*!
   * @method initWithTunnelRemoteAddress:
   * @discussion This function initializes a newly-allocated NETunnelNetworkSettings object with a given tunnel remote address.
   * @param address The address of the remote endpoint that is providing the tunnel service.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEPacketTunnelProvider : NETunnelProvider {

  /*!
   * @method startTunnelWithOptions:completionHandler:
   * @discussion This function is called by the framework when a new tunnel is being created. Subclasses must override this method to perform whatever steps are necessary to establish the tunnel.
   * @param options A dictionary containing keys and values passed by the provider's containing app. If the containing app did not start the tunnel then this parameter will be nil.
   * @param completionHandler A block that must be called when the process of startingt the tunnel is complete. If the tunnel cannot be established then the subclass' implementation of this method must pass a non-nil NSError object to this block. A value of nil passed to the completion handler indicates that the tunnel was successfully established.
   */
  @available(iOS 9.0, *)
  func startTunnel(options options: [String : NSObject]? = [:], completionHandler: (NSError?) -> Void)

  /*!
   * @method stopTunnelWithReason:completionHandler:
   * @discussion This function is called by the framework when the tunnel is being destroyed. Subclasses must override this method to perform whatever steps are necessary to tear down the tunnel.
   * @param reason An NEProviderStopReason indicating why the tunnel is being stopped.
   * @param completionHandler A block that must be called when the tunnel is completely torn down.
   */
  @available(iOS 9.0, *)
  func stopTunnelWith(reason: NEProviderStopReason, completionHandler: () -> Void)

  /*!
   * @method cancelTunnelWithError:
   * @discussion This function is called by tunnel provider implementations to initiate tunnel destruction when a network error is encountered that renders the tunnel no longer viable. Subclasses should not override this method.
   * @param error An NSError object containing details about the error that the tunnel provider implementation encountered.
   */
  @available(iOS 9.0, *)
  func cancelTunnelWith(error: NSError?)

  /*!
   * @property packetFlow
   * @discussion An NEPacketFlow object that the tunnel provider implementation should use to receive packets from the network stack and inject packets into the network stack. Every time the tunnel is started the packet flow object is in an initialized state and must be explicitly opened before any packets can be received or injected.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func createTCPConnectionThroughTunnelTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection

  /*!
   * @method createUDPSessionThroughTunnelToEndpoint:fromEndpoint:
   * @discussion This function can be called by subclass implementations to create a UDP session between a local network endpoint and a remote network endpoint, through the tunnel established by the provider. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote endpoint to which UDP datagrams will be sent by the UDP session.
   * @param localEndpoint An NWHostEndpoint object that specifies the local IP address endpoint to use as the source endpoint of the UDP session.
   * @return An NWUDPSession object.
   */
  @available(iOS 9.0, *)
  func createUDPSessionThroughTunnelTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession
  init()
}

/*!
 * @typedef NEProviderStopReason
 * @abstract Provider stop reasons
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NEProvider : NSObject {

  /*!
   * @method sleepWithCompletionHandler:
   * @discussion This function is called by the framework when the system is about to go to sleep. Subclass developers can override this method to implement custom behavior such as closing connections or pausing some network activity.
   * @param completionHandler When the method is finished handling the sleep event it must execute this completion handler.
   */
  @available(iOS 9.0, *)
  func sleepWithCompletionHandler(completionHandler: () -> Void)

  /*!
   * @method wake
   * @discussion This function is called by the framework immediately after the system wakes up from sleep. Subclass developers can override this method to implement custom behavior such as re-establishing connections or resuming some network activity.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func createTCPConnectionTo(remoteEndpoint: NWEndpoint, enableTLS: Bool, tlsParameters TLSParameters: NWTLSParameters?, delegate: AnyObject?) -> NWTCPConnection

  /*!
   * @method createUDPSessionToEndpoint:fromEndpoint:
   * @discussion This function can be called by subclass implementations to create a UDP session between a local network endpoint and a remote network endpoint. This function should not be overridden by subclasses.
   * @param remoteEndpoint An NWEndpoint object that specifies the remote endpoint to which UDP datagrams will be sent by the UDP session.
   * @param localEndpoint An NWHostEndpoint object that specifies the local IP address endpoint to use as the source endpoint of the UDP session.
   * @return An NWUDPSession object.
   */
  @available(iOS 9.0, *)
  func createUDPSessionTo(remoteEndpoint: NWEndpoint, from localEndpoint: NWHostEndpoint?) -> NWUDPSession

  /*!
   * @property defaultPath
   * @discussion The current default path for connections created by the provider. Use KVO to watch for network changes.
   */
  @available(iOS 9.0, *)
  var defaultPath: NWPath? { get }
  init()
}

/*!
 * @interface NEProxyServer
 * @discussion The NEProxyServer class declares the programmatic interface for an object that contains settings for a proxy server.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NEProxyServer : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithAddress:port:
   * @discussion This function initializes a newly-allocated NEProxyServer object
   * @param address The string representation of the proxy server IP address.
   * @param port The TCP port of the proxy server.
   */
  @available(iOS 9.0, *)
  init(address: String, port: Int)

  /*!
   * @property address
   * @discussion The string representation of the proxy server IP address.
   */
  @available(iOS 9.0, *)
  var address: String { get }

  /*!
   * @property port
   * @discussion The TCP port of the proxy server.
   */
  @available(iOS 9.0, *)
  var port: Int { get }

  /*!
   * @property authenticationRequired
   * @discussion A flag indicating if the server requires authentication credentials.
   */
  @available(iOS 9.0, *)
  var authenticationRequired: Bool

  /*!
   * @property username
   * @discussion The username portion of the authentication credential to use when communicating with the proxy server.
   */
  @available(iOS 9.0, *)
  var username: String?

  /*!
   * @property password
   * @discussion The password portion of the authentication credential to use when communicating with the proxy server. This property is only saved persistently if the username property is non-nil and non-empty and if the authenticationRequired flag is set.
   */
  @available(iOS 9.0, *)
  var password: String?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEProxySettings
 * @discussion The NEProxySettings class declares the programmatic interface for an object that contains proxy settings.
 *
 * NEProxySettings is used in the context of a Network Extension configuration to specify the proxy that should be used for network traffic when the Network Extension is active.
 */
@available(iOS 9.0, *)
class NEProxySettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property autoProxyConfigurationEnabled
   * @discussion A boolean indicating if proxy auto-configuration is enabled.
   */
  @available(iOS 9.0, *)
  var autoProxyConfigurationEnabled: Bool

  /*!
   * @property proxyAutoConfigurationURL
   * @discussion A URL specifying where the PAC script is located.
   */
  @available(iOS 9.0, *)
  @NSCopying var proxyAutoConfigurationURL: NSURL?

  /*!
   * @property proxyAutoConfigurationJavaScript
   * @discussion A string containing the PAC JavaScript source code.
   */
  @available(iOS 9.0, *)
  var proxyAutoConfigurationJavaScript: String?

  /*!
   * @property HTTPEnabled
   * @discussion A boolean indicating if the static HTTP proxy is enabled.
   */
  @available(iOS 9.0, *)
  var httpEnabled: Bool

  /*!
   * @property HTTPServer
   * @discussion A NEProxyServer object containing the HTTP proxy server settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var httpServer: NEProxyServer?

  /*!
   * @property HTTPSEnabled
   * @discussion A boolean indicating if the static HTTPS proxy is enabled.
   */
  @available(iOS 9.0, *)
  var httpsEnabled: Bool

  /*!
   * @property HTTPSServer
   * @discussion A NEProxyServer object containing the HTTPS proxy server settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var httpsServer: NEProxyServer?

  /*!
   * @property excludeSimpleHostnames
   * @discussion A flag indicating if the proxy settings should not be used for network destinations specified using single-label host names.
   */
  @available(iOS 9.0, *)
  var excludeSimpleHostnames: Bool

  /*!
   * @property exceptionList
   * @discussion An array of domain strings. If the destination host name of a connection shares a suffix with one of these strings then the proxy settings will not be used for the connection.
   */
  @available(iOS 9.0, *)
  var exceptionList: [String]?

  /*!
   * @property matchDomains
   * @discussion An array of domain strings. If the destination host name of a connection shares a suffix with one of these strings then the proxy settings will be used for the connection. Otherwise the proxy settings will not be used. If this property is nil then all connections to which the Network Extension applies will use the proxy settings.
   */
  @available(iOS 9.0, *)
  var matchDomains: [String]?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NETunnelNetworkSettings : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @method initWithTunnelRemoteAddress:
   * @discussion This function initializes a newly-allocated NETunnelNetworkSettings object with a given tunnel remote address.
   * @param address The address of the remote endpoint that is providing the tunnel service.
   */
  @available(iOS 9.0, *)
  init(tunnelRemoteAddress address: String)

  /*!
   * @property tunnelRemoteAddress
   * @discussion A string containing the IP address of the remote endpoint that is providing the tunnel service.
   */
  @available(iOS 9.0, *)
  var tunnelRemoteAddress: String { get }

  /*!
   * @property DNSSettings
   * @discussion An NEDNSSettings object that contains the desired tunnel DNS settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var dnsSettings: NEDNSSettings?

  /*!
   * @property proxySettings
   * @discussion An NEProxySettings object that contains the desired tunnel proxy settings.
   */
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @typedef NETunnelProviderError
 * @abstract Tunnel Provider error codes
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
enum NETunnelProviderRoutingMethod : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! @const NETunnelProviderRoutingMethodDestinationIP Route network traffic to the tunnel based on destination IP */
  case DestinationIP

  /*! @const NETunnelProviderRoutingMethodSourceApplication Route network traffic to the tunnel based on source application */
  case SourceApplication
}

/*! @const NETunnelProviderErrorDomain The tunnel provider error domain */
@available(iOS 9.0, *)
let NETunnelProviderErrorDomain: String

/*!
 * @interface NETunnelProvider
 * @discussion The NETunnelProvider class declares the programmatic interface for an object that provides a network tunnel service.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NETunnelProvider : NEProvider {

  /*!
   * @method handleAppMessage:completionHandler:
   * @discussion This function is called by the framework when the container app sends a message to the provider. Subclasses should override this method to handle the message and optionally send a response.
   * @param messageData An NSData object containing the message sent by the container app.
   * @param completionHandler A block that the method can execute to send a response to the container app. If this parameter is non-nil then the method implementation should always execute the block. If this parameter is nil then the method implementation should treat this as an indication that the container app is not expecting a response.
   */
  @available(iOS 9.0, *)
  func handleAppMessage(messageData: NSData, completionHandler: ((NSData?) -> Void)? = nil)

  /*!
   * @method setTunnelNetworkSettings:completionHandler:
   * @discussion This function is called by tunnel provider implementations to set the network settings of the tunnel, including IP routes, DNS servers, and virtual interface addresses depending on the tunnel type. Subclasses should not override this method. This method can be called multiple times during the lifetime of a particular tunnel. It is not necessary to call this function with nil to clear out the existing settings before calling this function with a non-nil configuration.
   * @param tunnelNetworkSettings An NETunnelNetworkSettings object containing all of the desired network settings for the tunnel. Pass nil to clear out the current network settings.
   * @param completionHandler A block that will be called by the framework when the process of setting or clearing the network settings is complete. If an error occurred during the process of setting or clearing the IP network settings then a non-nill NSError object will be passed to this block containing error details.
   */
  @available(iOS 9.0, *)
  func setTunnelNetworkSettings(tunnelNetworkSettings: NETunnelNetworkSettings?, completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @property protocolConfiguration
   * @discussion An NEVPNProtocol object containing the provider's current configuration. The value of this property may change during the lifetime of the tunnel provided by this NETunnelProvider, KVO can be used to detect when changes occur.  For different protocol types, this property will contain the corresponding subclass.   For NEVPNProtocolTypePlugin protocol type, this property will contain the NETunnelProviderProtocol subclass.  For NEVPNProtocolTypeIKEv2 protocol type, this property will contain the NEVPNProtocolIKEv2 subclass.
   */
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol { get }

  /*!
   * @property appRules
   * @discussion An array of NEAppRule objects specifying which applications are currently being routed through the tunnel provided by this NETunnelProvider. If application-based routing is not enabled for the tunnel, then this property is set to nil. 
   */
  @available(iOS 9.0, *)
  var appRules: [NEAppRule]? { get }

  /*!
   * @property routingMethod
   * @discussion The method by which network traffic is routed to the tunnel. The default is NETunnelProviderRoutingMethodDestinationIP.
   */
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }

  /*!
   * @property reasserting
   * @discussion A flag that indicates to the framework if this NETunnelProvider is currently re-establishing the tunnel. Setting this flag will cause the session status visible to the user to change to "Reasserting". Clearing this flag will change the user-visible status of the session back to "Connected". Setting and clearing this flag only has an effect if the session is in the "Connected" state.
   */
  @available(iOS 9.0, *)
  var reasserting: Bool
  init()
}

/*!
 * @interface NETunnelProviderManager
 * @discussion The NETunnelProviderManager class declares the programmatic interface for an object that is used to configure and control network tunnels provided by NETunnelProviders.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NETunnelProviderManager : NEVPNManager {

  /*!
   * @method loadAllFromPreferencesWithCompletionHandler:
   * @discussion This function asynchronously reads all of the NETunnelProvider configurations created by the calling app that have previously been saved to disk and returns them as NETunnelProviderManager objects.
   * @param completionHandler A block that takes an array NETunnelProviderManager objects. The array passed to the block may be empty if no NETunnelProvider configurations were successfully read from the disk.  The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(iOS 9.0, *)
  class func loadAllFromPreferencesWithCompletionHandler(completionHandler: ([NETunnelProviderManager]?, NSError?) -> Void)

  /*!
   * @method copyAppRules
   * @discussion This function returns an array of NEAppRule objects.
   */
  @available(iOS 9.0, *)
  func copyAppRules() -> [NEAppRule]?

  /*!
   * @property routingMethod
   * @discussion The method by which network traffic is routed to the tunnel. The default is NETunnelProviderRoutingMethodDestinationIP.
   */
  @available(iOS 9.0, *)
  var routingMethod: NETunnelProviderRoutingMethod { get }
  init()
}

/*!
 * @interface NETunnelProviderProtocol
 * @discussion The NETunnelProviderProtocol class declares the programmatic interface for an object that contains NETunnelProvider-specific configuration settings.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 9.0, *)
class NETunnelProviderProtocol : NEVPNProtocol {

  /*!
   * @property providerConfiguration
   * @discussion A dictionary containing NETunnelProvider vendor-specific configuration parameters. This dictionary is passed as-is to NETunnelProviders when a tunnel is started.
   */
  @available(iOS 9.0, *)
  var providerConfiguration: [String : AnyObject]?

  /*!
   * @property providerBundleIdentifier
   * @discussion A string containing the bundle identifier of the NETunnelProvider to be used by this configuration.
   */
  @available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func startTunnel(options options: [String : AnyObject]? = [:]) throws

  /*!
   * @method stopTunnel
   * @discussion This function is used to stop the tunnel. The tunnel disconnect process is started and this function returns immediately.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func sendProviderMessage(messageData: NSData, responseHandler: ((NSData?) -> Void)? = nil) throws
  init()
}

/*!
 * @typedef NEVPNStatus
 * @abstract VPN status codes
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
let NEVPNStatusDidChangeNotification: String

/*! @const NEVPNConnectionStartOptionUsername Specify this key in the options dictionary passed to startVPNTunnelWithOptions:returningError: to override the username saved in the configuration. The value is a string */
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionUsername: String

/*! @const kNEVPNConnectioNEVPNConnectionStartOptionPasswordnOptionAuthPassword Specify this key in the options dictionary passed to startVPNTunnelWithOptions:returningError: to override the password saved in the configuration. The value is a string */
@available(iOS 9.0, *)
let NEVPNConnectionStartOptionPassword: String

/*!
 * @interface NEVPNConnection
 * @discussion The NEVPNConnection class declares the programmatic interface for an object that manages VPN connections.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 8.0, *)
class NEVPNConnection : NSObject {

  /*!
   * @method startVPNTunnelAndReturnError:
   * @discussion This function is used to start the VPN tunnel using the current VPN configuration. The VPN tunnel connection process is started and this function returns immediately.
   * @param error If the VPN tunnel was started successfully, this parameter is set to nil. Otherwise this parameter is set to the error that occurred. Possible errors include:
   *    1. NEVPNErrorConfigurationInvalid
   *    2. NEVPNErrorConfigurationDisabled
   * @return YES if the VPN tunnel was started successfully, NO if an error occurred.
   */
  @available(iOS 8.0, *)
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
  @available(iOS 9.0, *)
  func startVPNTunnel(options options: [String : NSObject]? = [:]) throws

  /*!
   * @method stopVPNTunnel:
   * @discussion This function is used to stop the VPN tunnel. The VPN tunnel disconnect process is started and this function returns immediately.
   */
  @available(iOS 8.0, *)
  func stopVPNTunnel()

  /*!
   * @property status
   * @discussion The current status of the VPN.
   */
  @available(iOS 8.0, *)
  var status: NEVPNStatus { get }

  /*!
   * @property connectedDate
   * @discussion The date and time when the connection status changed to NEVPNStatusConnected. This property is nil if the connection is not fully established.
   */
  @available(iOS 9.0, *)
  var connectedDate: NSDate? { get }
  init()
}

/*!
 * @typedef NEVPNError
 * @abstract VPN error codes
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
let NEVPNErrorDomain: String

/*! @const NEVPNConfigurationChangeNotification Name of the NSNotification that is posted when the VPN configuration changes. */
@available(iOS 8.0, *)
let NEVPNConfigurationChangeNotification: String

/*!
 * @interface NEVPNManager
 * @discussion The NEVPNManager class declares the programmatic interface for an object that manages Virtual Private Network (VPN) configurations.
 *
 * NEVPNManager declares methods and properties for configuring and controlling a VPN.
 *
 * Instances of this class are thread safe.
 */
@available(iOS 8.0, *)
class NEVPNManager : NSObject {

  /*!
   * @method sharedManager
   * @return The singleton NEVPNManager object for the calling process.
   */
  @available(iOS 8.0, *)
  class func shared() -> NEVPNManager

  /*!
   * @method loadFromPreferencesWithCompletionHandler:
   * @discussion This function loads the current VPN configuration from the caller's VPN preferences.
   * @param completionHandler A block that will be called on the main thread when the load operation is completed. The NSError passed to this block will be nil if the load operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func loadFromPreferencesWithCompletionHandler(completionHandler: (NSError?) -> Void)

  /*!
   * @method removeFromPreferencesWithCompletionHandler:
   * @discussion This function removes the VPN configuration from the caller's VPN preferences. If the VPN is enabled, has VPN On Demand enabled, and has VPN On Demand rules, the VPN is disabled and the VPN On Demand rules are de-activated.
   * @param completionHandler A block that will be called on the main thread when the remove operation is completed. The NSError passed to this block will be nil if the remove operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func removeFromPreferences(completionHandler completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @method saveToPreferencesWithCompletionHandler:
   * @discussion This function saves the VPN configuration in the caller's VPN preferences. If the VPN is enabled, has VPN On Demand enabled, and has VPN On Demand rules, the VPN On Demand rules are activated.
   *
   * @param completionHandler A block that will be called on the main thread when the save operation is completed. The NSError passed to this block will be nil if the save operation succeeded, non-nil otherwise.
   */
  @available(iOS 8.0, *)
  func saveToPreferences(completionHandler completionHandler: ((NSError?) -> Void)? = nil)

  /*!
   * @property onDemandRules
   * @discussion An array of NEOnDemandRule objects.
   */
  @available(iOS 8.0, *)
  var onDemandRules: [NEOnDemandRule]?

  /*!
   * @property onDemandEnabled
   * @discussion Toggles VPN On Demand.
   */
  @available(iOS 8.0, *)
  var isOnDemandEnabled: Bool

  /*!
   * @property localizedDescription
   * @discussion A string containing a description of the VPN.
   */
  @available(iOS 8.0, *)
  var localizedDescription: String?

  /*!
   * @property protocol
   * @discussion An NEVPNProtocol object containing the protocol-specific portion of the VPN configuration.
   */
  @available(iOS, introduced=8.0, deprecated=9.0, message="Use protocolConfiguration instead")
  var `protocol`: NEVPNProtocol?

  /*!
   * @property protocolConfiguration
   * @discussion An NEVPNProtocol object containing the protocol-specific portion of the VPN configuration.
   */
  @available(iOS 9.0, *)
  var protocolConfiguration: NEVPNProtocol?

  /*!
   * @property connection
   * @discussion The NEVPNConnection object used for controlling the VPN tunnel.
   */
  @available(iOS 8.0, *)
  var connection: NEVPNConnection { get }

  /*!
   * @property enabled
   * @discussion Toggles the enabled status of the VPN. Setting this property will disable VPN configurations of other apps. This property will be set to NO  when other VPN configurations are enabled.
   */
  @available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NEVPNProtocol : NSObject, NSCopying, NSSecureCoding {

  /*!
   * @property serverAddress
   * @discussion The VPN server. Depending on the protocol, may be an IP address, host name, or URL.
   */
  @available(iOS 8.0, *)
  var serverAddress: String?

  /*!
   * @property username
   * @discussion The username component of the VPN authentication credential.
   */
  @available(iOS 8.0, *)
  var username: String?

  /*!
   * @property passwordReference
   * @discussion The password component of the VPN authentication credential. The value is a persistent reference to a keychain item with the kSecClassGenericPassword class.
   */
  @available(iOS 8.0, *)
  @NSCopying var passwordReference: NSData?

  /*!
   * @property identityReference
   * @discussion The certificate and private key component of the VPN authentication credential. The value is a persistent reference to a keychain item with the kSecClassIdentity class.
   */
  @available(iOS 9.0, *)
  @NSCopying var identityReference: NSData?

  /*!
   * @property identityData
   * @discussion The PKCS12 data for the VPN authentication identity. The value is a NSData in PKCS12 format.
   */
  @available(iOS 8.0, *)
  @NSCopying var identityData: NSData?

  /*!
   * @property identityDataPassword 
   * @discussion The password to be used to decrypt the PKCS12 identity data.
   */
  @available(iOS 8.0, *)
  var identityDataPassword: String?

  /*!
   * @property disconnectOnSleep
   * @discussion If YES, the VPN connection will be disconnected when the device goes to sleep. The default is NO.
   */
  @available(iOS 8.0, *)
  var disconnectOnSleep: Bool

  /*!
   * @property proxySettings
   * @discussion An NEProxySettings object containing the proxy settings to use for connections routed through the tunnel.
   */
  @available(iOS 9.0, *)
  @NSCopying var proxySettings: NEProxySettings?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEVPNIKEv2EncryptionAlgorithm
 * @abstract IKEv2 Encryption Algorithms
 */
@available(iOS 8.0, *)
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
  @available(iOS 8.3, *)
  case AlgorithmAES128GCM

  /*! @const NEVPNIKEv2EncryptionAlgorithmAES256GCM Advanced Encryption Standard 256 bit (AES256GCM) */
  @available(iOS 8.3, *)
  case AlgorithmAES256GCM
}

/*!
 * @typedef NEVPNIKEv2IntegrityAlgorithm
 * @abstract IKEv2 Integrity Algorithms
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
@available(iOS 8.3, *)
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
@available(iOS 8.0, *)
class NEVPNIKEv2SecurityAssociationParameters : NSObject, NSSecureCoding, NSCopying {

  /*!
   * @property encryptionAlgorithm
   * @discussion The algorithm used by the Security Association to encrypt and decrypt data. Default is NEVPNIKEv2EncryptionAlgorithm3DES.
   */
  @available(iOS 8.0, *)
  var encryptionAlgorithm: NEVPNIKEv2EncryptionAlgorithm

  /*!
   * @property integrityAlgorithm
   * @discussion The algorithm used by the Security Association to verify the integrity of data. Default is NEVPNIKEv2IntegrityAlgorithmSHA96. The IKE psedo-random function algorithm will be inferred based on the integrity algorithm.
   */
  @available(iOS 8.0, *)
  var integrityAlgorithm: NEVPNIKEv2IntegrityAlgorithm

  /*!
   * @property diffieHellmanGroup
   * @discussion The Diffie Hellman group used by the Security Association. Default is NEVPNIKEv2DiffieHellmanGroup2.
   */
  @available(iOS 8.0, *)
  var diffieHellmanGroup: NEVPNIKEv2DiffieHellmanGroup

  /*!
   * @property lifetimeMinutes
   * @discussion The life time of the Security Association, in minutes. Default is 60 for IKE Security Associations, and 30 for Child Security Associations. Before the lifetime is reached, IKEv2 will attempt to rekey the Security Association to maintain the connection.
   */
  @available(iOS 8.0, *)
  var lifetimeMinutes: Int32
  init()
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 * @interface NEVPNProtocolIKEv2
 * @discussion The NEVPNProtocolIKEv2 class declares the programmatic interface of an object that manages the IKEv2-specific portion of a VPN configuration.
 *
 * Instances of this class use IKE version 2 for key negotiation.
 * Instances of this class are thread safe.
 */
@available(iOS 8.0, *)
class NEVPNProtocolIKEv2 : NEVPNProtocolIPSec {

  /*!
   * @property deadPeerDetectionRate
   * @discussion How frequently the IKEv2 client will run the dead peer detection algorithm.  Default is NEVPNIKEv2DeadPeerDetectionRateMedium.
   */
  @available(iOS 8.0, *)
  var deadPeerDetectionRate: NEVPNIKEv2DeadPeerDetectionRate

  /*!
   * @property serverCertificateIssuerCommonName
   * @discussion A string containing the Subject Common Name field of the Certificate Authority certificate that issued the IKEv2 server's certificate.
   */
  @available(iOS 8.0, *)
  var serverCertificateIssuerCommonName: String?

  /*!
   * @property serverCertificateCommonName
   * @discussion A string containing the value to verify in the IKEv2 server certificate's Subject Common Name field.
   */
  @available(iOS 8.0, *)
  var serverCertificateCommonName: String?

  /*!
   * @property certificateType
   * @discussion contains the type of certificate if an certificate is configured.  Default is RSA.
   */
  @available(iOS 8.3, *)
  var certificateType: NEVPNIKEv2CertificateType

  /*!
   * @property useConfigurationAttributeInternalIPSubnet
   * @discussion Boolean indicating if client should use INTERNAL_IP4_SUBNET / INTERNAL_IP6_SUBNET attributes.  Default is False.
   */
  @available(iOS 9.0, *)
  var useConfigurationAttributeInternalIPSubnet: Bool

  /*!
   * @property IKESecurityAssociationParameters
   * @discussion Parameters for the IKE SA
   */
  @available(iOS 8.0, *)
  var ikeSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }

  /*!
   * @property childSecurityAssociationParameters
   * @discussion Parameters for the child SA
   */
  @available(iOS 8.0, *)
  var childSecurityAssociationParameters: NEVPNIKEv2SecurityAssociationParameters { get }

  /*!
   * @property disableMOBIKE
   * @discussion Disable MOBIKE negotiation. Default is NO.
   */
  @available(iOS 9.0, *)
  var disableMOBIKE: Bool

  /*!
   * @property disableRedirect
   * @discussion Disable Server Redirect. Default is NO.
   */
  @available(iOS 9.0, *)
  var disableRedirect: Bool

  /*!
   * @property enablePFS
   * @discussion Enable Perfect Forward Secrecy. Default is NO.
   */
  @available(iOS 9.0, *)
  var enablePFS: Bool

  /*!
   * @property enableRevocationCheck
   * @discussion Enable certificate revocation check. Default is NO.
   */
  @available(iOS 9.0, *)
  var enableRevocationCheck: Bool

  /*!
   * @property strictRevocationCheck
   * @discussion Require positive certificate revocation check response for peer certificate validation to pass. Default is NO.
   */
  @available(iOS 9.0, *)
  var strictRevocationCheck: Bool
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @typedef NEVPNIKEAuthenticationMethod
 * @abstract Internet Key Exchange (IKE) authentication methods used to authenticate with the IPSec server.
 */
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class NEVPNProtocolIPSec : NEVPNProtocol {

  /*!
   * @property authenticationMethod
   * @discussion The method used to authenticate with the IPSec server. Note that if this property is set to NEVPNIKEAuthenticationMethodNone, extended authentication will still be negotiated if useExtendedAuthentication is set to YES.
   */
  @available(iOS 8.0, *)
  var authenticationMethod: NEVPNIKEAuthenticationMethod

  /*!
   * @property useExtendedAuthentication
   * @discussion A flag indicating if extended authentication will be negotiated. This authentication is in addition to the IKE authentication used to authenticate the endpoints of the IKE session.
   *   For IKE version 1, when this flag is set X-Auth authentication will be negotiated as part of the IKE session, using the username and password properties as the credential.
   *   For IKE version 2, when this flag is set EAP authentication will be negotiated as part of the IKE session, using the username, password, and/or identity properties as the credential depending on which EAP method the server requires.
   */
  @available(iOS 8.0, *)
  var useExtendedAuthentication: Bool

  /*!
   * @property sharedSecretReference
   * @discussion A persistent reference to a keychain item of class kSecClassGenericPassword containing the IKE shared secret.
   */
  @available(iOS 8.0, *)
  @NSCopying var sharedSecretReference: NSData?

  /*!
   * @property localIdentifier
   * @discussion A string identifying the local IPSec endpoint for authentication purposes.
   */
  @available(iOS 8.0, *)
  var localIdentifier: String?

  /*!
   * @property remoteIdentifier
   * @discussion A string identifying the remote IPSec endpoint for authentication purposes.
   */
  @available(iOS 8.0, *)
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
@available(iOS 9.0, *)
class NWBonjourServiceEndpoint : NWEndpoint {

  /*!
   * @method endpointWithName:type:domain:
   * @param name The Bonjour service name.
   * @param type The Bonjour service type.
   * @param domain The Bonjour service domain.
   * @return An initialized NWBonjourServiceEndpoint object.
   */
  @available(iOS 9.0, *)
  convenience init(name: String, type: String, domain: String)

  /*!
   * @property name
   * @discussion The endpoint's Bonjour service name.
   */
  @available(iOS 9.0, *)
  var name: String { get }

  /*!
   * @property type
   * @discussion The endpoint's Bonjour service type.
   */
  @available(iOS 9.0, *)
  var type: String { get }

  /*!
   * @property domain
   * @discussion The endpoint's Bonjour service domain.
   */
  @available(iOS 9.0, *)
  var domain: String { get }
  init()
}

/*!
 * @interface NWEndpoint
 * @discussion NWEndpoint is a generic class to represent network endpoints, such as a port on a remote server.
 */
@available(iOS 9.0, *)
class NWEndpoint : NSObject {
  init()
}

/*!
 * @interface NWHostEndpoint
 * @discussion NWHostEndpoint is a subclass of NWEndpoint. It represents an endpoint backed by a 
 *		hostname and port. Note that a hostname string may be an IP or IPv6 address.
 */
@available(iOS 9.0, *)
class NWHostEndpoint : NWEndpoint {

  /*!
   * @method endpointWithHostname:port:
   * @param hostname A string representation of the hostname or address, such as www.apple.com or 10.0.0.1.
   * @param port A string containing the port on the host, such as 80.
   * @return An initialized NWHostEndpoint object.
   */
  @available(iOS 9.0, *)
  convenience init(hostname: String, port: String)

  /*!
   * @property hostname
   * @discussion The endpoint's hostname.
   */
  @available(iOS 9.0, *)
  var hostname: String { get }

  /*!
   * @property port
   * @discussion The endpoint's port.
   */
  @available(iOS 9.0, *)
  var port: String { get }
  init()
}

/*!
 * @typedef NWPathStatus
 * @abstract Path status values
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
class NWPath : NSObject {

  /*!
   * @property status
   * @discussion The evaluated NWPathStatus of the NWPath.
   */
  @available(iOS 9.0, *)
  var status: NWPathStatus { get }

  /*!
   * @property expensive
   * @discussion Returns YES is the path is considered expensive, as when using a cellular data plan.
   */
  @available(iOS 9.0, *)
  var isExpensive: Bool { get }

  /*!
   * @method isEqualToPath:
   * @param path An NWPath object to compare.
   * @return YES if the two path objects have the same content, NO otherwise.
   */
  @available(iOS 9.0, *)
  func isEqualTo(path: NWPath) -> Bool
  init()
}

/*!
 * @typedef NWTCPConnectionState
 * @abstract Defined connection states. New types may be defined in the future.
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  init(upgradeFor connection: NWTCPConnection)

  /*!
   * @property state
   * @discussion The status of the connection. Use KVO to watch this property to get updates.
   */
  @available(iOS 9.0, *)
  var state: NWTCPConnectionState { get }

  /*!
   * @property viable
   * @discussion YES if the connection can read and write data, NO otherwise. Use KVO to watch this property.
   */
  @available(iOS 9.0, *)
  var isViable: Bool { get }

  /*!
   * @property hasBetterPath
   * @discussion YES if the system determines there is a better path the destination can be reached if
   *		the caller creates a new connection using the same endpoint and parameters. This can
   *		be done using the convenience upgrade initializer method.
   *		Use KVO to watch this property to get updates.
   */
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }

  /*!
   * @property endpoint
   * @discussion The destination endpoint with which this connection was created.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  var connectedPath: NWPath? { get }

  /*!
   * @property localAddress
   * @discussion The IP address endpoint from which the connection was connected.
   */
  @available(iOS 9.0, *)
  var localAddress: NWEndpoint? { get }

  /*!
   * @property remoteAddress
   * @discussion The IP address endpoint to which the connection was connected.
   */
  @available(iOS 9.0, *)
  var remoteAddress: NWEndpoint? { get }

  /*!
   * @property txtRecord
   * @discussion When the connection is connected to a Bonjour service endpoint, the TXT record associated
   * 		with the Bonjour service is available via this property. Beware that the value comes from
   * 		the network. Care must be taken when parsing this potentially malicious value.
   */
  @available(iOS 9.0, *)
  var txtRecord: NSData? { get }

  /*!
   * @property error
   * @discussion The connection-wide error property indicates any fatal error that occurred while
   * 		processing the connection or performing data reading or writing.
   */
  @available(iOS 9.0, *)
  var error: NSError? { get }

  /*!
   * @method cancel:
   * @discussion Cancel the connection. This will clean up the resources associated with this object
   * 		and transition this object to NWTCPConnectionStateCancelled state.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  func readMinimumLength(minimum: Int, maximumLength maximum: Int, completionHandler completion: (NSData?, NSError?) -> Void)

  /*!
   * @method write:completionHandler:
   * @discussion Write the given data object content. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param data The data object whose content will be written
   * @param completion The completion handler to be invoked when the data content has been written or an error has occurred.
   * 		If the error is nil, the write succeeded and the caller can write more data.
   */
  @available(iOS 9.0, *)
  func write(data: NSData, completionHandler completion: (NSError?) -> Void)

  /*!
   * @method writeClose:
   * @discussion Close this connection's write side such that further write requests won't succeed.
   * 		Note that this has the effect of closing the read side of the peer connection.
   * 		When the connection's read side and write side are closed, the connection is considered
   * 		disconnected and will transition to the appropriate state.
   */
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  optional func evaluateTrustFor(connection: NWTCPConnection, peerCertificateChain: [AnyObject], completionHandler completion: (SecTrust) -> Void)
}
class NWTLSParameters : NSObject {

  /*!
   * @property TLSSessionID
   * @discussion The session ID for the associated connection, used for TLS session resumption.
   *		This property is optional when using TLS.
   */
  @available(iOS 9.0, *)
  @NSCopying var tlsSessionID: NSData?

  /*!
   * @property SSLCipherSuites
   * @discussion The set of allowed cipher suites, as defined in <Security/CipherSuite.h>.
   *		If set to nil, the default cipher suites will be used.
   */
  @available(iOS 9.0, *)
  var sslCipherSuites: Set<NSNumber>?

  /*!
   * @property minimumSSLProtocolVersion
   * @discussion The minimum allowed SSLProtocol value. as defined in <Security/SecureTransport.h>.
   *		If set, the SSL handshake will not accept any protocol version older than the minimum.
   */
  @available(iOS 9.0, *)
  var minimumSSLProtocolVersion: Int

  /*!
   * @property maximumSSLProtocolVersion
   * @discussion The maximum allowed SSLProtocol value. as defined in <Security/SecureTransport.h>.
   *		If set, the SSL handshake will not accept any protocol version newer than the maximum.
   *		This property should be used with caution, since it may limit the use of preferred
   *		SSL protocols.
   */
  @available(iOS 9.0, *)
  var maximumSSLProtocolVersion: Int
  init()
}

/*!
 * @typedef NWUDPSessionState
 * @abstract UDP session state values
 */
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  init(upgradeFor session: NWUDPSession)

  /*!
   * @property state
   * @discussion The current state of the UDP session. If the state is NWUDPSessionStateReady, 
   *		then the connection is eligible for reading and writing. The state will be
   *		NWUDPSessionStateFailed if the endpoint could not be resolved, or all endpoints have been 
   *		rejected. Use KVO to watch for changes.
   */
  @available(iOS 9.0, *)
  var state: NWUDPSessionState { get }

  /*!
   * @property endpoint
   * @discussion The provided endpoint.
   */
  @available(iOS 9.0, *)
  var endpoint: NWEndpoint { get }

  /*!
   * @property resolvedEndpoint
   * @discussion The currently targeted remote endpoint. Use KVO to watch for changes.
   */
  @available(iOS 9.0, *)
  var resolvedEndpoint: NWEndpoint? { get }

  /*!
   * @property viable
   * @discussion YES if the connection can read and write data, NO otherwise. 
   *		Use KVO to watch this property.
   */
  @available(iOS 9.0, *)
  var isViable: Bool { get }

  /*!
   * @property hasBetterPath
   * @discussion YES if there is another path available that is preferred over the currentPath. 
   *		To take advantage of this path, create a new UDPSession. Use KVO to watch for changes.
   */
  @available(iOS 9.0, *)
  var hasBetterPath: Bool { get }

  /*!
   * @property currentPath
   * @discussion The current evaluated path for the resolvedEndpoint. Use KVO to watch for changes.
   */
  @available(iOS 9.0, *)
  var currentPath: NWPath? { get }

  /*!
   * @method tryNextResolvedEndpoint
   * @discussion Mark the current value of resolvedEndpoint as unusable, and try to switch to the 
   *		next available endpoint. This should be used when the caller has attempted to communicate
   *		with the current resolvedEndpoint, and the caller has determined that it is unusable. If
   *		there are no other resolved endpoints, the session will move to the failed state.
   */
  @available(iOS 9.0, *)
  func tryNextResolvedEndpoint()

  /*!
   * @property maximumDatagramLength
   * @discussion The maximum size of a datagram to be written currently. If a datagram is written
   *		with a longer length, the datagram may be fragmented or encounter an error. Note that this
   *		value is not guaranteed to be the maximum datagram length for end-to-end communication 
   *		across the network. Use KVO to watch for changes.
   */
  @available(iOS 9.0, *)
  var maximumDatagramLength: Int { get }

  /*!
   * @method setReadHandler:maxDatagrams
   * @discussion Set a read handler for datagrams. Reads will be scheduled by the system, so this
   *		method only needs to be called once for a session.
   * @param handler A handler called when datagrams have been read, or when an error has occurred.
   * @param minDatagrams The maximum number of datagrams to send to the handler.
   */
  @available(iOS 9.0, *)
  func setReadHandler(handler: ([NSData]?, NSError?) -> Void, maxDatagrams: Int)

  /*!
   * @method writeMultipleDatagrams:completionHandler
   * @discussion Write multiple datagrams. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param datagram An NSArray of NSData objects, containing the ordered list datagrams to write.
   * @param completionHandler A handler called when the write request has either succeeded or failed.
   */
  @available(iOS 9.0, *)
  func writeMultipleDatagrams(datagramArray: [NSData], completionHandler: (NSError?) -> Void)

  /*!
   * @method writeDatagram:completionHandler
   * @discussion Write a single datagram. Callers should wait until the completionHandler is executed
   *		before issuing another write.
   * @param datagram An NSData containing the datagram to write.
   * @param completionHandler A handler called when the write request has either succeeded or failed.
   */
  @available(iOS 9.0, *)
  func writeDatagram(datagram: NSData, completionHandler: (NSError?) -> Void)

  /*!
   * @method cancel
   * @discussion Move into the NWUDPSessionStateCancelled state. The connection will be terminated,
   *		and all handlers will be cancelled.
   */
  @available(iOS 9.0, *)
  func cancel()
  init()
}
