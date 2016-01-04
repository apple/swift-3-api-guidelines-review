
var kSCStatusOK: Int { get }
var kSCStatusFailed: Int { get }
var kSCStatusInvalidArgument: Int { get }
var kSCStatusAccessError: Int { get }
var kSCStatusNoKey: Int { get }
var kSCStatusKeyExists: Int { get }
var kSCStatusLocked: Int { get }
var kSCStatusNeedLock: Int { get }
var kSCStatusNoStoreSession: Int { get }
var kSCStatusNoStoreServer: Int { get }
var kSCStatusNotifierActive: Int { get }
var kSCStatusNoPrefsSession: Int { get }
var kSCStatusPrefsBusy: Int { get }
var kSCStatusNoConfigFile: Int { get }
var kSCStatusNoLink: Int { get }
var kSCStatusStale: Int { get }
var kSCStatusMaxLink: Int { get }
var kSCStatusReachabilityUnknown: Int { get }
var kSCStatusConnectionNoService: Int { get }
var kSCStatusConnectionIgnore: Int { get }

/*!
	@const kCFErrorDomainSystemConfiguration
	@discussion CFError domain associated with errors reported by
		the SystemConfiguration.framework.
 */
@available(tvOS 2.0, *)
let kCFErrorDomainSystemConfiguration: CFString

/*!
	@function SCCopyLastError
	@discussion Returns the most recent status or error code generated
		as the result of calling a System Configuration framework API.
	@result Returns the last error encountered.
 */
@available(tvOS 2.0, *)
func SCCopyLastError() -> CFError

/*!
	@function SCError
	@discussion Returns the most recent status or error code generated
		as the result of calling a System Configuration framework API.
	@result Returns the last error encountered.
 */
@available(tvOS 2.0, *)
func SCError() -> Int32

/*!
	@function SCErrorString
	@discussion Returns a pointer to the message string
		associated with the specified status or error.
	@param status The SCDynamicStoreStatus to be returned.
	@result Returns a pointer to the error message string.
 */
@available(tvOS 2.0, *)
func SCErrorString(status: Int32) -> UnsafePointer<Int8>

/*!
	@typedef SCDynamicStoreRef
	@discussion This is the handle to an open a dynamic store session
		with the system configuration daemon.
 */
class SCDynamicStore {
}

/*!
	@typedef SCDynamicStoreRef
	@discussion This is the handle to an open a dynamic store session
		with the system configuration daemon.
 */
typealias SCDynamicStoreRef = SCDynamicStore

/*!
	@typedef SCDynamicStoreContext
	Structure containing user-specified data and callbacks for an
	SCDynamicStore session.
	@field version The version number of the structure type being passed
		in as a parameter to the SCDynamicStore creation function.
		This structure is version 0.
	@field info A C pointer to a user-specified block of data.
	@field retain The callback used to add a retain for the info field.
		If this parameter is not a pointer to a function of the correct
		prototype, the behavior is undefined.  The value may be NULL.
	@field release The calllback used to remove a retain previously added
		for the info field.  If this parameter is not a pointer to a
		function of the correct prototype, the behavior is undefined.
		The value may be NULL.
	@field copyDescription The callback used to provide a description of
		the info field.
 */
struct SCDynamicStoreContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}

/*!
	@typedef SCDynamicStoreCallBack
	@discussion Type of callback function used when notification of
		changes to the dynamic store is delivered.
	@param store The dynamic store session.
	@param changedKeys The list of changed keys.

		The list includes any specific SCDynamicStore keys that
		changed (add, update, remove, notify) since the last call
		to SCDynamicStoreSetNotificationKeys or since the last
		notification callback. The list also includes any specific
		keys matching one of the pattern string(s) that changed.

		An empty list indicates that the SCDynamicStore server
		restarted and that any assumptions based on prior content
		of the SCDynamicStore should be disgarded.

	@param info A C pointer to a user-specified block of data.
 */
