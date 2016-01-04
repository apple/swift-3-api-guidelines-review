
@available(iOS 4.0, *)
class QLPreviewController : UIViewController {

  /*!
   * @abstract Returns YES if QLPreviewController can display this preview item.
   */
  class func canPreviewItem(item: QLPreviewItem) -> Bool

  /*!
   * @abstract The Preview Panel data source.
   */
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?

  /*!
   * @abstract Asks the Preview Controller to reload its data from its data source.
   * @discussion This method does not refresh the visible item if it has not changed.
   */
  func reloadData()

  /*!
   * @abstract Asks the Preview Controller to recompute the preview of the currently previewed item.
   */
  func refreshCurrentPreviewItem()

  /*!
   * @abstract The index of the currently previewed item in the preview panel or NSNotFound if there is none.
   */
  var currentPreviewItemIndex: Int

  /*!
   * @abstract The currently previewed item in the preview panel or nil if there is none.
   */
  var currentPreviewItem: QLPreviewItem? { get }

  /*!
   * @abstract The Preview Controller delegate.
   * @discussion Should implement the <QLPreviewControllerDelegate> protocol
   */
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}

/*!
 * @abstract The QLPreviewControllerDataSource protocol declares the methods that the Preview Controller uses to access the contents of its data source object.
 */
protocol QLPreviewControllerDataSource {

  /*!
   * @abstract Returns the number of items that the preview controller should preview.
   * @param controller The Preview Controller.
   * @result The number of items.
   */
  @available(iOS 4.0, *)
  func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int

  /*!
   * @abstract Returns the item that the preview controller should preview.
   * @param panel The Preview Controller.
   * @param index The index of the item to preview.
   * @result An item conforming to the QLPreviewItem protocol.
   */
  @available(iOS 4.0, *)
  func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : NSObjectProtocol {

  /*!
   * @abstract Invoked before the preview controller is closed.
   */
  @available(iOS 4.0, *)
  optional func previewControllerWillDismiss(controller: QLPreviewController)

  /*!
   * @abstract Invoked after the preview controller is closed.
   */
  @available(iOS 4.0, *)
  optional func previewControllerDidDismiss(controller: QLPreviewController)

  /*!
   * @abstract Invoked by the preview controller before trying to open an URL tapped in the preview.
   * @result Returns NO to prevent the preview controller from calling -[UIApplication openURL:] on url.
   * @discussion If not implemented, defaults is YES.
   */
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, shouldOpenURL url: NSURL, forPreviewItem item: QLPreviewItem) -> Bool

  /*!
   * @abstract Invoked when the preview controller is about to be presented full screen or dismissed from full screen, to provide a zoom effect.
   * @discussion Return the origin of the zoom. It should be relative to view, or screen based if view is not set. The controller will fade in/out if the rect is CGRectZero.
   */
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, frameForPreviewItem item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect

  /*!
   * @abstract Invoked when the preview controller is about to be presented full screen or dismissed from full screen, to provide a smooth transition when zooming.
   * @param contentRect The rect within the image that actually represents the content of the document. For example, for icons the actual rect is generally smaller than the icon itself.
   * @discussion Return an image the controller will crossfade with when zooming. You can specify the actual "document" content rect in the image in contentRect.
   */
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, transitionImageForPreviewItem item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}

/*!
 * @abstract The QLPreviewItem protocol declares the methods that a QLPreviewController  instance uses to access the contents of a given item.
 */
protocol QLPreviewItem : NSObjectProtocol {

  /*!
   * @abstract The URL of the item to preview.
   * @discussion The URL must be a file URL. 
   */
  var previewItemURL: NSURL { get }

  /*!
   * @abstract The item's title this will be used as apparent item title.
   * @discussion The title replaces the default item display name. This property is optional.
   */
  optional var previewItemTitle: String? { get }
}

/*!
 * @abstract This category makes NSURL instances as suitable items for the Preview Controller.
 */
extension NSURL : QLPreviewItem {

  /*!
   * @abstract The URL of the item to preview.
   * @discussion The URL must be a file URL. 
   */
  var previewItemURL: NSURL { get }

  /*!
   * @abstract The item's title this will be used as apparent item title.
   * @discussion The title replaces the default item display name. This property is optional.
   */
  var previewItemTitle: String? { get }
}
