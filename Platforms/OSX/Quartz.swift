

/*! 
 @protocol IKCameraDeviceView
 @abstract A delegate of IKCameraDeviceView must conform to IKCameraDeviceViewDelegate protocol.
 */
protocol IKCameraDeviceViewDelegate {

  /*! 
   @method cameraDeviceViewSelectionDidChange:
   @abstract This message is sent when the user selection did change.
   */
  optional func cameraDeviceViewSelectionDidChange(cameraDeviceView: IKCameraDeviceView!)

  /*! 
   @method cameraDeviceView:didDownloadFile:location:fileData:error:
   @abstract This message is sent for each file that gets downloaded.
   @discussion Based on the IKCameraDeviceViewDisplayMode the downloaded file will be saved on disk using the 'url', or returned in memory as NSData
   */
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didDownloadFile file: ICCameraFile!, location url: NSURL!, fileData data: NSData!, error: NSError!)

  /*! 
   @method cameraDeviceView:didEncounterError:
   @abstract This message is sent every time the camera device reports an error.
   */
  optional func cameraDeviceView(cameraDeviceView: IKCameraDeviceView!, didEncounterError error: NSError!)
}
enum IKCameraDeviceViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Table
  case Icon
}
enum IKCameraDeviceViewTransferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FileBased
  case MemoryBased
}

/*! 
 @class IKCameraDeviceView
 @abstract IKCameraDeviceView displays content of a Image Capture supported camera.
 */
class IKCameraDeviceView : NSView {

  /*!
   @property delegate
   @abstract Delegate of the IKCameraDeviceView.
   */
  unowned(unsafe) var delegate: @sil_unmanaged IKCameraDeviceViewDelegate!

  /*!
   @property cameraDevice
   @abstract the camera device.
   */
  unowned(unsafe) var cameraDevice: @sil_unmanaged ICCameraDevice!

  /*!
   @property mode
   @abstract current display mode.
   */
  var mode: IKCameraDeviceViewDisplayMode

  /*!
   @property hasDisplayModeTable
   @abstract support table view display mode.
   */
  var hasDisplayModeTable: Bool

  /*!
   @property hasDisplayModeIcon
   @abstract support icon view display mode.
   */
  var hasDisplayModeIcon: Bool

  /*!
   @property downloadAllControlLabel
   @abstract label for the 'Download All' control - allows for example renaming to 'Import All'.
   */
  var downloadAllControlLabel: String!

  /*!
   @property downloadSelectedControlLabel
   @abstract label for the 'Download Selected' control.
   */
  var downloadSelectedControlLabel: String!

  /*!
   @property iconSize
   @abstract in icon mode: size of the image thumbnails.
   */
  var iconSize: Int

  /*!
   @property transferMode
   @abstract transfer mode either file based - or - in memory.
   */
  var transferMode: IKCameraDeviceViewTransferMode

  /*!
   @property displaysDownloadsDirectoryControl
   @abstract show a downloads directory control.
   */
  var displaysDownloadsDirectoryControl: Bool

  /*!
   @property downloadsDirectory
   @abstract downloads directory.
   */
  var downloadsDirectory: NSURL!

  /*!
   @property displaysPostProcessApplicationControl
   @abstract show a postprocessing application control.
   */
  var displaysPostProcessApplicationControl: Bool

  /*!
   @property postProcessApplication
   @abstract postprocessing application.
   */
  var postProcessApplication: NSURL!

  /*!
   @property canRotateSelectedItemsLeft
   @abstract indicates if the user selected items can be rotated left.
   */
  var canRotateSelectedItemsLeft: Bool { get }

  /*!
   @property canRotateSelectedItemsRight
   @abstract indicates if the user selected items can be rotated right.
   */
  var canRotateSelectedItemsRight: Bool { get }

  /*!
   @property canDeleteSelectedItems
   @abstract indicates if the user selected items can be deleted.
   */
  var canDeleteSelectedItems: Bool { get }

  /*!
   @property canDownloadSelectedItems
   @abstract indicates if the user selected items can be downloaded.
   */
  var canDownloadSelectedItems: Bool { get }

  /*!
   @method selectedIndexes
   @abstract current user selection.
   */
  func selectedIndexes() -> NSIndexSet!

  /*!
   @method selectIndexes:byExtendingSelection:
   @abstract setting current user selection.
   */
  func select(indexes: NSIndexSet!, byExtendingSelection extend: Bool)

  /*!
   @method rotateLeft:
   @abstract rotate selected items left.
   */
  @IBAction func rotateLeft(sender: AnyObject!)

  /*!
   @method rotateRight:
   @abstract rotate selected items right.
   */
  @IBAction func rotateRight(sender: AnyObject!)

  /*!
   @method deleteSelectedItems:
   @abstract delete selected items.
   */
  @IBAction func deleteSelectedItems(sender: AnyObject!)

  /*!
   @method downloadSelectedItems:
   @abstract download selected items.
   */
  @IBAction func downloadSelectedItems(sender: AnyObject!)

  /*!
   @method downloadAllItems:
   @abstract download all items.
   */
  @IBAction func downloadAllItems(sender: AnyObject!)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*! 
 @protocol IKDeviceBrowserViewDelegate
 @abstract A delegate of IKDeviceBrowserView must conform to IKDeviceBrowserViewDelegate protocol.
 */
protocol IKDeviceBrowserViewDelegate {

  /*! 
   @method deviceBrowserView:selectionDidChange:
   @abstract This message is sent when the user selection did change.
   @discussion The device may be a ICCameraDevice or a ICScannerDevice.
   */
  func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, selectionDidChange device: ICDevice!)

  /*! 
   @method deviceBrowserView:didEncounterError:
   @abstract This message is sent every time the device browser reports an error.
   */
  optional func deviceBrowserView(deviceBrowserView: IKDeviceBrowserView!, didEncounterError error: NSError!)
}
enum IKDeviceBrowserViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Table
  case Outline
  case Icon
}

/*! 
 @class IKDeviceBrowserView
 @abstract IKDeviceBrowserView displays Image Capture cameras and scanners.
 */
class IKDeviceBrowserView : NSView {

  /*!
   @property delegate
   @abstract delegate of the IKDeviceBrowserView.
   */
  unowned(unsafe) var delegate: @sil_unmanaged IKDeviceBrowserViewDelegate!

  /*!
   @property displaysLocalCameras
   @abstract for device filtering - indicates that the IKDeviceBrowserView should include local cameras.
   */
  var displaysLocalCameras: Bool

  /*!
   @property displaysNetworkCameras
   @abstract for device filtering - indicates that the IKDeviceBrowserView should include network/shared cameras.
   */
  var displaysNetworkCameras: Bool

  /*!
   @property displaysLocalScanners
   @abstract for device filtering - indicates that the IKDeviceBrowserView should include local scanners.
   */
  var displaysLocalScanners: Bool

  /*!
   @property displaysNetworkScanners
   @abstract for device filtering - indicates that the IKDeviceBrowserView should include network/shared scanners.
   */
  var displaysNetworkScanners: Bool

  /*!
   @property mode
   @abstract one of the supported display modes (table, outline, or icon mode).
   */
  var mode: IKDeviceBrowserViewDisplayMode

  /*!
   @property selectedDevice
   @abstract user selected device (ICCameraDevice or ICScannerDevice).
   */
  var selectedDevice: ICDevice! { get }
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*!
    @class		IKFilterBrowserPanel
    @abstract   The IKFilterBrowserPanel provides the shared IKFilterBrowser with its runtime model.
    @discussion  See information in the introduction.
*/
class IKFilterBrowserPanel : NSPanel {

  /*!
      @method     filterBrowserPanelWithStyleMask:
      @abstract   Create a shared instance of the IKFilterBrowser
      @discussion Use this method to create a shared instance of the IKFilterBrowser with a specific NSWindow style. Right now it only supports selecting of deselecting the NSTexturedBackgroundWindowMask style bit.
  */
  class func filterBrowserPanelWithStyleMask(styleMask: UInt32) -> AnyObject!

  /*!
      @method     filterName
      @abstract   Returns the name of the currently selected filter.
      @discussion Use this method in response to a IKFilterBrowserFilterSelectedNotification or IKFilterBrowserFilterDoubleClickNotification or afer returning from a modal session.
  */
  func filterName() -> String!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}

/*!
    @category	IKFilterBrowserPanelRuntime
    @abstract    Use the methods in the IKFilterBrowserPanelRuntime to display and run the IKFilterBrowser.
    @discussion  These methods are modeled after the NSOpenPanel methods with additions to allow for different UI configurations and to just get a IKFilterBrowserView to be inserted in your UI.
*/
extension IKFilterBrowserPanel {