typealias SCDynamicStoreCallBack = @convention(c) (SCDynamicStore, CFArray, UnsafeMutablePointer<Void>) -> Void
var kSCNetworkFlagsTransientConnection: Int { get }
var kSCNetworkFlagsReachable: Int { get }
var kSCNetworkFlagsConnectionRequired: Int { get }
var kSCNetworkFlagsConnectionAutomatic: Int { get }
var kSCNetworkFlagsInterventionRequired: Int { get }
var kSCNetworkFlagsIsLocalAddress: Int { get }
var kSCNetworkFlagsIsDirect: Int { get }
typealias SCNetworkConnectionFlags = UInt32

/*!
	@typedef SCNetworkInterfaceRef
	@discussion This is the type of a reference to an object that represents
		a network interface.
 */
typealias SCNetworkInterfaceRef = SCNetworkInterface

/*!
	@typedef SCNetworkInterfaceRef
	@discussion This is the type of a reference to an object that represents
		a network interface.
 */
class SCNetworkInterface {
}

/*!
	@typedef SCBondInterfaceRef
	@discussion This is the type of a reference to an object that represents
		an Ethernet Bond interface.
 */
typealias SCBondInterface = SCNetworkInterfaceRef

/*!
	@typedef SCBondInterfaceRef
	@discussion This is the type of a reference to an object that represents
		an Ethernet Bond interface.
 */
typealias SCBondInterfaceRef = SCBondInterface

/*!
	@typedef SCBondStatusRef
	@discussion This is the type of a reference to an object that represents
		the status of an Ethernet Bond interface.
 */
typealias SCBondStatusRef = SCBondStatus

/*!
	@typedef SCBondStatusRef
	@discussion This is the type of a reference to an object that represents
		the status of an Ethernet Bond interface.
 */
class SCBondStatus {
}
var kSCBondStatusOK: Int { get }
var kSCBondStatusLinkInvalid: Int { get }
var kSCBondStatusNoPartner: Int { get }
var kSCBondStatusNotInActiveGroup: Int { get }
var kSCBondStatusUnknown: Int { get }

/*!
	@typedef SCVLANInterfaceRef
	@discussion This is the type of a reference to an object that represents
		a Virtual LAN (VLAN) interface.
 */
typealias SCVLANInterfaceRef = SCVLANInterface

/*!
	@typedef SCVLANInterfaceRef
	@discussion This is the type of a reference to an object that represents
		a Virtual LAN (VLAN) interface.
 */
typealias SCVLANInterface = SCNetworkInterfaceRef

/*!
	@typedef SCNetworkProtocolRef
	@discussion This is the type of a reference to an object that represents
		a network protocol.
 */
class SCNetworkProtocol {
}

/*!
	@typedef SCNetworkProtocolRef
	@discussion This is the type of a reference to an object that represents
		a network protocol.
 */
typealias SCNetworkProtocolRef = SCNetworkProtocol

/*!
	@typedef SCNetworkServiceRef
	@discussion This is the type of a reference to an object that represents
		a network service.
 */
class SCNetworkService {
}

/*!
	@typedef SCNetworkServiceRef
	@discussion This is the type of a reference to an object that represents
		a network service.
 */
typealias SCNetworkServiceRef = SCNetworkService

/*!
	@typedef SCNetworkSetRef
	@discussion This is the type of a reference to an object that represents
		a network set.
 */
typealias SCNetworkSetRef = SCNetworkSet

/*!
	@typedef SCNetworkSetRef
	@discussion This is the type of a reference to an object that represents
		a network set.
 */
class SCNetworkSet {
}

/*!
	@typedef SCNetworkConnectionRef
	@discussion This is the handle to manage a connection-oriented service.
 */
class SCNetworkConnection {
}

/*!
	@typedef SCNetworkConnectionRef
	@discussion This is the handle to manage a connection-oriented service.
 */
typealias SCNetworkConnectionRef = SCNetworkConnection

