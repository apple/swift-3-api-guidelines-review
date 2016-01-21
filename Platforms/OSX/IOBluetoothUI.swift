
class IOBluetoothDeviceSelectorController {
}
typealias IOBluetoothDeviceSelectorControllerRef = IOBluetoothDeviceSelectorController
class IOBluetoothPairingController {
}
typealias IOBluetoothPairingControllerRef = IOBluetoothPairingController
typealias IOBluetoothServiceBrowserControllerRef = IOBluetoothServiceBrowserController
class IOBluetoothServiceBrowserController {
}

/*!
  @enum IOBluetoothServiceBrowserControllerOptions
  @discussion Option values to customize the behavior of an IOBluetoothServiceBrowserController object.
  @constant kIOBluetoothServiceBrowserControllerOptionsNone - no options set.
  @constant kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry - automatically start an inquiry when the panel is displayed.  This has been deprecated in 10.5
  @constant kIOBluetoothServiceBrowserControllerOptionsDisconnectWhenDone - disconnect from the device when UI operations are finished.
  
*/
typealias IOBluetoothServiceBrowserControllerOptions = UInt32
var kIOBluetoothServiceBrowserControllerOptionsNone: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry: Int { get }
var kIOBluetoothServiceBrowserControllerOptionsDisconnectWhenDone: Int { get }
var kIOBluetoothUISuccess: Int { get }
var kIOBluetoothUIUserCanceledErr: Int { get }
@available(OSX 10.7, *)
func IOBluetoothValidateHardwareWithDescription(cancelButtonTitle: CFString!, _ descriptionText: CFString!) -> IOReturn
func IOBluetoothGetPairingController() -> Unmanaged<IOBluetoothPairingController>!
func IOBluetoothGetDeviceSelectorController() -> Unmanaged<IOBluetoothDeviceSelectorController>!

/*!
 	@class IOBluetoothDeviceSelectorController
	@abstract A NSWindowController subclass to display a window to initiate pairing to other bluetooth devices.
	@discussion Implementation of a window controller to return a NSArray of selected bluetooth devices.  This
                    class will handle connecting to the Bluetooth Daemon for the purposes of searches, and displaying
                    the results.  This controller will return a NSArray of IOBluetoothDevice objects to the user.

*/
class IOBluetoothDeviceSelectorController : NSWindowController {

  /*!	@method	deviceSelector
  	@abstract	
  	@discussion	Method call to instantiate a new IOBluetoothDeviceSelectorController object.
  	@result
                          Success - a new instance of the device selector Controller
                          Failure	- nil
  */
  class func deviceSelector() -> IOBluetoothDeviceSelectorController!

  /*!
      @method		runModal
  	@abstract	Runs the device selector panel in a modal session to allow the user to select a Bluetooth device.
  	@discussion	The controller will use the panel attributes to filter what devices the user sees.  The allowed UUIDs
  				will be used to validate the selection the user makes.  Only when a selection has been validated (or
  				the panel cancelled), will this method return.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns kIOBluetoothUISuccess if a successful, validated device selection was made by the user.
  				Returns kIOBluetoothUIUserCanceledErr if the user cancelled the panel.  These return values are the
  				same as NSRunStoppedResponse and NSRunAbortedResponse respectively.  They are the standard values
  				used in a modal session.
  */
  func runModal() -> Int32

  /*!
      @method		beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:
  	@abstract	Runs the device selector panel as a sheet on the target window.
  	@discussion	This function works the same way as -[NSApplication beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:].
  				The didEndSelector has a similar prototype as in NSApplication except that the first argument is the 
  				IOBluetoothDeviceSelectorController object instead of the window: 
  				-(void)sheetDidEnd:(IOBluetoothDeviceSelectorController *)controller returnCode:(int)returnCode contextInfo:(void *)contextInfo.
  				The returnCode parameter will either be kIOBluetoothUISuccess or kIOBluetoothUIUserCancelledErr as described in
  				-runModal.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		sheetWindow		NSWindow to attach the device selector panel to as a sheet.
  	@param		modalDelegate	Delegate object that gets sent the didEndSelector when the sheet modal session is finished.
  	@param		didEndSelector	Selector sent to the modalDelegate when the sheet modal session is finished.
  	@param		contextInfo		User-definied value passed to the modalDelegate in the didEndSelector.
  	@result		Returns kIOReturnSuccess if the sheet modal session was started.
  */
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn

  /*!
      @method		getResults
  	@abstract	Returns the result of the user's selection.
  	@discussion	There will only be results if the panel has been run, the user has successfully made a selection and that 
  				selection has been validated.  If kIOBluetoothUISuccess was returned for the session, there should be valid 
  				results.  Currently only a single device is allowed to be selected, so the results array will only contain 
  				one object.  However in the future multiple selection will be supported.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns an NSArray of IOBluetoothDevice objects corresponding to the user's selection.  If the user cancelled
  				the panel, nil will be returned.
  */
  func getResults() -> [AnyObject]!

  /*!
      @method		setOptions:
  	@abstract	Sets the option bits that control the panel's behavior.
  	@discussion	The service browser controller options control the behavior of the panel.  Currently
  				kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry is the only supported option.
  				In the future more options will be added to control things like whether the connection to
  				the device is closed when the controller is finished or if multiple selection is allowed.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		options	Options to control the panel's behavior.
  */
  func setOptions(options: IOBluetoothServiceBrowserControllerOptions)

  /*!
      @method		getOptions
  	@abstract	Returns the option bits that control the panel's behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the option bits set by setOptions:
  */
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions

  /*!
      @method		setSearchAttributes:
  	@abstract	Sets the search attributes that control the panel's search/inquiry behavior.
  	@discussion	The device search attributes control the inquiry behavior of the panel.  They allow only devices
  				that match the specified attributes (i.e. class of device) to be displayed to the user.  Note that
  				this only covers attributes returned in an inquiry result and not actual SDP services on the device.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		searchAttributes Attributes to control the panel's inquiry behavior.
  */
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)

  /*!
      @method		getSearchAttributes
  	@abstract	Returns the search attributes that control the panel's search/inquiry behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the search attributes set by setSearchAttributes:
  */
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>

  /*!
      @method		addAllowedUUID:
  	@abstract	Adds a UUID to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUID UUID that a device may contain to be selected
  */
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)

  /*!
      @method		addAllowedUUIDArray:
  	@abstract	Adds an array of UUIDs to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUIDArray An NSArray of UUIDs that all must be present in a device for it to be selectable.
  */
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)

  /*!
      @method		clearAllowedUUIDs
  	@abstract	Resets the controller back to the default state where it will accept any device the user selects.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  */
  func clearAllowedUUIDs()

  /*!
      @method		setTitle:
  	@abstract	Sets the title of the panel when not run as a sheet.
  	@discussion	The panel title should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		windowTitle Title of the device selector panel.
  */
  func setTitle(windowTitle: String!)

  /*!
      @method		getTitle
  	@abstract	Returns the title of the device selector panel (i.e. what was set in -setTitle:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the title of the device selector panel.
  */
  func getTitle() -> String!

  /*!
   @method		setHeader:
   @abstract	Sets the header text that appears in the device selector panel.
   @discussion	The description text should be localized for best user experience.
   
   NOTE: This method is only available in Mac OS X 10.9 or later.
   @param		headerText String that appears in the description section of the device selector panel.
   */
  func setHeader(headerText: String!)

  /*!
   @method		getHeader
   @abstract	Returns the header text that appears in the device selector panel (i.e. what was set in -setHeader:).
   @discussion	NOTE: This method is only available in Mac OS X 10.9 or later.
   @result		Returns the header text of the device selector panel.
   */
  func getHeader() -> String!

  /*!
      @method		setDescriptionText:
  	@abstract	Sets the description text that appears in the device selector panel.
  	@discussion	The description text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		descriptionText String that appears in the description section of the device selector panel.
  */
  func setDescriptionText(descriptionText: String!)

  /*!
      @method		getDescriptionText
  	@abstract	Returns the description text that appears in the device selector panel (i.e. what was set in -setDescriptionText:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the description text of the device selector panel.
  */
  func getDescriptionText() -> String!

  /*!
      @method		setPrompt:
  	@abstract	Sets the title of the default/select button in the device selector panel.
  	@discussion	The prompt text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		prompt String that appears in the default/select button in the device selector panel.
  */
  func setPrompt(prompt: String!)

  /*!
      @method		getPrompt
  	@abstract	Returns the title of the default/select button in the device selector panel (i.e. what was set in -setPrompt:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the default button title of the device selector panel.
  */
  func getPrompt() -> String!

  /*!
   @method		setCancel:
   @abstract	Sets the title of the default/cancel button in the device selector panel.
   @discussion	The prompt text should be localized for best user experience.
   
   NOTE: This method is only available in Mac OS X 10.9 or later.
   @param		prompt String that appears in the default/cancel button in the device selector panel.
   */
  func setCancel(prompt: String!)

  /*!
   @method		getCancel
   @abstract	Returns the title of the default/cancel button in the device selector panel (i.e. what was set in -setPrompt:).
   @discussion	NOTE: This method is only available in Mac OS X 10.9 or later.
   @result		Returns the default cancel button title of the device selector panel.
   */
  func getCancel() -> String!
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}

