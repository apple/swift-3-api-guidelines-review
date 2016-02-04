
@available(iOS 4.0, *)
class QLPreviewController : UIViewController {
  class func canPreviewItem(item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol QLPreviewControllerDataSource {
  @available(iOS 4.0, *)
  func numberOfPreviewItemsIn(controller: QLPreviewController) -> Int
  @available(iOS 4.0, *)
  func previewController(controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : ObjectProtocol {
  @available(iOS 4.0, *)
  optional func previewControllerWillDismiss(controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewControllerDidDismiss(controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, shouldOpen url: URL, forPreviewItem item: QLPreviewItem) -> Bool
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, frameFor item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  @available(iOS 4.0, *)
  optional func previewController(controller: QLPreviewController, transitionImageFor item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}