/*!
	@typedef SCNetworkConnectionContext
	@discussion Structure containing user-specified data and callbacks
		for a SCNetworkConnection.
	@field version The version number of the structure type being passed
		in as a parameter to the SCNetworkConnectionCreateWithServiceID
		function.  This structure is version 0.
	@field info A C pointer to a user-specified block of data.
	@field retain The callback used to add a retain for the info field.
		If this parameter is not a pointer to a function of the correct
		prototype, the behavior is undefined.  The value may be NULL.
	@field release The calllback used to remove a retain previously added
		for the info field.  If this parameter is not a pointer to a
		function of the correct prototype, the behavior is undefined.
		The value may be NULL.
	@field copyDescription The callback used to provide a description of
		the info field.
 */
struct SCNetworkConnectionContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}

/*!
	@enum SCNetworkConnectionStatus
	@discussion Status of the network connection.
		This status is intended to be generic and high level.
		An extended status, specific to the type of network
		connection is also available for applications that
		need additonal information.
	@constant kSCNetworkConnectionInvalid
		The network connection refers to an invalid service.
	@constant kSCNetworkConnectionDisconnected
		The network connection is disconnected.
	@constant kSCNetworkConnectionConnecting
		The network connection is connecting.
	@constant kSCNetworkConnectionConnected
		The network connection is connected.
	@constant kSCNetworkConnectionDisconnecting
		The network connection is disconnecting.
 */
enum SCNetworkConnectionStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Disconnected
  case Connecting
  case Connected
  case Disconnecting
}

/*!
	@enum SCNetworkConnectionPPPStatus
	@discussion PPP-specific status of the network connection.
		This status is returned as part of the extended information
		for a PPP service.
		Note: additional status might be returned in the future.
		Your application should be prepared to receive an unknown value.
	@constant kSCNetworkConnectionPPPDisconnected
		PPP is disconnected.
	@constant kSCNetworkConnectionPPPInitializing
		PPP is initializing.
	@constant kSCNetworkConnectionPPPConnectingLink
		PPP is connecting the lower connection layer (for example,
		the modem is dialing out).
	@constant kSCNetworkConnectionPPPDialOnTraffic
		PPP is waiting for networking traffic to automatically
		establish the connection.
	@constant kSCNetworkConnectionPPPNegotiatingLink
		The PPP lower layer is connected and PPP is negotiating the
		link layer (LCP protocol).
	@constant kSCNetworkConnectionPPPAuthenticating
		PPP is authenticating to the server (PAP, CHAP, MS-CHAP or
		EAP protocols).
	@constant kSCNetworkConnectionPPPWaitingForCallBack
		PPP is waiting for the server to call back.
	@constant kSCNetworkConnectionPPPNegotiatingNetwork
		PPP is now authenticated and negotiating the networking
		layer (IPCP or IPv6CP protocols)
	@constant kSCNetworkConnectionPPPConnected
		PPP is now fully connected for at least one networking layer.
		Additional networking protocol might still be negotiating.
	@constant kSCNetworkConnectionPPPTerminating
		PPP networking and link protocols are terminating.
	@constant kSCNetworkConnectionPPPDisconnectingLink
		PPP is disconnecting the lower level (for example, the modem
		is hanging up).
	@constant kSCNetworkConnectionPPPHoldingLinkOff
		PPP is disconnected and maintaining the link temporarily off.
	@constant kSCNetworkConnectionPPPSuspended
		PPP is suspended as a result of the suspend command (for
		example, when a V.92 Modem is On Hold).
	@constant kSCNetworkConnectionPPPWaitingForRedial
		PPP has found a busy server and is waiting for redial.
 */
enum SCNetworkConnectionPPPStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Disconnected
  case Initializing
  case ConnectingLink
  case DialOnTraffic
  case NegotiatingLink
  case Authenticating
  case WaitingForCallBack
  case NegotiatingNetwork
  case Connected
  case Terminating
  case DisconnectingLink
  case HoldingLinkOff
  case Suspended
  case WaitingForRedial
}

/*!
	@typedef SCNetworkConnectionCallBack
	@discussion Type of the callback function used when a
		status event is delivered.
	@param status The connection status.
	@param connection The connection reference.
	@param info Application-specific information.
 */
