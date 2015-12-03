

/*!
	@const		DRBurnProgressPanelWillBeginNotification
	@abstract	Posted when the @link //apple_ref/occ/cl/DRBurnProgressPanel DRBurnProgressPanel @/link is about to begin
				displaying progress.
	@discussion	This notification contains a notification object but
				no userInfo dictionary. The notification object is the
				@link //apple_ref/occ/cl/DRBurnProgressPanel DRBurnProgressPanel @/link that will be displayed.
*/
@available(OSX 10.2, *)
let DRBurnProgressPanelWillBeginNotification: String

/*! 
	@const			DRBurnProgressPanelDidFinishNotification
	@abstract		Posted when the @link //apple_ref/occ/cl/DRBurnProgressPanel DRBurnProgressPanel @/link has finished 
					and is about to go away.
	@discussion		This notification contains a notification object but 
					no userInfo dictionary. The notification object is the 
					@link //apple_ref/occ/cl/DRBurnProgressPanel DRBurnProgressPanel @/link that will be closed.
*/
@available(OSX 10.2, *)
let DRBurnProgressPanelDidFinishNotification: String

/*! 
	@class			DRBurnProgressPanel
	@abstract 		Manages a panel that displays progress while burning data to media.
	@discussion		A DRBurnProgressPanel object manages a panel that displays 
					and updates burn progress. The burn panel is responsible 
					for begining the burn. 
					
					The burn is begun and a progress panel is displayed on screen 
					by calling @link //apple_ref/occ/instm/DRBurnProgressPanel/beginProgressSheetForBurn:layout:modalForWindow: beginProgressSheetForBurn:layout:modalForWindow: @/link
					if a sheet interface is desired, or 
					@link //apple_ref/occ/instm/DRBurnProgressPanel/beginProgressPanelForBurn:layout: beginProgressPanelForBurn:layout: @/link for a non-modal panel.

					A DRBurnProgressPanel sends a 
					@link //apple_ref/occ/instm/NSObject/burnProgressPanel:burnDidFinish: burnProgressPanel:burnDidFinish: @/link message to it's delegate 
					when the burn completes. This method allows the delegate 
					to take over end-of-burn handling from the burn progress 
					panel to customize error dialogs or user notification.
*/
class DRBurnProgressPanel : NSPanel {

  /*!
  	@method			beginProgressSheetForBurn:layout:modalForWindow:
  	@abstract		Presents the progress panel as a sheet and begins the burn process.
  	@discussion		This method returns control to the caller after it has displayed the 
  					progress sheet and begun the burn. Once the method has returned the
  					caller can perform other operations while the burn continues.
  	@param			burn		The object performing the burn.
  	@param			layout		The data to be burned to disc. See the
  								@link //apple_ref/occ/cl/DRBurn DRBurn @/link documentation for information on
  								valid layouts.
  	@param			docWindow	The window the sheet will be attached to. If docWindow is 
  								not nil, the panel slides down as a sheet running as a 
  								document modal window. If owner is nil, this is an error.
  */
  func beginProgressSheetFor(burn: DRBurn!, layout: AnyObject!, modalFor docWindow: NSWindow!)

  /*!
  	@method			beginProgressPanelForBurn:layout:
  	@abstract		Presents the progress panel on screen and begins the burn process.
  	@discussion		This method returns control to the caller after it has displayed the 
  					progress sheet and begun the burn. Once the method has returned the
  					caller can perform other operations while the burn continues.
  	@param			burn		The object performing the burn.
  	@param			layout		The data to be burned to disc. See the
  								@link //apple_ref/occ/cl/DRBurn DRBurn @/link documentation for information on
  								valid layouts.
  */
  func beginProgressPanelFor(burn: DRBurn!, layout: AnyObject!)

  /*! 
  	@method			setDescription:
  	@abstract		Sets the panel text displayed to the user.
  	@discussion		The panel's description is typically a short text string that gives an 
  					indication to the user what operation is being performed. If no description
  					is explicitly set, the progress panel uses a standard text string suitable
  					to the burn.
  	@param			description	The text to display.
  */
  func setDescription(description: String!)

  /*!
  	@method			description
  	@abstract		Returns the description string displayed in the panel.
  	@discussion		If no description is explicitly set, this method will return the standard
  					text string.
  	@result			An NSString containing the text of the description.
  */
  func description() -> String!

  /*!
  	@method			setVerboseProgressStatus:
  	@abstract		Sets the vebosity of the progress feedback.
  	@discussion		If verbose is <i>YES</i>, the panel will update status for every change. 
  					If verbose is <i>NO</i>, the panel will filter some status messages and 
  					only update for major changes. The default for the panel is filter the 
  					status messages.
  	@param			verbose	A BOOL value indicating how detailed the status panel feedback should be.
  */
  func setVerboseProgressStatus(verbose: Bool)

  /*!
  	@method			verboseProgressStatus
  	@abstract		Returns the vebosity of the panel.
  	@discussion		This method will return <i>YES</i> if the panel will update status 
  					for every change and <i>NO</i> if the panel will filter some status 
  					messages and only update for major changes.
  	@result 		A BOOL value indicating how detailed the status panel feedback is.
  */
  func verboseProgressStatus() -> Bool

