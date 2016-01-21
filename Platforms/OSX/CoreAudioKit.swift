
protocol AUCustomViewPersistentData {

  /*!
      @property   customViewPersistentData
      @abstract	Property for accessing custom data to be preserved by the host
      @discussion Getter- Return the custom data to be preserved by the host before closing the view.                Setter- A NSDictionary containing the view data to restore when the view is opened. This property should set prior to opening the view. The au view should be written in such a way that it can store this dictionary and use its information when the view is opened and user interface elements are created. The view should retain this dictionary until it is finished with it, and should not release the dictionary. This dictionary is owned by the host.
  */
  var customViewPersistentData: [String : AnyObject]? { get set }
}
struct AUGenericViewDisplayFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var ViewTitleDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewPropertiesDisplayFlag: AUGenericViewDisplayFlags { get }
  static var ViewParametersDisplayFlag: AUGenericViewDisplayFlags { get }
}

/*!
@class AUGenericView
@abstract  An AUGenericView object retrieves and instantiates a generic user interface view for the given audio unit
*/
class AUGenericView : NSView, AUCustomViewPersistentData {
  var audioUnit: AudioUnit { get }
  var showsExpertParameters: Bool

  /*! @method initWithAudioUnit:
  @abstract initializer used to create the view for a specific audio unit
  @param au  The Audio Unit associated with the view
  @result  Returns the newly created view object
  */
  init(audioUnit au: AudioUnit)

  /*! @method initWithAudioUnit:displayFlags:
  	@abstract initializer used to create the view for a specific audio unit with a parameter for view flags
  	@param au  The Audio Unit associated with the view
  	@param inFlags  The flags specifying display properties (multiple flags can be combined using the or '|' operator)
  	@result  Returns the newly created view object
  */
  init(audioUnit inAudioUnit: AudioUnit, displayFlags inFlags: AUGenericViewDisplayFlags)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()

  /*!
      @property   customViewPersistentData
      @abstract	Property for accessing custom data to be preserved by the host
      @discussion Getter- Return the custom data to be preserved by the host before closing the view.                Setter- A NSDictionary containing the view data to restore when the view is opened. This property should set prior to opening the view. The au view should be written in such a way that it can store this dictionary and use its information when the view is opened and user interface elements are created. The view should retain this dictionary until it is finished with it, and should not release the dictionary. This dictionary is owned by the host.
  */
  var customViewPersistentData: [String : AnyObject]?
}

/*!
@class AUPannerView
@abstract  An AUPannerView object retrieves and instantiates a generic panner view for the given panner unit
*/
class AUPannerView : NSView {

  /*! @property audioUnit
  	@abstract Read-only property for the audio unit associated with the view
  	@result   The audio unit associated with the generic panner view
  */
  var audioUnit: AudioUnit { get }

  /*! @method +AUPannerViewWithAudioUnit:
      @abstract Static constructor used to create the view
      @param au  The Panner Audio Unit associated with the view
      @result  Returns the newly created view object autoreleased or nil on error
  */
  /*not inherited*/ init(audioUnit au: AudioUnit)
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
}
@available(OSX 10.11, *)
class AUViewController : NSViewController, ExtensionRequestHandling {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
extension AUAudioUnit {

  /*!	@method	requestViewControllerWithCompletionHandler:
  	@brief	Obtains an audio unit's view controller (and thereby a view).
  	@discussion
  		Asynchronously requests the audio unit's view controller. This method will later call the
  		completion handler, in a thread/dispatch queue context internal to the implementation, with
  		a view controller, or nil in the case of an audio unit without a custom view controller.
  */
  func requestViewControllerWithCompletionHandler(completionHandler: (NSViewController?) -> Void)
}

/*!
 @class CABTLEMIDIWindowController
 @abstract  A window controller object that can present a window that displays nearby Bluetooth-based MIDI peripherals. The user can select one of those peripherals and pair it with their mac. Additionally, the user can advertise the mac as a Bluetooth-based MIDI peripheral.
 
 @discussion To use this class, create an instance of the CABTLEMIDIWindowController, initialize it, and call showWindow: to display the UI.
 */
class CABTLEMIDIWindowController : NSWindowController {
  init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
  convenience init()
}

/*!
 @class CAInterDeviceAudioViewController
 @abstract  A view controller object that manages a view displaying iOS devices that are connected to the Mac and support inter-device audio. The user can select one of those peripherals and connect it to their mac. This class is only available in 64-bit runtimes.
 
 @discussion To use this class, create an instance of the CAInterDeviceAudioController, get the view and add it as a subview of a NSWindow.
 */
class CAInterDeviceAudioViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}

/*!
 @class CANetworkBrowserWindowController
 @abstract  A window controller object that can present a window that displays available network audio devices (including AVB). The user can connect to one or more of those devices to use exclusively with his mac.
 
 @discussion To use this class, create an instance of the CANetworkBrowserWindowController, initialize it, and call showWindow: to display the UI.
 */
class CANetworkBrowserWindowController : NSWindowController {

  /*!
   * @discussion Provides a check for determining if the current machine hardware supports AVB.
   * @return True if AVB is supported.
   */
  class func isAVBSupported() -> Bool

  /*!
   * @discussion Designated initializer
     @return initialized instance of CANetworkBrowerWindowController
   */
  init()
  convenience init(window: NSWindow?)
  init?(coder: Coder)
  convenience init(windowNibName: String)
  convenience init(windowNibName: String, owner: AnyObject)
  convenience init(windowNibPath: String, owner: AnyObject)
}