typealias SCNetworkConnectionCallBack = @convention(c) (SCNetworkConnection, SCNetworkConnectionStatus, UnsafeMutablePointer<Void>) -> Void
var kSCNetworkConnectionBytesIn: String { get }
var kSCNetworkConnectionBytesOut: String { get }
var kSCNetworkConnectionPacketsIn: String { get }
var kSCNetworkConnectionPacketsOut: String { get }
var kSCNetworkConnectionErrorsIn: String { get }
var kSCNetworkConnectionErrorsOut: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandHostName: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandRetry: String { get }

/*!
	@typedef SCNetworkReachabilityRef
	@discussion This is the handle to a network address or name.
 */
class SCNetworkReachability {
}

/*!
	@typedef SCNetworkReachabilityRef
	@discussion This is the handle to a network address or name.
 */
typealias SCNetworkReachabilityRef = SCNetworkReachability

/*!
	@typedef SCNetworkReachabilityContext
	Structure containing user-specified data and callbacks for SCNetworkReachability.
	@field version The version number of the structure type being passed
		in as a parameter to the SCDynamicStore creation function.
		This structure is version 0.
	@field info A C pointer to a user-specified block of data.
	@field retain The callback used to add a retain for the info field.
		If this parameter is not a pointer to a function of the correct
		prototype, the behavior is undefined.  The value may be NULL.
	@field release The calllback used to remove a retain previously added
		for the info field.  If this parameter is not a pointer to a
		function of the correct prototype, the behavior is undefined.
		The value may be NULL.
	@field copyDescription The callback used to provide a description of
		the info field.
 */
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}

/*!
	@enum SCNetworkReachabilityFlags
	@discussion Flags that indicate whether the specified network
		nodename or address is reachable, whether a connection is
		required, and whether some user intervention may be required
		when establishing a connection.
	@constant kSCNetworkReachabilityFlagsTransientConnection
		This flag indicates that the specified nodename or address can
		be reached via a transient connection, such as PPP.
	@constant kSCNetworkReachabilityFlagsReachable
		This flag indicates that the specified nodename or address can
		be reached using the current network configuration.
	@constant kSCNetworkReachabilityFlagsConnectionRequired
		This flag indicates that the specified nodename or address can
		be reached using the current network configuration, but a
		connection must first be established.

		As an example, this status would be returned for a dialup
		connection that was not currently active, but could handle
		network traffic for the target system.
	@constant kSCNetworkReachabilityFlagsConnectionOnTraffic
		This flag indicates that the specified nodename or address can
		be reached using the current network configuration, but a
		connection must first be established.  Any traffic directed
		to the specified name or address will initiate the connection.

		Note: this flag was previously named kSCNetworkReachabilityFlagsConnectionAutomatic
	@constant kSCNetworkReachabilityFlagsInterventionRequired
		This flag indicates that the specified nodename or address can
		be reached using the current network configuration, but a
		connection must first be established.  In addition, some
		form of user intervention will be required to establish this
		connection, such as providing a password, an authentication
		token, etc.

		Note: At the present time, this flag will only be returned
		in the case where you have a dial-on-traffic configuration
		(ConnectionOnTraffic), where an attempt to connect has
		already been made, and where some error (e.g. no dial tone,
		no answer, bad password, ...) was encountered during the
		automatic connection attempt.  In this case the PPP controller
		will stop attempting to establish a connection until the user
		has intervened.
	@constant kSCNetworkReachabilityFlagsConnectionOnDemand
		This flag indicates that the specified nodename or address can
		be reached using the current network configuration, but a
		connection must first be established.
		The connection will be established "On Demand" by the
		CFSocketStream APIs.
		Other APIs will not establish the connection.
	@constant kSCNetworkReachabilityFlagsIsLocalAddress
		This flag indicates that the specified nodename or address
		is one associated with a network interface on the current
		system.
	@constant kSCNetworkReachabilityFlagsIsDirect
		This flag indicates that network traffic to the specified
		nodename or address will not go through a gateway, but is
		routed directly to one of the interfaces in the system.
#if	TARGET_OS_IPHONE
	@constant kSCNetworkReachabilityFlagsIsWWAN
		This flag indicates that the specified nodename or address can
		be reached via an EDGE, GPRS, or other "cell" connection.
#endif	// TARGET_OS_IPHONE
 */