  /*! 
  	@method			stopBurn:
  	@abstract		Invoked when the user clicks the panel's stop button.
  */
  @IBAction func stopBurn(sender: AnyObject!)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {

  /*!
  	@method			burnProgressPanelWillBegin:
  	@abstract		Notification sent by the panel before display.
  	@discussion		If the delegate implements this method 
  					it will receive the message immediately before the panel is displayed. 
  	@param			aNotification	Always @link //apple_ref/occ/data/DRBurnProgressPanelWillBeginNotification DRBurnProgressPanelWillBeginNotification @/link. 
  					You can retrieve the DRBurnProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  class func burnProgressPanelWillBegin(aNotification: NSNotification!)

  /*!
  	@method			burnProgressPanelWillBegin:
  	@abstract		Notification sent by the panel before display.
  	@discussion		If the delegate implements this method 
  					it will receive the message immediately before the panel is displayed. 
  	@param			aNotification	Always @link //apple_ref/occ/data/DRBurnProgressPanelWillBeginNotification DRBurnProgressPanelWillBeginNotification @/link. 
  					You can retrieve the DRBurnProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  func burnProgressPanelWillBegin(aNotification: NSNotification!)

  /*!
  	@method			burnProgressPanelDidFinish:
  	@abstract		Notification sent by the panel after ordering out.
  	@discussion		If the delegate implements this method 
  					it will receive the message after the panel is removed from display.
  	@param			aNotification	Always @link //apple_ref/occ/data/DRBurnProgressPanelDidFinishNotification DRBurnProgressPanelDidFinishNotification @/link. 
  					You can retrieve the DRBurnProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  class func burnProgressPanelDidFinish(aNotification: NSNotification!)

  /*!
  	@method			burnProgressPanelDidFinish:
  	@abstract		Notification sent by the panel after ordering out.
  	@discussion		If the delegate implements this method 
  					it will receive the message after the panel is removed from display.
  	@param			aNotification	Always @link //apple_ref/occ/data/DRBurnProgressPanelDidFinishNotification DRBurnProgressPanelDidFinishNotification @/link. 
  					You can retrieve the DRBurnProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  func burnProgressPanelDidFinish(aNotification: NSNotification!)

  /*! 
  	@method			burnProgressPanel:burnDidFinish:
  	@abstract		Allows the delegate to handle the end-of-burn feedback.
  	@discussion		This method allows the delegate to handle or modify the end-of-burn
  					feedback performed by the progress panel. Return <i>YES</i> to indicate the 
  					delegate handled the burn completion and the standard feedback should 
  					be supressed. If this method returns <i>NO</i>, the normal end-of-burn 
  					handling is performed (displaying an error if appropriate, playing an 
  					"I'm done" sound, etc).
  					The delegate is messaged before the progress panel is ordered out so 
  					a sheet may be displayed on a progress panel displayed as a window.
  	@param			theBurnPanel	The progress panel
  	@param			burn			The object that performed the burn.
  	@result			A BOOL indicating whether the normal end-of-burn feedback should occur.
  */
  class func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool

  /*! 
  	@method			burnProgressPanel:burnDidFinish:
  	@abstract		Allows the delegate to handle the end-of-burn feedback.
  	@discussion		This method allows the delegate to handle or modify the end-of-burn
  					feedback performed by the progress panel. Return <i>YES</i> to indicate the 
  					delegate handled the burn completion and the standard feedback should 
  					be supressed. If this method returns <i>NO</i>, the normal end-of-burn 
  					handling is performed (displaying an error if appropriate, playing an 
  					"I'm done" sound, etc).
  					The delegate is messaged before the progress panel is ordered out so 
  					a sheet may be displayed on a progress panel displayed as a window.
  	@param			theBurnPanel	The progress panel
  	@param			burn			The object that performed the burn.
  	@result			A BOOL indicating whether the normal end-of-burn feedback should occur.
  */
  func burnProgressPanel(theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
}

/*!
	@typedef DRBurnSessionRef
	This is the type of a reference to DRBurnSession instances.
*/
typealias DRBurnSessionRef = DRBurnSession

/*!
	@function	DRBurnSessionGetTypeID
	@abstract	Returns the type identifier of all DRBurnSession instances.
	@result		A Core Foundation type ID.
*/
@available(OSX 10.3, *)
func DRBurnSessionGetTypeID() -> CFTypeID

/*!
	@function	DRBurnSessionCreate
	@abstract	Creates a new burn session.
	@result		A reference to a new DRBurnSession.
*/
@available(OSX 10.3, *)
func DRBurnSessionCreate() -> Unmanaged<DRBurnSession>!

/*!
	@function	DRBurnSessionSetBurn
	@abstract	Sets the burn object for this session.
	@param		burnSession	The burn session. If this parameter is not a valid
							@link DRBurnSessionRef DRBurnSessionRef @/link, the behavior is undefined. 
	@param		burn		The burn to use for the session. If this parameter is not a valid
							@link //apple_ref/c/tdef/DRBurnRef DRBurnRef @/link, the behavior is undefined. 
*/
@available(OSX 10.3, *)
func DRBurnSessionSetBurn(burnSession: DRBurnSession!, _ burn: DRBurn!)

/*!
	@function	DRBurnSessionGetBurn
	@abstract	Returns the burn object for this session.
	@param		burnSession	The burn session. If this parameter is not a valid
							@link DRBurnSessionRef DRBurnSessionRef @/link, the behavior is undefined. 
	@result		A reference to the burn object for the session. If the setup dialog has not been run or
				a burn object has not been set with @link DRBurnSessionSetBurn DRBurnSessionSetBurn @/link, this function returns <i>NULL</i>.
*/
@available(OSX 10.3, *)
func DRBurnSessionGetBurn(burnSession: DRBurnSession!) -> Unmanaged<DRBurn>!
var kDRBurnSessionOK: Int { get }
var kDRBurnSessionCancel: Int { get }
var kBurnSessionSetupDialogOptionsCurrentVersion: Int { get }
var kBurnSessionSetupDialogDefaultOptions: UInt32 { get }
var kBurnSessionSetupDialogForceClosedDiscs: UInt32 { get }
var kBurnSessionSetupDialogDontHandleReservations: UInt32 { get }
var kBurnSessionSetupDialogAllowTestBurns: UInt32 { get }

/*!
	@typedef 	DRBurnSessionSetupDialogOptionFlags
	@abstract	Specifies setup dialog configuration options.
*/
typealias DRBurnSessionSetupDialogOptionFlags = UInt32

/*!
	@struct 	DRBurnSessionSetupDialogOptions
	@abstract	Options passed into the setup dialog to configure it.
	@field		version				Identifies the version of this structure.
	@field		dialogOptionFlags	One of several constants defined by the @link DRBurnSessionSetupDialogOptionFlags DRBurnSessionSetupDialogOptionFlags @/link 
									data type as described in @link //apple_ref/c/tag/Burn%32Setup%32Dialog%32Option%32Flags Burn Setup Dialog Option Flags @/link.
	@field		defaultButtonTitle	A CFStringRef that defines a custom title to be used for the dialog's default button.
									If you do not provide this string (passing <i>NULL</i>), the normal button title is used.
*/
struct DRBurnSessionSetupDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DRBurnSessionSetupDialogOptionFlags
  var defaultButtonTitle: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DRBurnSessionSetupDialogOptionFlags, defaultButtonTitle: Unmanaged<CFString>!)
}
var kDRBurnSessionSetupCallbacksCurrentVersion: Int { get }

/*!
	@typedef	DRBurnSessionDeviceCheckProcPtr
	@abstract	Callback used for checking the suitability of a device.
	@discussion This callback is called whenever a new device appears. It's purpose is to allow the
				application to filter out devices which do not support the operation to be performed. for
				example, a device may filter our CD-R/Ws if it is a DVD creation appliacation.
	@param		burnSession	The burn session object.
	@param		device		The device to examine.
	@result		A Boolean value indicating the suitability of the device.
*/
typealias DRBurnSessionDeviceCheckProcPtr = @convention(c) (DRBurnSession!, DRDevice!) -> DarwinBoolean

/*!
	@typedef	DRBurnSessionMediaCheckProcPtr
	@abstract	Callback used for checking the suitability of media in a device.
	@discussion This callback is called whenever the state of the media has changed. It's purpose is to allow the
				application to determine if the media is suitable for the operation to be performed. For example,
				the application an check to see if there is enough space on the media for the data to be written.
	@param		burnSession	The burn session object.
	@param		device		The device containing the media to examine.
	@param		prompt		A pointer to a CFStringRef. An application may return a custom message to display in the 
							setup dialog.
	@result		A Boolean value indicating the suitability of the media.
*/
typealias DRBurnSessionMediaCheckProcPtr = @convention(c) (DRBurnSession!, DRDevice!, UnsafeMutablePointer<Unmanaged<CFString>?>) -> DarwinBoolean

/*!
	@typedef	DRBurnSessionDeviceSelectionNotificationProcPtr
	@abstract	Callback used to notify the application of a new device selected.
	@param		burnSession	The burn session object.
	@param		device		The newly selected device.
*/
typealias DRBurnSessionDeviceSelectionNotificationProcPtr = @convention(c) (DRBurnSession!, DRDevice!) -> Void