/*!
	An NSWindowController subclass that supports the creation of an IOBluetoothObjectPushUIController object.
 */
class IOBluetoothObjectPushUIController : NSWindowController {

  /*!
  	@method		initObjectPushWithBluetoothDevice: withFiles: delegate:
  	@abstract	Creates and returns a new IOBluetoothObjectPush object
  	@discussion	The event delegate should implement a single delegate method:
   
  				- (void) objectPushComplete: (IOBluetoothObjectPushUIController*) inPusher
   
  				The method will be called when the transaction is complete and
  				should be used to release the push object by the delegate. If no delegate is set
  				the object will release itself when the transfer is finished.
  	@param		inDevice	The remote device to send the files to
  	@param		inFiles		An array of file paths to send
  	@param		inDelegate  A delegate object that implements the single method above.  If no delegate
  							is specified this object will release itself when the transaction is complete.
  	@result		An IOBluetoothObjectPushUIController object on success, nil on fail.
   */
  init!(objectPushWith inDevice: IOBluetoothDevice!, withFiles inFiles: [AnyObject]!, delegate inDelegate: AnyObject!)

  /*!
      @method		runModal
  	@abstract	Runs the transfer UI panel in a modal session
  	@discussion	Returns when the modal session has ended. This object will call back over the 
  				delegate method (above) when the transfer is complete.  Users should release 
  				the object then. If no delegate is set the object will release itself.
  	@result		The call will stall in this method until the modal session is complete.
  */
  func runModal()

  /*!
  	@method		runPanel
  	@abstract	Runs the transfer UI as a panel with no modal session
  	@discussion	Returns immediately.  The object will callback over the delegate method (above)
  				when the transfer is completed.  If no delegate is set the object will release itself.
  	@result		The method will return immediately.
  */
  func runPanel()

  /*!
      @method		beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:
  	@abstract	Runs the  transfer UI as a sheet on the target window.
  	@discussion	This function works the same way as -[NSApplication beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:].
  				The didEndSelector has a similar prototype as in NSApplication except that the first argument is the 
  				IOBluetoothDeviceSelectorController object instead of the window: 
   
  				-(void)sheetDidEnd:(IOBluetoothDeviceSelectorController *)controller returnCode:(int)returnCode contextInfo:(void *)contextInfo.
  				The returnCode parameter will either be kIOBluetoothUISuccess or kIOBluetoothUIUserCancelledErr as described in
  				-runModal.
  
  	@param		sheetWindow		NSWindow to attach the device selector panel to as a sheet.
  	@param		modalDelegate	Delegate object that gets sent the didEndSelector when the sheet modal session is finished.
  	@param		didEndSelector	Selector sent to the modalDelegate when the sheet modal session is finished.
  	@param		contextInfo		User-definied value passed to the modalDelegate in the didEndSelector.
  	@result		Returns kIOReturnSuccess if the sheet modal session was started.
  */
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn

  /*!
  	@method		stop
  	@abstract	Stops the transfer UI
  	@discussion	Returns immediately. The object will callback over the delegate method (above)
  				when the transfer is completed, or will release itself if no delegate is set.
  	@result		The method will return immediately.
  */
  func stop()