  /*!
      @method     beginWithOptions:modelessDelegate:didEndSelector:contextInfo:
      @abstract   Displays the FilterBrowser in a new window unless it is already open.
      @discussion Use this method to open the IKFilterBrowser in a seperate window, much like a panel. When the panel operation is ended, didEndSelector is invoked on the modelessDelegate, passing contextInfo as an argument.
  			didEndSelector should have the following signature:
  			
  				- (void)openPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo
  				
  			The value passed as returnCode will be either NSCancelButton or NSOKButton.
  	@param		inOptions	A dictionary describing the desired UI configuration for the IKFilterBrowser
  	@param		modelessDelegate	See discussion below
  	@param		didEndSelector	See discussion below
  	@param		contextInfo	See discussion below
  */
  func begin(options inOptions: [NSObject : AnyObject]! = [:], modelessDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
      @method     beginSheetWithOptions:modalForWindow:modalDelegate:didEndSelector:contextInfo:
      @abstract   Displays the FilterBrowser in a sheet attached to the passed in window.
      @discussion Use this method to open the IKFilterBrowser in a sheet attached to a window. When the sheet operation is ended, didEndSelector is invoked on the modalDelegate, passing contextInfo as an argument. 
  			didEndSelector should have the following signature:
  			
  				- (void)openPanelDidEnd:(NSOpenPanel *)panel returnCode:(int)returnCode  contextInfo:(void  *)contextInfo
  				
  			The value passed as returnCode will be either NSCancelButton or NSOKButton.
  	@param		inOptions	A dictionary describing the desired UI configuration for the IKFilterBrowser
  	@param		modalForWindow	The window to which the sheet should be attached to.
  	@param		modalDelegate	See discussion below
  	@param		didEndSelector	See discussion below
  	@param		contextInfo	See discussion below
  */
  func beginSheet(options inOptions: [NSObject : AnyObject]! = [:], modalFor docWindow: NSWindow!, modalDelegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
      @method     runModalWithOptions
      @abstract   Displays the FilterBrowser in a modal dialog.
      @discussion Use this method to run the IKFilterBrowser in a modal dialog. The value passed as returnCode will be either NSCancelButton or NSOKButton.
  	@param		inOptions	A dictionary describing the desired UI configuration for the IKFilterBrowser
  */
  func runModal(options inOptions: [NSObject : AnyObject]! = [:]) -> Int32

  /*!
      @method     filterBrowserViewWithOptions
      @abstract   Returns a view containing the FilterBrowser.
      @discussion Use this method to run the IKFilterBrowser in your own UI. To dismiss it, invoke the finish action as described below.
  	@param		inOptions	A dictionary describing the desired UI configuration for the IKFilterBrowser
  */
  func filterBrowserView(options inOptions: [NSObject : AnyObject]! = [:]) -> IKFilterBrowserView!

  /*!
      @method     finish
      @abstract   Closes the IKFilterBrowser.
      @discussion Invoke this action for instance from your OK or Cancel button when you are running the IKFilterBrowserView modal in your own UI.
  */
  func finish(sender: AnyObject!)
}

/*!
    @const      IKFilterBrowserFilterSelectedNotification
    @abstract   IKFilterBrowserFilterSelectedNotification
    @discussion Send when the user clicked on a filter in the Filter Browser. The name of the selected filter is send as the object in the notification
*/
let IKFilterBrowserFilterSelectedNotification: String

/*!
    @const      IKFilterBrowserFilterDoubleClickNotification
    @abstract   IKFilterBrowserFilterDoubleClickNotification
    @discussion Send when the user made a double click on a filter in the Filter Browser. The name of the selected filter is send as the object in the notification
*/
let IKFilterBrowserFilterDoubleClickNotification: String

/*!
    @const      IKFilterBrowserWillPreviewFilterNotification
    @abstract   IKFilterBrowserWillPreviewFilterNotification
    @discussion Send before a filter is previewed allowing for setting parameters of that filter. The selected CIFilter object is send as the object in the notification
*/
let IKFilterBrowserWillPreviewFilterNotification: String

/*!
    @const      IKFilterBrowserShowCategories
    @abstract   IKFilterBrowserShowCategories
    @discussion BOOL - Determines if the filter browser should show the category list
*/
let IKFilterBrowserShowCategories: String

/*!
    @const      IKFilterBrowserShowPreview
    @abstract   IKFilterBrowserShowPreview
    @discussion BOOL - Determines if the filter browser should show the preview well
*/
let IKFilterBrowserShowPreview: String

/*!
    @const      IKFilterBrowserExcludeCategories
    @abstract   IKFilterBrowserExcludeCategories
    @discussion NSArray - The categories in this array will not be displayed in the browser
*/
let IKFilterBrowserExcludeCategories: String

/*!
    @const      IKFilterBrowserExcludeFilters
    @abstract   IKFilterBrowserExcludeFilters
    @discussion NSArray - The filters in this array will not be displayed in the browser
*/
let IKFilterBrowserExcludeFilters: String

/*!
    @const      IKFilterBrowserDefaultInputImage
    @abstract   IKFilterBrowserDefaultInputImage - Allows you to set a custom image to be used as the inputImage for the filter preview.
    @discussion CIImage* - You can also set the inputImage among other parameters during the IKFilterBrowserWillPreviewFilterNotification. This image will be set before the notification is called. Setting the image to nil falls back to the image suplied by the framework.
*/
let IKFilterBrowserDefaultInputImage: String

/*!
    @header IKFilterBrowserView
	@copyright 2006 Apple Inc. All rights reserved.
	@availability Coming to a Leopard installation near you
    @abstract   View containing the elements of the IKFilterBrowser
    @discussion See discussion in IKFilterBrowserPanel
*/
class IKFilterBrowserView : NSView {

  /*!
      @method     setPreviewState:
      @abstract   Use this method to show and hide the Preview
      @discussion Use this method to show and hide the Preview from the program.
      @param      inState Boolean for visibility of the preview.
  */
  func setPreviewState(inState: Bool)

  /*!
      @method     filterName
      @abstract   Returns the name of the currently selected filter.
      @discussion Use this method in response to a IKFilterBrowserFilterSelectedNotification or IKFilterBrowserFilterDoubleClickNotification or afer returning from a modal session.
  */
  func filterName() -> String!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*!
    @const      IKUISizeFlavor
    @abstract   IKUISizeFlavor
    @discussion Key to request the desired size of controls in a filter UIView - defined values are IKUISizeMini, IKUISizeSmall and IKUISizeRegular.
*/
let IKUISizeFlavor: String

/*!
    @const      IKUISizeMini
    @abstract   IKUISizeMini
    @discussion Constant for requesting controls in mini size.
*/
let IKUISizeMini: String

/*!
    @const      IKUISizeSmall
    @abstract   IKUISizeSmall
    @discussion Constant for requesting controls in small size.
*/
let IKUISizeSmall: String

/*!
    @const      IKUISizeRegular
    @abstract   IKUISizeRegular
    @discussion Constant for requesting controls in regular or normal size.
*/
let IKUISizeRegular: String

/*!
    @const      IKUImaxSize
    @abstract   IKUImaxSize
    @discussion Maximum allowed dimensions of the view for the filter UI. If width or height is zero it means that that dimension of the view is not restricted.
*/
let IKUImaxSize: String

/*!
    @const      IKUIFlavorAllowFallback
    @abstract   IKUIFlavorAllowFallback
    @discussion Allow the filter to provide a view with controls of a different size and set than requested, if it cannot provide a view for the requested flavor.
*/
let IKUIFlavorAllowFallback: String

/*!
    @category	IKFilterUIAddition
    @abstract    The IKFilterUIAddition category to IKFilter provides the API for the Image Unit UI generation.
    @discussion  (comprehensive description)
*/
extension CIFilter {

  /*!
      @method     viewForUIConfiguration:excludedKeys:
      @abstract   The viewForUIConfiguration returns a IKFilterView for the filter. The UI is either created by the filter or automatically generated by the CoreImageKit framework.
      @discussion The viewForUIConfiguration first requests that the filter provides a UI by calling provideViewForUIConfiguration. If this method is not implemented or the filter cannot provide a UI for the given configuration, the CoreImageKit framework will generate a UI.
  		The UIConfiguration dictionary is an NSDictionary with the following defined keys:
  	@param	UIConfiguration	Dictionary with the IKUISizeFlavor and the kCIUIParameterSet information - see below.
  	@param	excludedKeys	An array of keys that should not be included in the view (for example inputImage will often be excluded). This can be nil, if no keys should be excluded
  
  IKUISizeFlavor:
  
  	mini:		IKUISizeMini
  	
  	small:		IKUISizeSmall
  	
  	regular:	IKUISizeRegular
  	
  These sizes follow the size conventions available in Tiger IB
  
  kCIUIParameterSet:
  
  	basic:			kCIUISetBasic
  	
  	intermediate:		kCIUISetIntermediate
  	
  	advanced:		kCIUISetAdvanced
  	
  	development:	kCIUISetDevelopment
  	
  When a client app requests a UI for a parameter set, all keys for that set and below will be included - example: advanced consists of all parameters in the basic, intermediate and advanced set.
  The development set is targeted towards the development of filters and client apps. Parameters in this set are either experimental or for debugging purposes and should not be shown in a shipping product.
  IKUImaxSize:(NSSize)maxSize;	Maximum allowed dimension of the returned view. If the size requested is too small, the filter is expected to return a view as small as possible. It is up to the client to verify that the returned view fits into his context.
  IKUIFlavorAllowFallback:Boolean	If a requested flavor set-size combination is not supported, the filter can return a view for a different set-size combination. If this is set to no (which is the default), NULL should be returned by the filter
  
  
  */
  func viewForUIConfiguration(inUIConfiguration: [NSObject : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}

/*!
    @protocol	IKFilterCustomUIProvider
    @abstract    The IKFilterCustomUIProvider needs to be implemented by a filter to implement its own UI. 
    @discussion  When a filter wants to provide its own UI for all or only some configurations, it has to implement the provideViewForUIConfiguration method.
*/
protocol IKFilterCustomUIProvider {

  /*!
      @method     provideViewForUIConfiguration:excludedKeys:
      @abstract   The provideViewForUIConfiguration gets called, when a client requests a filter UI by calling viewForUIConfiguration:excludedKeys.
      @discussion See description in viewForUIConfiguration:excludedKeys for details on the parameters. If a filter cannot provide a IKFilterUIView for a given UIConfiguration, it can return nil and the CoreImageKit framework will try to provide a UI for it instead.
  */
  @available(OSX 10.0, *)
  func provideViewForUIConfiguration(inUIConfiguration: [NSObject : AnyObject]!, excludedKeys inKeys: [AnyObject]!) -> IKFilterUIView!
}
class IKFilterUIView : NSView {

  /*!
      @method     viewWithFrame:filter:
      @abstract   The viewWithFrame method creates a view that retains the filter passed into it.
  */
  class func viewWithFrame(frameRect: NSRect, filter inFilter: CIFilter!) -> AnyObject!

  /*!
      @method     initWithFrame:filter:
      @abstract   The initWithFrame method initializes a view that retains the filter passed into it.
  */
  init!(frame frameRect: NSRect, filter inFilter: CIFilter!)

  /*!
      @method     filter
      @abstract   Accessor method to return the filter instance that the view controls.
  */
  func filter() -> CIFilter!

  /*!
      @method     objectController
      @abstract   Accessor method for the object controller for all bindings between the filter and the UI representation.
  */
  func objectController() -> NSObjectController!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
struct IKImageBrowserCellState : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IKImageStateNoImage: IKImageBrowserCellState { get }
var IKImageStateInvalid: IKImageBrowserCellState { get }
var IKImageStateReady: IKImageBrowserCellState { get }
let IKImageBrowserCellBackgroundLayer: String
let IKImageBrowserCellForegroundLayer: String
let IKImageBrowserCellSelectionLayer: String
let IKImageBrowserCellPlaceHolderLayer: String
class IKImageBrowserCell : NSObject {

  /*! 
   @method imageBrowserView
   @abstract Returns the view the receiver uses to display its represented object.
   @discussion Subclasses should not override this method.
   */
  func imageBrowserView() -> IKImageBrowserView!

  /*! 
   @method representedItem
   @abstract Returns the receiver� represented object.
   @discussion Subclasses should not override this method.
   */
  func representedItem() -> AnyObject!

  /*! 
   @method indexOfRepresentedItem
   @abstract Returns the index of the receiver� represented object in the datasource.
   @discussion Subclasses should not override this method.
   */
  func indexOfRepresentedItem() -> Int

  /*! 
   @method frame
   @abstract Returns the receiver� frame rectangle, which defines its position in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses should not override this method.
   */
  func frame() -> NSRect

  /*! 
   @method imageContainerFrame
   @abstract Returns the receiver� image container frame rectangle, which defines the position of the container of the thumbnail in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses can override this method to customize the position of the thumbnail container. The image frame is computed automatically from the image container frame by taking in account the image alignment and the image aspect ratio.
   */
  func imageContainerFrame() -> NSRect

  /*! 
   @method imageFrame
   @abstract Returns the receiver� image frame rectangle, which defines the position of the thumbnail in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses can override this method to customize the position of the thumbnail.
   */
  func imageFrame() -> NSRect

  /*! 
   @method selectionFrame
   @abstract Returns the receiver� selection frame rectangle, which defines the position of the selection rectangle in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses can override this method to customize the position of the selection frame.
   */
  func selectionFrame() -> NSRect

  /*! 
   @method titleFrame
   @abstract Returns the receiver� title frame rectangle, which defines the position of the title in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses can override this method to customize the position of the title.
   */
  func titleFrame() -> NSRect

  /*! 
   @method subtitleFrame
   @abstract Returns the receiver� subtitle frame rectangle, which defines the position of the subtitle in its IKImageBrowserView.
   @discussion The coordinates of this frame are in view's coordinate space. Subclasses can override this method to customize the position of the subtitle.
   */
  func subtitleFrame() -> NSRect

  /*! 
   @method imageAlignment
   @abstract Returns the position of the cell� image in the frame. The default is NSImageAlignCenter.
   @discussion Subclasses can override this method to customize the image alignment. For the list of possible alignments, see [NSImageView setImageAlignment:].
   The image frame will be computed automatically from the image container frame by taking in account the image alignment and the image aspect ratio.
   */
  func imageAlignment() -> NSImageAlignment

  /*! 
   @method isSelected
   @abstract Returns the selection state of the receiver.
   @discussion Returns YES if the receiver is selected, otherwise NO. Subclasses should not override this method.
   */
  func isSelected() -> Bool

  /*! 
   @method cellState
   @abstract Returns the current cell state of the receiver.
   @discussion Returns IKImageStateReady if the receiver� represented object has been set and the cell is ready to display. The IKImageBrowserView creates thumbnails asynchronously; This method returns IKImageStateNoImage until a thumbnail has been created from the represented object. 
   */
  func cellState() -> IKImageBrowserCellState

  /*! 
   @method opacity
   @abstract Determines the opacity of the receiver.
   @discussion Possible values are between 0.0 (transparent) and 1.0 (opaque). Subclasses can override this method to customize the opacity of the cell.
   */
  func opacity() -> CGFloat

  /*! 
   @method layerForType:
   @abstract Provides the receiver� layer for the given type. The default is nil.
   @discussion Subclasses can override this method to add a layer in the background, foreground... of the cell (see possible types above).
   */
  func layerForType(type: String!) -> CALayer!
  init()
}
var IKCellsStyleNone: Int { get }
var IKCellsStyleShadowed: Int { get }
var IKCellsStyleOutlined: Int { get }
var IKCellsStyleTitled: Int { get }
var IKCellsStyleSubtitled: Int { get }
var IKGroupBezelStyle: Int { get }
var IKGroupDisclosureStyle: Int { get }
struct IKImageBrowserDropOperation : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IKImageBrowserDropOn: IKImageBrowserDropOperation { get }
var IKImageBrowserDropBefore: IKImageBrowserDropOperation { get }

/*!
  @category NSObject (IKImageBrowserDataSource)
  @abstract The IKImageBrowserDataSource informal protocol declares the methods that an instance of IKImageBrowserView uses to access the contents of its data source object.
*/
extension NSObject {

  /*! 
    @method numberOfItemsInImageBrowser:
    @abstract Returns the number of records managed for aBrowser by the data source object (required).
    @discussion An instance of IKImageView uses this method to determine how many cells it should create and display. 
  */
  class func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int

  /*! 
    @method numberOfItemsInImageBrowser:
    @abstract Returns the number of records managed for aBrowser by the data source object (required).
    @discussion An instance of IKImageView uses this method to determine how many cells it should create and display. 
  */
  func numberOfItemsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int

  /*! 
    @method imageBrowser:itemAtIndex:
    @abstract Returns an object for the record in aBrowser corresponding to index <i>index</i> (required).
    @discussion The returned object must implement the required methods of <i>IKImageBrowserItem</i>. 
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, itemAt index: Int) -> AnyObject!

  /*! 
    @method imageBrowser:itemAtIndex:
    @abstract Returns an object for the record in aBrowser corresponding to index <i>index</i> (required).
    @discussion The returned object must implement the required methods of <i>IKImageBrowserItem</i>. 
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, itemAt index: Int) -> AnyObject!

  /*! 
    @method imageBrowser:removeItemsAtIndexes:
    @abstract Invoked by the image browser after it has been determined that a remove operation should be applied (optional)
    @discussion The data source should update itself (usually by removing this indexes).  
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAt indexes: NSIndexSet!)

  /*! 
    @method imageBrowser:removeItemsAtIndexes:
    @abstract Invoked by the image browser after it has been determined that a remove operation should be applied (optional)
    @discussion The data source should update itself (usually by removing this indexes).  
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, removeItemsAt indexes: NSIndexSet!)

  /*! 
    @method imageBrowser:moveItemsAtIndexes:toIndex:
    @abstract Invoked by the image browser after it has been determined that a reordering operation should be applied (optional).
    @discussion The data source should update itself (usually by reordering its elements).  
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAt indexes: NSIndexSet!, to destinationIndex: Int) -> Bool

  /*! 
    @method imageBrowser:moveItemsAtIndexes:toIndex:
    @abstract Invoked by the image browser after it has been determined that a reordering operation should be applied (optional).
    @discussion The data source should update itself (usually by reordering its elements).  
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, moveItemsAt indexes: NSIndexSet!, to destinationIndex: Int) -> Bool

  /*!
  	@method imageBrowser:writeItemsAtIndexes:toPasteboard:
  	@abstract This method is called after it has been determined that a drag should begin, but before the drag has been started. 'itemIndexes' contains the indexes that will be participating in the drag. Return the number of items effectively written to the pasteboard.
  	@discussion optional - drag and drop support
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAt itemIndexes: NSIndexSet!, to pasteboard: NSPasteboard!) -> Int

  /*!
  	@method imageBrowser:writeItemsAtIndexes:toPasteboard:
  	@abstract This method is called after it has been determined that a drag should begin, but before the drag has been started. 'itemIndexes' contains the indexes that will be participating in the drag. Return the number of items effectively written to the pasteboard.
  	@discussion optional - drag and drop support
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, writeItemsAt itemIndexes: NSIndexSet!, to pasteboard: NSPasteboard!) -> Int

  /*!
  	@method numberOfGroupsInImageBrowser:
  	@abstract Returns the number of groups
  	@discussion this method is optional
  */
  class func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int

  /*!
  	@method numberOfGroupsInImageBrowser:
  	@abstract Returns the number of groups
  	@discussion this method is optional
  */
  func numberOfGroupsInImageBrowser(aBrowser: IKImageBrowserView!) -> Int

  /*!
  	@method imageBrowser:groupAtIndex:
  	@abstract Returns the group at index 'index'
  	@discussion A group is defined by a dictionay. Keys for this dictionary are defined below.
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, groupAt index: Int) -> [NSObject : AnyObject]!

  /*!
  	@method imageBrowser:groupAtIndex:
  	@abstract Returns the group at index 'index'
  	@discussion A group is defined by a dictionay. Keys for this dictionary are defined below.
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, groupAt index: Int) -> [NSObject : AnyObject]!
}

/*!
  @category NSObject (IKImageBrowserItem)
  @abstract The IKImageBrowserItem informal protocol declares the methods that an instance of IKImageBrowserView uses to access the contents of its data source for a given item.
  @discussion Some of the methods in this protocol, such as <i>image</i> are called very frequently, so they must be efficient.
*/
extension NSObject {

  /*! 
    @method imageUID
    @abstract Returns a unique string that identify this data source item (required).
    @discussion The image browser uses this identifier to keep the correspondance between its cache and the data source item  
  */
  class func imageUID() -> String!

  /*! 
    @method imageUID
    @abstract Returns a unique string that identify this data source item (required).
    @discussion The image browser uses this identifier to keep the correspondance between its cache and the data source item  
  */
  func imageUID() -> String!

  /*! 
    @method imageRepresentationType
    @abstract Returns the representation of the image to display (required).
    @discussion Keys for imageRepresentationType are defined below.
  */
  class func imageRepresentationType() -> String!

  /*! 
    @method imageRepresentationType
    @abstract Returns the representation of the image to display (required).
    @discussion Keys for imageRepresentationType are defined below.
  */
  func imageRepresentationType() -> String!

  /*! 
    @method imageRepresentation
    @abstract Returns the image to display (required). Can return nil if the item has no image to display.
  */
  class func imageRepresentation() -> AnyObject!

  /*! 
    @method imageRepresentation
    @abstract Returns the image to display (required). Can return nil if the item has no image to display.
  */
  func imageRepresentation() -> AnyObject!

  /*! 
    @method imageVersion
    @abstract Returns a version of this item. The receiver can return a new version to let the image browser knows that it shouldn't use its cache for this item
  */
  class func imageVersion() -> Int

  /*! 
    @method imageVersion
    @abstract Returns a version of this item. The receiver can return a new version to let the image browser knows that it shouldn't use its cache for this item
  */
  func imageVersion() -> Int

  /*! 
    @method imageTitle
    @abstract Returns the title to display as a NSString. Use setValue:forKey: with IKImageBrowserCellsTitleAttributesKey on the IKImageBrowserView instance to set text attributes.
  */
  class func imageTitle() -> String!

  /*! 
    @method imageTitle
    @abstract Returns the title to display as a NSString. Use setValue:forKey: with IKImageBrowserCellsTitleAttributesKey on the IKImageBrowserView instance to set text attributes.
  */
  func imageTitle() -> String!

  /*! 
    @method imageSubtitle
    @abstract Returns the subtitle to display as a NSString. Use setValue:forKey: with IKImageBrowserCellsSubtitleAttributesKey on the IKImageBrowserView instance to set text attributes.
  */
  class func imageSubtitle() -> String!

  /*! 
    @method imageSubtitle
    @abstract Returns the subtitle to display as a NSString. Use setValue:forKey: with IKImageBrowserCellsSubtitleAttributesKey on the IKImageBrowserView instance to set text attributes.
  */
  func imageSubtitle() -> String!

  /*! 
    @method isSelectable
    @abstract Returns whether this item is selectable. 
    @discussion The receiver can implement this methods to forbid selection of this item by returning NO.
  */
  class func isSelectable() -> Bool

  /*! 
    @method isSelectable
    @abstract Returns whether this item is selectable. 
    @discussion The receiver can implement this methods to forbid selection of this item by returning NO.
  */
  func isSelectable() -> Bool
}

/*! 
  @class IKImageBrowserView
  @abstract An IKImageBrowserView object is a view that display and browse images and movies. It supports scrolling and zooming.  
*/
class IKImageBrowserView : NSView, NSDraggingSource {
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, sourceOperationMaskFor context: NSDraggingContext) -> NSDragOperation
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, willBeginAt screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, movedTo screenPoint: NSPoint)
  @available(OSX 10.7, *)
  func draggingSession(session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(OSX 10.7, *)
  func ignoreModifierKeysFor(session: NSDraggingSession) -> Bool
}

/*!
  @category IKImageBrowserView (IKMainMethods)
*/
extension IKImageBrowserView {

  /*! 
    @method initWithFrame:
    @abstract Initializes and returns a newly allocated IKImageBrowserView object with a specified frame rectangle.
    @param frame The frame rectangle for the created view object. 
  */
  init!(frame: NSRect)

  /*!
    @method setDataSource:
    @abstract Sets the receiver's data source to <i>source</i>. the data source is not retained by the receiver.
  */
  func setDataSource(source: AnyObject!)

  /*!
    @method dataSource
    @abstract Returns the receiver's data source.
  */
  func dataSource() -> AnyObject!

  /*!
    @method reloadData
    @abstract Marks the receiver as needing redisplay, so it will reload the data and draw the new values.
  */
  func reloadData()

  /*!
    @method setDelegate:
    @abstract Sets the receiver's delegate to <i>aDelegate</i>. aDelegate is expected to implement the IKImageBrowserDelegate informal protocol.
  */
  func setDelegate(aDelegate: AnyObject!)

  /*!
    @method delegate
    @abstract Returns the receiver's delegate.
  */
  func delegate() -> AnyObject!
}

/*!
  @category IKImageBrowserView (IKAppearance)
*/
extension IKImageBrowserView {

  /*! 
    @method setCellsStyleMask:
    @abstract Defines the cells appearance style.
    @param mask An integer bit mask; see the discussion below.
    @discussion mask can be specified by combining any of the options below using the C bitwise OR operator 
  */
  func setCellsStyleMask(mask: Int)

  /*! 
    @method cellsStyleMask
    @abstract Return the cells appearance style mask.
  */
  func cellsStyleMask() -> Int

  /*! 
    @method setConstrainsToOriginalSize:
    @abstract Sets whether the receiver constraints the cells's image to their original size. Default is NO.
  */
  func setConstrainsToOriginalSize(flag: Bool)

  /*! 
    @method constrainsToOriginalSize
    @abstract Returns whether the receiver constraints the cells's image to their original size.
  */
  func constrainsToOriginalSize() -> Bool

  /*! 
   @method setBackgroundLayer:
   @abstract Specifies the receiver� background layer.
   */
  func setBackgroundLayer(aLayer: CALayer!)

  /*! 
   @method backgroundLayer
   @abstract Provides the receiver� background layer.
   */
  func backgroundLayer() -> CALayer!

  /*! 
   @method setForegroundLayer:
   @abstract Specifies the receiver� foreground layer.
   */
  func setForegroundLayer(aLayer: CALayer!)

  /*! 
   @method foregroundLayer
   @abstract Provides the receiver� foreground layer.
   */
  func foregroundLayer() -> CALayer!

  /*! 
   @method newCellForRepresentedItem:
   @abstract Returns the cell to use for the specified item. The returned cell should not be autoreleased.
   @param The item that the returned cell will represent.
   @discussion Subclasses can override this method to customize the appearance of the cell that will represent "anItem".
   */
  func newCellForRepresentedItem(anItem: AnyObject!) -> IKImageBrowserCell!

  /*! 
   @method cellForItemAtIndex:
   @abstract Returns the cell at the specified index.
   @discussion Subclasses must not override this method.
   */
  func cellForItemAt(index: Int) -> IKImageBrowserCell!
}

/*!
  @category IKImageBrowserView (IKBrowsing)
*/
extension IKImageBrowserView {

  /*! 
    @method setZoomValue:
    @abstract Sets the zoom value to <i>aValue</i>.
    @discussion This value should be greater or equal to zero and less or equal than one. A zoom value of zero corresponds to the minimum size (40x40 pixels), A zoom value of one means images fit the browser bounds. Other values are interpolated.
  */
  func setZoomValue(aValue: Float)

  /*! 
    @method zoomValue
    @abstract Returns the current zoom value.
  */
  func zoomValue() -> Float

  /*!
    @method setContentResizingMask
    @abtract Determines how the receiver resize its content when zooming.
    @discussion mask can be specified by combining any of the following options using the C bitwise OR operator:NSViewWidthSizable NSViewHeightSizable, other values are ignored.
  */
  func setContentResizingMask(mask: Int)

  /*!
    @method setContentResizingMask
    @abtract Returns the receiver� content resizing mask, which determines how it� content is resized while zooming.
  */
  func contentResizingMask() -> Int

  /*!
    @method scrollIndexToVisible:
    @abstract Scrolls the receiver so the item at the specified index is visible.
  */
  func scrollIndexToVisible(index: Int)

  /*!
    @method setCellSize:
    @abstract sets the size of the cells to size
  */
  func setCellSize(size: NSSize)

  /*!
    @method setCellSize:
    @abstract Returns the size of the cells
  */
  func cellSize() -> NSSize

  /*! 
   @method intercellSpacing
   @abstract Returns the spacing between cells in the image browser.
   */
  func intercellSpacing() -> NSSize

  /*! 
   @method setIntercellSpacing:
   @abstract Sets the spacing between cells in the matrix.
   @param aSize The vertical and horizontal spacing to use between cells in the receiver. By default, both values are 10.0 in the receiver� coordinate system.
   */
  func setIntercellSpacing(aSize: NSSize)

  /*!
    @method indexOfItemAtPoint:
    @abstract Returns the item at the specified location or NSNotFound if no item at this location.
  */
  func indexOfItemAt(point: NSPoint) -> Int

  /*!
    @method itemFrameAtIndex:
    @abstract Returns the frame rectangle of the item that would be drawn at the specified location.
  */
  func itemFrameAt(index: Int) -> NSRect

  /*! 
   @method visibleItemIndexes
   @abstract Returns indexes of the receiver� currently visible items.
   */
  func visibleItemIndexes() -> NSIndexSet!

  /*! 
   @method rowIndexesInRect:
   @abstract Returns the indexes of the receiver� rows that intersect the specified rectangle.
   */
  func rowIndexesIn(rect: NSRect) -> NSIndexSet!

  /*! 
   @method columnIndexesInRect:
   @abstract Returns the indexes of the receiver� columns that intersect the specified rectangle.
   */
  func columnIndexesIn(rect: NSRect) -> NSIndexSet!

  /*! 
   @method rectOfColumn:
   @abstract Returns the rectangle containing the column at a given index.
   @param columnIndex The index of a column in the receiver.
   */
  func rectOfColumn(columnIndex: Int) -> NSRect

  /*! 
   @method rectOfRow:
   @abstract Returns the rectangle containing the row at a given index.
   @param rowIndex The index of a row in the receiver.
   */
  func rectOfRow(rowIndex: Int) -> NSRect

  /*! 
   @method numberOfRows
   @abstract Returns the number of rows in the receiver.
   */
  func numberOfRows() -> Int

  /*! 
   @method numberOfColumns
   @abstract Returns the number of columns in the receiver.
   */
  func numberOfColumns() -> Int

  /*! 
   @method setCanControlQuickLookPanel:
   @abstract Sets whether the receiver can automatically take control of the Quick Look panel.
   @param flag if YES, KImageBrowser can take control of the Quick Look panel automatically whenever it becomes first responder. This means that it provides the spacebar key store to open/close Quick Look panel and sets itself as the panel's datasource and delegate.
   @discussion default value is NO. IKImageBrowserView's datasource items should provide file paths or URLs as their representation (see IKImageBrowserItem protocol).
   */
  func setCanControlQuickLookPanel(flag: Bool)

  /*! 
   @method canControlQuickLookPanel
   @abstract Returns a Boolean value that indicates whether the receiver can automatically take control of the Quick Look panel.
   */
  func canControlQuickLookPanel() -> Bool
}

/*!
  @category IKImageBrowserView (IKSelectionReorderingAndGrouping)
*/
extension IKImageBrowserView {

  /*! 
    @method selectionIndexes
    @abstract Returns the indexes of the selected cells
  */
  func selectionIndexes() -> NSIndexSet!

  /*! 
    @method setSelectionIndexes:byExtendingSelection:
    @abstract Selects cells at indexes <i>indexes</i>. If <i>extendSelection</i> is YES it extends the current selection, otherwise it replaces the current selection.
  */
  func setSelectionIndexes(indexes: NSIndexSet!, byExtendingSelection extendSelection: Bool)

  /*! 
    @method setAllowsMultipleSelection:
    @abstract Controls whether the user can select more than one cell at a time. 
  */
  func setAllowsMultipleSelection(flag: Bool)

  /*! 
    @method allowsMultipleSelection
    @abstract Returns YES if the receiver allows the user to select more than one cell at a time, NO otherwise. 
  */
  func allowsMultipleSelection() -> Bool

  /*! 
    @method setAllowsMultipleSelection:
    @abstract Controls whether the receiver allows zero cell to be selected. 
  */
  func setAllowsEmptySelection(flag: Bool)

  /*! 
    @method setAllowsEmptySelection
    @abstract Returns YES if the receiver allows the user to select zero cell, NO otherwise. 
  */
  func allowsEmptySelection() -> Bool

  /*! 
    @method setAllowsReordering:
    @abstract Controls whether the user can reorder items. 
  */
  func setAllowsReordering(flag: Bool)

  /*! 
    @method allowsReordering
    @abstract Returns YES if the receiver allows the user to reorder items, NO otherwise. 
  */
  func allowsReordering() -> Bool

  /*! 
    @method setAnimates:
    @abstract Controls whether the receiver animate reordering and changes of the data source. 
  */
  func setAnimates(flag: Bool)

  /*! 
    @method animates
    @abstract Returns YES if the receiver animate changes of the data source, NO otherwise. 
  */
  func animates() -> Bool

  /*! 
    @method expandGroupAtIndex:
    @abstract Expands group at index 'index' if it is not already expanded; otherwise, does nothing.
  */
  func expandGroupAt(index: Int)

  /*! 
    @method collapseGroupAtIndex:
    @abstract Collapse group at index 'index' if it is expanded; otherwise, does nothing.
  */
  func collapseGroupAt(index: Int)

  /*! 
    @method isGroupExpandedAtIndex:
    @abstract Returns YES if the group at index 'index' is expanded.
  */
  func isGroupExpandedAt(index: Int) -> Bool
}

/*!
  @category IKImageBrowserView (IKDragNDrop)
*/
extension IKImageBrowserView {

  /*!
    @method setDraggingDestinationDelegate:
    @abstract Sets the receiver's dragging destination delegate to <i>delegate</i>.
  */
  func setDraggingDestinationDelegate(delegate: AnyObject!)

  /*!
    @method draggingDestinationDelegate
    @abstract Returns the receiver's dragging destination delegate.
  */
  func draggingDestinationDelegate() -> AnyObject!

  /*!
    @method indexAtLocationOfDroppedItem
    @abstract Returns the index of the cell where the drop operation occured. This index is valid when a drop occurred and until next drop.
  */
  func indexAtLocationOfDroppedItem() -> Int

  /*!
   @method dropOperation
   @abstract Returns the current dropOperation. The returned value is valid when a drop occurred and until next drop.
   @discussion Returns IKImageBrowserDropOn if the drop occurs on an item. Returns IKImageBrowserDropBefore otherwise.
   In drag and drop, used to specify a dropOperation.  For example, given a browser with N cells (numbered with cell 0 at the top left visually), a cell of N-1 and operation of IKImageBrowserDropOn would specify a drop on the last cell.  To specify a drop after the last cell, one would use an index of N and IKImageBrowserDropBefore for the operation.
   */
  func dropOperation() -> IKImageBrowserDropOperation

  /*! 
   @method setAllowsDroppingOnItems:
   @abstract Controls whether the user can drop on items. Default is NO. 
   */
  func setAllowsDroppingOnItems(flag: Bool)

  /*! 
   @method allowsDroppingOnItems
   @abstract Returns YES if the receiver allows the user to drop on items, NO otherwise. 
   */
  func allowsDroppingOnItems() -> Bool

  /*! 
   @method setDropIndex:dropOperation:
   @abstract Used if you wish to �etarget�the proposed drop.
   @discussion To specify a drop on the second item, one would specify index as 1, and operation as IKImageBrowserDropOn. To specify a drop after the last item, one would specify index as the number of items and operation as IKImageBrowserDropBefore. Passing a value of � for index, and IKImageBrowserDropOn as the operation causes the entire browser view to be highlighted rather than a specific item. This is useful if the data displayed by the receiver does not allow the user to drop items at a specific item location.
   */
  func setDrop(index: Int, dropOperation operation: IKImageBrowserDropOperation)
}

/*!
  @category NSObject (IKImageBrowserDelegate)
  @abstract Informal protocol for image browser 's delegate 
*/
extension NSObject {

  /*!
    @method imageBrowserSelectionDidChange:
    @abstract Invoked by 'aBrowser' when the selection did change 
  */
  class func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)

  /*!
    @method imageBrowserSelectionDidChange:
    @abstract Invoked by 'aBrowser' when the selection did change 
  */
  func imageBrowserSelectionDidChange(aBrowser: IKImageBrowserView!)

  /*!
    @method imageBrowser:cellWasDoubleClickedAtIndex:
    @abstract Invoked by 'aBrowser' when a cell was double clicked.
    @param index Index of the cell that was double clicked.
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAt index: Int)

  /*!
    @method imageBrowser:cellWasDoubleClickedAtIndex:
    @abstract Invoked by 'aBrowser' when a cell was double clicked.
    @param index Index of the cell that was double clicked.
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasDoubleClickedAt index: Int)

  /*!
    @method imageBrowser:cellWasRightClickedAtIndex:withEvent:
    @abstract Invoked by 'aBrowser' when a cell was right clicked or left clicked with the Alt key pressed.
    @param index Index of the cell that was right clicked.
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAt index: Int, withEvent event: NSEvent!)

  /*!
    @method imageBrowser:cellWasRightClickedAtIndex:withEvent:
    @abstract Invoked by 'aBrowser' when a cell was right clicked or left clicked with the Alt key pressed.
    @param index Index of the cell that was right clicked.
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, cellWasRightClickedAt index: Int, withEvent event: NSEvent!)

  /*!
    @method imageBrowser:backgroundWasRightClickedWithEvent:
    @abstract Invoked by 'aBrowser' when a the background was right clicked or left clicked with the Alt key pressed.
  */
  class func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWith event: NSEvent!)

  /*!
    @method imageBrowser:backgroundWasRightClickedWithEvent:
    @abstract Invoked by 'aBrowser' when a the background was right clicked or left clicked with the Alt key pressed.
  */
  func imageBrowser(aBrowser: IKImageBrowserView!, backgroundWasRightClickedWith event: NSEvent!)
}
let IKImageBrowserPathRepresentationType: String
let IKImageBrowserNSURLRepresentationType: String
let IKImageBrowserNSImageRepresentationType: String
let IKImageBrowserCGImageRepresentationType: String
let IKImageBrowserCGImageSourceRepresentationType: String
let IKImageBrowserNSDataRepresentationType: String
let IKImageBrowserNSBitmapImageRepresentationType: String
let IKImageBrowserQTMovieRepresentationType: String
let IKImageBrowserQTMoviePathRepresentationType: String
let IKImageBrowserQCCompositionRepresentationType: String
let IKImageBrowserQCCompositionPathRepresentationType: String
let IKImageBrowserQuickLookPathRepresentationType: String
let IKImageBrowserIconRefPathRepresentationType: String
let IKImageBrowserIconRefRepresentationType: String
let IKImageBrowserPDFPageRepresentationType: String
let IKImageBrowserBackgroundColorKey: String
let IKImageBrowserSelectionColorKey: String
let IKImageBrowserCellsOutlineColorKey: String
let IKImageBrowserCellsTitleAttributesKey: String
let IKImageBrowserCellsHighlightedTitleAttributesKey: String
let IKImageBrowserCellsSubtitleAttributesKey: String
let IKImageBrowserGroupRangeKey: String
let IKImageBrowserGroupBackgroundColorKey: String
let IKImageBrowserGroupTitleKey: String
let IKImageBrowserGroupStyleKey: String
let IKImageBrowserGroupHeaderLayer: String
let IKImageBrowserGroupFooterLayer: String

/*! 
 @protocol IKImageEditPanelDataSource
 @abstract The data source of IKImageEditPanel must conform to IKImageEditPanelDataSource protocol.
 */
protocol IKImageEditPanelDataSource {

  /*! 
   @method image
   @abstract Returns an image.
   */
  func image() -> Unmanaged<CGImage>!

  /*! 
   @method setImage:imageProperties:
   @abstract Sets an image with the specifies properties.
   */
  @available(OSX 10.0, *)
  func setImage(image: CGImage!, imageProperties metaData: [NSObject : AnyObject]!)

  /*! 
   @method thumbnailWithMaximumSize:
   @abstract Returns a thumbnail image whose size is no larger than the specified size.
   */
  optional func thumbnailWithMaximumSize(size: NSSize) -> Unmanaged<CGImage>!

  /*! 
   @method imageProperties
   @abstract Returns a dictionary of the image properties associated with the image in the image edit panel.
   */
  @available(OSX 10.0, *)
  optional func imageProperties() -> [NSObject : AnyObject]!

  /*! 
   @method hasAdjustMode
   @abstract Show the adjust view tab
   */
  optional func hasAdjustMode() -> Bool

  /*! 
   @method hasEffectsMode
   @abstract Show the effects view tab
   */
  optional func hasEffectsMode() -> Bool

  /*! 
   @method hasDetailsMode
   @abstract Show the details view tab
   */
  optional func hasDetailsMode() -> Bool
}

/*! 
 @class IKImageEditPanel
 @abstract The IKImageEditPanel class provides a panel, that is, a utility window that floats on top of document windows, optimized for image editing.
 */
class IKImageEditPanel : NSPanel {

  /*!
   @property dataSource
   @abstract Data source associated with an image editing panel
   */
  unowned(unsafe) var dataSource: @sil_unmanaged IKImageEditPanelDataSource!

  /*!
   @property filterArray
   @abstract Array of filters reflecting the current user adjustments in the adjust or effects tab.
   */
  var filterArray: [AnyObject]! { get }

  /*! 
   @method sharedImageEditPanel
   @abstract Creates a shared instance of an image editing panel.
   */
  class func shared() -> IKImageEditPanel!

  /*! 
   @method reloadData
   @abstract Reloads the data from the data associated with an image editing panel.
   */
  func reloadData()
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let IKToolModeNone: String
let IKToolModeMove: String
let IKToolModeSelect: String
let IKToolModeSelectRect: String
let IKToolModeSelectEllipse: String
let IKToolModeSelectLasso: String
let IKToolModeCrop: String
let IKToolModeRotate: String
let IKToolModeAnnotate: String
let IKOverlayTypeBackground: String
let IKOverlayTypeImage: String

/*! 
 @class IKImageView
 @abstract The IKImageView class provides an efficient way to display images in a view while at the same time supporting a number of image editing operations.
 */
class IKImageView : NSView {

  /*!
   @property delegate
   @abstract Specifies the delegate object of the receiver.
   */
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!
   @property zoomFactor
   @abstract Specifies the zoom factor for the image view.
   */
  var zoomFactor: CGFloat

  /*!
   @property rotationAngle
   @abstract Specifies the rotation angle for the image view.
   */
  var rotationAngle: CGFloat

  /*!
   @property currentToolMode
   @abstract Specifies the current tool mode for the image view.
   */
  var currentToolMode: String!

  /*!
   @property autoresizes
   @abstract Specifies the automatic resizing state for the image view.
   */
  var autoresizes: Bool

  /*!
   @property hasHorizontalScroller
   @abstract Specifies the horizontal scroll bar state for the image view.
   */
  var hasHorizontalScroller: Bool

  /*!
   @property hasVerticalScroller
   @abstract Specifies the vertical scroll bar state for the image view.
   */
  var hasVerticalScroller: Bool

  /*!
   @property autohidesScrollers
   @abstract Specifies the automatic-hiding scroll bar state for the image view.
   */
  var autohidesScrollers: Bool

  /*!
   @property supportsDragAndDrop
   @abstract Specifies the drag-and-drop support state for the image view.
   */
  var supportsDragAndDrop: Bool

  /*!
   @property editable
   @abstract Specifies the editable state for the image view.
   */
  var editable: Bool

  /*!
   @property doubleClickOpensImageEditPane
   @abstract Specifies the image-opening state of the editing pane in the image view.
   */
  var doubleClickOpensImageEditPanel: Bool

  /*!
   @property imageCorrection
   @abstract Specifies a Core Image filter for image correction.
   */
  unowned(unsafe) var imageCorrection: @sil_unmanaged CIFilter!

  /*!
   @property backgroundColor
   @abstract Specifies the background color for the image view.
   */
  unowned(unsafe) var backgroundColor: @sil_unmanaged NSColor!

  /*! 
   @method setImage:imageProperties:
   @abstract Sets the image & metadata (both retrieved from ImageIO).
   */
  func setImage(image: CGImage!, imageProperties metaData: [NSObject : AnyObject]!)

  /*! 
   @method setImageWithURL:
   @abstract Initializes an image view with the image specified by a URL.
   */
  func setImageWith(url: NSURL!)

  /*! 
   @method image
   @abstract Returns the image associated with the view, after any image corrections.
   */
  func image() -> Unmanaged<CGImage>!

  /*! 
   @method imageSize
   @abstract Returns the size of the image in the image view.
   */
  func imageSize() -> NSSize

  /*! 
   @method imageProperties
   @abstract Returns the metadata for the image in the view.
   */
  func imageProperties() -> [NSObject : AnyObject]!

  /*! 
   @method setRotationAngle:centerPoint:
   @abstract Sets the rotation angle at the provided origin.
   */
  func setRotationAngle(rotationAngle: CGFloat, center centerPoint: NSPoint)

  /*! 
   @method rotateImageLeft:
   @abstract Rotates the image left.
   */
  @IBAction func rotateImageLeft(sender: AnyObject!)

  /*! 
   @method rotateImageRight:
   @abstract Rotates the image right.
   */
  @IBAction func rotateImageRight(sender: AnyObject!)

  /*! 
   @method setImageZoomFactor:centerPoint:
   @abstract Sets the zoom factor at the provided origin.
   */
  func setImageZoomFactor(zoomFactor: CGFloat, center centerPoint: NSPoint)

  /*! 
   @method zoomImageToRect:
   @abstract Zooms the image so that it fits in the specified rectangle.
   */
  func zoomImageTo(rect: NSRect)

  /*! 
   @method zoomImageToFit:
   @abstract Zooms the image so that it fits in the image view.
   */
  @IBAction func zoomImageToFit(sender: AnyObject!)

  /*! 
   @method zoomImageToActualSize:
   @abstract Zooms the image so that it is displayed using its true size.
   */
  @IBAction func zoomImageToActualSize(sender: AnyObject!)

  /*! 
   @method zoomIn:
   @abstract Zooms the image in.
   */
  @IBAction func zoomIn(sender: AnyObject!)

  /*! 
   @method zoomOut:
   @abstract Zooms the image out.
   */
  @IBAction func zoomOut(sender: AnyObject!)

  /*! 
   @method flipImageHorizontal:
   @abstract Flips an image along the horizontal axis.
   */
  @IBAction func flipImageHorizontal(sender: AnyObject!)

  /*! 
   @method flipImageVertical:
   @abstract Flips an image along the vertical axis.
   */
  @IBAction func flipImageVertical(sender: AnyObject!)

  /*! 
   @method crop:
   @abstract Crops the image using the current selection.
   */
  @IBAction func crop(sender: AnyObject!)

  /*! 
   @method setOverlay:forType:
   @abstract Sets an overlay (Core Animation layer) for the image or the image background.
   */
  func setOverlay(layer: CALayer!, forType layerType: String!)

  /*! 
   @method overlayForType:
   @abstract Returns the overlay (Core Animation layer) for the image or the image background.
   */
  func overlayForType(layerType: String!) -> CALayer!

  /*! 
   @method scrollToPoint:
   @abstract Scrolls the view to the specified point.
   */
  func scrollTo(point: NSPoint)

  /*! 
   @method scrollToRect:
   @abstract Scrolls the view so that it includes the provided rectangular area.
   */
  func scrollTo(rect: NSRect)

  /*! 
   @method convertViewPointToImagePoint:
   @abstract Converts an image view coordinate to an image coordinate.
   */
  func convertPointToImagePoint(viewPoint: NSPoint) -> NSPoint

  /*! 
   @method convertViewRectToImageRect:
   @abstract Converts an image view rectangle to an image rectangle.
   */
  func convertRectToImageRect(viewRect: NSRect) -> NSRect

  /*! 
   @method convertImagePointToViewPoint:
   @abstract Converts an image coordinate to an image view coordinate.
   */
  func convertImagePointToViewPoint(imagePoint: NSPoint) -> NSPoint

  /*! 
   @method convertImageRectToViewRect:
   @abstract Converts an image rectangle to an image view rectangle.
   */
  func convertImageRectToViewRect(imageRect: NSRect) -> NSRect
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*! 
  @class IKPictureTaker
  @abstract An IKPictureTaker object is a panel that allows users to choose and crop an image. It supports browsing of the file system and includes a recents popup-menu. The IKPictureTaker lets the user to crop a choosen image or to take snapshot from a camera like the built-in iSight. 
*/
class IKPictureTaker : NSPanel {

  /*!
    @method pictureTaker
    @abstract Returns the shared IKPictureTaker instance, creating it if necessary.
  */
  class func pictureTaker() -> IKPictureTaker!

  /*!
    @method runModal
    @abstract Launches a modal PictureTaker session.
    @result Returns NSOKButton if the user edits or chooses an image and confirm panel, NSCancelButton if the user canceled or didn't change the image.
  */
  func runModal() -> Int

  /*!
    @method beginPictureTakerWithDelegate:didEndSelector:contextInfo:
    @abstract Launch the PictureTaker.
    @param delegate the object to invoke didEndSelector when the PictureTaker terminates.
    @param didEndSelector the selector to invoke when the PictureTaker terminates.
    @param contextInfo Any data that will be passed as an argument to the delegate through didEndSelector after the session has ended.
    @discussion didEndSelector should have the following signature: - (void)pictureTakerDidEnd:(IKPictureTaker *)pictureTaker returnCode:(NSInteger)returnCode contextInfo:(void  *)contextInfo;
    returnCode value is set to NSOKButton if the user validate, or to NSCancelButton if the user cancel.
  */
  func beginWithDelegate(delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
    @method beginPictureTakerSheetForWindow:withDelegate:didEndSelector:contextInfo:
    @abstract Launch the PictureTaker as a sheet for aWindow
    @param delegate the object to invoke didEndSelector when the PictureTaker terminates 
    @param didEndSelector the selector to invoke when the PictureTaker terminates 
    @param contextInfo Any data that will be passed as an argument to the delegate through didEndSelector after the session has ended
    @discussion didEndSelector should have the following signature: - (void)pictureTakerDidEnd:(IKPictureTaker *)pictureTaker returnCode:(NSInteger)returnCode contextInfo:(void  *)contextInfo;
    returnCode value is set to NSOKButton if the user validate, or to NSCancelButton if the user cancel.
  */
  func beginSheetFor(aWindow: NSWindow!, withDelegate delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
    @method popUpRecentsMenuForView:withDelegate:didEndSelector:contextInfo:
    @abstract Launch the PictureTaker's recent popup.
    @param delegate the object to invoke didEndSelector when the PictureTaker terminates.
    @param didEndSelector the selector to invoke when the PictureTaker terminates.
    @param contextInfo Any data that will be passed as an argument to the delegate through didEndSelector after the session has ended.
    @discussion didEndSelector should have the following signature: - (void)pictureTakerDidEnd:(IKPictureTaker *)pictureTaker returnCode:(NSInteger)returnCode contextInfo:(void  *)contextInfo;
    returnCode value is set to NSOKButton if the user validate, or to NSCancelButton if the user cancel.
  */
  func popUpRecentsMenuFor(aView: NSView!, withDelegate delegate: AnyObject!, didEnd didEndSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)

  /*!
    @method setInputImage:
    @abstract Set the image input for the PictureTaker.
    @param image A valid NSImage.
    @discussion The input image is never modified by the PictureTaker.
  */
  func setInputImage(image: NSImage!)

  /*!
    @method inputImage
    @abstract return the original PictureTaker's input-image.
    @discussion The input image is never modified by the PictureTaker.
  */
  func inputImage() -> NSImage!

  /*!
    @method outputImage
    @abstract return the edited image.
  */
  func outputImage() -> NSImage!

  /*!
   @method setMirroring:
   @abstract Controls whether the receiver enable/disable video mirroring durring snapshots (default is YES).
   */
  func setMirroring(b: Bool)

  /*!
   @method mirroring
   @abstract Returns YES if video mirroring is enabled, NO otherwise.
   */
  func mirroring() -> Bool
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let IKPictureTakerAllowsVideoCaptureKey: String
let IKPictureTakerAllowsFileChoosingKey: String
let IKPictureTakerShowRecentPictureKey: String
let IKPictureTakerUpdateRecentPictureKey: String
let IKPictureTakerAllowsEditingKey: String
let IKPictureTakerShowEffectsKey: String
let IKPictureTakerInformationalTextKey: String
let IKPictureTakerImageTransformsKey: String
let IKPictureTakerOutputImageMaxSizeKey: String
let IKPictureTakerShowAddressBookPictureKey: String
let IKPictureTakerShowEmptyPictureKey: String
let IKPictureTakerRemainOpenAfterValidateKey: String
extension NSObject {
  class func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
  func saveOptions(saveOptions: IKSaveOptions!, shouldShowUTType utType: String!) -> Bool
}

/*! 
 @class IKSaveOptions
 @abstract The IKSaveOptions class initializes, adds, and manages user interface options for saving image data.
 */
class IKSaveOptions : NSObject {

  /*!
   @property delegate
   @abstract Delegate of the IKSaveOptions.
   */
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!
   @property imageProperties
   @abstract current imageProperties (respecting user UI selection).
   */
  var imageProperties: [NSObject : AnyObject]! { get }

  /*!
   @property imageUTType
   @abstract current imageUTType (respecting user UI selection).
   */
  var imageUTType: String! { get }

  /*!
   @property userSelection
   @abstract information about the UI settings.
   */
  var userSelection: [NSObject : AnyObject]! { get }

  /*! 
   @method initWithImageProperties:imageUTType:
   @abstract Initializes IKSaveOptions with metadata and UTType.
   */
  init!(imageProperties: [NSObject : AnyObject]!, imageUTType: String!)

  /*! 
   @method addSaveOptionsAccessoryViewToSavePanel:
   @abstract Adds IKSaveOptions UI to a NSSavePanel.
   */
  func addAccessoryViewTo(savePanel: NSSavePanel!)

  /*! 
   @method addSaveOptionsToView:
   @abstract Adds IKSaveOptions UI to a NSView.
   */
  func addTo(view: NSView!)
  init()
}

/*! 
 @protocol IKScannerDeviceViewDelegate
 @abstract A delegate of IKScannerDeviceView must conform to IKScannerDeviceViewDelegate protocol.
 */
protocol IKScannerDeviceViewDelegate {

  /*! 
   @method scannerDeviceView:didScanToURL:fileData:error:
   @abstract This message is sent for each image that gets scanned.
   @discussion Based on the IKScannerDeviceViewTransferMode the downloaded file will be saved on disk using the 'url', or returned in memory as NSData
   */
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo url: NSURL!, fileData data: NSData!, error: NSError!)

  /*! 
   @method scannerDeviceView:didScanToURL:error:
   @abstract For file based transfer this message is sent for each image that gets scanned.
   @discussion Based on the IKScannerDeviceViewTransferMode the downloaded file will be saved on disk using the 'url', or returned in memory as NSData
   */
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo url: NSURL!, error: NSError!)

  /*! 
   @method scannerDeviceView:didScanToBandData:scanInfo:error:
   @abstract For memory a based transfer this message is sent for every time an image band of data was scanned.
   @discussion The 'data' parameter describes the scanned image data. Note that rotation/cropping/image adjustments are not applied yet. The 'scanInfo' parameter contains additional information (rotation angle, ...) that should be applied once the scan is completed. 
   */
  @available(OSX 10.0, *)
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didScanTo data: ICScannerBandData!, scanInfo: [NSObject : AnyObject]!, error: NSError!)

  /*! 
   @method scannerDeviceView:didEncounterError:
   @abstract This message is sent every time the scanner device reports an error.
   */
  optional func scannerDeviceView(scannerDeviceView: IKScannerDeviceView!, didEncounterError error: NSError!)
}
enum IKScannerDeviceViewTransferMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case FileBased
  case MemoryBased
}
enum IKScannerDeviceViewDisplayMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Simple
  case Advanced
}

/*! 
 @class IKScannerDeviceView
 @abstract IKScannerDeviceView displays a UI to work with Image Capture supported scanners.
 */
class IKScannerDeviceView : NSView {

  /*!
   @property delegate
   @abstract delegate of the IKScannerDeviceView.
   */
  unowned(unsafe) var delegate: @sil_unmanaged IKScannerDeviceViewDelegate!

  /*!
   @property scannerDevice
   @abstract the scanner device.
   */
  unowned(unsafe) var scannerDevice: @sil_unmanaged ICScannerDevice!

  /*!
   @property mode
   @abstract current display mode.
   */
  var mode: IKScannerDeviceViewDisplayMode

  /*!
   @property hasDisplayModeSimple
   @abstract support a simple scanning UI.
   */
  var hasDisplayModeSimple: Bool

  /*!
   @property hasDisplayModeAdvanced
   @abstract support advanced scanning UI.
   */
  var hasDisplayModeAdvanced: Bool

  /*!
   @property transferMode
   @abstract transfer mode either file based - or - in memory.
   */
  var transferMode: IKScannerDeviceViewTransferMode

  /*!
   @property scanControlLabel
   @abstract label for the 'Scan' control.
   */
  var scanControlLabel: String!

  /*!
   @property overviewControlLabel
   @abstract label for the 'Overview' control.
   */
  var overviewControlLabel: String!

  /*!
   @property displaysDownloadsDirectoryControl
   @abstract show a downloads directory control.
   */
  var displaysDownloadsDirectoryControl: Bool

  /*!
   @property downloadsDirectory
   @abstract downloads directory.
   */
  var downloadsDirectory: NSURL!

  /*!
   @property documentName
   @abstract document name.
   */
  var documentName: String!

  /*!
   @property displaysPostProcessApplicationControl
   @abstract show a postprocessing application control.
   */
  var displaysPostProcessApplicationControl: Bool

  /*!
   @property postProcessApplication
   @abstract postprocessing application.
   */
  var postProcessApplication: NSURL!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}

/*! 
 @protocol IKSlideshowDataSource
 @abstract The data source of IKSlideshow must conform to IKSlideshowDataSource protocol.
 @discussion The data source methods may be called one a non-main thread.
 */
protocol IKSlideshowDataSource {

  /*! 
   @method numberOfSlideshowItems
   @abstract return number of items in Slideshow.
   */
  func numberOfSlideshowItems() -> Int

  /*! 
   @method slideshowItemAtIndex:
   @abstract return the item for a given index.
   @discussion The item can be either: NSImage, NSString, NSURL, CGImageRef, or PDFPage.
               Note: when using 'IKSlideshowModeOther' as slideshowMode, the item has to be a NSURL.
   */
  func slideshowItemAt(index: Int) -> AnyObject!

  /*! 
   @method nameOfSlideshowItemAtIndex:
   @abstract Display name for item at index.
   */
  optional func nameOfSlideshowItemAt(index: Int) -> String!

  /*! 
   @method canExportSlideshowItemAtIndex:toApplication:
   @abstract should the export button be enabled for a given item at index?
   */
  optional func canExportSlideshowItemAt(index: Int, toApplication applicationBundleIdentifier: String!) -> Bool

  /*! 
   @method slideshowWillStart
   @abstract Slideshow will start.
   */
  optional func slideshowWillStart()

  /*! 
   @method slideshowDidStop
   @abstract Slideshow did stop.
   */
  optional func slideshowDidStop()

  /*! 
   @method slideshowDidChangeCurrentIndex:
   @abstract Slideshow did change current item index.
   */
  optional func slideshowDidChangeCurrentIndex(newIndex: Int)
}

/*! 
 @class IKSlideshow
 @abstract IKSlideshow handles a slideshow with images, PDFs & more.
 */
class IKSlideshow : NSObject {

  /*!
   @property autoPlayDelay
   @abstract Array of filters reflecting the current user adjustments in the adjust or effects tab.
   */
  var autoPlayDelay: NSTimeInterval

  /*!
   @method sharedSlideshow
   @abstract shared instance of the IKSlideshow.
   */
  class func shared() -> IKSlideshow!

  /*!
   @method runSlideshowWithDataSource:inMode:options:
   @abstract start the slideshow (slideshowOptions can be NULL).
   */
  func runWith(dataSource: IKSlideshowDataSource!, inMode slideshowMode: String!, options slideshowOptions: [NSObject : AnyObject]! = [:])

  /*!
   @method stopSlideshow:
   @abstract stop the slideshow.
   */
  func stop(sender: AnyObject!)

  /*!
   @method reloadData:
   @abstract reloadData.
   */
  func reloadData()

  /*!
   @method reloadSlideshowItemAtIndex:
   @abstract reloadSlideshowItemAtIndex.
   */
  func reloadItemAt(index: Int)

  /*!
   @method indexOfCurrentSlideshowItem:
   @abstract Returns index of current slideshow item.
   */
  func indexOfCurrentSlideshowItem() -> Int

  /*!
   @method canExportToApplication:
   @abstract Is exporting to a given application possible (application installed?, right version?, ...).
   */
  class func canExportToApplication(applicationBundleIdentifier: String!) -> Bool

  /*! 
   @method exportSlideshowItem:toApplication:
   @abstract export an item to the given application.
   @discussion The item can be either: NSImage, NSString, NSURL, or a NSArray of NSImage / NSString / NSURL.
   */
  class func exportItem(item: AnyObject!, toApplication applicationBundleIdentifier: String!)
  init()
}
let IKSlideshowModeImages: String
let IKSlideshowModePDF: String
let IKSlideshowModeOther: String
let IKSlideshowWrapAround: String
let IKSlideshowStartPaused: String
let IKSlideshowStartIndex: String
let IKSlideshowScreen: String
let IKSlideshowAudioFile: String
let IKSlideshowPDFDisplayBox: String
let IKSlideshowPDFDisplayMode: String
let IKSlideshowPDFDisplaysAsBook: String
let IK_iPhotoBundleIdentifier: String
let IK_ApertureBundleIdentifier: String
let IK_MailBundleIdentifier: String
let IK_PhotosBundleIdentifier: String
@available(*, deprecated)
let IKPictureTakerShowAddressBookPicture: String
@available(*, deprecated)
let IKPictureTakerShowEmptyPicture: String
@available(*, deprecated)
let IKPictureTakerCropAreaSizeKey: String
class PDFAction : NSObject, NSCopying {
  func type() -> String!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class PDFActionGoTo : PDFAction, NSCopying {
  init!(destination: PDFDestination!)
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  init()
}
typealias PDFActionNamedName = Int
var kPDFActionNamedNone: Int { get }
var kPDFActionNamedNextPage: Int { get }
var kPDFActionNamedPreviousPage: Int { get }
var kPDFActionNamedFirstPage: Int { get }
var kPDFActionNamedLastPage: Int { get }
var kPDFActionNamedGoBack: Int { get }
var kPDFActionNamedGoForward: Int { get }
var kPDFActionNamedGoToPage: Int { get }
var kPDFActionNamedFind: Int { get }
var kPDFActionNamedPrint: Int { get }
var kPDFActionNamedZoomIn: Int { get }
var kPDFActionNamedZoomOut: Int { get }
class PDFActionNamed : PDFAction, NSCopying {
  init!(name: PDFActionNamedName)
  func name() -> PDFActionNamedName
  func setName(name: PDFActionNamedName)
  init()
}
class PDFActionRemoteGoTo : PDFAction, NSCopying {
  init!(pageIndex: Int, at point: NSPoint, fileURL url: NSURL!)
  func pageIndex() -> Int
  func setPageIndex(pageIndex: Int)
  func point() -> NSPoint
  func setPoint(point: NSPoint)
  func url() -> NSURL!
  func setURL(url: NSURL!)
  init()
}
class PDFActionResetForm : PDFAction, NSCopying {
  init!()
  func fields() -> [AnyObject]!
  func setFields(fields: [AnyObject]!)
  func fieldsIncludedAreCleared() -> Bool
  func setFieldsIncludedAreCleared(include: Bool)
}
class PDFActionURL : PDFAction, NSCopying {
  init!(url: NSURL!)
  func url() -> NSURL!
  func setURL(url: NSURL!)
  init()
}
class PDFAnnotation : NSObject, NSCopying, NSCoding {
  init!(bounds: NSRect)
  func page() -> PDFPage!
  func type() -> String!
  func bounds() -> NSRect
  func setBounds(bounds: NSRect)
  func modificationDate() -> NSDate!
  func setModificationDate(date: NSDate!)
  func userName() -> String!
  func setUserName(name: String!)
  func popup() -> PDFAnnotationPopup!
  func setPopup(popup: PDFAnnotationPopup!)
  func shouldDisplay() -> Bool
  func setShouldDisplay(display: Bool)
  func shouldPrint() -> Bool
  func setShouldPrint(print: Bool)
  func border() -> PDFBorder!
  func setBorder(border: PDFBorder!)
  func color() -> NSColor!
  func setColor(color: NSColor!)
  func mouseUpAction() -> PDFAction!
  func setMouseUp(action: PDFAction!)
  func contents() -> String!
  func setContents(contents: String!)
  func toolTip() -> String!
  func hasAppearanceStream() -> Bool
  func removeAllAppearanceStreams()
  func drawWithBox(box: PDFDisplayBox)
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
typealias PDFWidgetControlType = Int
var kPDFWidgetUnknownControl: Int { get }
var kPDFWidgetPushButtonControl: Int { get }
var kPDFWidgetRadioButtonControl: Int { get }
var kPDFWidgetCheckBoxControl: Int { get }
class PDFAnnotationButtonWidget : PDFAnnotation, NSCopying {
  func controlType() -> PDFWidgetControlType
  func setControlType(type: PDFWidgetControlType)
  func state() -> Int
  func setState(value: Int)
  func isHighlighted() -> Bool
  func setHighlighted(flag: Bool)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func allowsToggleToOff() -> Bool
  func setAllowsToggleToOff(allowOff: Bool)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func caption() -> String!
  func setCaption(name: String!)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func onStateValue() -> String!
  func setOnStateValue(name: String!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationChoiceWidget : PDFAnnotation, NSCopying {
  func stringValue() -> String!
  func setStringValue(value: String!)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func isListChoice() -> Bool
  func setIsListChoice(isList: Bool)
  func choices() -> [AnyObject]!
  func setChoices(options: [AnyObject]!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationCircle : PDFAnnotation, NSCopying {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationFreeText : PDFAnnotation, NSCopying, NSCoding {
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func alignment() -> NSTextAlignment
  func setAlignment(alignment: NSTextAlignment)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationInk : PDFAnnotation, NSCopying, NSCoding {
  func paths() -> [AnyObject]!
  func add(path: NSBezierPath!)
  func remove(path: NSBezierPath!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFLineStyle = Int
var kPDFLineStyleNone: Int { get }
var kPDFLineStyleSquare: Int { get }
var kPDFLineStyleCircle: Int { get }
var kPDFLineStyleDiamond: Int { get }
var kPDFLineStyleOpenArrow: Int { get }
var kPDFLineStyleClosedArrow: Int { get }
class PDFAnnotationLine : PDFAnnotation, NSCopying, NSCoding {
  func startPoint() -> NSPoint
  func setStart(point: NSPoint)
  func endPoint() -> NSPoint
  func setEnd(point: NSPoint)
  func startStyle() -> PDFLineStyle
  func setStartStyle(style: PDFLineStyle)
  func endStyle() -> PDFLineStyle
  func setEndStyle(style: PDFLineStyle)
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationLink : PDFAnnotation, NSCopying {
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  func url() -> NSURL!
  func setURL(url: NSURL!)
  func setHighlighted(flag: Bool)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFMarkupType = Int
var kPDFMarkupTypeHighlight: Int { get }
var kPDFMarkupTypeStrikeOut: Int { get }
var kPDFMarkupTypeUnderline: Int { get }
class PDFAnnotationMarkup : PDFAnnotation, NSCopying, NSCoding {
  func quadrilateralPoints() -> [AnyObject]!
  func setQuadrilateralPoints(points: [AnyObject]!)
  func markupType() -> PDFMarkupType
  func setMarkupType(type: PDFMarkupType)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationPopup : PDFAnnotation, NSCopying, NSCoding {
  func isOpen() -> Bool
  func setIsOpen(isOpen: Bool)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationSquare : PDFAnnotation, NSCopying, NSCoding {
  func interiorColor() -> NSColor!
  func setInteriorColor(color: NSColor!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationStamp : PDFAnnotation, NSCopying {
  func name() -> String!
  func setName(name: String!)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFTextAnnotationIconType = Int
var kPDFTextAnnotationIconComment: Int { get }
var kPDFTextAnnotationIconKey: Int { get }
var kPDFTextAnnotationIconNote: Int { get }
var kPDFTextAnnotationIconHelp: Int { get }
var kPDFTextAnnotationIconNewParagraph: Int { get }
var kPDFTextAnnotationIconParagraph: Int { get }
var kPDFTextAnnotationIconInsert: Int { get }
class PDFAnnotationText : PDFAnnotation, NSCopying, NSCoding {
  func iconType() -> PDFTextAnnotationIconType
  func setIconType(type: PDFTextAnnotationIconType)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
class PDFAnnotationTextWidget : PDFAnnotation, NSCopying {
  func stringValue() -> String!
  func setStringValue(value: String!)
  func attributedStringValue() -> NSAttributedString!
  func setAttributedStringValue(value: NSAttributedString!)
  func backgroundColor() -> NSColor!
  func setBackgroundColor(color: NSColor!)
  func rotation() -> Int32
  func setRotation(rotation: Int32)
  func font() -> NSFont!
  func setFont(font: NSFont!)
  func fontColor() -> NSColor!
  func setFontColor(color: NSColor!)
  func alignment() -> NSTextAlignment
  func setAlignment(alignment: NSTextAlignment)
  func maximumLength() -> Int
  func setMaximumLength(maxLen: Int)
  func fieldName() -> String!
  func setFieldName(name: String!)
  func isMultiline() -> Bool
  func setIsMultiline(multiline: Bool)
  init!(bounds: NSRect)
  init()
  init?(coder aDecoder: NSCoder)
}
typealias PDFBorderStyle = Int
var kPDFBorderStyleSolid: Int { get }
var kPDFBorderStyleDashed: Int { get }
var kPDFBorderStyleBeveled: Int { get }
var kPDFBorderStyleInset: Int { get }
var kPDFBorderStyleUnderline: Int { get }
class PDFBorder : NSObject, NSCopying, NSCoding {
  func style() -> PDFBorderStyle
  func setStyle(style: PDFBorderStyle)
  func lineWidth() -> CGFloat
  func setLineWidth(width: CGFloat)
  func dashPattern() -> [AnyObject]!
  func setDashPattern(pattern: [AnyObject]!)
  func drawIn(rect: NSRect)
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
var kPDFDestinationUnspecifiedValue: Float { get }
class PDFDestination : NSObject, NSCopying {
  init!(page: PDFPage!, at point: NSPoint)
  func page() -> PDFPage!
  func point() -> NSPoint
  func zoom() -> CGFloat
  func setZoom(zoom: CGFloat)
  func compare(destination: PDFDestination!) -> NSComparisonResult
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
typealias PDFPrintScalingMode = Int
var kPDFPrintPageScaleNone: Int { get }
var kPDFPrintPageScaleToFit: Int { get }
var kPDFPrintPageScaleDownToFit: Int { get }
typealias PDFDocumentPermissions = Int
var kPDFDocumentPermissionsNone: Int { get }
var kPDFDocumentPermissionsUser: Int { get }
var kPDFDocumentPermissionsOwner: Int { get }
let PDFDocumentDidUnlockNotification: String
let PDFDocumentDidBeginFindNotification: String
let PDFDocumentDidEndFindNotification: String
let PDFDocumentDidBeginPageFindNotification: String
let PDFDocumentDidEndPageFindNotification: String
let PDFDocumentDidFindMatchNotification: String
let PDFDocumentDidBeginWriteNotification: String
let PDFDocumentDidEndWriteNotification: String
let PDFDocumentDidBeginPageWriteNotification: String
let PDFDocumentDidEndPageWriteNotification: String
let PDFDocumentTitleAttribute: String
let PDFDocumentAuthorAttribute: String
let PDFDocumentSubjectAttribute: String
let PDFDocumentCreatorAttribute: String
let PDFDocumentProducerAttribute: String
let PDFDocumentCreationDateAttribute: String
let PDFDocumentModificationDateAttribute: String
let PDFDocumentKeywordsAttribute: String
class PDFDocument : NSObject, NSCopying {
  init!(url: NSURL!)
  init!(data: NSData!)
  func documentURL() -> NSURL!
  func documentRef() -> Unmanaged<CGPDFDocument>!
  func documentAttributes() -> [NSObject : AnyObject]!
  func setDocumentAttributes(attributes: [NSObject : AnyObject]!)
  func majorVersion() -> Int32
  func minorVersion() -> Int32
  func isEncrypted() -> Bool
  func isLocked() -> Bool
  func unlockWithPassword(password: String!) -> Bool
  func allowsPrinting() -> Bool
  func allowsCopying() -> Bool
  func permissionsStatus() -> PDFDocumentPermissions
  func string() -> String!
  func setDelegate(anObject: AnyObject!)
  func delegate() -> AnyObject!
  func dataRepresentation() -> NSData!
  func dataRepresentation(options options: [NSObject : AnyObject]! = [:]) -> NSData!
  func writeToFile(path: String!) -> Bool
  func writeToFile(path: String!, withOptions options: [NSObject : AnyObject]! = [:]) -> Bool
  func writeTo(url: NSURL!) -> Bool
  func writeTo(url: NSURL!, withOptions options: [NSObject : AnyObject]! = [:]) -> Bool
  func outlineRoot() -> PDFOutline!
  func setOutlineRoot(outline: PDFOutline!)
  func outlineItemFor(selection: PDFSelection!) -> PDFOutline!
  func pageCount() -> Int
  func pageAt(index: Int) -> PDFPage!
  func indexFor(page: PDFPage!) -> Int
  func insert(page: PDFPage!, at index: Int)
  func removePageAt(index: Int)
  func exchangePageAt(indexA: Int, withPageAt indexB: Int)
  func pageClass() -> AnyClass!
  func findString(string: String!, withOptions options: Int) -> [AnyObject]!
  func beginFindString(string: String!, withOptions options: Int)
  func beginFindStrings(strings: [AnyObject]!, withOptions options: Int)
  func findString(string: String!, from selection: PDFSelection!, withOptions options: Int) -> PDFSelection!
  func isFinding() -> Bool
  func cancelFindString()
  func printOperationFor(printInfo: NSPrintInfo!, scalingMode scaleMode: PDFPrintScalingMode, autoRotate doRotate: Bool) -> NSPrintOperation!
  func selectionForEntireDocument() -> PDFSelection!
  func selectionFrom(startPage: PDFPage!, at startPt: NSPoint, to endPage: PDFPage!, at endPt: NSPoint) -> PDFSelection!
  func selectionFrom(startPage: PDFPage!, atCharacterIndex startChar: Int, to endPage: PDFPage!, atCharacterIndex endChar: Int) -> PDFSelection!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
extension NSObject {
  class func documentDidUnlock(notification: NSNotification!)
  func documentDidUnlock(notification: NSNotification!)
  class func documentDidBeginDocumentFind(notification: NSNotification!)
  func documentDidBeginDocumentFind(notification: NSNotification!)
  class func documentDidEndDocumentFind(notification: NSNotification!)
  func documentDidEndDocumentFind(notification: NSNotification!)
  class func documentDidBeginPageFind(notification: NSNotification!)
  func documentDidBeginPageFind(notification: NSNotification!)
  class func documentDidEndPageFind(notification: NSNotification!)
  func documentDidEndPageFind(notification: NSNotification!)
  class func documentDidFindMatch(notification: NSNotification!)
  func documentDidFindMatch(notification: NSNotification!)
}
extension NSObject {
  class func didMatchString(instance: PDFSelection!)
  func didMatchString(instance: PDFSelection!)
  class func classForPage() -> AnyClass!
  func classForPage() -> AnyClass!
  class func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
  func classForAnnotationClass(annotationClass: AnyClass!) -> AnyClass!
}
class PDFOutline : NSObject {
  init!()
  func document() -> PDFDocument!
  func parent() -> PDFOutline!
  func numberOfChildren() -> Int
  func index() -> Int
  func childAt(index: Int) -> PDFOutline!
  func insertChild(child: PDFOutline!, at index: Int)
  func removeFromParent()
  func label() -> String!
  func setLabel(label: String!)
  func isOpen() -> Bool
  func setIsOpen(open: Bool)
  func destination() -> PDFDestination!
  func setDestination(destination: PDFDestination!)
  func action() -> PDFAction!
  func setAction(action: PDFAction!)
}
typealias PDFDisplayBox = Int
var kPDFDisplayBoxMediaBox: Int { get }
var kPDFDisplayBoxCropBox: Int { get }
var kPDFDisplayBoxBleedBox: Int { get }
var kPDFDisplayBoxTrimBox: Int { get }
var kPDFDisplayBoxArtBox: Int { get }
class PDFPage : NSObject, NSCopying {
  init!(image: NSImage!)
  func document() -> PDFDocument!
  func pageRef() -> Unmanaged<CGPDFPage>!
  func label() -> String!
  func boundsForBox(box: PDFDisplayBox) -> NSRect
  func setBounds(bounds: NSRect, forBox box: PDFDisplayBox)
  func rotation() -> Int
  func setRotation(angle: Int)
  func annotations() -> [AnyObject]!
  func displaysAnnotations() -> Bool
  func setDisplaysAnnotations(display: Bool)
  func addAnnotation(annotation: PDFAnnotation!)
  func removeAnnotation(annotation: PDFAnnotation!)
  func annotationAt(point: NSPoint) -> PDFAnnotation!
  func drawWithBox(box: PDFDisplayBox)
  func transformContextForBox(box: PDFDisplayBox)
  func numberOfCharacters() -> Int
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func characterBoundsAt(index: Int) -> NSRect
  func characterIndexAt(point: NSPoint) -> Int
  func selectionFor(rect: NSRect) -> PDFSelection!
  func selectionForWordAt(point: NSPoint) -> PDFSelection!
  func selectionForLineAt(point: NSPoint) -> PDFSelection!
  func selectionFrom(startPoint: NSPoint, to endPoint: NSPoint) -> PDFSelection!
  func selectionFor(range: NSRange) -> PDFSelection!
  func dataRepresentation() -> NSData!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class PDFSelection : NSObject, NSCopying {
  init!(document: PDFDocument!)
  func pages() -> [AnyObject]!
  func color() -> NSColor!
  func setColor(color: NSColor!)
  func string() -> String!
  func attributedString() -> NSAttributedString!
  func boundsFor(page: PDFPage!) -> NSRect
  func numberOfTextRangesOn(page: PDFPage!) -> Int
  func rangeAt(index: Int, on page: PDFPage!) -> NSRange
  func selectionsByLine() -> [AnyObject]!
  func add(selection: PDFSelection!)
  func addSelections(selections: [AnyObject]!)
  func extendAtEnd(succeed: Int)
  func extendAtStart(precede: Int)
  func drawFor(page: PDFPage!, active: Bool)
  func drawFor(page: PDFPage!, withBox box: PDFDisplayBox, active: Bool)
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class PDFThumbnailView : NSView, NSCoding {
  func setPDFView(view: PDFView!)
  func pdfView() -> PDFView!
  func setThumbnailSize(size: NSSize)
  func thumbnailSize() -> NSSize
  func setMaximumNumberOfColumns(maxColumns: Int)
  func maximumNumberOfColumns() -> Int
  func setLabel(font: NSFont!)
  func labelFont() -> NSFont!
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func setAllowsMultipleSelection(flag: Bool)
  func allowsMultipleSelection() -> Bool
  func selectedPages() -> [AnyObject]!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
let PDFThumbnailViewDocumentEditedNotification: String
typealias PDFDisplayMode = Int
var kPDFDisplaySinglePage: Int { get }
var kPDFDisplaySinglePageContinuous: Int { get }
var kPDFDisplayTwoUp: Int { get }
var kPDFDisplayTwoUpContinuous: Int { get }
typealias PDFAreaOfInterest = Int
var kPDFNoArea: Int { get }
var kPDFPageArea: Int { get }
var kPDFTextArea: Int { get }
var kPDFAnnotationArea: Int { get }
var kPDFLinkArea: Int { get }
var kPDFControlArea: Int { get }
var kPDFTextFieldArea: Int { get }
var kPDFIconArea: Int { get }
var kPDFPopupArea: Int { get }
var kPDFImageArea: Int { get }
typealias PDFInterpolationQuality = Int
var kPDFInterpolationQualityNone: Int { get }
var kPDFInterpolationQualityLow: Int { get }
var kPDFInterpolationQualityHigh: Int { get }
let PDFViewDocumentChangedNotification: String
let PDFViewChangedHistoryNotification: String
let PDFViewPageChangedNotification: String
let PDFViewScaleChangedNotification: String
let PDFViewAnnotationHitNotification: String
let PDFViewCopyPermissionNotification: String
let PDFViewPrintPermissionNotification: String
let PDFViewAnnotationWillHitNotification: String
let PDFViewSelectionChangedNotification: String
let PDFViewDisplayModeChangedNotification: String
let PDFViewDisplayBoxChangedNotification: String
let PDFViewVisiblePagesChangedNotification: String
class PDFView : NSView, NSAnimationDelegate, NSMenuDelegate {
  func document() -> PDFDocument!
  func setDocument(document: PDFDocument!)
  func canGoToFirstPage() -> Bool
  @IBAction func goToFirstPage(sender: AnyObject!)
  func canGoToLastPage() -> Bool
  @IBAction func goToLastPage(sender: AnyObject!)
  func canGoToNextPage() -> Bool
  @IBAction func goToNextPage(sender: AnyObject!)
  func canGoToPreviousPage() -> Bool
  @IBAction func goToPreviousPage(sender: AnyObject!)
  func canGoBack() -> Bool
  @IBAction func goBack(sender: AnyObject!)
  func canGoForward() -> Bool
  @IBAction func goForward(sender: AnyObject!)
  func currentPage() -> PDFPage!
  func goTo(page: PDFPage!)
  func currentDestination() -> PDFDestination!
  func goTo(destination: PDFDestination!)
  func goTo(selection: PDFSelection!)
  func goTo(rect: NSRect, on page: PDFPage!)
  func setDisplayMode(mode: PDFDisplayMode)
  func displayMode() -> PDFDisplayMode
  func setDisplaysPageBreaks(breaks: Bool)
  func displaysPageBreaks() -> Bool
  func setDisplayBox(box: PDFDisplayBox)
  func displayBox() -> PDFDisplayBox
  func setDisplaysAsBook(asBook: Bool)
  func displaysAsBook() -> Bool
  func setShouldAntiAlias(aliasing: Bool)
  func shouldAntiAlias() -> Bool
  func setGreekingThreshold(threshold: CGFloat)
  func greekingThreshold() -> CGFloat
  @IBAction func takeBackgroundColorFrom(sender: AnyObject!)
  func setBackgroundColor(newColor: NSColor!)
  func backgroundColor() -> NSColor!
  func setInterpolationQuality(quality: PDFInterpolationQuality)
  func interpolationQuality() -> PDFInterpolationQuality
  func setDelegate(anObject: AnyObject!)
  func delegate() -> AnyObject!
  func setScaleFactor(scale: CGFloat)
  func scaleFactor() -> CGFloat
  @IBAction func zoomIn(sender: AnyObject!)
  func canZoomIn() -> Bool
  @IBAction func zoomOut(sender: AnyObject!)
  func canZoomOut() -> Bool
  func setAutoScales(newAuto: Bool)
  func autoScales() -> Bool
  func areaOfInterestForMouse(event: NSEvent!) -> PDFAreaOfInterest
  func areaOfInterestFor(cursorLocation: NSPoint) -> PDFAreaOfInterest
  func setCursorForAreaOfInterest(area: PDFAreaOfInterest)
  func perform(action: PDFAction!)
  func currentSelection() -> PDFSelection!
  func setCurrentSelection(selection: PDFSelection!)
  func setCurrentSelection(selection: PDFSelection!, animate: Bool)
  func clearSelection()
  @IBAction func selectAll(sender: AnyObject!)
  func scrollSelectionToVisible(sender: AnyObject!)
  func setHighlightedSelections(selections: [AnyObject]!)
  func highlightedSelections() -> [AnyObject]!
  func takePasswordFrom(sender: AnyObject!)
  func draw(page: PDFPage!)
  func drawPagePost(page: PDFPage!)
  func copy(sender: AnyObject!)
  func printWith(printInfo: NSPrintInfo!, autoRotate doRotate: Bool)
  func printWith(printInfo: NSPrintInfo!, autoRotate doRotate: Bool, pageScaling scale: PDFPrintScalingMode)
  func pageFor(point: NSPoint, nearest: Bool) -> PDFPage!
  func convert(point: NSPoint, to page: PDFPage!) -> NSPoint
  func convert(rect: NSRect, to page: PDFPage!) -> NSRect
  func convert(point: NSPoint, from page: PDFPage!) -> NSPoint
  func convert(rect: NSRect, from page: PDFPage!) -> NSRect
  func documentView() -> NSView!
  func layoutDocumentView()
  func annotationsChangedOn(page: PDFPage!)
  func rowSizeFor(page: PDFPage!) -> NSSize
  func setAllowsDragging(allow: Bool)
  func allowsDragging() -> Bool
  func visiblePages() -> [AnyObject]!
  func setEnableDataDetectors(enable: Bool)
  func enableDataDetectors() -> Bool
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  func animationShouldStart(animation: NSAnimation) -> Bool
  func animationDidStop(animation: NSAnimation)
  func animationDidEnd(animation: NSAnimation)
  func animation(animation: NSAnimation, valueForProgress progress: NSAnimationProgress) -> Float
  func animation(animation: NSAnimation, didReachProgressMark progress: NSAnimationProgress)
  func menuNeedsUpdate(menu: NSMenu)
  func numberOfItemsIn(menu: NSMenu) -> Int
  func menu(menu: NSMenu, updateItem item: NSMenuItem, at index: Int, shouldCancel: Bool) -> Bool
  func menuHasKeyEquivalent(menu: NSMenu, forEvent event: NSEvent, target: AutoreleasingUnsafeMutablePointer<AnyObject?>, action: UnsafeMutablePointer<Selector>) -> Bool
  @available(OSX 10.5, *)
  func menuWillOpen(menu: NSMenu)
  @available(OSX 10.5, *)
  func menuDidClose(menu: NSMenu)
  @available(OSX 10.5, *)
  func menu(menu: NSMenu, willHighlight item: NSMenuItem?)
  @available(OSX 10.6, *)
  func confinementRectFor(menu: NSMenu, on screen: NSScreen?) -> NSRect
}
extension NSObject {
  class func pdfViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  func pdfViewWillChangeScaleFactor(sender: PDFView!, toScale scale: CGFloat) -> CGFloat
  class func pdfViewWillClickOnLink(sender: PDFView!, withURL url: NSURL!)
  func pdfViewWillClickOnLink(sender: PDFView!, withURL url: NSURL!)
  class func pdfViewPrintJobTitle(sender: PDFView!) -> String!
  func pdfViewPrintJobTitle(sender: PDFView!) -> String!
  class func pdfViewPerformFind(sender: PDFView!)
  func pdfViewPerformFind(sender: PDFView!)
  class func pdfViewPerformGoToPage(sender: PDFView!)
  func pdfViewPerformGoToPage(sender: PDFView!)
  class func pdfViewPerformPrint(sender: PDFView!)
  func pdfViewPerformPrint(sender: PDFView!)
  class func pdfViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
  func pdfViewOpenPDF(sender: PDFView!, forRemoteGoToAction action: PDFActionRemoteGoTo!)
}
let QCCompositionAttributeNameKey: String
let QCCompositionAttributeDescriptionKey: String
let QCCompositionAttributeCopyrightKey: String
let QCCompositionAttributeBuiltInKey: String
let QCCompositionAttributeIsTimeDependentKey: String
let QCCompositionAttributeHasConsumersKey: String
let QCCompositionAttributeCategoryKey: String
let QCCompositionCategoryDistortion: String
let QCCompositionCategoryStylize: String
let QCCompositionCategoryUtility: String
let QCCompositionInputImageKey: String
let QCCompositionInputSourceImageKey: String
let QCCompositionInputDestinationImageKey: String
let QCCompositionInputRSSFeedURLKey: String
let QCCompositionInputRSSArticleDurationKey: String
let QCCompositionInputPreviewModeKey: String
let QCCompositionInputXKey: String
let QCCompositionInputYKey: String
let QCCompositionInputScreenImageKey: String
let QCCompositionInputAudioPeakKey: String
let QCCompositionInputAudioSpectrumKey: String
let QCCompositionInputTrackPositionKey: String
let QCCompositionInputTrackInfoKey: String
let QCCompositionInputTrackSignalKey: String
let QCCompositionInputPrimaryColorKey: String
let QCCompositionInputSecondaryColorKey: String
let QCCompositionInputPaceKey: String
let QCCompositionOutputImageKey: String
let QCCompositionOutputWebPageURLKey: String
let QCCompositionProtocolGraphicAnimation: String
let QCCompositionProtocolGraphicTransition: String
let QCCompositionProtocolImageFilter: String
let QCCompositionProtocolScreenSaver: String
let QCCompositionProtocolRSSVisualizer: String
let QCCompositionProtocolMusicVisualizer: String
class QCComposition : NSObject, NSCopying {
  /*not inherited*/ init!(file path: String!)
  /*not inherited*/ init!(data: NSData!)
  func protocols() -> [AnyObject]!
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}
class QCCompositionLayer : CAOpenGLLayer, QCCompositionRenderer {
  init!(file path: String!)
  init!(composition: QCComposition!)
  func composition() -> QCComposition!
  init()
  init(layer: AnyObject)
  init?(coder aDecoder: NSCoder)
  @available(OSX 10.0, *)
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
class QCCompositionParameterView : NSView {
  func setCompositionRenderer(renderer: QCCompositionRenderer!)
  func compositionRenderer() -> QCCompositionRenderer!
  func hasParameters() -> Bool
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setDrawsBackground(flag: Bool)
  func drawsBackground() -> Bool
  func setDelegate(delegate: AnyObject!)
  func delegate() -> AnyObject!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSObject {
  class func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [NSObject : AnyObject]! = [:]) -> Bool
  func compositionParameterView(parameterView: QCCompositionParameterView!, shouldDisplayParameterWithKey portKey: String!, attributes portAttributes: [NSObject : AnyObject]! = [:]) -> Bool
  class func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
  func compositionParameterView(parameterView: QCCompositionParameterView!, didChangeParameterWithKey portKey: String!)
}
let QCCompositionPickerPanelDidSelectCompositionNotification: String
class QCCompositionPickerPanel : NSPanel {
  class func shared() -> QCCompositionPickerPanel!
  func compositionPickerView() -> QCCompositionPickerView!
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}
let QCCompositionPickerViewDidSelectCompositionNotification: String
class QCCompositionPickerView : NSView {
  func setCompositionsFromRepositoryWithProtocol(protocol: String!, andAttributes attributes: [NSObject : AnyObject]! = [:])
  func compositions() -> [AnyObject]!
  func setDelegate(delegate: AnyObject!)
  func delegate() -> AnyObject!
  func setShowsCompositionNames(flag: Bool)
  func showsCompositionNames() -> Bool
  func setAllowsEmptySelection(flag: Bool)
  func allowsEmptySelection() -> Bool
  func setCompositionAspectRatio(ratio: NSSize)
  func compositionAspectRatio() -> NSSize
  func setDefaultValue(value: AnyObject!, forInputKey key: String!)
  func resetDefaultInputValues()
  func setSelectedComposition(composition: QCComposition!)
  func selectedComposition() -> QCComposition!
  func startAnimation(sender: AnyObject!)
  func stopAnimation(sender: AnyObject!)
  func isAnimating() -> Bool
  func setMaxAnimationFrameRate(maxFPS: Float)
  func maxAnimationFrameRate() -> Float
  func setBackgroundColor(color: NSColor!)
  func backgroundColor() -> NSColor!
  func setDrawsBackground(flag: Bool)
  func drawsBackground() -> Bool
  func numberOfColumns() -> Int
  func setNumberOfColumns(columns: Int)
  func numberOfRows() -> Int
  func setNumberOfRows(rows: Int)
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
extension NSObject {
  class func compositionPickerView(pickerView: QCCompositionPickerView!, didSelect composition: QCComposition!)
  func compositionPickerView(pickerView: QCCompositionPickerView!, didSelect composition: QCComposition!)
  class func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewDidStartAnimating(pickerView: QCCompositionPickerView!)
  class func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
  func compositionPickerViewWillStopAnimating(pickerView: QCCompositionPickerView!)
}
let QCCompositionRepositoryDidUpdateNotification: String
extension QCComposition {
  func identifier() -> String!
}
class QCCompositionRepository : NSObject {
  class func shared() -> QCCompositionRepository!
  func compositionWithIdentifier(identifier: String!) -> QCComposition!
  func compositionsWithProtocols(protocols: [AnyObject]!, andAttributes attributes: [NSObject : AnyObject]! = [:]) -> [AnyObject]!
  func allCompositions() -> [AnyObject]!
  init()
}
class QCPatchController : NSController {
  init()
  init?(coder: NSCoder)
}
let QCPlugInAttributeNameKey: String
let QCPlugInAttributeDescriptionKey: String
let QCPlugInAttributeCopyrightKey: String
let QCPlugInAttributeCategoriesKey: String
let QCPlugInAttributeExamplesKey: String
let QCPortAttributeTypeKey: String
let QCPortAttributeNameKey: String
let QCPortAttributeMinimumValueKey: String
let QCPortAttributeMaximumValueKey: String
let QCPortAttributeDefaultValueKey: String
let QCPortAttributeMenuItemsKey: String
let QCPortTypeBoolean: String
let QCPortTypeIndex: String
let QCPortTypeNumber: String
let QCPortTypeString: String
let QCPortTypeColor: String
let QCPortTypeImage: String
let QCPortTypeStructure: String
let QCPlugInPixelFormatARGB8: String
let QCPlugInPixelFormatBGRA8: String
let QCPlugInPixelFormatRGBAf: String
let QCPlugInPixelFormatI8: String
let QCPlugInPixelFormatIf: String
let QCPlugInExecutionArgumentEventKey: String
let QCPlugInExecutionArgumentMouseLocationKey: String
struct QCPlugInExecutionMode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQCPlugInExecutionModeProvider: QCPlugInExecutionMode { get }
var kQCPlugInExecutionModeProcessor: QCPlugInExecutionMode { get }
var kQCPlugInExecutionModeConsumer: QCPlugInExecutionMode { get }
struct QCPlugInTimeMode : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kQCPlugInTimeModeNone: QCPlugInTimeMode { get }
var kQCPlugInTimeModeIdle: QCPlugInTimeMode { get }
var kQCPlugInTimeModeTimeBase: QCPlugInTimeMode { get }
typealias QCPlugInBufferReleaseCallback = @convention(c) (UnsafePointer<Void>, UnsafeMutablePointer<Void>) -> Void
typealias QCPlugInTextureReleaseCallback = @convention(c) (CGLContextObj, GLuint, UnsafeMutablePointer<Void>) -> Void
protocol QCPlugInContext {
  func compositionURL() -> NSURL!
  func userInfo() -> NSMutableDictionary!
  func colorSpace() -> Unmanaged<CGColorSpace>!
  func bounds() -> NSRect
  func cglContextObj() -> CGLContextObj
  func outputImageProviderFromBufferWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, baseAddress: UnsafePointer<Void>, bytesPerRow rowBytes: Int, releaseCallback callback: QCPlugInBufferReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
  func outputImageProviderFromTextureWithPixelFormat(format: String!, pixelsWide width: Int, pixelsHigh height: Int, name: GLuint, flipped: Bool, releaseCallback callback: QCPlugInTextureReleaseCallback!, releaseContext context: UnsafeMutablePointer<Void>, colorSpace: CGColorSpace!, shouldColorMatch colorMatch: Bool) -> AnyObject!
}
protocol QCPlugInInputImageSource {
  func imageBounds() -> NSRect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  func shouldColorMatch() -> Bool
  func lockBufferRepresentationWithPixelFormat(format: String!, colorSpace: CGColorSpace!, forBounds bounds: NSRect) -> Bool
  func bufferPixelsWide() -> Int
  func bufferPixelsHigh() -> Int
  func bufferPixelFormat() -> String!
  func bufferColorSpace() -> Unmanaged<CGColorSpace>!
  func bufferBaseAddress() -> UnsafePointer<Void>
  func bufferBytesPerRow() -> Int
  func unlockBufferRepresentation()
  func lockTextureRepresentationWith(colorSpace: CGColorSpace!, forBounds bounds: NSRect) -> Bool
  func texturePixelsWide() -> Int
  func texturePixelsHigh() -> Int
  func textureTarget() -> GLenum
  func textureName() -> GLuint
  func textureColorSpace() -> Unmanaged<CGColorSpace>!
  func textureFlipped() -> Bool
  func textureMatrix() -> UnsafePointer<GLfloat>
  func bindTextureRepresentationToCGLContext(cgl_ctx: CGLContextObj, textureUnit unit: GLenum, normalizeCoordinates flag: Bool)
  func unbindTextureRepresentationFromCGLContext(cgl_ctx: CGLContextObj, textureUnit unit: GLenum)
  func unlockTextureRepresentation()
}
protocol QCPlugInOutputImageProvider {
  func imageBounds() -> NSRect
  func imageColorSpace() -> Unmanaged<CGColorSpace>!
  optional func shouldColorMatch() -> Bool
  optional func supportedBufferPixelFormats() -> [AnyObject]!
  optional func renderToBuffer(baseAddress: UnsafeMutablePointer<Void>, withBytesPerRow rowBytes: Int, pixelFormat format: String!, forBounds bounds: NSRect) -> Bool
  optional func supportedRenderedTexturePixelFormats() -> [AnyObject]!
  optional func copyRenderedTextureForCGLContext(cgl_ctx: CGLContextObj, pixelFormat format: String!, bounds: NSRect, isFlipped flipped: UnsafeMutablePointer<ObjCBool>) -> GLuint
  optional func releaseRenderedTexture(name: GLuint, forCGLContext cgl_ctx: CGLContextObj)
  optional func canRenderWithCGLContext(cgl_ctx: CGLContextObj) -> Bool
  optional func renderWithCGLContext(cgl_ctx: CGLContextObj, forBounds bounds: NSRect) -> Bool
}
class QCPlugIn : NSObject {
  class func attributes() -> [NSObject : AnyObject]!
  class func attributesForPropertyPortWithKey(key: String!) -> [NSObject : AnyObject]!
  class func sortedPropertyPortKeys() -> [AnyObject]!
  class func executionMode() -> QCPlugInExecutionMode
  class func timeMode() -> QCPlugInTimeMode
  class func plugInKeys() -> [AnyObject]!
  func startExecution(context: QCPlugInContext!) -> Bool
  func enableExecution(context: QCPlugInContext!)
  func executionTimeFor(context: QCPlugInContext!, atTime time: NSTimeInterval, withArguments arguments: [NSObject : AnyObject]!) -> NSTimeInterval
  func execute(context: QCPlugInContext!, atTime time: NSTimeInterval, withArguments arguments: [NSObject : AnyObject]!) -> Bool
  func disableExecution(context: QCPlugInContext!)
  func stopExecution(context: QCPlugInContext!)
  func serializedValueForKey(key: String!) -> AnyObject!
  func setSerializedValue(serializedValue: AnyObject!, forKey key: String!)
  init()
}
extension QCPlugIn {
  func didValueForInputKeyChange(key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func setValue(value: AnyObject!, forOutputKey key: String!) -> Bool
  func addInputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [NSObject : AnyObject]! = [:])
  func removeInputPortForKey(key: String!)
  func addOutputPortWithType(type: String!, forKey key: String!, withAttributes attributes: [NSObject : AnyObject]! = [:])
  func removeOutputPortForKey(key: String!)
}
extension QCPlugIn {
  class func loadAtPath(path: String!) -> Bool
  class func registerClass(aClass: AnyClass!)
}
class QCPlugInViewController : NSViewController {
  init!(plugIn: QCPlugIn!, viewNibName name: String!)
  func plugIn() -> QCPlugIn!
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder: NSCoder)
  convenience init()
}
extension QCPlugIn {
  func createViewController() -> QCPlugInViewController!
}
let QCRendererEventKey: String
let QCRendererMouseLocationKey: String
protocol QCCompositionRenderer {
  @available(OSX 10.0, *)
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
class QCRenderer : NSObject, QCCompositionRenderer {
  init!(composition: QCComposition!, colorSpace: CGColorSpace!)
  init!(cglContext context: CGLContextObj, pixelFormat format: CGLPixelFormatObj, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(offScreenWith size: NSSize, colorSpace: CGColorSpace!, composition: QCComposition!)
  init!(openGLContext context: NSOpenGLContext!, pixelFormat format: NSOpenGLPixelFormat!, file path: String!)
  func renderAtTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> Bool
  func renderingTimeForTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> NSTimeInterval
  func composition() -> QCComposition!
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  init()
  @available(OSX 10.0, *)
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
let QCViewDidStartRenderingNotification: String
let QCViewDidStopRenderingNotification: String
class QCView : NSView, QCCompositionRenderer {
  func loadCompositionFromFile(path: String!) -> Bool
  func load(composition: QCComposition!) -> Bool
  func loadedComposition() -> QCComposition!
  func unloadComposition()
  func setAutostartsRendering(flag: Bool)
  func autostartsRendering() -> Bool
  func setEraseColor(color: NSColor!)
  func eraseColor() -> NSColor!
  func setEventForwardingMask(mask: Int)
  func eventForwardingMask() -> Int
  func setMaxRenderingFrameRate(maxFPS: Float)
  func maxRenderingFrameRate() -> Float
  func erase()
  func startRendering() -> Bool
  func renderAtTime(time: NSTimeInterval, arguments: [NSObject : AnyObject]!) -> Bool
  func pauseRendering()
  func isPausedRendering() -> Bool
  func resumeRendering()
  func stopRendering()
  func isRendering() -> Bool
  func snapshotImage() -> NSImage!
  func createSnapshotImageOfType(type: String!) -> AnyObject!
  func openGLContext() -> NSOpenGLContext!
  func openGLPixelFormat() -> NSOpenGLPixelFormat!
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
  @available(OSX 10.0, *)
  func attributes() -> [NSObject : AnyObject]!
  func inputKeys() -> [AnyObject]!
  func outputKeys() -> [AnyObject]!
  func setValue(value: AnyObject!, forInputKey key: String!) -> Bool
  func valueForInputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!) -> AnyObject!
  func valueForOutputKey(key: String!, ofType type: String!) -> AnyObject!
  func propertyListFromInputValues() -> AnyObject!
  func setInputValuesWithPropertyList(plist: AnyObject!)
  func userInfo() -> NSMutableDictionary!
}
extension QCView {
  @IBAction func start(sender: AnyObject!)
  @IBAction func stop(sender: AnyObject!)
  @IBAction func play(sender: AnyObject!)
}
class QuartzFilter : NSObject {
  /*not inherited*/ init!(url aURL: NSURL!)
  /*not inherited*/ init!(properties: [NSObject : AnyObject]!)
  /*not inherited*/ init!(outputIntents: [AnyObject]!)
  func properties() -> [NSObject : AnyObject]!
  func url() -> NSURL!
  func localizedName() -> String!
  func applyTo(aContext: CGContext!) -> Bool
  func removeFrom(aContext: CGContext!)
  init()
}
var globalUpdateOK: DarwinBoolean
class QuartzFilterView : NSView {
  func sizeToFit()
  init(frame frameRect: NSRect)
  init?(coder: NSCoder)
  convenience init()
}
class QuartzFilterManager : NSObject {
  class func filtersInDomains(domains: [AnyObject]!) -> [AnyObject]!
  func filterPanel() -> NSPanel!
  func filterView() -> QuartzFilterView!
  func selectedFilter() -> QuartzFilter!
  func select(filter: QuartzFilter!) -> Bool
  func setDelegate(aDelegate: AnyObject!)
  func delegate() -> AnyObject!
  func importFilter(filterProperties: [NSObject : AnyObject]!) -> QuartzFilter!
  init()
}
extension NSObject {
  class func quartzFilterManager(sender: QuartzFilterManager!, didAdd filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didAdd filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didRemove filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didRemove filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didModifyFilter filter: QuartzFilter!)
  class func quartzFilterManager(sender: QuartzFilterManager!, didSelect filter: QuartzFilter!)
  func quartzFilterManager(sender: QuartzFilterManager!, didSelect filter: QuartzFilter!)
}
let kQuartzFilterApplicationDomain: String
let kQuartzFilterPDFWorkflowDomain: String
let kQuartzFilterPrintingDomain: String
let kQuartzFilterManagerDidAddFilterNotification: String
let kQuartzFilterManagerDidRemoveFilterNotification: String
let kQuartzFilterManagerDidModifyFilterNotification: String
let kQuartzFilterManagerDidSelectFilterNotification: String

/*!
 * @abstract The QLPreviewItem protocol declares the methods that a QLPreviewPanel  instance uses to access the contents of a given item.
 */
@available(OSX 10.6, *)
protocol QLPreviewItem : NSObjectProtocol {

  /*!
   * @abstract The URL of the item to preview.
   * @discussion The URL must be a file URL. Return nil if the item is not available for preview (The Preview Panel or View will then display the Loading view).
   */
  var previewItemURL: NSURL! { get }

  /*!
   * @abstract The item's title this will be used as apparent item title.
   * @discussion The title replaces the default item display name. This property is optional.
   */
  optional var previewItemTitle: String! { get }

  /*!
   * @abstract The preview display state (e.g.: visible page).
   * @discussion The display state is an opaque object used by the Preview Panel and Preview Views. This property is optional.
   */
  optional var previewItemDisplayState: AnyObject! { get }
}

/*!
 * @abstract This category makes NSURL instances as suitable items for the Preview Panel or a Preview View.
 */
extension NSURL : QLPreviewItem {

  /*!
   * @abstract The URL of the item to preview.
   * @discussion The URL must be a file URL. Return nil if the item is not available for preview (The Preview Panel or View will then display the Loading view).
   */
  @available(OSX 10.6, *)
  var previewItemURL: NSURL! { get }

  /*!
   * @abstract The item's title this will be used as apparent item title.
   * @discussion The title replaces the default item display name. This property is optional.
   */
  @available(OSX 10.6, *)
  var previewItemTitle: String! { get }

  /*!
   * @abstract The preview display state (e.g.: visible page).
   * @discussion The display state is an opaque object used by the Preview Panel and Preview Views. This property is optional.
   */
  @available(OSX 10.6, *)
  var previewItemDisplayState: AnyObject! { get }
}

/*!
 * @abstract The QLPreviewPanel class implements the Preview Panel - a user interface object that displays the preview of a list of items.
 * @discussion Each application has only one instance of QLPreviewPanel. You can not subclass QLPreviewPanel.
 *
 *      QLPreviewPanel follows the responder chain and adapts to the first responder willing to control it. It uses a data source to
 *      gets its content. QLPreviewPanel can also have a delegate.
 */
@available(OSX 10.6, *)
class QLPreviewPanel : NSPanel {

  /*!
   * @abstract Returns the QLPreviewPanel instance, creating it if it doesn� exist yet.
   */
  class func shared() -> QLPreviewPanel!

  /*!
   * @abstract Returns YES if the shared Preview Panel has been created, NO if it hasn�..
   */
  class func sharedPreviewPanelExists() -> Bool

  /*!
   * @abstract The current first responder accepting to control the Preview Panel.
   * @discussion You should never change preview panel state (delegate, datasource, etc.) if you are not controlling it.
   */
  var currentController: AnyObject! { get }

  /*!
   * @abstract Asks the Preview Panel to update its current controller.
   * @discussion The Preview Panel automatically updates its controller (by searching the responder chain) whenever the main or key window changes. Invoke updateController if the responder chain changes without explicit notice.
   */
  func updateController()

  /*!
   * @abstract The Preview Panel data source.
   */
  unowned(unsafe) var dataSource: @sil_unmanaged QLPreviewPanelDataSource!

  /*!
   * @abstract Asks the Preview Panel to reload its data from its data source.
   * @discussion This method does not refresh the visible item if it has not changed.
   */
  func reloadData()

  /*!
   * @abstract Asks the Preview Panel to recompute the preview of the currently previewed item.
   */
  func refreshCurrentPreviewItem()

  /*!
   * @abstract The index of the currently previewed item in the preview panel or NSNotFound if there is none.
   */
  var currentPreviewItemIndex: Int

  /*!
   * @abstract The currently previewed item in the preview panel or nil if there is none.
   */
  var currentPreviewItem: QLPreviewItem! { get }

  /*!
   * @abstract The current panel's display state.
   */
  var displayState: AnyObject!

  /*!
   * @abstract The Preview Panel delegate.
   */
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!

  /*!
   * @abstract Enters full screen mode.
   * @discussion If panel is not on-screen, the panel will go directly to full screen mode.
   */
  func enterFullScreenMode(screen: NSScreen!, withOptions options: [NSObject : AnyObject]! = [:]) -> Bool

  /*!
   * @abstract Exits full screen mode.
   */
  func exitFullScreenMode(options options: [NSObject : AnyObject]! = [:])

  /*!
   * @abstract YES if the panel is currently open and in full screen mode.
   */
  var isInFullScreenMode: Bool { get }
  init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask aStyle: Int, backing bufferingType: NSBackingStoreType, defer flag: Bool, screen: NSScreen?)
  @available(OSX 10.10, *)
  convenience init(contentViewController: NSViewController)
  convenience init()
  init?(coder: NSCoder)
  convenience init?(windowRef: UnsafeMutablePointer<Void>)
}

/*!
 * @abstract Methods to implement by any object in the responder chain to control the Preview Panel
 * @discussion QLPreviewPanel shows previews for items provided by the first object in the responder chain accepting to control it. You generally implement these methods in your window controller or delegate. You should never try to modify Preview panel state if you're not controlling the panel.
 */
extension NSObject {

  /*!
   * @abstract Sent to each object in the responder chain to find a controller.
   * @param panel The Preview Panel looking for a controller.
   * @result YES if the receiver accepts to control the panel. You should never call this method directly.
   */
  class func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool

  /*!
   * @abstract Sent to each object in the responder chain to find a controller.
   * @param panel The Preview Panel looking for a controller.
   * @result YES if the receiver accepts to control the panel. You should never call this method directly.
   */
  func acceptsPreviewPanelControl(panel: QLPreviewPanel!) -> Bool

  /*!
   * @abstract Sent to the object taking control of the Preview Panel.
   * @param panel The Preview Panel the receiver will control.
   * @discussion The receiver should setup the preview panel (data source, delegate, binding, etc.) here. You should never call this method directly.
   */
  class func beginPreviewPanelControl(panel: QLPreviewPanel!)

  /*!
   * @abstract Sent to the object taking control of the Preview Panel.
   * @param panel The Preview Panel the receiver will control.
   * @discussion The receiver should setup the preview panel (data source, delegate, binding, etc.) here. You should never call this method directly.
   */
  func beginPreviewPanelControl(panel: QLPreviewPanel!)

  /*!
   * @abstract Sent to the object in control of the Preview Panel just before stopping its control.
   * @param panel The Preview Panel that the receiver will stop controlling.
   * @discussion The receiver should unsetup the preview panel (data source, delegate, binding, etc.) here. You should never call this method directly.
   */
  class func endPreviewPanelControl(panel: QLPreviewPanel!)

  /*!
   * @abstract Sent to the object in control of the Preview Panel just before stopping its control.
   * @param panel The Preview Panel that the receiver will stop controlling.
   * @discussion The receiver should unsetup the preview panel (data source, delegate, binding, etc.) here. You should never call this method directly.
   */
  func endPreviewPanelControl(panel: QLPreviewPanel!)
}

/*!
 * @abstract The QLPreviewPanelDataSource protocol declares the methods that the Preview Panel uses to access the contents of its data source object.
 */
protocol QLPreviewPanelDataSource {

  /*!
   * @abstract Returns the number of items that the preview panel should preview.
   * @param panel The Preview Panel.
   * @result The number of items.
   */
  @available(OSX 10.6, *)
  func numberOfPreviewItemsIn(panel: QLPreviewPanel!) -> Int

  /*!
   * @abstract Returns the item that the preview panel should preview.
   * @param panel The Preview Panel.
   * @param index The index of the item to preview.
   * @result An item conforming to the QLPreviewItem protocol.
   */
  @available(OSX 10.6, *)
  func previewPanel(panel: QLPreviewPanel!, previewItemAt index: Int) -> QLPreviewItem!
}

/*!
 * @abstract QLPreviewPanelDelegate is the protocol for the delegate of the Preview Panel object. You can implement these methods to perform custom tasks in response to events in the Preview Panel.
 */
protocol QLPreviewPanelDelegate : NSWindowDelegate {

  /*!
   * @abstract Invoked by the preview panel when it receives an event it doesn't handle.
   * @result Returns NO if the receiver did not handle the event.
   * 
   */
  @available(OSX 10.6, *)
  optional func previewPanel(panel: QLPreviewPanel!, handle event: NSEvent!) -> Bool

  /*!
   * @abstract Invoked when the preview panel opens or closes to provide a zoom effect.
   * @discussion Return NSZeroRect if there is no origin point, this will produce a fade of the panel. The coordinates are screen based.
   */
  @available(OSX 10.6, *)
  optional func previewPanel(panel: QLPreviewPanel!, sourceFrameOnScreenFor item: QLPreviewItem!) -> NSRect

  /*!
   * @abstract Invoked when the preview panel opens or closes to provide a smooth transition when zooming.
   * @param contentRect The rect within the image that actually represents the content of the document. For example, for icons the actual rect is generally smaller than the icon itself. It should be expressed in points.
   * @discussion Return an image the panel will crossfade with when opening or closing. You can specify the actual "document" content rect in the image in contentRect.
   */
  @available(OSX 10.6, *)
  optional func previewPanel(panel: QLPreviewPanel!, transitionImageFor item: QLPreviewItem!, contentRect: UnsafeMutablePointer<NSRect>) -> AnyObject!
}
@available(OSX 10.7, *)
enum QLPreviewViewStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Normal
  case Compact
}

/*!
 * @abstract A QLPreviewView shows a preview of an item.
 */
@available(OSX 10.6, *)
class QLPreviewView : NSView {

  /*!
   * @discussion This is the designated initializer
   */
  @available(OSX 10.7, *)
  init!(frame: NSRect, style: QLPreviewViewStyle)

  /*!
   * @abstract Equivalent to initWithFrame:style: with style being QLPreviewViewStyleNormal
   */
  init!(frame: NSRect)

  /*!
   * @abstract The item to preview.
   */
  var previewItem: QLPreviewItem!

  /*!
   * @abstract Asks the Preview view to recompute the preview of the currently previewed item.
   */
  func refreshPreviewItem()

  /*!
   * @abstract The current display state (e.g. visible page) of the preview item.
   * @discussion The display state is an opaque object used by the Preview Panel and Preview Views.
   */
  var displayState: AnyObject!

  /*!
   @abstract Closes the receiver, releasing the current preview item.
   Once the receiver has closed, it will no longer accept preview items.
   @discussion The application is required to call close when the receiver is no longer needed if shouldCloseWithWindow is NO.
   The close method will be called automatically when the window closes if shouldCloseWithWindow is YES.
   */
  func close()

  /*!
   @abstract Set whether the receiver closes when its window closes (see discussion of -close).
   */
  var shouldCloseWithWindow: Bool
  var autostarts: Bool
  init?(coder: NSCoder)
  convenience init()
}