/*!
	@struct		DRBurnSessionSetupCallbacks
	@abstract	Callback functions passed to the setup dialog.
	@field		version					Identifies the version of this structure.
	@field		deviceShouldBeTarget	Pointer to a DRBurnSessionDeviceCheckProcPtr. The value of this field may be <i>NULL</i>.
	@field		containsSuitableMedia	Pointer to a DRBurnSessionMediaCheckProcPtr. The value of this field may be <i>NULL</i>.
	@field		deviceSelectionChanged	Pointer to a DRBurnSessionDeviceSelectionNotificationProcPtr. The value of this field may be <i>NULL</i>.
*/
struct DRBurnSessionSetupCallbacks {
  var version: UInt32
  var deviceShouldBeTarget: DRBurnSessionDeviceCheckProcPtr!
  var containsSuitableMedia: DRBurnSessionMediaCheckProcPtr!
  var deviceSelectionChanged: DRBurnSessionDeviceSelectionNotificationProcPtr!
  init()
  init(version: UInt32, deviceShouldBeTarget: DRBurnSessionDeviceCheckProcPtr!, containsSuitableMedia: DRBurnSessionMediaCheckProcPtr!, deviceSelectionChanged: DRBurnSessionDeviceSelectionNotificationProcPtr!)
}

/*!
	@function	DRBurnSessionSetupDialog
	@abstract	Presents the setup interface as a modal dialog.
	@discussion	This function present the user with a modal dialog that allows them to configure a burn to their custom
				settings. These include: the device to use, whether or not to eject the media when finished, the burn speed
				and others. The function does not return until the user dismissed the dialog.
	@param		burnSession	The burn session object
	@param		options		A pointer to a structure of type @link DRBurnSessionSetupDialogOptions DRBurnSessionSetupDialogOptions @/link. 
							This pointer may be <i>NULL</i> if no custom configuration is required.
	@param		setupCallbacks	A pointer to a structure of type @link DRBurnSessionSetupCallbacks DRBurnSessionSetupCallbacks @/link. 
								This pointer may be <i>NULL</i> if no custom behavior is desired.
	@result		Returns one of the constants defined by @link //apple_ref/c/tag/Burn%32Session%32Dialog%32Result%32Codes Burn Session Dialog Result Codes @/link.
*/
@available(OSX 10.3, *)
func DRBurnSessionSetupDialog(burnSession: DRBurnSession!, _ options: UnsafeMutablePointer<DRBurnSessionSetupDialogOptions>, _ setupCallbacks: UnsafeMutablePointer<DRBurnSessionSetupCallbacks>) -> Int8
var kDRBurnProgressSetupCallbacksCurrentVersion: Int { get }

/*!
	@typedef	DRBurnSessionProgressBeginNotificationProcPtr
	@abstract	Callback notifying the application the burn progress is about to begin.
	@discussion	This callback is called when the burn progress is about to be displayed. This allows the application
				to do things such as disable the quit menu item, or the close menu for a document window.
	@param		burnSession	The burn session object.
*/
typealias DRBurnSessionProgressBeginNotificationProcPtr = @convention(c) (DRBurnSession!) -> Void

/*!
	@typedef	DRBurnSessionProgressFinishNotificationProcPtr
	@abstract	Callback notifying the application the burn progress has finished.
	@discussion	This callback is called when the burn progress has been removed from view. This allows the application
				to do things such as re-enable the quit menu item, or the close menu for a document window.
	@param		burnSession	The burn session object.
*/
typealias DRBurnSessionProgressFinishNotificationProcPtr = @convention(c) (DRBurnSession!) -> Void

/*!
	@typedef	DRBurnSessionBurnCompleteProcPtr
	@abstract	Callback notifying the application the burn has finished.
	@discussion	This callback is called when the burn operation completes, either successfully or with an error.
				This function can be used by the application to present it's own custom end-of-burn handling. 
				Return a false return value to prevent the burn session from presenting it's own notification.
	@param		burnSession	The burn session object.
	@param		burn		The burn instance that just finished.
	@result		A Boolean value controlling the display of the burn session's error dialog.
*/
typealias DRBurnSessionBurnCompleteProcPtr = @convention(c) (DRBurnSession!, DRBurn!) -> DarwinBoolean

/*!
	@struct		DRBurnSessionProgressCallbacks
	@abstract	Callback functions passed to the progress dialog.
	@field		version				Identifies the version of this structure.
	@field		progressWillBegin	Pointer to a DRBurnSessionProgressBeginNotificationProcPtr. The value of this field may be <i>NULL</i>.
	@field		progressDidFinish	Pointer to a DRBurnSessionProgressFinishNotificationProcPtr. The value of this field may be <i>NULL</i>.
	@field		burnDidFinish	Pointer to a DRBurnSessionBurnCompleteProcPtr. The value of this field may be <i>NULL</i>.
*/
struct DRBurnSessionProgressCallbacks {
  var version: UInt32
  var progressWillBegin: DRBurnSessionProgressBeginNotificationProcPtr!
  var progressDidFinish: DRBurnSessionProgressFinishNotificationProcPtr!
  var burnDidFinish: DRBurnSessionBurnCompleteProcPtr!
  init()
  init(version: UInt32, progressWillBegin: DRBurnSessionProgressBeginNotificationProcPtr!, progressDidFinish: DRBurnSessionProgressFinishNotificationProcPtr!, burnDidFinish: DRBurnSessionBurnCompleteProcPtr!)
}
var kBurnSessionProgressDialogOptionsCurrentVersion: Int { get }
var kBurnSessionProgressDialogDefaultOptions: Int { get }
var kBurnSessionProgressDialogDisplayVerboseProgress: Int { get }

/*!
	@typedef 	DRBurnSessionProgressDialogOptionFlags
	@abstract	Specifies progress dialog configuration options.
*/
typealias DRBurnSessionProgressDialogOptionFlags = UInt32

/*!
	@struct 	DRBurnSessionProgressDialogOptions
	@abstract	Options passed into the progress dialog to configure it.
	@field		version				Identifies the version of this structure.
	@field		dialogOptionFlags	One of several constants defined by the @link DRBurnSessionProgressDialogOptionFlags DRBurnSessionProgressDialogOptionFlags @/link 
									data type as described in @link //apple_ref/c/tag/Burn%32Progress%32Dialog%32Option%32Flags Burn Progress Dialog Option Flags @/link.
	@field		description			A CFStringRef that defines a custom description to be used for the dialog.
									If you do not provide this string (passing <i>NULL</i>), the normal description is used.
*/
struct DRBurnSessionProgressDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DRBurnSessionProgressDialogOptionFlags
  var description: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DRBurnSessionProgressDialogOptionFlags, description: Unmanaged<CFString>!)
}

/*!
	@function	DRBurnSessionBeginProgressDialog
	@abstract	Presents the progress interface as a non-modal dialog.
	@discussion	This function present the user with a non-modal dialog that shows the burn progress.
	@param		burnSession	The burn session object
	@param		layout		The track layout to be used for the burn.
	@param		options		A pointer to a structure of type @link DRBurnSessionSetupDialogOptions DRBurnSessionSetupDialogOptions @/link. 
	@param		progressCallbacks	A pointer to a structure of type @link DRBurnSessionProgressCallbacks DRBurnSessionProgressCallbacks @/link. 
									This pointer may be <i>NULL</i> if no custom behavior is desired.
*/
@available(OSX 10.3, *)
func DRBurnSessionBeginProgressDialog(burnSession: DRBurnSession!, _ layout: AnyObject!, _ options: UnsafeMutablePointer<DRBurnSessionProgressDialogOptions>, _ progressCallbacks: UnsafeMutablePointer<DRBurnSessionProgressCallbacks>)