  /*!
      @method		setTitle:
  	@abstract	Sets the title of the panel when not run as a sheet.
  	@discussion	The panel title should be localized for best user experience.
  	@param		windowTitle Title of the device selector panel.
  */
  func setTitle(windowTitle: String!)

  /*!
      @method		getTitle
  	@abstract	Returns the title of the transfer panel (i.e. what was set in -setTitle:).
  	@discussion	
  	@result		Returns the title of the transfer panel.
  */
  func getTitle() -> String!

  /*!
  	@method		setIconImage:
  	@abstract	Manually sets the icon used in the panel.
  	@discussion	The panel icon should be set to the icon of the calling application.  If not set, the panel
  				will try to load up the correct icon for the target device, and will default to the icon of
  				the running application on fail.
  	@param		image Image to use as the icon.
  */
  func setIconImage(image: NSImage!)

  /*!
  	@method		getDevice:
  	@abstract	Gets the object representing the remote target device in the transfer.
  	@discussion	
  	@result		The remote device of the transfer.
  */
  func getDevice() -> IOBluetoothDevice!

  /*!
  	@method		isTransferInProgress:
  	@abstract	Gets state of the transfer
  	@discussion	
  	@result		The state of the transfer
  */
  func isTransferInProgress() -> Bool
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}

/*!
 	@class			IOBluetoothPairingController
	@abstract		A NSWindowController subclass to display a window to initiate pairing to other bluetooth devices.
	@discussion		Implementation of a window controller to handle pairing with a bluetooth device.  This
					class will handle connecting to the Bluetooth Daemon for the purposes of searches, and displaying the results.
					When necessary this class will display a sheet asking the user for a PIN code.  This window will not return
					anything to the caller if it is canceled or if pairing occurs.
*/
class IOBluetoothPairingController : NSWindowController {

  /*!
      @method		runModal
  	@abstract	Runs the pairing panel in a modal session to allow the user to select a Bluetooth device.
  	@discussion	The controller will use the panel attributes to filter what devices the user sees.  The allowed UUIDs
  				will be used to validate the selection the user makes.  Only when a selection has been validated (or
  				the panel cancelled) and the device paired, will this method return.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns kIOBluetoothUISuccess if a successful, validated device selection was made by the user and
  				that device successfully paired.
  				Returns kIOBluetoothUIUserCanceledErr if the user cancelled the panel.  These return values are the
  				same as NSRunStoppedResponse and NSRunAbortedResponse respectively.  They are the standard values
  				used in a modal session.
  */
  func runModal() -> Int32

  /*!
      @method		getResults
  	@abstract	Returns an NSArray of the devices that were paired.
  	@discussion	There will only be results if the panel has been run, the user has successfully made a selection, that 
  				selection has been validated and the selected device paired.  If kIOBluetoothUISuccess was returned for 
  				the session, there should be valid results.  Currently only a single device is allowed to be selected, 
  				so the results array will only contain one object.  However in the future multiple selection may be supported.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns an NSArray of IOBluetoothDevice objects of devices that were paired.  If the user cancelled
  				the panel, nil will be returned.
  */
  func getResults() -> [AnyObject]!

  /*!
      @method		setOptions:
  	@abstract	Sets the option bits that control the panel's behavior.
  	@discussion	The pairing controller options control the behavior of the panel.  Currently
  				kIOBluetoothServiceBrowserControllerOptionsAutoStartInquiry is the only supported option.
  				In the future more options will be added to control things like whether the connection to
  				the device is closed when the controller is finished or if multiple selection is allowed.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		options	Options to control the panel's behavior.
  */
  func setOptions(options: IOBluetoothServiceBrowserControllerOptions)

  /*!
      @method		getOptions
  	@abstract	Returns the option bits that control the panel's behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the option bits set by setOptions:
  */
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions

  /*!
      @method		setSearchAttributes:
  	@abstract	Sets the search attributes that control the panel's search/inquiry behavior.
  	@discussion	The device search attributes control the inquiry behavior of the panel.  They allow only devices
  				that match the specified attributes (i.e. class of device) to be displayed to the user.  Note that
  				this only covers attributes returned in an inquiry result and not actual SDP services on the device.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		searchAttributes Attributes to control the panel's inquiry behavior.
  */
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)

  /*!
      @method		getSearchAttributes
  	@abstract	Returns the search attributes that control the panel's search/inquiry behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the search attributes set by setSearchAttributes:
  */
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>

  /*!
      @method		addAllowedUUID:
  	@abstract	Adds a UUID to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUID UUID that a device may contain to be selected
  */
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)

  /*!
      @method		addAllowedUUIDArray:
  	@abstract	Adds an array of UUIDs to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUIDArray An NSArray of UUIDs that all must be present in a device for it to be selectable.
  */
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)

  /*!
      @method		clearAllowedUUIDs
  	@abstract	Resets the controller back to the default state where it will accept any device the user selects.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  */
  func clearAllowedUUIDs()

  /*!
      @method		setTitle:
  	@abstract	Sets the title of the panel when not run as a sheet.
  	@discussion	The panel title should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		windowTitle Title of the device selector panel.
  */
  func setTitle(windowTitle: String!)

  /*!
      @method		getTitle
  	@abstract	Returns the title of the device selector panel (i.e. what was set in -setTitle:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the title of the device selector panel.
  */
  func getTitle() -> String!

  /*!
      @method		setDescriptionText:
  	@abstract	Sets the description text that appears in the device selector panel.
  	@discussion	The description text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		descriptionText String that appears in the description section of the device selector panel.
  */
  func setDescriptionText(descriptionText: String!)

  /*!
      @method		getDescriptionText
  	@abstract	Returns the description text that appears in the device selector panel (i.e. what was set in -setDescriptionText:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the description text of the device selector panel.
  */
  func getDescriptionText() -> String!

  /*!
      @method		setPrompt:
  	@abstract	Sets the title of the default/select button in the device selector panel.
  	@discussion	The prompt text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		prompt String that appears in the default/select button in the device selector panel.
  */
  func setPrompt(prompt: String!)

  /*!
      @method		getPrompt
  	@abstract	Returns the title of the default/select button in the device selector panel (i.e. what was set in -setPrompt:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the default button title of the device selector panel.
  */
  func getPrompt() -> String!
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
struct BluetoothKeyboardReturnType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kBluetoothKeyboardANSIReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardISOReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardJISReturn: BluetoothKeyboardReturnType { get }
var kBluetoothKeyboardNoReturn: BluetoothKeyboardReturnType { get }
class IOBluetoothPasskeyDisplay : NSView {
  var usePasskeyNotificaitons: Bool
  var isIncomingRequest: Bool
  var passkey: String!
  var returnImage: NSImage!
  var returnHighlightImage: NSImage!
  @IBOutlet unowned(unsafe) var centeredView: @sil_unmanaged NSView!
  @IBOutlet unowned(unsafe) var backgroundImageConstraint: @sil_unmanaged NSLayoutConstraint!
  class func sharedDisplayView() -> IOBluetoothPasskeyDisplay!
  func setPasskey(inString: String!, forDevice device: IOBluetoothDevice!, usingSSP isSSP: Bool)
  func advancePasskeyIndicator()
  func retreatPasskeyIndicator()
  func resetPasskeyIndicator()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class IOBluetoothAccessibilityIgnoredTextFieldCell : NSTextFieldCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}
class IOBluetoothAccessibilityIgnoredImageCell : NSImageCell {
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: NSCoder)
}

/*!
 	@class IOBluetoothServiceBrowserController
	@abstract A NSWindowController subclass to display a window to search for and perform SDP queries on bluetooth
                    devices within range.
	@discussion This NSWindowController subclass will bring up a generic Bluetooth search and SDP browsing window
                    allowing the user to find devices within range, perform SDP queries on a particular device, and
                    select a SDP service to connect to.  The client application can provide NSArrays of valid service
                    UUIDs to allow, and an NSArray of valid device types to allow.  The device type filter is not
                    yet implemented.
*/
class IOBluetoothServiceBrowserController : NSWindowController {