struct SCNetworkReachabilityFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var TransientConnection: SCNetworkReachabilityFlags { get }
  static var Reachable: SCNetworkReachabilityFlags { get }
  static var ConnectionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var InterventionRequired: SCNetworkReachabilityFlags { get }
  static var ConnectionOnDemand: SCNetworkReachabilityFlags { get }
  static var IsLocalAddress: SCNetworkReachabilityFlags { get }
  static var IsDirect: SCNetworkReachabilityFlags { get }
  static var IsWWAN: SCNetworkReachabilityFlags { get }
  static var ConnectionAutomatic: SCNetworkReachabilityFlags { get }
}

/*!
	@typedef SCNetworkReachabilityCallBack
	@discussion Type of the callback function used when the
		reachability of a network address or name changes.
	@param target The SCNetworkReachability reference being monitored
		for changes.
	@param flags The new SCNetworkReachabilityFlags representing the
		reachability status of the network address/name.
	@param info A C pointer to a user-specified block of data.
 */
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutablePointer<Void>) -> Void

/*!
	@function SCNetworkReachabilityCreateWithAddress
	@discussion Creates a reference to the specified network
		address.  This reference can be used later to monitor the
		reachability of the target host.
	@param address The address of the desired host.
	@result Returns a reference to the new immutable SCNetworkReachabilityRef.

		 You must release the returned value.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddress(allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?

/*!
	@function SCNetworkReachabilityCreateWithAddressPair
	@discussion Creates a reference to the specified network
		address.  This reference can be used later to monitor the
		reachability of the target host.
	@param localAddress The local address associated with a network
		connection.  If NULL, only the remote address is of interest.
	@param remoteAddress The remote address associated with a network
		connection.  If NULL, only the local address is of interest.
	@result Returns a reference to the new immutable SCNetworkReachabilityRef.

		 You must release the returned value.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddressPair(allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>, _ remoteAddress: UnsafePointer<sockaddr>) -> SCNetworkReachability?

/*!
	@function SCNetworkReachabilityCreateWithName
	@discussion Creates a reference to the specified network host or node
		name.  This reference can be used later to monitor the
		reachability of the target host.
	@param nodename The node name of the desired host.
		This name would be the same as that passed to the
		gethostbyname(3) or getaddrinfo(3) functions.
	@result Returns a reference to the new immutable SCNetworkReachabilityRef.

		You must release the returned value.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithName(allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?

/*!
	@function SCNetworkReachabilityGetTypeID
	@discussion Returns the type identifier of all SCNetworkReachability
		instances.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetTypeID() -> CFTypeID

/*!
	@function SCNetworkReachabilityGetFlags
	@discussion Determines if the given target is reachable using the
		current network configuration.
	@param target The network reference associated with the address or name
		to be checked for reachability.
	@param flags A pointer to memory that will be filled with the
		SCNetworkReachabilityFlags detailing the reachability
		of the specified target.
	@result Returns TRUE if the network connection flags are valid;
		FALSE if the status could not be determined.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetFlags(target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool

/*!
	@function SCNetworkReachabilitySetCallback
	@discussion Assigns a client to a target, which receives callbacks
		when the reachability of the target changes.
	@param target The network reference associated with the address or
		name to be checked for reachability.
	@param callout The function to be called when the reachability of the
		target changes.  If NULL, the current client for the target
		is removed.
	@param context The SCNetworkReachabilityContext associated with
		the callout.  The value may be NULL.
	@result Returns TRUE if the notification client was successfully set.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilitySetCallback(target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>) -> Bool

/*!
	@function SCNetworkReachabilityScheduleWithRunLoop
	@discussion Schedules the given target with the given run loop and mode.
	@param target The address or name that is set up for asynchronous
		notifications.  Must be non-NULL.
	@param runLoop A reference to a run loop on which the target should
		be scheduled.  Must be non-NULL.
	@param runLoopMode The mode on which to schedule the target.
		Must be non-NULL.
	@result Returns TRUE if the target is scheduled successfully;
		FALSE otherwise.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityScheduleWithRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	@function SCNetworkReachabilityUnscheduleFromRunLoop
	@discussion Unschedules the given target from the given run loop
		and mode.
	@param target The address or name that is set up for asynchronous
		notifications.  Must be non-NULL.
	@param runLoop A reference to a run loop from which the target
		should be unscheduled.  Must be non-NULL.
	@param runLoopMode The mode on which to unschedule the target.
		Must be non-NULL.
	@result Returns TRUE if the target is unscheduled successfully;
		FALSE otherwise.
 */