/*!
	@class		DRBurnSetupPanel
	@abstract 	Manages a panel that allows users to specify the parameters of an burn.
	@discussion	This class supports choosing the the device to use, whether or not
				to verify the burned data and how to handle the burned disc when it completes.
*/
class DRBurnSetupPanel : DRSetupPanel {

  /*!
  	@method		setDefaultButtonTitle:
  	@abstract	Sets the title for the receiver's default button to title.
  	@discussion	Normally, the default button is &ldquo;Burn&rdquo;.
  */
  func setDefaultButtonTitle(title: String!)

  /*!
  	@method		setCanSelectTestBurn:
  	@abstract	Specifies whether the user can choose to make a test burn.
  	@discussion	This method controls whether a checkbox should be added to the
  				receiver that allows the user to set the burn to be a test burn.
  				By default, the test burn button is not displayed.
  				
  				This method must be called before the panel is displayed.
  	
  	@param		flag	<i>YES</i> to show the test burn checkbox, <i>NO</i> to hide it.
  */
  func setCanSelectTestBurn(flag: Bool)

  /*!
  	@method		setCanSelectAppendableMedia:
  	@abstract	Specifies whether the user can choose to leave the disc appendable.
  	@discussion	This method controls whether the appendable checkbox is enabled.
  	
  				If the data being writen to disc does not lend itself to having more data
  				appended on to it, you can disable the ability of the user to leave the disc
  				open.
  				 
  				This method must be called before the panel is displayed.
  	@param		flag	<i>YES</i> to enable the appendable checkbox, <i>NO</i> to disable.
  */
  func setCanSelectAppendableMedia(flag: Bool)

  /*!
  	@method		burnObject
  	@abstract	Creates and returns a new DRBurn object that's configured to write
  				data to the currently selected device.
  	@discussion	The new DRBurn object is configured based on the settings in the setup panel
  				when the user clicks the OK button.
  				
  				Do not invoke this method within a modal session ( @link //apple_ref/occ/instm/DRSetupPanel/runSetupPanel runSetupPanel @/link or
  				@link //apple_ref/occ/instm/DRSetupPanel/beginSetupSheetForWindow:modalDelegate:didEndSelector:contextInfo: beginSetupSheetForWindow:modalDelegate:didEndSelector:contextInfo: @/link )
  				because the burn object information is only updated just before the
  				modal session ends.
     @result  	A new DRBurn object.
  */
  func burnObject() -> DRBurn!

  /*!
  	@method		expand:
  	@abstract	Invoked when the user clicks the panel's expand button.
  */
  @IBAction func expand(sender: AnyObject!)

  /*!
  	@method		burnSpeed:
  	@abstract	Invoked when the user clicks the panel's burn speed popup button.
  */
  @IBAction func burnSpeed(sender: AnyObject!)

  /*!
  	@method		appendable:
  	@abstract	Invoked when the user clicks the panel's appendable checkbox.
  */
  @IBAction func appendable(sender: AnyObject!)

  /*!
  	@method		completionAction:
  	@abstract	Invoked when the user clicks one of the panel's completion action radio buttons.
  */
  @IBAction func completionAction(sender: AnyObject!)

  /*!
  	@method		testBurn:
  	@abstract	Invoked when the user clicks the panel's test burn checkbox.
  */
  @IBAction func testBurn(sender: AnyObject!)

  /*!
  	@method		verifyBurn:
  	@abstract	Invoked when the user clicks the panel's verify burn checkbox.
  */
  @IBAction func verifyBurn(sender: AnyObject!)

  /*!
  	@method		initWithNibName:
  	@abstract	Initializes the receiver to use the panel from the nibName nib file.
  	@param		nibName		Nib filename.
  	@result		The receiver.
  */
  init!(nibName: String!)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}

/*!
	@const		DRBurnSetupPanelDefaultButtonDefaultTitle
	@discussion	Passing this to @link //apple_ref/occ/instm/DRBurnSetupPanel/setDefaultButtonTitle: setDefaultButtonTitle: @/link causes the panel to redisplay the 
				default button title.
*/
@available(OSX 10.2, *)
let DRBurnSetupPanelDefaultButtonDefaultTitle: String

/*! 	
	@const			DREraseProgressPanelWillBeginNotification
	@abstract		Posted when the @link //apple_ref/occ/cl/DREraseProgressPanel DREraseProgressPanel @/link is about to begin 
					displaying progress.
	@discussion		This notification contains a notification object but 
					no userInfo dictionary. The notification object is the 
					@link //apple_ref/occ/cl/DREraseProgressPanel DREraseProgressPanel @/link thatwill be displayed.
*/
@available(OSX 10.2, *)
let DREraseProgressPanelWillBeginNotification: String

/*! 
	@const			DREraseProgressPanelDidFinishNotification
	@abstract		Posted when the @link //apple_ref/occ/cl/DREraseProgressPanel DREraseProgressPanel @/link has finished 
					and is about to go away.
	@discussion		This notification contains a notification object but 
					no userInfo dictionary. The notification object is the 
					@link //apple_ref/occ/cl/DREraseProgressPanel DREraseProgressPanel @/link that will be closed.
*/
@available(OSX 10.2, *)
let DREraseProgressPanelDidFinishNotification: String

/*!
	@class			DREraseProgressPanel
	@abstract 		Manages a panel that displays progress while erasing media.
	@discussion		A DREraseProgressPanel object manages a panel that displays 
					and updates erase progress. The erase panel is responsible 
					for begining the erase. 
					
					The erase is begun and a progress panel is displayed on screen 
					by calling @link //apple_ref/occ/instm/DREraseProgressPanel/beginProgressSheetForErase:modalForWindow: beginProgressSheetForErase:modalForWindow: @/link 
					if a sheet interface is desired, or 
					@link //apple_ref/occ/instm/DREraseProgressPanel/beginProgressPanelForErase: beginProgressPanelForErase:  @/link for a non-modal panel.

					A DREraseProgressPanel sends a 
					@link //apple_ref/occ/instm/NSObject/eraseProgressPanel:eraseDidFinish: eraseProgressPanel:eraseDidFinish: @/link message to it's delegate 
					when the erase completes. This method allows the delegate 
					to take over end-of-erase handling from the erase progress 
					panel to customize error dialogs or user notification.
*/
class DREraseProgressPanel : NSPanel {

  /*!
  	@method			beginProgressSheetForErase:modalForWindow:
  	@abstract		Presents the progress panel as a sheet and begins the erase process.
  	@discussion		This method returns control to the caller after it has displayed the 
  					progress sheet and begun the erase. Once the method has returned the
  					caller can perform other operations while the erase continues.
  	@param			erase		The object performing the erase.
  	@param			docWindow	The window the sheet will be attached to. If docWindow is 
  								not nil, the panel slides down as a sheet running as a 
  								document modal window. If owner is nil, this is an error.
  */
  func beginProgressSheetFor(erase: DRErase!, modalFor docWindow: NSWindow!)

  /*!
  	@method			beginProgressPanelForErase:
  	@abstract		Presents the progress panel on screen and begins the erase process.
  	@discussion		This method returns control to the caller after it has displayed the 
  					progress sheet and begun the erase. Once the method has returned the
  					caller can perform other operations while the erase continues.
  	@param			erase		The object performing the erase.
  */
  func beginProgressPanelFor(erase: DRErase!)

