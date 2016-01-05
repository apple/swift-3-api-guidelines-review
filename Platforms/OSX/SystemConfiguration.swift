
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
@available(OSX 10.5, *)
let kCFErrorDomainSystemConfiguration: CFString

/*!
	@function SCCopyLastError
	@discussion Returns the most recent status or error code generated
		as the result of calling a System Configuration framework API.
	@result Returns the last error encountered.
 */
@available(OSX 10.5, *)
func SCCopyLastError() -> CFError

/*!
	@function SCError
	@discussion Returns the most recent status or error code generated
		as the result of calling a System Configuration framework API.
	@result Returns the last error encountered.
 */
@available(OSX 10.1, *)
func SCError() -> Int32

/*!
	@function SCErrorString
	@discussion Returns a pointer to the message string
		associated with the specified status or error.
	@param status The SCDynamicStoreStatus to be returned.
	@result Returns a pointer to the error message string.
 */
@available(OSX 10.1, *)
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

/*!
	@function SCDynamicStoreGetTypeID
	@discussion Returns the type identifier of all SCDynamicStore instances.
 */
@available(OSX 10.1, *)
func SCDynamicStoreGetTypeID() -> CFTypeID

/*!
	@function SCDynamicStoreCreate
	@discussion Creates a new session used to interact with the dynamic
		store maintained by the System Configuration server.
	@param allocator The CFAllocator that should be used to allocate
		memory for the local dynamic store object.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param name A string that describes the name of the calling
		process or plug-in of the caller.
	@param callout The function to be called when a watched value
		in the dynamic store is changed.
		A NULL value can be specified if no callouts are
		desired.
	@param context The SCDynamicStoreContext associated with the callout.
	@result Returns a reference to the new SCDynamicStore session.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCreate(allocator: CFAllocator?, _ name: CFString, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?

/*!
	@function SCDynamicStoreCreateWithOptions
	@discussion Creates a new session used to interact with the dynamic
		store maintained by the System Configuration server.
	@param allocator The CFAllocator that should be used to allocate
		memory for the local dynamic store object.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param name A string that describes the name of the calling
		process or plug-in of the caller.
	@param storeOptions A CFDictionary containing options for the
		dynamic store session (such as whether all keys added or set
		into the dynamic store should be per-session keys).

		Currently available options include:

		<TABLE BORDER>
		<TR>
			<TH>key</TD>
			<TH>value</TD>
		</TR>
		<TR>
			<TD>kSCDynamicStoreUseSessionKeys</TD>
			<TD>CFBooleanRef</TD>
		</TR>
		</TABLE>

		A NULL value can be specified if no options are desired.
	@param callout The function to be called when a watched value
		in the dynamic store is changed.
		A NULL value can be specified if no callouts are
		desired.
	@param context The SCDynamicStoreContext associated with the callout.
	@result Returns a reference to the new SCDynamicStore session.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCDynamicStoreCreateWithOptions(allocator: CFAllocator?, _ name: CFString, _ storeOptions: CFDictionary?, _ callout: SCDynamicStoreCallBack?, _ context: UnsafeMutablePointer<SCDynamicStoreContext>) -> SCDynamicStore?
@available(OSX 10.4, *)
let kSCDynamicStoreUseSessionKeys: CFString

/*!
	@function SCDynamicStoreCreateRunLoopSource
	@discussion Creates a CFRunLoopSource object that can be added to the
		application's run loop.  All dynamic store notifications are
		delivered using this run loop source.
	@param allocator The CFAllocator that should be used to allocate
		memory for this run loop source.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param store A reference to the dynamic store session.
	@param order On platforms which support it, for source versions
		which support it, this parameter determines the order in
		which the sources which are ready to be processed are
		handled. A lower order number causes processing before
		higher order number sources. It is inadvisable to depend
		on the order number for any architectural or design aspect
		of code. In the absence of any reason to do otherwise,
		zero should be used.
	@result A reference to the new CFRunLoopSource.
		You must release the returned value.

 */
@available(OSX 10.1, *)
func SCDynamicStoreCreateRunLoopSource(allocator: CFAllocator?, _ store: SCDynamicStore, _ order: CFIndex) -> CFRunLoopSource?

/*!
	@function SCDynamicStoreSetDispatchQueue
	@discussion Initiates notifications for the Notification
		Keys in store to the callback contained in store.
	@param store A reference to the dynamic store session.
	@param queue The dispatch queue to run the callback function on.
		Pass NULL to disable notifications, and release the queue.
	@result Returns TRUE on success, FALSE on failure.

 */
@available(OSX 10.6, *)
func SCDynamicStoreSetDispatchQueue(store: SCDynamicStore, _ queue: dispatch_queue_t?) -> Bool

/*!
	@function SCDynamicStoreCopyKeyList
	@discussion Returns an array of CFString keys representing the
		current dynamic store entries that match a specified pattern.
	@param store The dynamic store session.
	@param pattern A regex(3) regular expression pattern
		used to match the dynamic store keys.
	@result Returns the list of matching keys; NULL if an error was
		encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyKeyList(store: SCDynamicStore?, _ pattern: CFString) -> CFArray?

/*!
	@function SCDynamicStoreAddValue
	@discussion Adds the key-value pair to the dynamic store if no
		such key already exists.
	@param store The dynamic store session.
	@param key The key of the value to add to the dynamic store.
	@param value The value to add to the dynamic store.
	@result Returns TRUE if the key was added; FALSE if the key was already
		present in the dynamic store or if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreAddValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool

/*!
	@function SCDynamicStoreAddTemporaryValue
	@discussion Temporarily adds the key-value pair to the dynamic store
		if no such key already exists.  Unless the key is updated by another
		session, the key-value pair will be removed automatically when the
		session is closed.
	@param store The dynamic store session.
	@param key The key of the value to add to the dynamic store.
	@param value The value to add to the dynamic store.
	@result Returns TRUE if the key was added; FALSE if the key was already
		present in the dynamic store or if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreAddTemporaryValue(store: SCDynamicStore, _ key: CFString, _ value: CFPropertyList) -> Bool

/*!
	@function SCDynamicStoreCopyValue
	@discussion Gets the value of the specified key from the dynamic store.
	@param store The dynamic store session.
	@param key The key associated with the value you want to get.
	@result Returns the value from the dynamic store that is associated with the given
		key; NULL if no value was located or an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyValue(store: SCDynamicStore?, _ key: CFString) -> CFPropertyList?

/*!
	@function SCDynamicStoreCopyMultiple
	@discussion Gets the values of multiple keys in the dynamic store.
	@param store The dynamic store session.
	@param keys The keys associated with the values you want to get; NULL if no specific
		keys are requested.
	@param patterns An array of regex(3) pattern strings used to match the keys; NULL
		if no key patterns are requested.
	@result Returns a dictionary containing the key-value pairs of specific keys and the
		key-value pairs of keys that matched the specified patterns;
		NULL if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyMultiple(store: SCDynamicStore?, _ keys: CFArray?, _ patterns: CFArray?) -> CFDictionary?

/*!
	@function SCDynamicStoreSetValue
	@discussion Adds or replaces a value in the dynamic store for
		the specified key.
	@param store The dynamic store session.
	@param key The key you want to set.
	@param value The value to add to or replace in the dynamic store.
	@result Returns TRUE if the key was updated; FALSE if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreSetValue(store: SCDynamicStore?, _ key: CFString, _ value: CFPropertyList) -> Bool

/*!
	@function SCDynamicStoreSetMultiple
	@discussion Updates multiple values in the dynamic store.
	@param store The dynamic store session.
	@param keysToSet A dictionary of key-value pairs you want to set into the dynamic store.
	@param keysToRemove An array of keys you want to remove from the dynamic store.
	@param keysToNotify An array of keys to flag as changed (without changing their values).
	@result Returns TRUE if the dynamic store updates were successful; FALSE if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreSetMultiple(store: SCDynamicStore?, _ keysToSet: CFDictionary?, _ keysToRemove: CFArray?, _ keysToNotify: CFArray?) -> Bool

/*!
	@function SCDynamicStoreRemoveValue
	@discussion Removes the value of the specified key from the
		dynamic store.
	@param store The dynamic store session.
	@param key The key of the value you want to remove.
	@result Returns TRUE if the key was removed; FALSE if no value was
		located or an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreRemoveValue(store: SCDynamicStore?, _ key: CFString) -> Bool

/*!
	@function SCDynamicStoreNotifyValue
	@discussion Triggers a notification to be delivered for the
		specified key in the dynamic store.
	@param store The dynamic store session.
	@param key The key that should be flagged as changed.  Any dynamic store sessions
		that are monitoring this key will received a notification.  Note that the
		key's value is not updated.
	@result Returns TRUE if the notification was processed; FALSE if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreNotifyValue(store: SCDynamicStore?, _ key: CFString) -> Bool

/*!
	@function SCDynamicStoreSetNotificationKeys
	@discussion Specifies a set of specific keys and key patterns
		that should be monitored for changes.
	@param store The dynamic store session being watched.
	@param keys An array of keys to be monitored; NULL if no specific keys
		are to be monitored.
	@param patterns An array of regex(3) pattern strings used to match keys to be monitored;
		NULL if no key patterns are to be monitored.
	@result Returns TRUE if the set of notification keys and patterns was successfully
		updated; FALSE if an error was encountered.
 */
@available(OSX 10.1, *)
func SCDynamicStoreSetNotificationKeys(store: SCDynamicStore, _ keys: CFArray?, _ patterns: CFArray?) -> Bool

/*!
	@function SCDynamicStoreCopyNotifiedKeys
	@discussion Returns an array of CFString keys representing the
		dynamic store entries that have changed since this
		function was last called.  If possible, your application should
		use the notification functions instead of polling for the list
		of changed keys returned by this function.
	@param store The dynamic store session.
	@result Returns the list of changed keys;
		NULL if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyNotifiedKeys(store: SCDynamicStore) -> CFArray?

/*!
	@function SCDynamicStoreCopyComputerName
	@discussion Gets the current computer name.
	@param store An SCDynamicStoreRef representing the dynamic store
		session that should be used for communication with the server.
		If NULL, a temporary session will be used.
	@param nameEncoding A pointer to memory that, if non-NULL, will be
		filled with the encoding associated with the computer or
		host name.
	@result Returns the current computer name;
		NULL if the name has not been set or if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyComputerName(store: SCDynamicStore?, _ nameEncoding: UnsafeMutablePointer<CFStringEncoding>) -> CFString?

/*!
	@function SCDynamicStoreCopyConsoleUser
	@discussion Gets the name, user ID, and group ID of the currently
		logged-in user.

		Note: this function only provides information about the
		      primary console.  It does not provide any details
		      about console sessions that have fast user switched
		      out or about other consoles.
	@param store An SCDynamicStoreRef representing the dynamic store
		session that should be used for communication with the server.
		If NULL, a temporary session will be used.
	@param uid A pointer to memory that will be filled with the user ID
		of the current console user. If NULL, this value will not
		be returned.
	@param gid A pointer to memory that will be filled with the group ID
		of the current console user. If NULL, this value will not be
		returned.
	@result Returns the user currently logged into the system;
		NULL if no user is logged in or if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyConsoleUser(store: SCDynamicStore?, _ uid: UnsafeMutablePointer<uid_t>, _ gid: UnsafeMutablePointer<gid_t>) -> CFString?

/*!
	@function SCDynamicStoreCopyLocalHostName
	@discussion Gets the current local host name.
	@param store An SCDynamicStoreRef representing the dynamic store
		session that should be used for communication with the server.
		If NULL, a temporary session will be used.
	@result Returns the current local host name;
		NULL if the name has not been set or if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocalHostName(store: SCDynamicStore?) -> CFString?

/*!
	@function SCDynamicStoreCopyLocation
	@discussion Gets the current location identifier.
	@param store An SCDynamicStoreRef representing the dynamic store
		session that should be used for communication with the server.
		If NULL, a temporary session will be used.
	@result Returns a string representing the current location identifier;
		NULL if no location identifier has been defined or if an error
		was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyLocation(store: SCDynamicStore?) -> CFString?

/*!
	@function SCDynamicStoreCopyProxies
	@discussion Gets the current internet proxy settings.
		The returned proxy settings dictionary includes:

		<TABLE BORDER>
		<TR>
			<TH>key</TD>
			<TH>type</TD>
			<TH>description</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesExceptionsList</TD>
			<TD>CFArray[CFString]</TD>
			<TD>Host name patterns which should bypass the proxy</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPEnable</TD>
			<TD>CFNumber (0 or 1)</TD>
			<TD>Enables/disables the use of an HTTP proxy</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPProxy</TD>
			<TD>CFString</TD>
			<TD>The proxy host</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPPort</TD>
			<TD>CFNumber</TD>
			<TD>The proxy port number</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPSEnable</TD>
			<TD>CFNumber (0 or 1)</TD>
			<TD>Enables/disables the use of an HTTPS proxy</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPSProxy</TD>
			<TD>CFString</TD>
			<TD>The proxy host</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesHTTPSPort</TD>
			<TD>CFNumber</TD>
			<TD>The proxy port number</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesFTPEnable</TD>
			<TD>CFNumber (0 or 1)</TD>
			<TD>Enables/disables the use of an FTP proxy</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesFTPProxy</TD>
			<TD>CFString</TD>
			<TD>The proxy host</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesFTPPort</TD>
			<TD>CFNumber</TD>
			<TD>The proxy port number</TD>
		</TR>
		<TR>
			<TD>kSCPropNetProxiesFTPPassive</TD>
			<TD>CFNumber (0 or 1)</TD>
			<TD>Enable passive mode operation for use behind connection
			filter-ing firewalls.</TD>
		</TR>
		</TABLE>

		Other key-value pairs are defined in the SCSchemaDefinitions.h
		header file.
	@param store An SCDynamicStoreRef representing the dynamic store
		session that should be used for communication with the server.
		If NULL, a temporary session will be used.
	@result Returns a dictionary containing key-value pairs that represent
		the current internet proxy settings;
		NULL if no proxy settings have been defined or if an error
		was encountered.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCDynamicStoreCopyProxies(store: SCDynamicStore?) -> CFDictionary?

/*!
	@function SCDynamicStoreKeyCreateNetworkGlobalEntity
	@discussion Creates a dynamic store key that can be used to access
		a specific global (as opposed to a per-service or per-interface)
		network configuration entity.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param domain A string specifying the desired domain, such as the
		requested configuration (kSCDynamicStoreDomainSetup) or the
		actual state (kSCDynamicStoreDomainState).
	@param entity A string containing the specific global entity, such
		as IPv4 (kSCEntNetIPv4) or DNS (kSCEntNetDNS).
	@result Returns a string containing the formatted key.

 */
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkGlobalEntity(allocator: CFAllocator?, _ domain: CFString, _ entity: CFString) -> CFString