  /*!
  	@method	serviceBrowserController:
  	@abstract	Allocator work Bluetooth Service Browser window controller.
  	@param		inOptions	Bit field for options to set in the newly allocated controller.  Currently no options are available.				
  	@result		a new instance of the IOBluetoothServiceBrowserController Controller, nil if unsuccessful.
  	@discussion	
  */
  /*not inherited*/ init!(_ inOptions: IOBluetoothServiceBrowserControllerOptions)

  /*!	@method	withServiceBrowserControllerRef:
  	@abstract	Method call to convert an IOBluetoothServiceBrowserControllerRef into an IOBluetoothServiceBrowserController *.
          @param	serviceBrowserControllerRef IOBluetoothServiceBrowserControllerRef for which an IOBluetoothServiceBrowserController * is desired.
  	@result		Returns the IOBluetoothServiceBrowserController * for the given IOBluetoothServiceBrowserControllerRef.
  */
  class func withServiceBrowserControllerRef(serviceBrowserControllerRef: IOBluetoothServiceBrowserController!) -> IOBluetoothServiceBrowserController!

  /*!	@method	getServiceBrowserControllerRef
  	@abstract	Returns an IOBluetoothServiceBrowserControllerRef representation of the target IOBluetoothServiceBrowserController object.
  	@result		Returns an IOBluetoothServiceBrowserControllerRef representation of the target IOBluetoothServiceBrowserController object.
  */
  func getRef() -> Unmanaged<IOBluetoothServiceBrowserController>!

  /*!
  	@method	setOptions:
  	@abstract	Modify the options for the window controller.	
  	@param		inOptions 	Bit field to set the options to.
  	@result		None.
  	@discussion	This method will set the options for the browser to new values.
  */
  func setOptions(inOptions: IOBluetoothServiceBrowserControllerOptions)

  /*!
      @method		runModal
  	@abstract	Runs the service browser panel in a modal session to allow the user to select a service on a Bluetooth device.
  	@discussion	The controller will use the panel attributes to filter what devices the user sees.  The allowed UUIDs
  				will be used to validate the selection the user makes.  The user will only be able to select services
  				that match the allowed UUIDs.  Only when a selection has been validated (or
  				the panel cancelled), will this method return.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns kIOBluetoothUISuccess if a successful, validated service selection was made by the user.
  				Returns kIOBluetoothUIUserCanceledErr if the user cancelled the panel.  These return values are the
  				same as NSRunStoppedResponse and NSRunAbortedResponse respectively.  They are the standard values
  				used in a modal session.
  */
  func runModal() -> Int32

  /*!
      @method		beginSheetModalForWindow:modalDelegate:didEndSelector:contextInfo:
  	@abstract	Runs the service browser panel as a sheet on the target window.
  	@discussion	This function works the same way as -[NSApplication beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:].
  				The didEndSelector has a similar prototype as in NSApplication except that the first argument is the 
  				IOBluetoothServiceBrowserController object instead of the window: 
  				-(void)sheetDidEnd:(IOBluetoothServiceBrowserController *)controller returnCode:(int)returnCode contextInfo:(void *)contextInfo.
  				The returnCode parameter will either be kIOBluetoothUISuccess or kIOBluetoothUIUserCancelledErr as described in
  				-runModal.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		sheetWindow		NSWindow to attach the service browser panel to as a sheet.
  	@param		modalDelegate	Delegate object that gets sent the didEndSelector when the sheet modal session is finished.
  	@param		didEndSelector	Selector sent to the modalDelegate when the sheet modal session is finished.
  	@param		contextInfo		User-definied value passed to the modalDelegate in the didEndSelector.
  	@result		Returns kIOReturnSuccess if the sheet modal session was started.
  */
  func beginSheetModalFor(sheetWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>) -> IOReturn

  /*!
      @method		getResults
  	@abstract	Returns the result of the user's selection.
  	@discussion	There will only be results if the panel has been run, the user has successfully made a selection and that 
  				selection has been validated.  If kIOBluetoothUISuccess was returned for the session, there should be valid 
  				results.  Currently only a single device is allowed to be selected, so the results array will only contain 
  				one object.  However in the future multiple selection will be supported.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns an NSArray of IOBluetoothSDPServiceRecord objects corresponding to the user's selection.  If the user cancelled
  				the panel, nil will be returned.
  */
  func getResults() -> [AnyObject]!