  /*! 
  	@method			setDescription:
  	@abstract		Sets the panel text displayed to the user.
  	@discussion		The panel's description is typically a short text string that gives an 
  					indication to the user what operation is being performed. If no description
  					is explicitly set, the progress panel uses a standard text string suitable
  					to the erase.
  	@param			description	The text to display.
  */
  func setDescription(description: String!)

  /*!
  	@method			description
  	@abstract		Returns the description string displayed in the panel.
  	@discussion		If no description is explicitly set, this method will return the standard
  					text string.
  	@result			An NSString containing the text of the description.
  */
  func description() -> String!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
extension NSObject {

  /*!
  	@method			eraseProgressPanelWillBegin:
  	@abstract		Notification sent by the panel before display.
  	@discussion		If the delegate implements this method 
  					it will receive the message immediately before the panel is displayed. 
  	@param			aNotification	Always @link //apple_ref/occ/data/DREraseProgressPanelWillBeginNotification DREraseProgressPanelWillBeginNotification @/link. 
  					You can retrieve the DREraseProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  class func eraseProgressPanelWillBegin(aNotification: NSNotification!)

  /*!
  	@method			eraseProgressPanelWillBegin:
  	@abstract		Notification sent by the panel before display.
  	@discussion		If the delegate implements this method 
  					it will receive the message immediately before the panel is displayed. 
  	@param			aNotification	Always @link //apple_ref/occ/data/DREraseProgressPanelWillBeginNotification DREraseProgressPanelWillBeginNotification @/link. 
  					You can retrieve the DREraseProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  func eraseProgressPanelWillBegin(aNotification: NSNotification!)

  /*!
  	@method			eraseProgressPanelDidFinish:
  	@abstract		Notification sent by the panel after ordering out.
  	@discussion		If the delegate implements this method 
  					it will receive the message after the panel is removed from display.
  	@param			aNotification	Always @link //apple_ref/occ/data/DREraseProgressPanelDidFinishNotification DREraseProgressPanelDidFinishNotification @/link. 
  					You can retrieve the DREraseProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  class func eraseProgressPanelDidFinish(aNotification: NSNotification!)

  /*!
  	@method			eraseProgressPanelDidFinish:
  	@abstract		Notification sent by the panel after ordering out.
  	@discussion		If the delegate implements this method 
  					it will receive the message after the panel is removed from display.
  	@param			aNotification	Always @link //apple_ref/occ/data/DREraseProgressPanelDidFinishNotification DREraseProgressPanelDidFinishNotification @/link. 
  					You can retrieve the DREraseProgressPanel object in question by sending
  					@link //apple_ref/occ/instm/NSNotification/object object @/link message to aNotification.
  */
  func eraseProgressPanelDidFinish(aNotification: NSNotification!)

  /*! 
  	@method			eraseProgressPanel:eraseDidFinish:
  	@abstract		Allows the delegate to handle the end-of-erase feedback.
  	@discussion		This method allows the delegate to handle or modify the end-of-erase
  					feedback performed by the progress panel. Return <i>YES</i> to indicate the 
  					delegate handled the erase completion and the standard feedback should 
  					be supressed. If this method returns <i>NO</i>, the normal end-of-erase 
  					handling is performed (displaying an error if appropriate, playing an 
  					"I'm done" sound, etc).
  					The delegate is messaged before the progress panel is ordered out so 
  					a sheet may be displayed on a progress panel displayed as a window.
  	@param			theErasePanel	The progress panel
  	@param			erase			The object that performed the erase.
  	@result			A BOOL indicating whether the normal end-of-erase feedback should occur.
  */
  class func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool

  /*! 
  	@method			eraseProgressPanel:eraseDidFinish:
  	@abstract		Allows the delegate to handle the end-of-erase feedback.
  	@discussion		This method allows the delegate to handle or modify the end-of-erase
  					feedback performed by the progress panel. Return <i>YES</i> to indicate the 
  					delegate handled the erase completion and the standard feedback should 
  					be supressed. If this method returns <i>NO</i>, the normal end-of-erase 
  					handling is performed (displaying an error if appropriate, playing an 
  					"I'm done" sound, etc).
  					The delegate is messaged before the progress panel is ordered out so 
  					a sheet may be displayed on a progress panel displayed as a window.
  	@param			theErasePanel	The progress panel
  	@param			erase			The object that performed the erase.
  	@result			A BOOL indicating whether the normal end-of-erase feedback should occur.
  */
  func eraseProgressPanel(theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}

/*!
	@typedef DREraseSessionRef
	This is the type of a reference to DREraseSession instances.
*/
typealias DREraseSessionRef = DREraseSession

/*!
	@function	DREraseSessionGetTypeID
	@abstract	Returns the type identifier of all DREraseSession instances.
	@result		A Core Foundation type ID.
*/
@available(OSX 10.3, *)
func DREraseSessionGetTypeID() -> CFTypeID

/*!
	@function	DREraseSessionCreate
	@abstract	Creates a new erase session.
	@result		A reference to a new DREraseSession.
*/
@available(OSX 10.3, *)
func DREraseSessionCreate() -> Unmanaged<DREraseSession>!

/*!
	@function	DREraseSessionSetErase
	@abstract	Sets the erase object for this session.
	@param		eraseSession	The erase session. If this parameter is not a valid
								@link DREraseSessionRef DREraseSessionRef @/link, the behavior is undefined. 
	@param		erase			The erase to use for the session. If this parameter is not a valid
								@link //apple_ref/c/tdef/DREraseRef DREraseRef @/link, the behavior is undefined. 
*/
@available(OSX 10.3, *)
func DREraseSessionSetErase(eraseSession: DREraseSession!, _ erase: DRErase!)

/*!
	@function	DREraseSessionGetErase
	@abstract	Returns the erase object for this session.
	@param		eraseSession	The erase session. If this parameter is not a valid
								@link DREraseSessionRef DREraseSessionRef @/link, the behavior is undefined. 
	@result		A reference to the erase object for the session. If the setup dialog has not been run or
				a burn object has not been set with @link DREraseSessionSetErase DREraseSessionSetErase @/link, this function returns <i>NULL</i>.
*/
@available(OSX 10.3, *)
func DREraseSessionGetErase(eraseSession: DREraseSession!) -> Unmanaged<DRErase>!
var kDREraseSessionOK: Int { get }
var kDREraseSessionCancel: Int { get }
var kEraseSessionSetupDialogOptionsCurrentVersion: Int { get }
var kEraseSessionSetupDialogDefaultOptions: Int { get }
var kEraseSessionSetupDialogDontHandleReservations: Int { get }

/*!
	@typedef 	DREraseSessionSetupDialogOptionFlags
	@abstract	Specifies setup dialog configuration options.
*/
typealias DREraseSessionSetupDialogOptionFlags = UInt32

/*!
	@struct 	DREraseSessionSetupDialogOptions
	@abstract	Options passed into the setup dialog to configure it.
	@field		version				Identifies the version of this structure.
	@field		dialogOptionFlags	One of several constants defined by the @link DREraseSessionSetupDialogOptionFlags DREraseSessionSetupDialogOptionFlags @/link 
									data type as described in @link //apple_ref/c/tag/Erase%32Setup%32Dialog%32Option%32Flags Erase Setup Dialog Option Flags @/link.
*/
struct DREraseSessionSetupDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DREraseSessionSetupDialogOptionFlags
  init()
  init(version: UInt32, dialogOptionFlags: DREraseSessionSetupDialogOptionFlags)
}
var kDREraseSessionSetupCallbacksCurrentVersion: Int { get }

/*!
	@typedef	DREraseSessionDeviceCheckProcPtr
	@abstract	Callback used for checking the suitability of a device.
	@discussion This callback is called whenever a new device appears. It's purpose is to allow the
				application to filter out devices which do not support the operation to be performed. for
				example, a device may filter our CD-R/Ws if it is a DVD creation appliacation.
	@param		eraseSession	The erase session object.
	@param		device			The device to examine.
	@result		A Boolean value indicating the suitability of the device.
*/
typealias DREraseSessionDeviceCheckProcPtr = @convention(c) (DREraseSession!, DRDevice!) -> DarwinBoolean

/*!
	@typedef	DREraseSessionMediaCheckProcPtr
	@abstract	Callback used for checking the suitability of media in a device.
	@discussion This callback is called whenever the state of the media has changed. It's purpose is to allow the
				application to determine if the media is suitable for the operation to be performed. For example,
				the application an check to see if there is enough space on the media for the data to be written.
	@param		eraseSession	The erase session object.
	@param		device			The device containing the media to examine.
	@param		prompt			A pointer to a CFStringRef. An application may return a custom message to display in the 
								setup dialog.
	@result		A Boolean value indicating the suitability of the media.
*/
typealias DREraseSessionMediaCheckProcPtr = @convention(c) (DREraseSession!, DRDevice!, UnsafeMutablePointer<Unmanaged<CFString>?>) -> DarwinBoolean

/*!
	@typedef	DREraseSessionDeviceSelectionNotificationProcPtr
	@abstract	Callback used to notify the application of a new device selected.
	@param		eraseSession	The erase session object.
	@param		selectedDevice	The newly selected device.
*/
typealias DREraseSessionDeviceSelectionNotificationProcPtr = @convention(c) (DREraseSession!, DRDevice!) -> Void

/*!
	@struct		DREraseSessionSetupCallbacks
	@abstract	Callback functions passed to the setup dialog.
	@field		version					Identifies the version of this structure.
	@field		deviceShouldBeTarget	Pointer to a DREraseSessionDeviceCheckProcPtr. The value of this field may be <i>NULL</i>.
	@field		containsSuitableMedia	Pointer to a DREraseSessionMediaCheckProcPtr. The value of this field may be <i>NULL</i>.
	@field		deviceSelectionChanged	Pointer to a DREraseSessionDeviceSelectionNotificationProcPtr. The value of this field may be <i>NULL</i>.
*/
struct DREraseSessionSetupCallbacks {
  var version: UInt32
  var deviceShouldBeTarget: DREraseSessionDeviceCheckProcPtr!
  var containsSuitableMedia: DREraseSessionMediaCheckProcPtr!
  var deviceSelectionChanged: DREraseSessionDeviceSelectionNotificationProcPtr!
  init()
  init(version: UInt32, deviceShouldBeTarget: DREraseSessionDeviceCheckProcPtr!, containsSuitableMedia: DREraseSessionMediaCheckProcPtr!, deviceSelectionChanged: DREraseSessionDeviceSelectionNotificationProcPtr!)
}

/*!
	@function	DREraseSessionSetupDialog
	@abstract	Presents the setup interface as a modal dialog.
	@discussion	This function present the user with a modal dialog that allows them to configure an erase to their custom
				settings. These include: the device to use and the type of erase to perform.
				and others. The function does not return until the user dismissed the dialog.
	@param		eraseSession	The erase session object
	@param		options			A pointer to a structure of type @link DREraseSessionSetupDialogOptions DREraseSessionSetupDialogOptions @/link. 
								This pointer may be <i>NULL</i> if no custom configuration is required.
	@param		setupCallbacks	A pointer to a structure of type @link DREraseSessionSetupCallbacks DREraseSessionSetupCallbacks @/link. 
								This pointer may be <i>NULL</i> if no custom behavior is desired.
	@result		Returns one of the constants defined by @link //apple_ref/c/tag/Erase%32Session%32Dialog%32Result%32Codes Erase Session Dialog Result Codes @/link.
*/
@available(OSX 10.3, *)
func DREraseSessionSetupDialog(eraseSession: DREraseSession!, _ options: UnsafeMutablePointer<DREraseSessionSetupDialogOptions>, _ setupCallbacks: UnsafeMutablePointer<DREraseSessionSetupCallbacks>) -> Int8
var kDREraseProgressSetupCallbacksCurrentVersion: Int { get }

/*!
	@typedef	DREraseSessionProgressBeginNotificationProcPtr
	@abstract	Callback notifying the application the erase progress is about to begin.
	@discussion	This callback is called when the erase progress is about to be displayed. This allows the application
				to do things such as disable the quit menu item, or the close menu for a document window.
	@param		eraseSession	The erase session object.
*/
typealias DREraseSessionProgressBeginNotificationProcPtr = @convention(c) (DREraseSession!) -> Void

/*!
	@typedef	DREraseSessionProgressFinishNotificationProcPtr
	@abstract	Callback notifying the application the erase progress has finished.
	@discussion	This callback is called when the erase progress has been removed from view. This allows the application
				to do things such as re-enable the quit menu item, or the close menu for a document window.
	@param		eraseSession	The erase session object.
*/
typealias DREraseSessionProgressFinishNotificationProcPtr = @convention(c) (DREraseSession!) -> Void

/*!
	@typedef	DREraseSessionEraseCompleteProcPtr
	@abstract	Callback notifying the application the erase has finished.
	@discussion	This callback is called when the erase operation completes, either successfully or with an error.
				This function can be used by the application to present it's own custom end-of-erase handling. If the 
				application wants to present it's own end-of-erase notification, it can do so from this callback. If it
				does, it can return a false return value to prevent the erase session from presenting it's own notification.
	@param		eraseSession	The erase session object.
	@param		erase		The erase instance that just finished.
	@result		A Boolean value controlling the display of the erase session's error dialog.
*/
typealias DREraseSessionEraseCompleteProcPtr = @convention(c) (DREraseSession!, DRErase!) -> DarwinBoolean

/*!
	@struct		DREraseSessionProgressCallbacks
	@abstract	Callback functions passed to the progress dialog.
	@field		version					Identifies the version of this structure.
	@field		progressWillBegin		Pointer to a DREraseSessionProgressBeginNotificationProcPtr. The value of this field may be <i>NULL</i>.
	@field		progressDidFinish		Pointer to a DREraseSessionProgressFinishNotificationProcPtr. The value of this field may be <i>NULL</i>.
	@field		eraseDidFinish			Pointer to a DREraseSessionEraseCompleteProcPtr. The value of this field may be <i>NULL</i>.
*/
struct DREraseSessionProgressCallbacks {
  var version: UInt32
  var progressWillBegin: DREraseSessionProgressBeginNotificationProcPtr!
  var progressDidFinish: DREraseSessionProgressFinishNotificationProcPtr!
  var eraseDidFinish: DREraseSessionEraseCompleteProcPtr!
  init()
  init(version: UInt32, progressWillBegin: DREraseSessionProgressBeginNotificationProcPtr!, progressDidFinish: DREraseSessionProgressFinishNotificationProcPtr!, eraseDidFinish: DREraseSessionEraseCompleteProcPtr!)
}
var kEraseSessionProgressDialogOptionsCurrentVersion: Int { get }
var kEraseSessionProgressDialogDefaultOptions: Int { get }

/*!
	@typedef 	DREraseSessionProgressDialogOptionFlags
	@abstract	Specifies progress dialog configuration options.
*/
typealias DREraseSessionProgressDialogOptionFlags = UInt32

/*!
	@struct 	DREraseSessionProgressDialogOptions
	@abstract	Options passed into the progress dialog to configure it.
	@field		version				Identifies the version of this structure.
	@field		dialogOptionFlags	One of several constants defined by the @link DREraseSessionProgressDialogOptionFlags DREraseSessionProgressDialogOptionFlags @/link 
									data type as described in @link //apple_ref/c/tag/Erase%32Progress%32Dialog%32Option%32Flags Erase Progress Dialog Option Flags @/link.
	@field		description			A CFStringRef that defines a custom description to be used for the dialog.
									If you do not provide this string (passing <i>NULL</i>), the normal description is used.
*/
struct DREraseSessionProgressDialogOptions {
  var version: UInt32
  var dialogOptionFlags: DREraseSessionProgressDialogOptionFlags
  var description: Unmanaged<CFString>!
  init()
  init(version: UInt32, dialogOptionFlags: DREraseSessionProgressDialogOptionFlags, description: Unmanaged<CFString>!)
}

/*!
	@function	DREraseSessionBeginProgressDialog
	@abstract	Presents the progress interface as a non-modal dialog.
	@discussion	This function present the user with a non-modal dialog that shows the erase progress.
	@param		eraseSession	The erase session object
	@param		options			A pointer to a structure of type @link DREraseSessionSetupDialogOptions DREraseSessionSetupDialogOptions @/link. 
	@param		progressCallbacks	A pointer to a structure of type @link DREraseSessionProgressCallbacks DREraseSessionProgressCallbacks @/link. 
									This pointer may be <i>NULL</i> if no custom behavior is desired.
*/
@available(OSX 10.3, *)
func DREraseSessionBeginProgressDialog(eraseSession: DREraseSession!, _ options: UnsafeMutablePointer<DREraseSessionProgressDialogOptions>, _ progressCallbacks: UnsafeMutablePointer<DREraseSessionProgressCallbacks>)

/*!
	@class			DREraseSetupPanel
	@abstract		Manages a panel that allows users to specify the
					parameters of an erase. 
	@discussion		This class supports choosing the 
					device to use and what sort of erase to perform.
					
					When the panel is closed by the user choosing to
					erase the media in the device, the device is
					exclusively held by the application for its own use
					to prevent possible bad or corrupt media from
					causing problem for the rest of the system. This
					means that if the erase object obtained from the
					panel is not used to do an erase, the device will
					remain unavailable to other applications until the
					exclusive access is released.
*/
class DREraseSetupPanel : DRSetupPanel {