/*!
	@function SCDynamicStoreKeyCreateNetworkInterface
	@discussion Creates a dynamic store key that can be used to access
		the network interface configuration information stored in
		the dynamic store.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param domain A string specifying the desired domain, such as the
		requested configuration (kSCDynamicStoreDomainSetup) or the
		actual state (kSCDynamicStoreDomainState).
	@result Returns a string containing the formatted key.

 */
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterface(allocator: CFAllocator?, _ domain: CFString) -> CFString

/*!
	@function SCDynamicStoreKeyCreateNetworkInterfaceEntity
	@discussion Creates a dynamic store key that can be used to access
		the per-interface network configuration information stored in
		the dynamic store.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param domain A string specifying the desired domain, such as the
		requested configuration (kSCDynamicStoreDomainSetup) or the
		actual state (kSCDynamicStoreDomainState).
	@param ifname A string containing the interface name or a regular
		expression pattern.
	@param entity A string containing the specific global entity, such
		as IPv4 (kSCEntNetIPv4) or DNS (kSCEntNetDNS).
	@result Returns a string containing the formatted key.

 */
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocator: CFAllocator?, _ domain: CFString, _ ifname: CFString, _ entity: CFString?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateNetworkServiceEntity
	@discussion Creates a dynamic store key that can be used to access
		the per-service network configuration information stored in
		the dynamic store.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@param domain A string specifying the desired domain, such as the
		requested configuration (kSCDynamicStoreDomainSetup) or the
		actual state (kSCDynamicStoreDomainState).
	@param serviceID A string containing the service ID or a regular
		expression pattern.
	@param entity A string containing the specific global entity, such
		as IPv4 (kSCEntNetIPv4) or DNS (kSCEntNetDNS).
	@result Returns a string containing the formatted key.


 */
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateNetworkServiceEntity(allocator: CFAllocator?, _ domain: CFString, _ serviceID: CFString, _ entity: CFString?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateComputerName
	@discussion Creates a key that can be used in conjuntion with
		SCDynamicStoreSetNotificationKeys function to receive
		notifications when the current computer name changes.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@result Returns a notification string for the current computer or
		host name.
*/
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateComputerName(allocator: CFAllocator?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateConsoleUser
	@discussion Creates a key that can be used in conjunction with
		SCDynamicStoreSetNotificationKeys function to receive
		notifications when the current console user changes.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@result Returns a notification string for the current console user.
*/
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateConsoleUser(allocator: CFAllocator?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateHostNames
	@discussion Creates a key that can be used in conjunction with the
		SCDynamicStoreSetNotificationKeys function to receive
		notifications when the HostNames entity changes.  The
		HostNames entity includes the local host name.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@result Returns a notification string for the HostNames entity.
*/
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateHostNames(allocator: CFAllocator?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateLocation
	@discussion Creates a key that can be used in conjunction with the
		SCDynamicStoreSetNotificationKeys function to receive
		notifications when the location identifier changes.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@result Returns a notification string for the current location
		identifier.
*/
@available(OSX 10.2, *)
func SCDynamicStoreKeyCreateLocation(allocator: CFAllocator?) -> CFString

/*!
	@function SCDynamicStoreKeyCreateProxies
	@discussion Creates a key that can be used in conjunction with
		the SCDynamicStoreSetNotificationKeys function to receive
		notifications when the current network proxy settings
		(such as HTTP or FTP) are changed.
	@param allocator The CFAllocator that should be used to allocate
		memory for this key.
		This parameter may be NULL in which case the current
		default CFAllocator is used. If this reference is not
		a valid CFAllocator, the behavior is undefined.
	@result Returns a notification string for the current proxy settings.
*/
@available(OSX 10.1, *)
func SCDynamicStoreKeyCreateProxies(allocator: CFAllocator?) -> CFString
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
	@const kSCNetworkInterfaceType6to4
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceType6to4: CFString

/*!
	@const kSCNetworkInterfaceTypeBluetooth
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeBluetooth: CFString

/*!
	@const kSCNetworkInterfaceTypeBond
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeBond: CFString

/*!
	@const kSCNetworkInterfaceTypeEthernet
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeEthernet: CFString

/*!
	@const kSCNetworkInterfaceTypeFireWire
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeFireWire: CFString

/*!
	@const kSCNetworkInterfaceTypeIEEE80211
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIEEE80211: CFString

/*!
	@const kSCNetworkInterfaceTypeIPSec
 */
@available(OSX 10.5, *)
let kSCNetworkInterfaceTypeIPSec: CFString

/*!
	@const kSCNetworkInterfaceTypeIrDA
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIrDA: CFString

/*!
	@const kSCNetworkInterfaceTypeL2TP
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeL2TP: CFString

/*!
	@const kSCNetworkInterfaceTypeModem
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeModem: CFString

/*!
	@const kSCNetworkInterfaceTypePPP
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypePPP: CFString

/*!
	@const kSCNetworkInterfaceTypePPTP
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypePPTP: CFString

/*!
	@const kSCNetworkInterfaceTypeSerial
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeSerial: CFString

/*!
	@const kSCNetworkInterfaceTypeVLAN
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeVLAN: CFString

/*!
	@const kSCNetworkInterfaceTypeWWAN
 */
@available(OSX 10.5, *)
let kSCNetworkInterfaceTypeWWAN: CFString

/*!
	@const kSCNetworkInterfaceTypeIPv4
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceTypeIPv4: CFString

/*!
	@const kSCNetworkInterfaceIPv4
	@discussion A network interface that can used for layering other
		interfaces (e.g. 6to4, IPSec, PPTP, L2TP) over an existing
		IPv4 network.
 */
@available(OSX 10.4, *)
let kSCNetworkInterfaceIPv4: SCNetworkInterface

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
	@const kSCBondStatusDeviceAggregationStatus
 */
@available(OSX 10.4, *)
let kSCBondStatusDeviceAggregationStatus: CFString

/*!
	@const kSCBondStatusDeviceCollecting
 */
@available(OSX 10.4, *)
let kSCBondStatusDeviceCollecting: CFString

/*!
	@const kSCBondStatusDeviceDistributing
 */
@available(OSX 10.4, *)
let kSCBondStatusDeviceDistributing: CFString

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
	@const kSCNetworkProtocolTypeDNS
 */
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeDNS: CFString

/*!
	@const kSCNetworkProtocolTypeIPv4
 */
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeIPv4: CFString

/*!
	@const kSCNetworkProtocolTypeIPv6
 */
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeIPv6: CFString

/*!
	@const kSCNetworkProtocolTypeProxies
 */
@available(OSX 10.4, *)
let kSCNetworkProtocolTypeProxies: CFString

/*!
	@const kSCNetworkProtocolTypeSMB
 */
@available(OSX 10.5, *)
let kSCNetworkProtocolTypeSMB: CFString

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
	@function SCNetworkInterfaceGetTypeID
	@discussion Returns the type identifier of all SCNetworkInterface instances.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetTypeID() -> CFTypeID

/*!
	@function SCNetworkInterfaceCopyAll
	@discussion Returns all network capable interfaces on the system.
	@result The list of interfaces on the system.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceCopyAll() -> CFArray

/*!
	@function SCNetworkInterfaceGetSupportedInterfaceTypes
	@discussion Identify all of the network interface types (e.g. PPP) that
		can be layered on top of this interface.
	@param interface The network interface.
	@result The list of SCNetworkInterface types supported by the interface;
		NULL if no interface types are supported.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetSupportedInterfaceTypes(interface: SCNetworkInterface) -> CFArray?

/*!
	@function SCNetworkInterfaceGetSupportedProtocolTypes
	@discussion Identify all of the network protocol types (e.g. IPv4, IPv6) that
		can be layered on top of this interface.
	@param interface The network interface.
	@result The list of SCNetworkProtocol types supported by the interface;
		NULL if no protocol types are supported.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetSupportedProtocolTypes(interface: SCNetworkInterface) -> CFArray?

/*!
	@function SCNetworkInterfaceCreateWithInterface
	@discussion Create a new network interface layered on top of another.  For
		example, this function would be used to create a "PPP" interface
		on top of a "modem".
	@param interface The network interface.
	@param interfaceType The type of SCNetworkInterface to be layered on
		top of the provided interface.
	@result A reference to the new SCNetworkInterface.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceCreateWithInterface(interface: SCNetworkInterface, _ interfaceType: CFString) -> SCNetworkInterface?

/*!
	@function SCNetworkInterfaceGetBSDName
	@discussion Returns the BSD interface (en0) or device name (modem)
		for the interface.
	@param interface The network interface.
	@result The BSD name associated with the interface (e.g. "en0");
		NULL if no BSD name is available.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetBSDName(interface: SCNetworkInterface) -> CFString?

/*!
	@function SCNetworkInterfaceGetConfiguration
	@discussion Returns the configuration settings associated with a interface.
	@param interface The network interface.
	@result The configuration settings associated with the interface;
		NULL if no configuration settings are associated with the interface
		or an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetConfiguration(interface: SCNetworkInterface) -> CFDictionary?

/*!
	@function SCNetworkInterfaceGetExtendedConfiguration
	@discussion Returns the configuration settings associated with a interface.
	@param interface The network interface.
	@param extendedType A string representing the type of extended information (e.g. EAPOL).
	@result The configuration settings associated with the interface;
		NULL if no configuration settings are associated with the interface
		or an error was encountered.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceGetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString) -> CFDictionary?

/*!
	@function SCNetworkInterfaceGetHardwareAddressString
	@discussion Returns a displayable link layer address for the interface.
	@param interface The network interface.
	@result A string representing the hardware (MAC) address for the interface.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetHardwareAddressString(interface: SCNetworkInterface) -> CFString?

/*!
	@function SCNetworkInterfaceGetInterface
	@discussion For layered network interfaces, return the underlying interface.
	@param interface The network interface.
	@result The underlying network interface;
		NULL if this is a leaf interface.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterface(interface: SCNetworkInterface) -> SCNetworkInterface?

/*!
	@function SCNetworkInterfaceGetInterfaceType
	@discussion Returns the associated network interface type.
	@param interface The network interface.
	@result The interface type.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetInterfaceType(interface: SCNetworkInterface) -> CFString?

/*!
	@function SCNetworkInterfaceGetLocalizedDisplayName
	@discussion Returns the localized name (e.g. "Ethernet", "FireWire") for
		the interface.
	@param interface The network interface.
	@result A localized, display name for the interface;
		NULL if no name is available.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceGetLocalizedDisplayName(interface: SCNetworkInterface) -> CFString?

/*!
	@function SCNetworkInterfaceSetConfiguration
	@discussion Stores the configuration settings for the interface.
	@param interface The network interface.
	@param config The configuration settings to associate with this interface.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkInterfaceSetConfiguration(interface: SCNetworkInterface, _ config: CFDictionary) -> Bool

/*!
	@function SCNetworkInterfaceSetExtendedConfiguration
	@discussion Stores the configuration settings for the interface.
	@param interface The network interface.
	@param config The configuration settings to associate with this interface.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceSetExtendedConfiguration(interface: SCNetworkInterface, _ extendedType: CFString, _ config: CFDictionary) -> Bool

/*!
	@function SCNetworkInterfaceCopyMediaOptions
	@discussion For the specified network interface, returns information
		about the currently requested media options, the active media
		options, and the media options which are available.
	@param interface The desired network interface.
	@param current A pointer to memory that will be filled with a CFDictionaryRef
		representing the currently requested media options (subtype, options).
		If NULL, the current options will not be returned.
	@param active A pointer to memory that will be filled with a CFDictionaryRef
		representing the active media options (subtype, options).
		If NULL, the active options will not be returned.
	@param available A pointer to memory that will be filled with a CFArrayRef
		representing the possible media options (subtype, options).
		If NULL, the available options will not be returned.
	@param filter A boolean indicating whether the available options should be
		filtered to exclude those options which would not normally be
		requested by a user/admin (e.g. hw-loopback).
	@result TRUE if requested information has been returned.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaOptions(interface: SCNetworkInterface, _ current: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ active: UnsafeMutablePointer<Unmanaged<CFDictionary>?>, _ available: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ filter: Bool) -> Bool

/*!
	@function SCNetworkInterfaceCopyMediaSubTypes
	@discussion For the provided interface configuration options, return a list
		of available media subtypes.
	@param available The available options as returned by the
		SCNetworkInterfaceCopyMediaOptions function.
	@result An array of available media subtypes CFString's (e.g. 10BaseT/UTP,
		100baseTX, etc).  NULL if no subtypes are available.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypes(available: CFArray) -> CFArray?

/*!
	@function SCNetworkInterfaceCopyMediaSubTypeOptions
	@discussion For the provided interface configuration options and specific
		subtype, return a list of available media options.
	@param available The available options as returned by the
		SCNetworkInterfaceCopyMediaOptions function.
	@param subType The subtype
	@result An array of available media options.  Each of the available options
		is returned as an array of CFString's (e.g. <half-duplex>,
		<full-duplex,flow-control>).  NULL if no options are available.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMediaSubTypeOptions(available: CFArray, _ subType: CFString) -> CFArray?

/*!
	@function SCNetworkInterfaceCopyMTU
	@discussion For the specified network interface, returns information
		about the currently MTU setting and the range of allowable
		values.
	@param interface The desired network interface.
	@param mtu_cur A pointer to memory that will be filled with the current
		MTU setting for the interface.
	@param mtu_min A pointer to memory that will be filled with the minimum
		MTU setting for the interface.  If negative, the minimum setting
		could not be determined.
	@param mtu_max A pointer to memory that will be filled with the maximum
		MTU setting for the interface.  If negative, the maximum setting
		could not be determined.
	@result TRUE if requested information has been returned.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceCopyMTU(interface: SCNetworkInterface, _ mtu_cur: UnsafeMutablePointer<Int32>, _ mtu_min: UnsafeMutablePointer<Int32>, _ mtu_max: UnsafeMutablePointer<Int32>) -> Bool

/*!
	@function SCNetworkInterfaceSetMediaOptions
	@discussion For the specified network interface, sets the requested
		media subtype and options.
	@param interface The desired network interface.
	@param subtype The desired media subtype (e.g. "autoselect", "100baseTX", ...).
	@param options The desired media options (e.g. "half-duplex", "full-duplex", ...).
	@result TRUE if the configuration was updated; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMediaOptions(interface: SCNetworkInterface, _ subtype: CFString, _ options: CFArray) -> Bool

/*!
	@function SCNetworkInterfaceSetMTU
	@discussion For the specified network interface, sets the
		requested MTU setting.
	@param interface The desired network interface.
	@param mtu The desired MTU setting for the interface.
	@result TRUE if the configuration was updated; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceSetMTU(interface: SCNetworkInterface, _ mtu: Int32) -> Bool

/*!
	@function SCNetworkInterfaceForceConfigurationRefresh
	@discussion Sends a notification to interested network configuration
		agents to immediately retry their configuration. For example,
		calling this function will cause the DHCP client to contact
		the DHCP server immediately rather than waiting until its
		timeout has expired.  The utility of this function is to
		allow the caller to give a hint to the system that the
		network infrastructure or configuration has changed.

		Note: This function requires root (euid==0) privilege or,
		alternatively, you may pass an SCNetworkInterface which
		is derived from a sequence of calls to :

			SCPreferencesCreateWithAuthorization
			SCNetworkSetCopy...
			SCNetworkServiceGetInterface
	@param interface The desired network interface.
	@result Returns TRUE if the notification was sent; FALSE otherwise.
 */
@available(OSX 10.5, *)
func SCNetworkInterfaceForceConfigurationRefresh(interface: SCNetworkInterface) -> Bool

/*!
	@function SCBondInterfaceCopyAll
	@discussion Returns all Ethernet Bond interfaces on the system.
	@param prefs The "preferences" session.
	@result The list of Ethernet Bond interfaces on the system.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCBondInterfaceCopyAll(prefs: SCPreferences) -> CFArray

/*!
	@function SCBondInterfaceCopyAvailableMemberInterfaces
	@discussion Returns all network capable devices on the system
		that can be added to an Ethernet Bond interface.
	@param prefs The "preferences" session.
	@result The list of interfaces.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCBondInterfaceCopyAvailableMemberInterfaces(prefs: SCPreferences) -> CFArray

/*!
	@function SCBondInterfaceCreate
	@discussion Create a new SCBondInterface interface.
	@param prefs The "preferences" session.
	@result A reference to the new SCBondInterface.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCBondInterfaceCreate(prefs: SCPreferences) -> SCBondInterface?

/*!
	@function SCBondInterfaceRemove
	@discussion Removes the SCBondInterface from the configuration.
	@param bond The SCBondInterface interface.
	@result TRUE if the interface was removed; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCBondInterfaceRemove(bond: SCBondInterface) -> Bool

/*!
	@function SCBondInterfaceGetMemberInterfaces
	@discussion Returns the member interfaces for the specified Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@result The list of interfaces.
 */
@available(OSX 10.5, *)
func SCBondInterfaceGetMemberInterfaces(bond: SCBondInterface) -> CFArray?

/*!
	@function SCBondInterfaceGetOptions
	@discussion Returns the configuration settings associated with a Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@result The configuration settings associated with the Ethernet Bond interface;
		NULL if no changes to the default configuration have been saved.
 */
@available(OSX 10.5, *)
func SCBondInterfaceGetOptions(bond: SCBondInterface) -> CFDictionary?

/*!
	@function SCBondInterfaceSetMemberInterfaces
	@discussion Sets the member interfaces for the specified Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@param members The desired member interfaces.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCBondInterfaceSetMemberInterfaces(bond: SCBondInterface, _ members: CFArray) -> Bool

/*!
	@function SCBondInterfaceSetLocalizedDisplayName
	@discussion Sets the localized display name for the specified Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@param newName The new display name.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCBondInterfaceSetLocalizedDisplayName(bond: SCBondInterface, _ newName: CFString) -> Bool

/*!
	@function SCBondInterfaceSetOptions
	@discussion Sets the configuration settings for the specified Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@param newOptions The new configuration settings.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCBondInterfaceSetOptions(bond: SCBondInterface, _ newOptions: CFDictionary) -> Bool

/*!
	@function SCBondInterfaceCopyStatus
	@discussion Returns the status of the specified Ethernet Bond interface.
	@param bond The SCBondInterface interface.
	@result The status associated with the interface.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCBondInterfaceCopyStatus(bond: SCBondInterface) -> SCBondStatus?

/*!
	@function SCBondStatusGetTypeID
	@discussion Returns the type identifier of all SCBondStatus instances.
 */
@available(OSX 10.5, *)
func SCBondStatusGetTypeID() -> CFTypeID

/*!
	@function SCBondStatusGetMemberInterfaces
	@discussion Returns the member interfaces that are represented with the
		Ethernet Bond interface.
	@param bondStatus The Ethernet Bond status.
	@result The list of interfaces.
 */
@available(OSX 10.5, *)
func SCBondStatusGetMemberInterfaces(bondStatus: SCBondStatus) -> CFArray?

/*!
	@function SCBondStatusGetInterfaceStatus
	@discussion Returns the status of a specific member interface of an
		Ethernet Bond or the status of the bond as a whole.
	@param bondStatus The Ethernet Bond status.
	@param interface The specific member interface; NULL if you want the
		status of the Ethernet Bond.
	@result The interface status.

	Note: at present, no information about the status of the Ethernet
	      Bond is returned.  As long as one member interface is active
	      then the bond should be operational.
 */
@available(OSX 10.5, *)
func SCBondStatusGetInterfaceStatus(bondStatus: SCBondStatus, _ interface: SCNetworkInterface?) -> CFDictionary?

/*!
	@function SCVLANInterfaceCopyAll
	@discussion Returns all VLAN interfaces on the system.
	@result The list of VLAN interfaces on the system.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAll(prefs: SCPreferences) -> CFArray

/*!
	@function SCVLANInterfaceCopyAvailablePhysicalInterfaces
	@discussion Returns the network capable devices on the system
		that can be associated with a VLAN interface.
	@result The list of interfaces.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceCopyAvailablePhysicalInterfaces() -> CFArray

/*!
	@function SCVLANInterfaceCreate
	@discussion Create a new SCVLANInterface interface.
	@param prefs The "preferences" session.
	@param physical The physical interface to associate with the VLAN.
	@param tag The tag to associate with the VLAN.
	@result A reference to the new SCVLANInterface.
		You must release the returned value.

	Note: the tag must be in the range (1 <= tag <= 4094)
 */
@available(OSX 10.5, *)
func SCVLANInterfaceCreate(prefs: SCPreferences, _ physical: SCNetworkInterface, _ tag: CFNumber) -> SCVLANInterface?

/*!
	@function SCVLANInterfaceRemove
	@discussion Removes the SCVLANInterface from the configuration.
	@param vlan The SCVLANInterface interface.
	@result TRUE if the interface was removed; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceRemove(vlan: SCVLANInterface) -> Bool

/*!
	@function SCVLANInterfaceGetPhysicalInterface
	@discussion Returns the physical interface for the specified VLAN interface.
	@param vlan The SCVLANInterface interface.
	@result The list of interfaces.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceGetPhysicalInterface(vlan: SCVLANInterface) -> SCNetworkInterface?

/*!
	@function SCVLANInterfaceGetTag
	@discussion Returns the tag for the specified VLAN interface.
	@param vlan The SCVLANInterface interface.
	@result The tag.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceGetTag(vlan: SCVLANInterface) -> CFNumber?

/*!
	@function SCVLANInterfaceGetOptions
	@discussion Returns the configuration settings associated with the VLAN interface.
	@param vlan The SCVLANInterface interface.
	@result The configuration settings associated with the VLAN interface;
		NULL if no changes to the default configuration have been saved.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceGetOptions(vlan: SCVLANInterface) -> CFDictionary?

/*!
	@function SCVLANInterfaceSetPhysicalInterfaceAndTag
	@discussion Updates the specified VLAN interface.
	@param vlan The SCVLANInterface interface.
	@param physical The physical interface to associate with the VLAN.
	@param tag The tag to associate with the VLAN.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.

	Note: the tag must be in the range (1 <= tag <= 4094)
 */
@available(OSX 10.5, *)
func SCVLANInterfaceSetPhysicalInterfaceAndTag(vlan: SCVLANInterface, _ physical: SCNetworkInterface, _ tag: CFNumber) -> Bool

/*!
	@function SCVLANInterfaceSetLocalizedDisplayName
	@discussion Sets the localized display name for the specified VLAN interface.
	@param vlan The SCVLANInterface interface.
	@param newName The new display name.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceSetLocalizedDisplayName(vlan: SCVLANInterface, _ newName: CFString) -> Bool

/*!
	@function SCVLANInterfaceSetOptions
	@discussion Sets the configuration settings for the specified VLAN interface.
	@param vlan The SCVLANInterface interface.
	@param newOptions The new configuration settings.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.5, *)
func SCVLANInterfaceSetOptions(vlan: SCVLANInterface, _ newOptions: CFDictionary) -> Bool

/*!
	@function SCNetworkProtocolGetTypeID
	@discussion Returns the type identifier of all SCNetworkProtocol instances.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolGetTypeID() -> CFTypeID

/*!
	@function SCNetworkProtocolGetConfiguration
	@discussion Returns the configuration settings associated with the protocol.
	@param protocol The network protocol.
	@result The configuration settings associated with the protocol;
		NULL if no configuration settings are associated with the protocol
		or an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolGetConfiguration(protocol: SCNetworkProtocol) -> CFDictionary?

/*!
	@function SCNetworkProtocolGetEnabled
	@discussion Returns whether this protocol has been enabled.
	@param protocol The network protocol.
	@result TRUE if the protocol is enabled.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolGetEnabled(protocol: SCNetworkProtocol) -> Bool

/*!
	@function SCNetworkProtocolGetProtocolType
	@discussion Returns the associated network protocol type.
	@param protocol The network protocol.
	@result The protocol type.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolGetProtocolType(protocol: SCNetworkProtocol) -> CFString?

/*!
	@function SCNetworkProtocolSetConfiguration
	@discussion Stores the configuration settings for the protocol.
	@param protocol The network protocol.
	@param config The configuration settings to associate with this protocol.
	@result TRUE if the configuration was stored; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolSetConfiguration(protocol: SCNetworkProtocol, _ config: CFDictionary) -> Bool

/*!
	@function SCNetworkProtocolSetEnabled
	@discussion Enables or disables the protocol.
	@param protocol The network protocol.
	@param enabled TRUE if the protocol should be enabled.
	@result TRUE if the enabled status was saved; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkProtocolSetEnabled(protocol: SCNetworkProtocol, _ enabled: Bool) -> Bool

/*!
	@function SCNetworkServiceGetTypeID
	@discussion Returns the type identifier of all SCNetworkService instances.
 */
@available(OSX 10.4, *)
func SCNetworkServiceGetTypeID() -> CFTypeID

/*!
	@function SCNetworkServiceAddProtocolType
	@discussion Adds a network protocol of the specified type to the
		service.  The protocal configuration is set to default values
		that are appropriate for the interface associated with the
		service.
	@param service The network service.
	@param protocolType The type of SCNetworkProtocol to be added to the service.
	@result TRUE if the protocol was added to the service; FALSE if the
		protocol was already present or an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkServiceAddProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool

/*!
	@function SCNetworkServiceCopyAll
	@discussion Returns all available network services for the specified preferences.
	@param prefs The "preferences" session.
	@result The list of SCNetworkService services associated with the preferences.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkServiceCopyAll(prefs: SCPreferences) -> CFArray?

/*!
	@function SCNetworkServiceCopyProtocols
	@discussion Returns all network protocols associated with the service.
	@param service The network service.
	@result The list of SCNetworkProtocol protocols associated with the service.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocols(service: SCNetworkService) -> CFArray?

/*!
	@function SCNetworkServiceCreate
	@discussion Create a new network service for the specified interface in the
		configuration.
	@param prefs The "preferences" session.
	@result A reference to the new SCNetworkService.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkServiceCreate(prefs: SCPreferences, _ interface: SCNetworkInterface) -> SCNetworkService?

/*!
	@function SCNetworkServiceCopy
	@discussion Returns the network service with the specified identifier.
	@param prefs The "preferences" session.
	@param serviceID The unique identifier for the service.
	@result A reference to the SCNetworkService from the associated preferences;
		NULL if the serviceID does not exist in the preferences or if an
		error was encountered.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkServiceCopy(prefs: SCPreferences, _ serviceID: CFString) -> SCNetworkService?

/*!
	@function SCNetworkServiceEstablishDefaultConfiguration
	@discussion Establishes the "default" configuration for a network
		service.  This configuration includes the addition of
		network protocols for the service (with "default"
		configuration options).
	@param service The network service.
	@result TRUE if the configuration was updated; FALSE if an error was encountered.
*/
@available(OSX 10.5, *)
func SCNetworkServiceEstablishDefaultConfiguration(service: SCNetworkService) -> Bool

/*!
	@function SCNetworkServiceGetEnabled
	@discussion Returns whether this service has been enabled.
	@param service The network service.
	@result TRUE if the service is enabled.
 */
@available(OSX 10.4, *)
func SCNetworkServiceGetEnabled(service: SCNetworkService) -> Bool

/*!
	@function SCNetworkServiceGetInterface
	@discussion Returns the network interface associated with the service.
	@param service The network service.
	@result A reference to the SCNetworkInterface associated with the service;
		NULL if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkServiceGetInterface(service: SCNetworkService) -> SCNetworkInterface?

/*!
	@function SCNetworkServiceGetName
	@discussion Returns the [user specified] name associated with the service.
	@param service The network service.
	@result The [user specified] name.
 */
@available(OSX 10.4, *)
func SCNetworkServiceGetName(service: SCNetworkService) -> CFString?

/*!
	@function SCNetworkServiceCopyProtocol
	@discussion Returns the network protocol of the specified type for
		the service.
	@param service The network service.
	@result A reference to the SCNetworkProtocol associated with the service;
		NULL if this protocol has not been added or if an error was encountered.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkServiceCopyProtocol(service: SCNetworkService, _ protocolType: CFString) -> SCNetworkProtocol?

/*!
	@function SCNetworkServiceGetServiceID
	@discussion Returns the identifier for the service.
	@param service The network service.
	@result The service identifier.
 */
@available(OSX 10.4, *)
func SCNetworkServiceGetServiceID(service: SCNetworkService) -> CFString?

/*!
	@function SCNetworkServiceRemove
	@discussion Removes the network service from the configuration.
	@param service The network service.
	@result TRUE if the service was removed; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkServiceRemove(service: SCNetworkService) -> Bool

/*!
	@function SCNetworkServiceRemoveProtocolType
	@discussion Removes the network protocol of the specified type from the service.
	@param service The network service.
	@param protocolType The type of SCNetworkProtocol to be removed from the service.
	@result TRUE if the protocol was removed to the service; FALSE if the
		protocol was not configured or an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkServiceRemoveProtocolType(service: SCNetworkService, _ protocolType: CFString) -> Bool

/*!
	@function SCNetworkServiceSetEnabled
	@discussion Enables or disables the service.
	@param service The network service.
	@param enabled TRUE if the service should be enabled.
	@result TRUE if the enabled status was saved; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkServiceSetEnabled(service: SCNetworkService, _ enabled: Bool) -> Bool

/*!
	@function SCNetworkServiceSetName
	@discussion Stores the [user specified] name for the service.
	@param service The network service.
	@param name The [user defined] name to associate with the service.
	@result TRUE if the name was saved; FALSE if an error was encountered.

	Note: although not technically required, the [user specified] names
	for all services within any given set should be unique.  As such, an
	error will be returned if you attemp to name two services with the
	same string.
 */
@available(OSX 10.4, *)
func SCNetworkServiceSetName(service: SCNetworkService, _ name: CFString) -> Bool

/*!
	@function SCNetworkSetGetTypeID
	@discussion Returns the type identifier of all SCNetworkSet instances.
 */
@available(OSX 10.4, *)
func SCNetworkSetGetTypeID() -> CFTypeID

/*!
	@function SCNetworkSetAddService
	@discussion Adds the network service to the set.
	@param set The network set.
	@param service The service to be added.
	@result TRUE if the service was added to the set; FALSE if the
		service was already present or an error was encountered.

	Note: prior to Mac OS X 10.5, the Network Preferences UI
	did not support having a single service being a member of
	more than one set.  An error will be returned if you attempt
	to add a service to more than one set on a pre-10.5 system.
 */
@available(OSX 10.4, *)
func SCNetworkSetAddService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool

/*!
	@function SCNetworkSetContainsInterface
	@discussion Checks if an interface is represented by at least one
		network service in the specified set.
	@param set The network set.
	@param interface The network interface.
	@result TRUE if the interface is represented in the set; FALSE if not.
 */
@available(OSX 10.5, *)
func SCNetworkSetContainsInterface(set: SCNetworkSet, _ interface: SCNetworkInterface) -> Bool

/*!
	@function SCNetworkSetCopyAll
	@discussion Returns all available sets for the specified preferences.
	@param prefs The "preferences" session.
	@result The list of SCNetworkSet sets associated with the preferences.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkSetCopyAll(prefs: SCPreferences) -> CFArray?

/*!
	@function SCNetworkSetCopyCurrent
	@discussion Returns the "current" set.
	@param prefs The "preferences" session.
	@result The current set; NULL if no current set has been defined.
 */
@available(OSX 10.4, *)
func SCNetworkSetCopyCurrent(prefs: SCPreferences) -> SCNetworkSet?

/*!
	@function SCNetworkSetCopyServices
	@discussion Returns all network services associated with the set.
	@param set The network set.
	@result The list of SCNetworkService services associated with the set.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkSetCopyServices(set: SCNetworkSet) -> CFArray?

/*!
	@function SCNetworkSetCreate
	@discussion Create a new set in the configuration.
	@param prefs The "preferences" session.
	@result A reference to the new SCNetworkSet.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkSetCreate(prefs: SCPreferences) -> SCNetworkSet?

/*!
	@function SCNetworkSetCopy
	@discussion Returns the set with the specified identifier.
	@param prefs The "preferences" session.
	@param setID The unique identifier for the set.
	@result A reference to the SCNetworkSet from the associated preferences;
		NULL if the setID does not exist in the preferences or if an
		error was encountered.
		You must release the returned value.
 */
@available(OSX 10.4, *)
func SCNetworkSetCopy(prefs: SCPreferences, _ setID: CFString) -> SCNetworkSet?

/*!
	@function SCNetworkSetGetName
	@discussion Returns the [user specified] name associated with the set.
	@param set The network set.
	@result The [user specified] name.
 */
@available(OSX 10.4, *)
func SCNetworkSetGetName(set: SCNetworkSet) -> CFString?

/*!
	@function SCNetworkSetGetSetID
	@discussion Returns the identifier for the set.
	@param set The network set.
	@result The set identifier.
 */
@available(OSX 10.4, *)
func SCNetworkSetGetSetID(set: SCNetworkSet) -> CFString?

/*!
	@function SCNetworkSetGetServiceOrder
	@discussion Returns the [user specified] ordering of network services
		within the set.
	@param set The network set.
	@result The ordered list of CFStringRef service identifiers associated
		with the set;
		NULL if no service order has been specified or if an error
		was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkSetGetServiceOrder(set: SCNetworkSet) -> CFArray?

/*!
	@function SCNetworkSetRemove
	@discussion Removes the set from the configuration.
	@param set The network set.
	@result TRUE if the set was removed; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkSetRemove(set: SCNetworkSet) -> Bool

/*!
	@function SCNetworkSetRemoveService
	@discussion Removes the network service from the set.
	@param set The network set.
	@param service The service to be removed.
	@result TRUE if the service was removed from the set; FALSE if the
		service was not already present or an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkSetRemoveService(set: SCNetworkSet, _ service: SCNetworkService) -> Bool

/*!
	@function SCNetworkSetSetCurrent
	@discussion Specifies the set that should be the "current" set.
	@param set The network set.
	@result TRUE if the current set was updated;
		FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkSetSetCurrent(set: SCNetworkSet) -> Bool

/*!
	@function SCNetworkSetSetName
	@discussion Stores the [user specified] name for the set.
	@param set The network set.
	@param name The [user defined] name to associate with the set.
	@result TRUE if the name was saved; FALSE if an error was encountered.

	Note: although not technically required, the [user specified] names
	for all set should be unique.  As such, an error will be returned if
	you attemp to name two sets with the same string.
 */
@available(OSX 10.4, *)
func SCNetworkSetSetName(set: SCNetworkSet, _ name: CFString) -> Bool

/*!
	@function SCNetworkSetSetServiceOrder
	@discussion Stores the [user specified] ordering of network services for the set.
	@param set The network set.
	@param newOrder The ordered list of CFStringRef service identifiers for the set.
	@result TRUE if the new service order was saved; FALSE if an error was encountered.
 */
@available(OSX 10.4, *)
func SCNetworkSetSetServiceOrder(set: SCNetworkSet, _ newOrder: CFArray) -> Bool

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
	@function SCNetworkConnectionGetTypeID
	@discussion Returns the type identifier of all SCNetworkConnection
		instances.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionGetTypeID() -> CFTypeID

/*!
	@function SCNetworkConnectionCopyUserPreferences
	@discussion Provides the default service ID and a dictionary of user
		options for the connection.  Applications can use the
		returned serviceID and userOptions values to open a
		connection on the fly.
	@param selectionOptions Currently unimplemented. Pass NULL for this
		version.
	@param serviceID Reference to the default serviceID for starting
		connections, this value will be returned by the function.
	@param userOptions Reference to default userOptions for starting
		connections, this will be returned by the function.
	@result Returns TRUE if there is a valid service to dial;
		FALSE if the function was unable to retrieve a service to dial.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCopyUserPreferences(selectionOptions: CFDictionary?, _ serviceID: UnsafeMutablePointer<Unmanaged<CFString>?>, _ userOptions: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> Bool

/*!
	@function SCNetworkConnectionCreateWithServiceID
	@discussion Creates a new connection reference to use for getting
		the status or for connecting or disconnecting the associated
		service.
	@param allocator The CFAllocator that should be used to allocate
		memory for the connection structure.  This parameter may be
		NULL in which case the current default CFAllocator is used.
		If this reference is not a valid CFAllocator, the behavior
		is undefined.
	@param serviceID A string that defines the service identifier
		of the connection.  Service identifiers uniquely identify
		services in the system configuration database.
	@param callout The function to be called when the status
		of the connection changes.  If this parameter is NULL, the
		application will not receive notifications of status change
		and will need to poll for updates.
	@param context The SCNetworkConnectionContext associated with the
		callout.
	@result Returns a reference to the new SCNetworkConnection.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCreateWithServiceID(allocator: CFAllocator?, _ serviceID: CFString, _ callout: SCNetworkConnectionCallBack?, _ context: UnsafeMutablePointer<SCNetworkConnectionContext>) -> SCNetworkConnection?

/*!
	@function SCNetworkConnectionCopyServiceID
	@discussion Returns the service ID associated with the SCNetworkConnection.
	@param connection The SCNetworkConnection to obtain status from.
	@result Returns the service ID associated with the SCNetworkConnection.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCopyServiceID(connection: SCNetworkConnection) -> CFString?

/*!
	@function SCNetworkConnectionGetStatus
	@discussion Returns the status of the SCNetworkConnection.
		A status is one of the following values:
<pre>
@textblock
&#32
	kSCNetworkConnectionInvalid
	kSCNetworkConnectionDisconnected
	kSCNetworkConnectionConnecting
	kSCNetworkConnectionDisconnecting
	kSCNetworkConnectionConnected
@/textblock
</pre>
	@param connection The SCNetworkConnection to obtain status from.
	@result Returns the status value.
*/
@available(OSX 10.3, *)
func SCNetworkConnectionGetStatus(connection: SCNetworkConnection) -> SCNetworkConnectionStatus

/*!
	@function SCNetworkConnectionCopyExtendedStatus
	@discussion Returns the extended status of the connection.
		An extended status dictionary contains specific dictionaries
		describing the status for each subcomponent of the service.

		For example, a status dictionary will contain the following
		sub-dictionaries, keys, and values:
<pre>
@textblock
&#32
	IPv4  : Addresses      : the assigned IP address.
&#32
	PPP   : Status         : the PPP-specific status of type
				 SCNetworkConnectionPPPStatus.
&#32
		LastCause      : Available when the status is "Disconnected"
				 and contains the last error associated with
				 connecting or disconnecting.
&#32
		ConnectTime    : the time when the connection was
				 established.
&#32
	Modem : ConnectSpeed   : the speed of the modem connection
				 in bits/second.
&#32
	IPSec : Status         : the IPSec-specific status of type
				 SCNetworkConnectionIPSecStatus
&#32
		ConnectTime    : the time when the connection was
				 established.

@/textblock
</pre>
		Other dictionaries could be present for PPPoE, PPTP, and L2TP.

		The status dictionary may be extended in the future to contain
		additional information.
	@param connection The SCNetworkConnection to obtain status from.
	@result Returns the status dictionary.
		If NULL is returned, the error can be retrieved using the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCopyExtendedStatus(connection: SCNetworkConnection) -> CFDictionary?

/*!
	@function SCNetworkConnectionCopyStatistics
	@discussion Returns the statistics of the SCNetworkConnection.
		A statistic dictionary contains specific dictionaries
		with statistics for each subcomponent of the service.

		For example, a statistics dictionary will contain the following
		sub-dictionaries, keys, and values:
<pre>
@textblock
&#32
	PPP : BytesIn    :
	PPP : BytesOut   : Contains the number of bytes going up into
			   (or coming out of) the network stack for
			   any networking protocol without the PPP
			   headers and trailers.
&#32
	PPP : PacketsIn  :
	PPP : PacketsOut : Contains the number of packets going up into
			   (or coming out of) the network stack for
			   any networking protocol without the PPP
			   headers and trailers.
&#32
	PPP : ErrorsIn   :
	PPP : ErrorsOut  : Contains the number of errors going up into
			   (or coming out of) the network stack for
			   any networking protocol without the PPP
			   headers and trailers.
@/textblock
</pre>
		The statistics dictionary may be extended in the future to
		contain additional information.
	@param connection The SCNetworkConnection to obtained statistics from.
	@result Returns the statistics dictionary.
		If NULL is returned, the error can be retrieved using the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCopyStatistics(connection: SCNetworkConnection) -> CFDictionary?

/*!
	@function SCNetworkConnectionStart
	@discussion Starts the connection for the SCNetworkConnection.
		The connection process is asynchronous and the function will
		return immediately.  The connection status can be obtained
		by polling or by callback.  The connection is made with the
		default settings from the administrator.  Some of the settings
		can be overridden for the duration of the connection.  These
		are specified in an options dictionary.  The options dictionary
		uses the same format as a network service defined in the system
		configuration preferences schema.

		Note: Starting and stopping of connections is implicitly
		arbitrated.  Calling SCNetworkConnectionStart on a connection
		already started will indicate that the application has
		interest in the connection and it shouldn't be stopped by
		anyone else.
	@param connection The SCNetworkConnection to start.
	@param userOptions The options dictionary to start the connection with.
		If userOptions is NULL, the default settings will be used.
		If userOptions are specified, they must be in the same format
		as network services stored in the system configuration
		preferences schema.  The options will override the default
		settings defined for the service.

		For security reasons, not all options can be overridden; the
		appropriate merging of all settings will be done before the
		connection is established, and inappropriate options will be
		ignored.
	@param linger This parameter indicates whether or not the connection
		can stay around when the application no longer has interest
		in it.  A typical application should pass FALSE, and the
		connection will be automatically stopped when the reference
		is released or if the application quits.  If the application
		passes TRUE, the application can release the reference or
		exit and the connection will be maintained until a timeout
		event, until a specific stop request occurs, or until an
		error is encountered.
	@result Returns TRUE if the connection was correctly started (the
		actual connection is not established yet, and the connection
		status needs to be periodically checked); FALSE if the
		connection request was not started.  The error must be
		retrieved from the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionStart(connection: SCNetworkConnection, _ userOptions: CFDictionary?, _ linger: Bool) -> Bool

/*!
	@function SCNetworkConnectionStop
	@discussion Stops the connection for the SCNetworkConnection.
		The disconnection process is asynchronous and the function
		will return immediately.  The connection status can be
		obtained by polling or by callback.  This function performs
		an arbitrated stop of the connection.  If several applications
		have marked their interest in the connection, by calling
		SCNetworkConnectionStart, the call will succeed but the
		actual connection will be maintained until the last interested
		application calls SCNetworkConnectionStop.

		In certain cases, you might want to stop the connection anyway.
		In these cases, you set the forceDisconnect argument to TRUE.
	@param connection The SCNetworkConnection to stop.
	@result Returns TRUE if the disconnection request succeeded;
		FALSE if the disconnection request failed.
		The error must be retrieved from the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionStop(connection: SCNetworkConnection, _ forceDisconnect: Bool) -> Bool

/*!
	@function SCNetworkConnectionCopyUserOptions
	@discussion Copies the user options used to start the connection.
		This is a mechanism a client can use to retrieve the user options
		previously passed to the SCNetworkConnectionStart function.
	@param connection The SCNetworkConnection to obtain options from.
	@result Returns the service dictionary containing the connection options.
		The dictionary can be empty if no user options were used.
		If NULL is returned, the error can be retrieved using the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionCopyUserOptions(connection: SCNetworkConnection) -> CFDictionary?

/*!
	@function SCNetworkConnectionScheduleWithRunLoop
	@discussion Schedules a connection with the run loop.
	@param connection The SCNetworkConnection to schedule.
	@param runLoop The run loop to schedule with.
	@param runLoopMode The run loop mode.
	@result Returns TRUE if the connection is scheduled successfully;
		FALSE if the scheduling failed.
		The error can be retrieved using the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionScheduleWithRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	@function SCNetworkConnectionUnscheduleFromRunLoop
	@discussion Unschedules a connection from the run loop.
	@param connection The SCNetworkConnection to unschedule.
	@param runLoop The run loop to unschedule from.
	@param runLoopMode The run loop mode.
	@result Returns TRUE if the connection is unscheduled successfully;
		FALSE if the unscheduling failed.
		The error can be retrieved using the SCError function.
 */
@available(OSX 10.3, *)
func SCNetworkConnectionUnscheduleFromRunLoop(connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	 @function SCNetworkConnectionSetDispatchQueue
	 @discussion Caller provides a dispatch queue on which the callback contained in connection will run.
	 @param connection The SCNetworkConnection to notify.
	 @param queue The libdispatch queue to run the callback on.
		Pass NULL to disable notifications, and release queue.
	 @result Returns TRUE if the notifications have been enabled/disabled as desired;
		 FALSE if not.
		 The error can be retrieved using the SCError function.
 */
@available(OSX 10.6, *)
func SCNetworkConnectionSetDispatchQueue(connection: SCNetworkConnection, _ queue: dispatch_queue_t?) -> Bool

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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
func SCNetworkReachabilityCreateWithName(allocator: CFAllocator?, _ nodename: UnsafePointer<Int8>) -> SCNetworkReachability?

/*!
	@function SCNetworkReachabilityGetTypeID
	@discussion Returns the type identifier of all SCNetworkReachability
		instances.
 */
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.3, *)
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
@available(OSX 10.6, *)
func SCNetworkReachabilitySetDispatchQueue(target: SCNetworkReachability, _ queue: dispatch_queue_t?) -> Bool

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

/*!
	@function SCPreferencesGetTypeID
	@discussion Returns the type identifier of all SCPreferences instances.
 */
@available(OSX 10.1, *)
func SCPreferencesGetTypeID() -> CFTypeID

/*!
	@function SCPreferencesCreate
	@discussion Initiates access to the per-system set of configuration
		preferences.
	@param allocator The CFAllocator that should be used to allocate
		memory for this preferences session.
		This parameter may be NULL in which case the current
		default CFAllocator is used.
		If this reference is not a valid CFAllocator, the behavior
		is undefined.
	@param name A string that describes the name of the calling
		process.
	@param prefsID A string that identifies the name of the
		group of preferences to be accessed or updated.
	@result Returns a reference to the new SCPreferences.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCPreferencesCreate(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?) -> SCPreferences?

/*!
	@function SCPreferencesCreateWithAuthorization
	@discussion Initiates access to the per-system set of configuration
		preferences.
	@param allocator The CFAllocator that should be used to allocate
		memory for this preferences session.
		This parameter may be NULL in which case the current
		default CFAllocator is used.
		If this reference is not a valid CFAllocator, the behavior
		is undefined.
	@param name A string that describes the name of the calling
		process.
	@param prefsID A string that identifies the name of the
		group of preferences to be accessed or updated.
	@param authorization An authorization reference that is used to
		authorize any access to the enhanced privileges needed
		to manage the preferences session.
	@result Returns a reference to the new SCPreferences.
		You must release the returned value.
 */
@available(OSX 10.5, *)
func SCPreferencesCreateWithAuthorization(allocator: CFAllocator?, _ name: CFString, _ prefsID: CFString?, _ authorization: AuthorizationRef) -> SCPreferences?

/*!
	@function SCPreferencesLock
	@discussion Locks access to the configuration preferences.

		This function obtains exclusive access to the configuration
		preferences.  Clients attempting to obtain exclusive access
		to the preferences will either receive a kSCStatusPrefsBusy
		error or block waiting for the lock to be released.
	@param prefs The preferences session.
	@param wait A boolean flag indicating whether the calling process
		should block waiting for another process to complete its update
		operation and release its lock.
	@result Returns TRUE if the lock was obtained;
		FALSE if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesLock(prefs: SCPreferences, _ wait: Bool) -> Bool

/*!
	@function SCPreferencesCommitChanges
	@discussion Commits changes made to the configuration preferences to
		persistent storage.

		This function commits any changes to permanent storage.
		Implicit calls to the SCPreferencesLock and SCPreferencesUnlock
		functions will be made if exclusive access has not already been
		established.

		Note: This routine commits changes to persistent storage.
		Call the SCPreferencesApplyChanges function to apply the
		changes to the running system.
	@param prefs The preferences session.
	@result Returns TRUE if the lock was obtained;
		FALSE if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesCommitChanges(prefs: SCPreferences) -> Bool

/*!
	@function SCPreferencesApplyChanges
	@discussion Requests that the currently stored configuration
		preferences be applied to the active configuration.
	@param prefs The preferences session.
	@result Returns TRUE if the lock was obtained;
		FALSE if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesApplyChanges(prefs: SCPreferences) -> Bool

/*!
	@function SCPreferencesUnlock
	@discussion Releases exclusive access to the configuration preferences.

		This function releases the exclusive access lock to the
		preferences.  Other clients will be now be able to establish
		exclusive access to the preferences.
	@param prefs The preferences session.
	@result Returns TRUE if the lock was obtained;
		FALSE if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesUnlock(prefs: SCPreferences) -> Bool

/*!
	@function SCPreferencesGetSignature
	@discussion Returns a sequence of bytes that can be used to determine
		if the saved configuration preferences have changed.
	@param prefs The preferences session.
	@result Returns a CFDataRef that reflects the signature of the configuration
		preferences at the time of the call to the SCPreferencesCreate function.
 */
@available(OSX 10.1, *)
func SCPreferencesGetSignature(prefs: SCPreferences) -> CFData?

/*!
	@function SCPreferencesCopyKeyList
	@discussion Returns an array of currently defined preference keys.
	@param prefs The preferences session.
	@result Returns the list of keys.
		You must release the returned value.
 */
@available(OSX 10.1, *)
func SCPreferencesCopyKeyList(prefs: SCPreferences) -> CFArray?

/*!
	@function SCPreferencesGetValue
	@discussion Returns the data associated with a preference key.

		This function retrieves data associated with the specified
		key.

		Note: To avoid inadvertantly reading stale data, first call
		the SCPreferencesLock function.
	@param prefs The preferences session.
	@param key The preference key to be returned.
	@result Returns the value associated with the specified preference key;
		NULL if no value was located.
 */
@available(OSX 10.1, *)
func SCPreferencesGetValue(prefs: SCPreferences, _ key: CFString) -> CFPropertyList?

/*!
	@function SCPreferencesAddValue
	@discussion Adds data for a preference key.

		This function associates new data with the specified key.
		To commit these changes to permanent storage, a call must
		be made to the SCPreferencesCommitChanges function.
	@param prefs The preferences session.
	@param key The preference key to be updated.
	@param value The CFPropertyListRef object containing the
		value to be associated with the specified preference key.
	@result Returns TRUE if the value was added;
		FALSE if the key already exists or
		if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesAddValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool

/*!
	@function SCPreferencesSetValue
	@discussion Updates the data associated with a preference key.

		This function adds or replaces the value associated with the
		specified key.  To commit these changes to permanent storage
		a call must be made to the SCPreferencesCommitChanges function.
	@param prefs The preferences session.
	@param key The preference key to be updated.
	@param value The CFPropertyListRef object containing the
		data to be associated with the specified preference key.
	@result Returns TRUE if the value was set;
		FALSE if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesSetValue(prefs: SCPreferences, _ key: CFString, _ value: CFPropertyList) -> Bool

/*!
	@function SCPreferencesRemoveValue
	@discussion Removes the data associated with a preference key.

		This function removes the data associated with the specified
		key.  To commit these changes to permanent storage a call must
		be made to the SCPreferencesCommitChanges function.
	@param prefs The preferences session.
	@param key The preference key to be removed.
	@result Returns TRUE if the value was removed;
		FALSE if the key did not exist or if an error occurred.
 */
@available(OSX 10.1, *)
func SCPreferencesRemoveValue(prefs: SCPreferences, _ key: CFString) -> Bool

/*!
	@function SCPreferencesSetCallback
	@discussion Assigns a callback to a preferences session.  The function
		is called when the changes to the preferences have been
		committed or applied.
	@param prefs The preferences session.
	@param callout The function to be called when the preferences have
		been changed or applied.
		If NULL, the current callback is removed.
	@param context The SCPreferencesContext associated with
		the callout.
	@result Returns TRUE if the notification client was successfully set.
 */
@available(OSX 10.4, *)
func SCPreferencesSetCallback(prefs: SCPreferences, _ callout: SCPreferencesCallBack?, _ context: UnsafeMutablePointer<SCPreferencesContext>) -> Bool

/*!
	@function SCPreferencesScheduleWithRunLoop
	@discussion Schedule commit and apply notifications for the specified
		preferences session using the specified run loop and mode.
	@param prefs The preferences session.
	@param runLoop A reference to a run loop on which the notification
		should be scheduled.
		Must be non-NULL.
	@param runLoopMode The mode on which to schedule the notification.
		Must be non-NULL.
	@result Returns TRUE if the notifications are successfully scheduled;
		FALSE otherwise.
 */
@available(OSX 10.4, *)
func SCPreferencesScheduleWithRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	@function SCPreferencesUnscheduleFromRunLoop
	@discussion Unschedule commit and apply notifications for the specified
		preferences session from the specified run loop and mode.
	@param prefs The preferences session.
	@param runLoop A reference to a run loop from which the notification
		should be unscheduled.
		Must be non-NULL.
	@param runLoopMode The mode on which to unschedule the notification.
		Must be non-NULL.
	@result Returns TRUE if the notifications are successfully unscheduled;
		FALSE otherwise.
 */
@available(OSX 10.4, *)
func SCPreferencesUnscheduleFromRunLoop(prefs: SCPreferences, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool

/*!
	@function SCPreferencesSetDispatchQueue
	@discussion Schedule commit and apply notifications for the specified
		preferences session.
	@param prefs The preferences session.
	@param queue The dispatch queue to run the callback function on.
	@result Returns TRUE if the notifications are successfully scheduled;
		FALSE otherwise.
 */
@available(OSX 10.6, *)
func SCPreferencesSetDispatchQueue(prefs: SCPreferences, _ queue: dispatch_queue_t?) -> Bool

/*!
	@function SCPreferencesSynchronize
	@discussion Synchronizes accessed preferences with committed changes.

		Any references to preference values returned by calls to the
		SCPreferencesGetValue function are no longer valid unless they
		were explicitly retained or copied.  Any preference values
		that were updated (add, set, remove) but not committed will
		be discarded.
	@param prefs The preferences session.
 */
@available(OSX 10.4, *)
func SCPreferencesSynchronize(prefs: SCPreferences)

/*!
	@function SCPreferencesPathCreateUniqueChild
	@discussion Creates a new path component within the dictionary
		hierarchy.
	@param prefs The preferences session.
	@param prefix A string that represents the parent path.
	@result Returns a string representing the new (unique) child path; NULL
		if the specified path does not exist.
 */
@available(OSX 10.1, *)
func SCPreferencesPathCreateUniqueChild(prefs: SCPreferences, _ prefix: CFString) -> CFString?

/*!
	@function SCPreferencesPathGetValue
	@discussion Returns the dictionary associated with the specified
		path.
	@param prefs The preferences session.
	@param path A string that represents the path to be returned.
	@result Returns the dictionary associated with the specified path; NULL
		if the path does not exist.
 */
@available(OSX 10.1, *)
func SCPreferencesPathGetValue(prefs: SCPreferences, _ path: CFString) -> CFDictionary?

/*!
	@function SCPreferencesPathGetLink
	@discussion Returns the link (if one exists) associated with the
		specified path.
	@param prefs The preferences session.
	@param path A string that represents the path to be returned.
	@result Returns the dictionary associated with the specified path; NULL
		if the path is not a link or does not exist.
 */
@available(OSX 10.1, *)
func SCPreferencesPathGetLink(prefs: SCPreferences, _ path: CFString) -> CFString?

/*!
	@function SCPreferencesPathSetValue
	@discussion Associates a dictionary with the specified path.
	@param prefs The preferences session.
	@param path A string that represents the path to be updated.
	@param value A dictionary that represents the data to be
		stored at the specified path.
	@result Returns TRUE if successful; FALSE otherwise.
 */
@available(OSX 10.1, *)
func SCPreferencesPathSetValue(prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool

/*!
	@function SCPreferencesPathSetLink
	@discussion Associates a link to a second dictionary at the
		specified path.
	@param prefs The preferences session.
	@param path A string that represents the path to be updated.
	@param link A string that represents the link to be stored
		at the specified path.
	@result Returns TRUE if successful; FALSE otherwise.
 */
@available(OSX 10.1, *)
func SCPreferencesPathSetLink(prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool

/*!
	@function SCPreferencesPathRemoveValue
	@discussion Removes the data associated with the specified path.
	@param prefs The preferences session.
	@param path A string that represents the path to be returned.
	@result Returns TRUE if successful; FALSE otherwise.
 */
@available(OSX 10.1, *)
func SCPreferencesPathRemoveValue(prefs: SCPreferences, _ path: CFString) -> Bool

/*!
	@function SCPreferencesSetComputerName
	@discussion Updates the computer name preference.

		Note: To commit these changes to permanent storage you must
		call the SCPreferencesCommitChanges function.
		In addition, you must call the SCPreferencesApplyChanges
		function for the new name to become active.
	@param prefs The preferences session.
	@param name The computer name to be set.
	@param nameEncoding The encoding associated with the computer name.
	@result Returns TRUE if successful; FALSE otherwise.
 */
@available(OSX 10.1, *)
func SCPreferencesSetComputerName(prefs: SCPreferences, _ name: CFString, _ nameEncoding: CFStringEncoding) -> Bool

/*!
	@function SCPreferencesSetLocalHostName
	@discussion Updates the local host name.

		Note: To commit these changes to permanent storage you must
		call the SCPreferencesCommitChanges function.
		In addition, you must call the SCPreferencesApplyChanges
		function for the new name to become active.
	@param prefs The preferences session.
	@param name The local host name to be set.

	Note: this string must conform to the naming conventions of a DNS host
		name as specified in RFC 1034 (section 3.5).
	@result Returns TRUE if successful; FALSE otherwise.
 */
@available(OSX 10.2, *)
func SCPreferencesSetLocalHostName(prefs: SCPreferences, _ name: CFString) -> Bool

/*!
  @const kSCResvLink
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCResvLink: CFString

/*!
  @const kSCResvInactive
 */
@available(OSX 10.1, *)
let kSCResvInactive: CFString

/*!
  @const kSCPropInterfaceName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropInterfaceName: CFString

/*!
  @const kSCPropMACAddress
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropMACAddress: CFString

/*!
  @const kSCPropUserDefinedName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropUserDefinedName: CFString

/*!
  @const kSCPropVersion
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropVersion: CFString

/*!
  @const kSCPrefCurrentSet
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPrefCurrentSet: CFString

/*!
  @const kSCPrefNetworkServices
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCPrefNetworkServices: CFString

/*!
  @const kSCPrefSets
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCPrefSets: CFString

/*!
  @const kSCPrefSystem
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCPrefSystem: CFString

/*!
  @const kSCCompNetwork
 */
@available(OSX 10.1, *)
let kSCCompNetwork: CFString

/*!
  @const kSCCompService
 */
@available(OSX 10.1, *)
let kSCCompService: CFString

/*!
  @const kSCCompGlobal
 */
@available(OSX 10.1, *)
let kSCCompGlobal: CFString

/*!
  @const kSCCompHostNames
 */
@available(OSX 10.2, *)
let kSCCompHostNames: CFString

/*!
  @const kSCCompInterface
 */
@available(OSX 10.1, *)
let kSCCompInterface: CFString

/*!
  @const kSCCompSystem
 */
@available(OSX 10.1, *)
let kSCCompSystem: CFString

/*!
  @const kSCCompUsers
 */
@available(OSX 10.1, *)
let kSCCompUsers: CFString

/*!
  @const kSCCompAnyRegex
 */
@available(OSX 10.1, *)
let kSCCompAnyRegex: CFString

/*!
  @const kSCEntNetAirPort
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetAirPort: CFString

/*!
  @const kSCEntNetDHCP
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetDHCP: CFString

/*!
  @const kSCEntNetDNS
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetDNS: CFString

/*!
  @const kSCEntNetEthernet
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetEthernet: CFString

/*!
  @const kSCEntNetFireWire
  @discussion Value is a CFDictionary
 */
@available(OSX 10.3, *)
let kSCEntNetFireWire: CFString

/*!
  @const kSCEntNetInterface
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetInterface: CFString

/*!
  @const kSCEntNetIPSec
  @discussion Value is a CFDictionary
 */
@available(OSX 10.5, *)
let kSCEntNetIPSec: CFString

/*!
  @const kSCEntNetIPv4
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetIPv4: CFString

/*!
  @const kSCEntNetIPv6
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetIPv6: CFString

/*!
  @const kSCEntNetL2TP
  @discussion Value is a CFDictionary
 */
@available(OSX 10.3, *)
let kSCEntNetL2TP: CFString

/*!
  @const kSCEntNetLink
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetLink: CFString

/*!
  @const kSCEntNetModem
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetModem: CFString

/*!
  @const kSCEntNetPPP
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetPPP: CFString

/*!
  @const kSCEntNetPPPoE
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetPPPoE: CFString

/*!
  @const kSCEntNetPPPSerial
  @discussion Value is a CFDictionary
 */
@available(OSX 10.3, *)
let kSCEntNetPPPSerial: CFString

/*!
  @const kSCEntNetPPTP
  @discussion Value is a CFDictionary
 */
@available(OSX 10.3, *)
let kSCEntNetPPTP: CFString

/*!
  @const kSCEntNetProxies
  @discussion Value is a CFDictionary
 */
@available(OSX 10.1, *)
let kSCEntNetProxies: CFString

/*!
  @const kSCEntNetSMB
  @discussion Value is a CFDictionary
 */
@available(OSX 10.5, *)
let kSCEntNetSMB: CFString

/*!
  @const kSCEntNet6to4
  @discussion Value is a CFDictionary
 */
@available(OSX 10.3, *)
let kSCEntNet6to4: CFString

/*!
  @const kSCPropNetOverridePrimary
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetOverridePrimary: CFString

/*!
  @const kSCPropNetServiceOrder
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetServiceOrder: CFString

/*!
  @const kSCPropNetPPPOverridePrimary
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPOverridePrimary: CFString

/*!
  @const kSCPropNetInterfaces
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.2, *)
let kSCPropNetInterfaces: CFString

/*!
  @const kSCPropNetLocalHostName
  @discussion Value is a CFString
 */
@available(OSX 10.2, *)
let kSCPropNetLocalHostName: CFString

/*!
  @const kSCPropNetDNSDomainName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetDNSDomainName: CFString

/*!
  @const kSCPropNetDNSOptions
  @discussion Value is a CFString
 */
@available(OSX 10.4, *)
let kSCPropNetDNSOptions: CFString

/*!
  @const kSCPropNetDNSSearchDomains
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetDNSSearchDomains: CFString

/*!
  @const kSCPropNetDNSSearchOrder
  @discussion Value is a CFNumber
 */
@available(OSX 10.4, *)
let kSCPropNetDNSSearchOrder: CFString

/*!
  @const kSCPropNetDNSServerAddresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetDNSServerAddresses: CFString

/*!
  @const kSCPropNetDNSServerPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.4, *)
let kSCPropNetDNSServerPort: CFString

/*!
  @const kSCPropNetDNSServerTimeout
  @discussion Value is a CFNumber
 */
@available(OSX 10.4, *)
let kSCPropNetDNSServerTimeout: CFString

/*!
  @const kSCPropNetDNSSortList
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetDNSSortList: CFString

/*!
  @const kSCPropNetDNSSupplementalMatchDomains
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.4, *)
let kSCPropNetDNSSupplementalMatchDomains: CFString

/*!
  @const kSCPropNetDNSSupplementalMatchOrders
  @discussion Value is a CFArray[CFNumber]
 */
@available(OSX 10.4, *)
let kSCPropNetDNSSupplementalMatchOrders: CFString

/*!
  @const kSCPropNetEthernetMediaSubType
  @discussion Value is a CFString
 */
@available(OSX 10.2, *)
let kSCPropNetEthernetMediaSubType: CFString

/*!
  @const kSCPropNetEthernetMediaOptions
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.2, *)
let kSCPropNetEthernetMediaOptions: CFString

/*!
  @const kSCPropNetEthernetMTU
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetEthernetMTU: CFString

/*!
  @const kSCPropNetInterfaceDeviceName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetInterfaceDeviceName: CFString

/*!
  @const kSCPropNetInterfaceHardware
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetInterfaceHardware: CFString

/*!
  @const kSCPropNetInterfaceType
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetInterfaceType: CFString

/*!
  @const kSCPropNetInterfaceSubType
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetInterfaceSubType: CFString

/*!
  @const kSCPropNetInterfaceSupportsModemOnHold
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetInterfaceSupportsModemOnHold: CFString

/*!
  @const kSCValNetInterfaceTypeEthernet
 */
@available(OSX 10.1, *)
let kSCValNetInterfaceTypeEthernet: CFString

/*!
  @const kSCValNetInterfaceTypeFireWire
 */
@available(OSX 10.3, *)
let kSCValNetInterfaceTypeFireWire: CFString

/*!
  @const kSCValNetInterfaceTypePPP
 */
@available(OSX 10.1, *)
let kSCValNetInterfaceTypePPP: CFString

/*!
  @const kSCValNetInterfaceType6to4
 */
@available(OSX 10.3, *)
let kSCValNetInterfaceType6to4: CFString

/*!
  @const kSCValNetInterfaceTypeIPSec
 */
@available(OSX 10.6, *)
let kSCValNetInterfaceTypeIPSec: CFString

/*!
  @const kSCValNetInterfaceSubTypePPPoE
 */
@available(OSX 10.1, *)
let kSCValNetInterfaceSubTypePPPoE: CFString

/*!
  @const kSCValNetInterfaceSubTypePPPSerial
 */
@available(OSX 10.1, *)
let kSCValNetInterfaceSubTypePPPSerial: CFString

/*!
  @const kSCValNetInterfaceSubTypePPTP
 */
@available(OSX 10.2, *)
let kSCValNetInterfaceSubTypePPTP: CFString

/*!
  @const kSCValNetInterfaceSubTypeL2TP
 */
@available(OSX 10.3, *)
let kSCValNetInterfaceSubTypeL2TP: CFString

/*!
  @const kSCPropNetIPSecAuthenticationMethod
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecAuthenticationMethod: CFString

/*!
  @const kSCPropNetIPSecLocalCertificate
  @discussion Value is a CFData
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecLocalCertificate: CFString

/*!
  @const kSCPropNetIPSecLocalIdentifier
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecLocalIdentifier: CFString

/*!
  @const kSCPropNetIPSecLocalIdentifierType
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecLocalIdentifierType: CFString

/*!
  @const kSCPropNetIPSecSharedSecret
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecSharedSecret: CFString

/*!
  @const kSCPropNetIPSecSharedSecretEncryption
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetIPSecSharedSecretEncryption: CFString

/*!
  @const kSCPropNetIPSecConnectTime
  @discussion Value is a CFNumber
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecConnectTime: CFString

/*!
  @const kSCPropNetIPSecRemoteAddress
  @discussion Value is a CFString
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecRemoteAddress: CFString

/*!
  @const kSCPropNetIPSecStatus
  @discussion Value is a CFNumber
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecStatus: CFString

/*!
  @const kSCPropNetIPSecXAuthEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecXAuthEnabled: CFString

/*!
  @const kSCPropNetIPSecXAuthName
  @discussion Value is a CFString
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecXAuthName: CFString

/*!
  @const kSCPropNetIPSecXAuthPassword
  @discussion Value is a CFString
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecXAuthPassword: CFString

/*!
  @const kSCPropNetIPSecXAuthPasswordEncryption
  @discussion Value is a CFString
 */
@available(OSX 10.6, *)
let kSCPropNetIPSecXAuthPasswordEncryption: CFString

/*!
  @const kSCValNetIPSecAuthenticationMethodSharedSecret
 */
@available(OSX 10.5, *)
let kSCValNetIPSecAuthenticationMethodSharedSecret: CFString

/*!
  @const kSCValNetIPSecAuthenticationMethodCertificate
 */
@available(OSX 10.5, *)
let kSCValNetIPSecAuthenticationMethodCertificate: CFString

/*!
  @const kSCValNetIPSecAuthenticationMethodHybrid
 */
@available(OSX 10.5, *)
let kSCValNetIPSecAuthenticationMethodHybrid: CFString

/*!
  @const kSCValNetIPSecLocalIdentifierTypeKeyID
 */
@available(OSX 10.5, *)
let kSCValNetIPSecLocalIdentifierTypeKeyID: CFString

/*!
  @const kSCValNetIPSecSharedSecretEncryptionKeychain
 */
@available(OSX 10.5, *)
let kSCValNetIPSecSharedSecretEncryptionKeychain: CFString

/*!
  @const kSCValNetIPSecXAuthPasswordEncryptionKeychain
 */
@available(OSX 10.6, *)
let kSCValNetIPSecXAuthPasswordEncryptionKeychain: CFString

/*!
  @const kSCValNetIPSecXAuthPasswordEncryptionPrompt
 */
@available(OSX 10.6, *)
let kSCValNetIPSecXAuthPasswordEncryptionPrompt: CFString

/*!
  @const kSCPropNetIPv4Addresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4Addresses: CFString

/*!
  @const kSCPropNetIPv4ConfigMethod
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4ConfigMethod: CFString

/*!
  @const kSCPropNetIPv4DHCPClientID
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4DHCPClientID: CFString

/*!
  @const kSCPropNetIPv4Router
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4Router: CFString

/*!
  @const kSCPropNetIPv4SubnetMasks
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4SubnetMasks: CFString

/*!
  @const kSCPropNetIPv4DestAddresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4DestAddresses: CFString

/*!
  @const kSCPropNetIPv4BroadcastAddresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetIPv4BroadcastAddresses: CFString

/*!
  @const kSCValNetIPv4ConfigMethodAutomatic
 */
@available(OSX 10.6, *)
let kSCValNetIPv4ConfigMethodAutomatic: CFString

/*!
  @const kSCValNetIPv4ConfigMethodBOOTP
 */
@available(OSX 10.1, *)
let kSCValNetIPv4ConfigMethodBOOTP: CFString

/*!
  @const kSCValNetIPv4ConfigMethodDHCP
 */
@available(OSX 10.1, *)
let kSCValNetIPv4ConfigMethodDHCP: CFString

/*!
  @const kSCValNetIPv4ConfigMethodINFORM
 */
@available(OSX 10.1, *)
let kSCValNetIPv4ConfigMethodINFORM: CFString

/*!
  @const kSCValNetIPv4ConfigMethodLinkLocal
 */
@available(OSX 10.2, *)
let kSCValNetIPv4ConfigMethodLinkLocal: CFString

/*!
  @const kSCValNetIPv4ConfigMethodManual
 */
@available(OSX 10.1, *)
let kSCValNetIPv4ConfigMethodManual: CFString

/*!
  @const kSCValNetIPv4ConfigMethodPPP
 */
@available(OSX 10.1, *)
let kSCValNetIPv4ConfigMethodPPP: CFString

/*!
  @const kSCPropNetIPv6Addresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetIPv6Addresses: CFString

/*!
  @const kSCPropNetIPv6ConfigMethod
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetIPv6ConfigMethod: CFString

/*!
  @const kSCPropNetIPv6DestAddresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.3, *)
let kSCPropNetIPv6DestAddresses: CFString

/*!
  @const kSCPropNetIPv6Flags
  @discussion Value is a CFNumber
 */
@available(OSX 10.3, *)
let kSCPropNetIPv6Flags: CFString

/*!
  @const kSCPropNetIPv6PrefixLength
  @discussion Value is a CFArray[CFNumber]
 */
@available(OSX 10.3, *)
let kSCPropNetIPv6PrefixLength: CFString

/*!
  @const kSCPropNetIPv6Router
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNetIPv6Router: CFString

/*!
  @const kSCValNetIPv6ConfigMethodAutomatic
 */
@available(OSX 10.3, *)
let kSCValNetIPv6ConfigMethodAutomatic: CFString

/*!
  @const kSCValNetIPv6ConfigMethodLinkLocal
 */
@available(OSX 10.7, *)
let kSCValNetIPv6ConfigMethodLinkLocal: CFString

/*!
  @const kSCValNetIPv6ConfigMethodManual
 */
@available(OSX 10.3, *)
let kSCValNetIPv6ConfigMethodManual: CFString

/*!
  @const kSCValNetIPv6ConfigMethodRouterAdvertisement
 */
@available(OSX 10.3, *)
let kSCValNetIPv6ConfigMethodRouterAdvertisement: CFString

/*!
  @const kSCValNetIPv6ConfigMethod6to4
 */
@available(OSX 10.3, *)
let kSCValNetIPv6ConfigMethod6to4: CFString

/*!
  @const kSCPropNet6to4Relay
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNet6to4Relay: CFString

/*!
  @const kSCPropNetLinkActive
  @discussion Value is a CFBoolean
 */
@available(OSX 10.1, *)
let kSCPropNetLinkActive: CFString

/*!
  @const kSCPropNetLinkDetaching
  @discussion Value is a CFBoolean
 */
@available(OSX 10.2, *)
let kSCPropNetLinkDetaching: CFString

/*!
  @const kSCPropNetModemAccessPointName
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetModemAccessPointName: CFString

/*!
  @const kSCPropNetModemConnectionPersonality
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetModemConnectionPersonality: CFString

/*!
  @const kSCPropNetModemConnectionScript
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetModemConnectionScript: CFString

/*!
  @const kSCPropNetModemConnectSpeed
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetModemConnectSpeed: CFString

/*!
  @const kSCPropNetModemDataCompression
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetModemDataCompression: CFString

/*!
  @const kSCPropNetModemDeviceContextID
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetModemDeviceContextID: CFString

/*!
  @const kSCPropNetModemDeviceModel
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetModemDeviceModel: CFString

/*!
  @const kSCPropNetModemDeviceVendor
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetModemDeviceVendor: CFString

/*!
  @const kSCPropNetModemDialMode
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetModemDialMode: CFString

/*!
  @const kSCPropNetModemErrorCorrection
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetModemErrorCorrection: CFString

/*!
  @const kSCPropNetModemHoldCallWaitingAudibleAlert
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetModemHoldCallWaitingAudibleAlert: CFString

/*!
  @const kSCPropNetModemHoldDisconnectOnAnswer
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetModemHoldDisconnectOnAnswer: CFString

/*!
  @const kSCPropNetModemHoldEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetModemHoldEnabled: CFString

/*!
  @const kSCPropNetModemHoldReminder
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetModemHoldReminder: CFString

/*!
  @const kSCPropNetModemHoldReminderTime
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetModemHoldReminderTime: CFString

/*!
  @const kSCPropNetModemNote
  @discussion Value is a CFString
 */
@available(OSX 10.2, *)
let kSCPropNetModemNote: CFString

/*!
  @const kSCPropNetModemPulseDial
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetModemPulseDial: CFString

/*!
  @const kSCPropNetModemSpeaker
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetModemSpeaker: CFString

/*!
  @const kSCPropNetModemSpeed
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetModemSpeed: CFString

/*!
  @const kSCValNetModemDialModeIgnoreDialTone
 */
@available(OSX 10.1, *)
let kSCValNetModemDialModeIgnoreDialTone: CFString

/*!
  @const kSCValNetModemDialModeManual
 */
@available(OSX 10.1, *)
let kSCValNetModemDialModeManual: CFString

/*!
  @const kSCValNetModemDialModeWaitForDialTone
 */
@available(OSX 10.1, *)
let kSCValNetModemDialModeWaitForDialTone: CFString

/*!
  @const kSCPropNetPPPACSPEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.3, *)
let kSCPropNetPPPACSPEnabled: CFString

/*!
  @const kSCPropNetPPPConnectTime
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetPPPConnectTime: CFString

/*!
  @const kSCPropNetPPPDeviceLastCause
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetPPPDeviceLastCause: CFString

/*!
  @const kSCPropNetPPPDialOnDemand
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPDialOnDemand: CFString

/*!
  @const kSCPropNetPPPDisconnectOnFastUserSwitch
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetPPPDisconnectOnFastUserSwitch: CFString

/*!
  @const kSCPropNetPPPDisconnectOnIdle
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPDisconnectOnIdle: CFString

/*!
  @const kSCPropNetPPPDisconnectOnIdleTimer
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPDisconnectOnIdleTimer: CFString

/*!
  @const kSCPropNetPPPDisconnectOnLogout
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPDisconnectOnLogout: CFString

/*!
  @const kSCPropNetPPPDisconnectOnSleep
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetPPPDisconnectOnSleep: CFString

/*!
  @const kSCPropNetPPPDisconnectTime
  @discussion Value is a CFNumber
 */
@available(OSX 10.3, *)
let kSCPropNetPPPDisconnectTime: CFString

/*!
  @const kSCPropNetPPPIdleReminderTimer
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPIdleReminderTimer: CFString

/*!
  @const kSCPropNetPPPIdleReminder
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPIdleReminder: CFString

/*!
  @const kSCPropNetPPPLastCause
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetPPPLastCause: CFString

/*!
  @const kSCPropNetPPPLogfile
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLogfile: CFString

/*!
  @const kSCPropNetPPPPlugins
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.2, *)
let kSCPropNetPPPPlugins: CFString

/*!
  @const kSCPropNetPPPRetryConnectTime
  @discussion Value is a CFNumber
 */
@available(OSX 10.3, *)
let kSCPropNetPPPRetryConnectTime: CFString

/*!
  @const kSCPropNetPPPSessionTimer
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPSessionTimer: CFString

/*!
  @const kSCPropNetPPPStatus
  @discussion Value is a CFNumber
 */
@available(OSX 10.2, *)
let kSCPropNetPPPStatus: CFString

/*!
  @const kSCPropNetPPPUseSessionTimer
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetPPPUseSessionTimer: CFString

/*!
  @const kSCPropNetPPPVerboseLogging
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPVerboseLogging: CFString

/*!
  @const kSCPropNetPPPAuthEAPPlugins
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.3, *)
let kSCPropNetPPPAuthEAPPlugins: CFString

/*!
  @const kSCPropNetPPPAuthName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPAuthName: CFString

/*!
  @const kSCPropNetPPPAuthPassword
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPAuthPassword: CFString

/*!
  @const kSCPropNetPPPAuthPasswordEncryption
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPAuthPasswordEncryption: CFString

/*!
  @const kSCPropNetPPPAuthPrompt
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNetPPPAuthPrompt: CFString

/*!
  @const kSCPropNetPPPAuthProtocol
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetPPPAuthProtocol: CFString

/*!
  @const kSCValNetPPPAuthPasswordEncryptionKeychain
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthPasswordEncryptionKeychain: CFString

/*!
  @const kSCValNetPPPAuthPasswordEncryptionToken
 */
@available(OSX 10.5, *)
let kSCValNetPPPAuthPasswordEncryptionToken: CFString

/*!
  @const kSCValNetPPPAuthPromptBefore
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthPromptBefore: CFString

/*!
  @const kSCValNetPPPAuthPromptAfter
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthPromptAfter: CFString

/*!
  @const kSCValNetPPPAuthProtocolCHAP
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCValNetPPPAuthProtocolCHAP: CFString

/*!
  @const kSCValNetPPPAuthProtocolEAP
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthProtocolEAP: CFString

/*!
  @const kSCValNetPPPAuthProtocolMSCHAP1
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthProtocolMSCHAP1: CFString

/*!
  @const kSCValNetPPPAuthProtocolMSCHAP2
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCValNetPPPAuthProtocolMSCHAP2: CFString

/*!
  @const kSCValNetPPPAuthProtocolPAP
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCValNetPPPAuthProtocolPAP: CFString

/*!
  @const kSCPropNetPPPCommAlternateRemoteAddress
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommAlternateRemoteAddress: CFString

/*!
  @const kSCPropNetPPPCommConnectDelay
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommConnectDelay: CFString

/*!
  @const kSCPropNetPPPCommDisplayTerminalWindow
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommDisplayTerminalWindow: CFString

/*!
  @const kSCPropNetPPPCommRedialCount
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommRedialCount: CFString

/*!
  @const kSCPropNetPPPCommRedialEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommRedialEnabled: CFString

/*!
  @const kSCPropNetPPPCommRedialInterval
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommRedialInterval: CFString

/*!
  @const kSCPropNetPPPCommRemoteAddress
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommRemoteAddress: CFString

/*!
  @const kSCPropNetPPPCommTerminalScript
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetPPPCommTerminalScript: CFString

/*!
  @const kSCPropNetPPPCommUseTerminalScript
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetPPPCommUseTerminalScript: CFString

/*!
  @const kSCPropNetPPPCCPEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.2, *)
let kSCPropNetPPPCCPEnabled: CFString

/*!
  @const kSCPropNetPPPCCPMPPE40Enabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetPPPCCPMPPE40Enabled: CFString

/*!
  @const kSCPropNetPPPCCPMPPE128Enabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetPPPCCPMPPE128Enabled: CFString

/*!
  @const kSCPropNetPPPIPCPCompressionVJ
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPIPCPCompressionVJ: CFString

/*!
  @const kSCPropNetPPPIPCPUsePeerDNS
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetPPPIPCPUsePeerDNS: CFString

/*!
  @const kSCPropNetPPPLCPEchoEnabled
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPEchoEnabled: CFString

/*!
  @const kSCPropNetPPPLCPEchoFailure
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPEchoFailure: CFString

/*!
  @const kSCPropNetPPPLCPEchoInterval
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPEchoInterval: CFString

/*!
  @const kSCPropNetPPPLCPCompressionACField
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPCompressionACField: CFString

/*!
  @const kSCPropNetPPPLCPCompressionPField
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPCompressionPField: CFString

/*!
  @const kSCPropNetPPPLCPMRU
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPMRU: CFString

/*!
  @const kSCPropNetPPPLCPMTU
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPMTU: CFString

/*!
  @const kSCPropNetPPPLCPReceiveACCM
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPReceiveACCM: CFString

/*!
  @const kSCPropNetPPPLCPTransmitACCM
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetPPPLCPTransmitACCM: CFString

/*!
  @const kSCPropNetL2TPIPSecSharedSecret
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNetL2TPIPSecSharedSecret: CFString

/*!
  @const kSCPropNetL2TPIPSecSharedSecretEncryption
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNetL2TPIPSecSharedSecretEncryption: CFString

/*!
  @const kSCPropNetL2TPTransport
  @discussion Value is a CFString
 */
@available(OSX 10.3, *)
let kSCPropNetL2TPTransport: CFString

/*!
  @const kSCValNetL2TPIPSecSharedSecretEncryptionKeychain
 */
@available(OSX 10.3, *)
let kSCValNetL2TPIPSecSharedSecretEncryptionKeychain: CFString

/*!
  @const kSCValNetL2TPTransportIP
 */
@available(OSX 10.3, *)
let kSCValNetL2TPTransportIP: CFString

/*!
  @const kSCValNetL2TPTransportIPSec
 */
@available(OSX 10.3, *)
let kSCValNetL2TPTransportIPSec: CFString

/*!
  @const kSCPropNetProxiesExceptionsList
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesExceptionsList: CFString

/*!
  @const kSCPropNetProxiesExcludeSimpleHostnames
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetProxiesExcludeSimpleHostnames: CFString

/*!
  @const kSCPropNetProxiesFTPEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesFTPEnable: CFString

/*!
  @const kSCPropNetProxiesFTPPassive
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesFTPPassive: CFString

/*!
  @const kSCPropNetProxiesFTPPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesFTPPort: CFString

/*!
  @const kSCPropNetProxiesFTPProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesFTPProxy: CFString

/*!
  @const kSCPropNetProxiesGopherEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesGopherEnable: CFString

/*!
  @const kSCPropNetProxiesGopherPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesGopherPort: CFString

/*!
  @const kSCPropNetProxiesGopherProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesGopherProxy: CFString

/*!
  @const kSCPropNetProxiesHTTPEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPEnable: CFString

/*!
  @const kSCPropNetProxiesHTTPPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPPort: CFString

/*!
  @const kSCPropNetProxiesHTTPProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPProxy: CFString

/*!
  @const kSCPropNetProxiesHTTPSEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPSEnable: CFString

/*!
  @const kSCPropNetProxiesHTTPSPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPSPort: CFString

/*!
  @const kSCPropNetProxiesHTTPSProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesHTTPSProxy: CFString

/*!
  @const kSCPropNetProxiesRTSPEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesRTSPEnable: CFString

/*!
  @const kSCPropNetProxiesRTSPPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesRTSPPort: CFString

/*!
  @const kSCPropNetProxiesRTSPProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesRTSPProxy: CFString

/*!
  @const kSCPropNetProxiesSOCKSEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesSOCKSEnable: CFString

/*!
  @const kSCPropNetProxiesSOCKSPort
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesSOCKSPort: CFString

/*!
  @const kSCPropNetProxiesSOCKSProxy
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropNetProxiesSOCKSProxy: CFString

/*!
  @const kSCPropNetProxiesProxyAutoConfigEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetProxiesProxyAutoConfigEnable: CFString

/*!
  @const kSCPropNetProxiesProxyAutoConfigJavaScript
  @discussion Value is a CFString
 */
@available(OSX 10.7, *)
let kSCPropNetProxiesProxyAutoConfigJavaScript: CFString

/*!
  @const kSCPropNetProxiesProxyAutoConfigURLString
  @discussion Value is a CFString
 */
@available(OSX 10.4, *)
let kSCPropNetProxiesProxyAutoConfigURLString: CFString

/*!
  @const kSCPropNetProxiesProxyAutoDiscoveryEnable
  @discussion Value is a CFNumber (0 or 1)
 */
@available(OSX 10.4, *)
let kSCPropNetProxiesProxyAutoDiscoveryEnable: CFString

/*!
  @const kSCPropNetSMBNetBIOSName
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetSMBNetBIOSName: CFString

/*!
  @const kSCPropNetSMBNetBIOSNodeType
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetSMBNetBIOSNodeType: CFString

/*!
  @const kSCPropNetSMBWINSAddresses
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.5, *)
let kSCPropNetSMBWINSAddresses: CFString

/*!
  @const kSCPropNetSMBWorkgroup
  @discussion Value is a CFString
 */
@available(OSX 10.5, *)
let kSCPropNetSMBWorkgroup: CFString

/*!
  @const kSCValNetSMBNetBIOSNodeTypeBroadcast
 */
@available(OSX 10.5, *)
let kSCValNetSMBNetBIOSNodeTypeBroadcast: CFString

/*!
  @const kSCValNetSMBNetBIOSNodeTypePeer
 */
@available(OSX 10.5, *)
let kSCValNetSMBNetBIOSNodeTypePeer: CFString

/*!
  @const kSCValNetSMBNetBIOSNodeTypeMixed
 */
@available(OSX 10.5, *)
let kSCValNetSMBNetBIOSNodeTypeMixed: CFString

/*!
  @const kSCValNetSMBNetBIOSNodeTypeHybrid
 */
@available(OSX 10.5, *)
let kSCValNetSMBNetBIOSNodeTypeHybrid: CFString

/*!
  @const kSCEntUsersConsoleUser
 */
@available(OSX 10.1, *)
let kSCEntUsersConsoleUser: CFString

/*!
  @const kSCPropSystemComputerName
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCPropSystemComputerName: CFString

/*!
  @const kSCPropSystemComputerNameEncoding
  @discussion Value is a CFNumber
 */
@available(OSX 10.1, *)
let kSCPropSystemComputerNameEncoding: CFString

/*!
  @const kSCDynamicStoreDomainFile
 */
@available(OSX 10.1, *)
let kSCDynamicStoreDomainFile: CFString

/*!
  @const kSCDynamicStoreDomainPlugin
 */
@available(OSX 10.1, *)
let kSCDynamicStoreDomainPlugin: CFString

/*!
  @const kSCDynamicStoreDomainSetup
 */
@available(OSX 10.1, *)
let kSCDynamicStoreDomainSetup: CFString

/*!
  @const kSCDynamicStoreDomainState
 */
@available(OSX 10.1, *)
let kSCDynamicStoreDomainState: CFString

/*!
  @const kSCDynamicStoreDomainPrefs
 */
@available(OSX 10.1, *)
let kSCDynamicStoreDomainPrefs: CFString

/*!
  @const kSCDynamicStorePropSetupCurrentSet
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropSetupCurrentSet: CFString

/*!
  @const kSCDynamicStorePropSetupLastUpdated
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropSetupLastUpdated: CFString

/*!
  @const kSCDynamicStorePropNetInterfaces
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropNetInterfaces: CFString

/*!
  @const kSCDynamicStorePropNetPrimaryInterface
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropNetPrimaryInterface: CFString

/*!
  @const kSCDynamicStorePropNetPrimaryService
  @discussion Value is a CFString
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropNetPrimaryService: CFString

/*!
  @const kSCDynamicStorePropNetServiceIDs
  @discussion Value is a CFArray[CFString]
 */
@available(OSX 10.1, *)
let kSCDynamicStorePropNetServiceIDs: CFString