  /*!
      @method		getOptions
  	@abstract	Returns the option bits that control the panel's behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the option bits set by setOptions:
  */
  func getOptions() -> IOBluetoothServiceBrowserControllerOptions

  /*!
      @method		setSearchAttributes:
  	@abstract	Sets the search attributes that control the panel's search/inquiry behavior.
  	@discussion	The device search attributes control the inquiry behavior of the panel.  They allow only devices
  				that match the specified attributes (i.e. class of device) to be displayed to the user.  Note that
  				this only covers attributes returned in an inquiry result and not actual SDP services on the device.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		searchAttributes Attributes to control the panel's inquiry behavior.
  */
  func setSearchAttributes(searchAttributes: UnsafePointer<IOBluetoothDeviceSearchAttributes>)

  /*!
      @method		getSearchAttributes
  	@abstract	Returns the search attributes that control the panel's search/inquiry behavior.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the search attributes set by setSearchAttributes:
  */
  func getSearchAttributes() -> UnsafePointer<IOBluetoothDeviceSearchAttributes>

  /*!
      @method		addAllowedUUID:
  	@abstract	Adds a UUID to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUID UUID that a device may contain to be selected
  */
  func addAllowedUUID(allowedUUID: IOBluetoothSDPUUID!)

  /*!
      @method		addAllowedUUIDArray:
  	@abstract	Adds an array of UUIDs to the list of UUIDs that are used to validate the user's selection.
  	@discussion	The user's device selection gets validated against the UUIDs passed to -addAllowedUUID:
  				addAllowedUUIDArray:.  Each call to those methods essentially adds a filter that the
  				selected device gets validated with.  If any of the filters match, the device is considered
  				valid.  If they all fail, the device is not valid and the user is presented with an
  				error code that the device does not support the required services.  The UUID passed to
  				-addAllowedUUID: is the only UUID that must be present in the device's SDP service records.
  				Alternatively, all of the UUIDs in the UUID array passed to -addAllowedUUIDArray must be
  				present.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		allowedUUIDArray An NSArray of UUIDs that all must be present in a device for it to be selectable.
  */
  func addAllowedUUIDArray(allowedUUIDArray: [AnyObject]!)

  /*!
      @method		clearAllowedUUIDs
  	@abstract	Resets the controller back to the default state where it will accept any device the user selects.
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  */
  func clearAllowedUUIDs()

  /*!
      @method		setTitle:
  	@abstract	Sets the title of the panel when not run as a sheet.
  	@discussion	The panel title should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		windowTitle Title of the device selector panel.
  */
  func setTitle(windowTitle: String!)

  /*!
      @method		getTitle
  	@abstract	Returns the title of the device selector panel (i.e. what was set in -setTitle:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the title of the device selector panel.
  */
  func getTitle() -> String!

  /*!
      @method		setDescriptionText:
  	@abstract	Sets the description text that appears in the device selector panel.
  	@discussion	The description text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		descriptionText String that appears in the description section of the device selector panel.
  */
  func setDescriptionText(descriptionText: String!)

  /*!
      @method		getDescriptionText
  	@abstract	Returns the description text that appears in the device selector panel (i.e. what was set in -setDescriptionText:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the description text of the device selector panel.
  */
  func getDescriptionText() -> String!

  /*!
      @method		setPrompt:
  	@abstract	Sets the title of the default/select button in the device selector panel.
  	@discussion	The prompt text should be localized for best user experience.
  
  				NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@param		prompt String that appears in the default/select button in the device selector panel.
  */
  func setPrompt(prompt: String!)

  /*!
      @method		getPrompt
  	@abstract	Returns the title of the default/select button in the device selector panel (i.e. what was set in -setPrompt:).
  	@discussion	NOTE: This method is only available in Mac OS X 10.2.4 (Bluetooth v1.1) or later.
  	@result		Returns the default button title of the device selector panel.
  */
  func getPrompt() -> String!
  init(window: NSWindow?)
  init?(coder: NSCoder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}