  /*! 
  	@method 	eraseObject
  	@abstract	Creates and returns a new DRErase object that's configured to erase the disc in the currently selected device.
  	@discussion	The new DRErase object is configured based on the settings in the setup panel
  				when the user clicks the OK button.
  				
  				Do not invoke this method within a modal session (@link //apple_ref/occ/instm/DRSetupPanel/runSetupPanel runSetupPanel @/link or
  				@link //apple_ref/occ/instm/DRSetupPanel/beginSetupSheetForWindow:modalDelegate:didEndSelector:contextInfo: beginSetupSheetForWindow:modalDelegate:didEndSelector:contextInfo: @/link)
  				because the erase object information is only updated just before the
  				modal session ends.
  	@result  	A new DRErase object.
  */
  func eraseObject() -> DRErase!

  /*! 
     @method 			eraseType:
     @abstract 		Invoked when the user clicks one of the panel's 
     					erase type radio buttons.
     @param 			sender	The object that invoked this method.
  */
  @IBAction func eraseType(sender: AnyObject!)

  /*!
  	@method		initWithNibName:
  	@abstract	Initializes the receiver to use the panel from the nibName nib file.
  	@param		nibName		Nib filename.
  	@result		The receiver.
  */
  init!(nibName: String!)
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}

/*!
	@class		DRSetupPanel
	@discussion	This class is the base class for setup panels in the DiscRecordingUI
				framework. It provides a base framework for handling device
				selection, media ejection and confirming or cancelling the panel.
*/
class DRSetupPanel : NSPanel {

  /*!
  	@method		initWithNibName:
  	@abstract	Initializes the receiver to use the panel from the nibName nib file.
  	@param		nibName		Nib filename.
  	@result		The receiver.
  */
  init!(nibName: String!)

  /*!
  	@method		runSetupPanel
  	@abstract	Displays the receiver and begins its event loop.
  	@discussion	Invokes NSApplication's @link //apple_ref/occ/instm/NSApplication/runModalForWindow: runModalForWindow: @/link method with self as the argument.
  	@result		Returns @link //apple_ref/c/econst/NSOKButton NSOKButton @/link (if the user clicks the default button) or
  				@link //apple_ref/c/econst/NSCancelButton NSCancelButton @/link (if the user clicks the Cancel button).
  */
  func runSetupPanel() -> Int

  /*!
  	@method		beginSetupSheetForWindow:modalDelegate:didEndSelector:contextInfo:
  	@abstract	Presents a setup panel as a sheet.
  	@param		owner				The window the sheet will be attached to. If owner is not nil, the setup
  									panel slides down as a sheet running as a document modal
  									window. If owner is nil, this is an error.
  	@param		modalDelegate		The modal delegate. The object that implements the didEndSelector.
  	@param		didEndSelector		Selector to invoke when the sheet ends. This selector is optional.
  									If implemented by the modal delegate, this method is invoked after 
  									the modal session has ended, but before dismissing the same panel. 
  									didEndSelector may dismiss the save panel itself; otherwise it will 
  									be dismissed on return from the method. didEndSelector should have 
  									the following signature:
  									<pre>@textblock
  										- (void)setupPanelDidEnd:(DRSetupPanel*)panel returnCode:(int)returnCode contextInfo:(void*)contextInfo;									
  									@/textblock</pre>
  	@param		contextInfo			Context information to be passed when the selector named by didEndSelector
  									is invoked.
  */
  func beginSetupSheetFor(owner: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
  	@method		ok:
  	@abstract	Invoked when the user clicks the panel's default button.
  	@param		sender		The object that invoked this method.
  */
  @IBAction func ok(sender: AnyObject!)

  /*!
  	@method		cancel:
  	@abstract	Invoked when the user clicks the panel's cancel button.
  	@param		sender		The object that invoked this method.
  */
  @IBAction func cancel(sender: AnyObject!)

  /*!
  	@method		eject:
  	@abstract	Invoked when the user clicks the panel's eject button.
  	@param		sender		The object that invoked this method.
  */
  @IBAction func eject(sender: AnyObject!)

  /*!
  	@method		open:
  	@abstract	Invoked when the user clicks the panel's open button.
  	@param		sender		The object that invoked this method.
  */
  @IBAction func open(sender: AnyObject!)

  /*!
  	@method		close:
  	@abstract	Invoked when the user clicks the panel's close button.
  	@param		sender		The object that invoked this method.
  */
  @IBAction func close(sender: AnyObject!)

  /*!
  	@method		deviceSelectionChanged:
  	@abstract	Invoked when the user changes the device selected in the device popup.
  	@discussion	If the device currently selected is disconnected from the machine, the device 
  				popup will remove the device from itself and select a new device. This will act 
  				as if the user changed the device selected. Because of this, device may be nil
  				if no eligible devices are currently connected to the machine.
  	@param		device		The newly selected device, or nil.
  */
  func deviceSelectionChanged(device: DRDevice!)

  /*!
  	@method		mediaStateChanged:
  	@abstract	Invoked when the media state of the currently selected device changes. 
  				This can include media being ejected, inserted, being used by another
  				application, etc.
  	@param		status		The new device status dictionary.
  	@result		<i>YES</i> if the inserted media is valid for use, <i>NO</i> otherwise.
  */
  func mediaStateChanged(status: [NSObject : AnyObject]!) -> Bool

  /*!
  	@method		setupForDisplay
  	@abstract	This method is called immediately before panel is displayed on
  				the screen. Any setup to be done in preparation for display should be
  				done here.
  */
  func setupForDisplay()
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, `defer` flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}

/*!
	@constant	DRSetupPanelDeviceSelectionChangedNotification
	@abstract	Type of notification sent when the device selection changes.
*/
@available(OSX 10.2, *)
let DRSetupPanelDeviceSelectionChangedNotification: String

/*!	
	@constant	DRSetupPanelSelectedDeviceKey
	@abstract	Key in the userInfo dictionary when the
				@link DRSetupPanelDeviceSelectionChangedNotification DRSetupPanelDeviceSelectionChangedNotification @/link is received.
*/
@available(OSX 10.2, *)
let DRSetupPanelSelectedDeviceKey: String
extension NSObject {