@available(tvOS 2.0, *)
func SCNetworkReachabilityUnscheduleFromRunLoop(target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	@function SCNetworkReachabilitySetDispatchQueue
	@discussion Schedules callbacks for the given target on the given
		dispatch queue.
	@param target The address or name that is set up for asynchronous
		notifications.  Must be non-NULL.
	@param queue A libdispatch queue to run the callback on. Pass NULL to disable notifications, and release queue.
	@result Returns TRUE if the target is unscheduled successfully;
		FALSE otherwise.
 */
@available(tvOS 4.0, *)
func SCNetworkReachabilitySetDispatchQueue(target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool
typealias AuthorizationRef = COpaquePointer

/*!
	@typedef SCPreferencesRef
	@discussion This is the handle to an open preferences session for
		accessing system configuration preferences.
 */
class SCPreferences {
}

/*!
	@typedef SCPreferencesRef
	@discussion This is the handle to an open preferences session for
		accessing system configuration preferences.
 */
typealias SCPreferencesRef = SCPreferences

/*!
	@enum SCPreferencesNotification
	@discussion Used with the SCPreferencesCallBack callback
		to describe the type of notification.
	@constant kSCPreferencesNotificationCommit Indicates when new
		preferences have been saved.
	@constant kSCPreferencesNotificationApply Key Indicates when a
		request has been made to apply the currently saved
		preferences to the active system configuration.
 */
struct SCPreferencesNotification : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Commit: SCPreferencesNotification { get }
  static var Apply: SCPreferencesNotification { get }
}

/*!
	@typedef SCPreferencesContext
	Structure containing user-specified data and callbacks for SCPreferences.
	@field version The version number of the structure type being passed
		in as a parameter to the SCPreferencesSetCallback function.
		This structure is version 0.
	@field info A C pointer to a user-specified block of data.
	@field retain The callback used to add a retain for the info field.
		If this parameter is not a pointer to a function of the correct
		prototype, the behavior is undefined.
		The value may be NULL.
	@field release The calllback used to remove a retain previously added
		for the info field.
		If this parameter is not a pointer to a function of the
		correct prototype, the behavior is undefined.
		The value may be NULL.
	@field copyDescription The callback used to provide a description of
		the info field.
 */
struct SCPreferencesContext {
  var version: CFIndex
  var info: UnsafeMutablePointer<Void>
  var retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?
  var release: (@convention(c) (UnsafePointer<Void>) -> Void)?
  var copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutablePointer<Void>, retain: (@convention(c) (UnsafePointer<Void>) -> UnsafePointer<Void>)?, release: (@convention(c) (UnsafePointer<Void>) -> Void)?, copyDescription: (@convention(c) (UnsafePointer<Void>) -> Unmanaged<CFString>)?)
}

/*!
	@typedef SCPreferencesCallBack
	@discussion Type of the callback function used when the
		preferences have been updated and/or applied.
	@param prefs The preferences session.
	@param notificationType The type of notification, such as changes
		committed, changes applied, etc.
	@param info A C pointer to a user-specified block of data.
 */
typealias SCPreferencesCallBack = @convention(c) (SCPreferences, SCPreferencesNotification, UnsafeMutablePointer<Void>) -> Void
