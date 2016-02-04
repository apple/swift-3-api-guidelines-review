
@available(iOS 4.0, *)
class QLPreviewController : UIViewController {
  class func canPreviewItem(item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol QLPreviewControllerDataSource {
  @available(iOS 4.0, *)
  func numberOfPreviewItemsInPreviewController(controller: QLPreviewController) -> Int
  @available(iOS 4.0, *)
  func previewController(controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func previewControllerWillDismiss(controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewControllerDidDismiss(controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, shouldOpenURL url: NSURL, forPreviewItem item: QLPreviewItem) -> Bool
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, frameForPreviewItem item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, transitionImageForPreviewItem item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}