  /*!
  	@method		setupPanel:deviceCouldBeTarget:
  	@abstract	Allows the delegate to determine if device can be used as a target.
  	@discussion	This method is used to limit the menu to only those devices that you want
  				to appear.  For example, a DVD burning application might use this
  				to limit the menu to only devices that are capable of writing DVD-Rs.
  	@param		aPanel		The panel.
  	@param		device		The candidate device.
  	@result		<i>YES</i> if the device is acceptable, <i>NO</i> if not.
  */
  class func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool

  /*!
  	@method		setupPanel:deviceCouldBeTarget:
  	@abstract	Allows the delegate to determine if device can be used as a target.
  	@discussion	This method is used to limit the menu to only those devices that you want
  				to appear.  For example, a DVD burning application might use this
  				to limit the menu to only devices that are capable of writing DVD-Rs.
  	@param		aPanel		The panel.
  	@param		device		The candidate device.
  	@result		<i>YES</i> if the device is acceptable, <i>NO</i> if not.
  */
  func setupPanel(aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool

  /*!
   @method		setupPanel:determineBestDeviceOfA:orB:
   @abstract	Allows the delegate to specify which device is its preferred.
   @discussion	When the setup panel is first displayed and again,
   				each time a new device appears, the setup panel will ask the delegate
   				to compare two devices to determine which is most suitable for their
   				content to burn. 
   @param		aPanel		The panel.
   @param		deviceA		A candidate device. May be nil.
   @param		deviceA		A candidate device. May be nil.
   @result		One of the two device objects passed in.
   */
  class func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!

  /*!
   @method		setupPanel:determineBestDeviceOfA:orB:
   @abstract	Allows the delegate to specify which device is its preferred.
   @discussion	When the setup panel is first displayed and again,
   				each time a new device appears, the setup panel will ask the delegate
   				to compare two devices to determine which is most suitable for their
   				content to burn. 
   @param		aPanel		The panel.
   @param		deviceA		A candidate device. May be nil.
   @param		deviceA		A candidate device. May be nil.
   @result		One of the two device objects passed in.
   */
  func setupPanel(aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!

  /*!
  	@method		setupPanelDeviceSelectionChanged:
  	@abstract	Sent by the default notification center when the device selection in the
  				panel has changed.
  	@param		aNotification 	Notification object. This is always @link DRSetupPanelDeviceSelectionChangedNotification DRSetupPanelDeviceSelectionChangedNotification @/link. You can 
  								retrieve the DRSetupPanel object in question by sending @link //apple_ref/occ/instm/NSNotification/object object @/link to aNotification. 
  								The userInfo dictionary contains the single key DRSetupPanelSelectedDeviceKey whose
  								value is the @link //apple_ref/occ/cl/DRDevice DRDevice @/link object that is currently selected.
  */
  class func setupPanelDeviceSelectionChanged(aNotification: NSNotification!)

  /*!
  	@method		setupPanelDeviceSelectionChanged:
  	@abstract	Sent by the default notification center when the device selection in the
  				panel has changed.
  	@param		aNotification 	Notification object. This is always @link DRSetupPanelDeviceSelectionChangedNotification DRSetupPanelDeviceSelectionChangedNotification @/link. You can 
  								retrieve the DRSetupPanel object in question by sending @link //apple_ref/occ/instm/NSNotification/object object @/link to aNotification. 
  								The userInfo dictionary contains the single key DRSetupPanelSelectedDeviceKey whose
  								value is the @link //apple_ref/occ/cl/DRDevice DRDevice @/link object that is currently selected.
  */
  func setupPanelDeviceSelectionChanged(aNotification: NSNotification!)

  /*!
  	@method		setupPanelShouldHandleMediaReservations:
  	@abstract	This delegate method allows the delegate to control how media reservations are handled.
  	@param		aPanel 	The setup panel sending the message.
  	@result		Return <i>NO</i> to indicate the delegate will handle media reservations. Return <i>YES</i> to
  				indicate the setupPanel should handle media reservations itself.
  */
  class func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool

  /*!
  	@method		setupPanelShouldHandleMediaReservations:
  	@abstract	This delegate method allows the delegate to control how media reservations are handled.
  	@param		aPanel 	The setup panel sending the message.
  	@result		Return <i>NO</i> to indicate the delegate will handle media reservations. Return <i>YES</i> to
  				indicate the setupPanel should handle media reservations itself.
  */
  func setupPanelShouldHandleMediaReservations(aPanel: DRSetupPanel!) -> Bool

  /*!
  	@method		setupPanel:deviceContainsSuitableMedia:promptString:
  	@abstract	This delegate method allows the delegate to determine if the media inserted in the 
  				device is suitable for whatever operation is to be performed.
  	@param		aPanel 	The setup panel sending the message.
  	@param		device 	The device that contains the media being asked about.
  	@param		prompt 	A pointer to storage for an NSString. Pass back an NSString object describing 
  						the media state.
  	@result		Return <i>NO</i> to disable the default button.
  */
  class func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool

  /*!
  	@method		setupPanel:deviceContainsSuitableMedia:promptString:
  	@abstract	This delegate method allows the delegate to determine if the media inserted in the 
  				device is suitable for whatever operation is to be performed.
  	@param		aPanel 	The setup panel sending the message.
  	@param		device 	The device that contains the media being asked about.
  	@param		prompt 	A pointer to storage for an NSString. Pass back an NSString object describing 
  						the media state.
  	@result		Return <i>NO</i> to disable the default button.
  */
  func setupPanel(aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
}

/*!
	@const		DRBurnIcon
	@abstract	The name of the burn icon image.
	@discussion	The icon is available to applications through the @link //apple_ref/occ/instm/NSImage/imageNamed: -[NSImage imageNamed:] @/link method.
*/
@available(OSX 10.2, *)
let DRBurnIcon: String

/*!
	@const		DREraseIcon
	@abstract	The name of the erase icon image.
	@discussion	The icon is available to applications through the @link //apple_ref/occ/instm/NSImage/imageNamed: -[NSImage imageNamed:] @/link method.
*/
@available(OSX 10.2, *)
let DREraseIcon: String
