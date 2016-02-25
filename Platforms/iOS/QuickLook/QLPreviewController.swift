
@available(iOS 4.0, *)
class QLPreviewController : UIViewController {
  class func canPreviewItem(_ item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
}
protocol QLPreviewControllerDataSource {
  @available(iOS 4.0, *)
  func numberOfPreviewItemsInPreviewController(_ controller: QLPreviewController) -> Int
  @available(iOS 4.0, *)
  func previewController(_ controller: QLPreviewController, previewItemAtIndex index: Int) -> QLPreviewItem
}
protocol QLPreviewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func previewControllerWillDismiss(_ controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewControllerDidDismiss(_ controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, shouldOpenURL url: NSURL, forPreviewItem item: QLPreviewItem) -> Bool
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, frameForPreviewItem item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, transitionImageForPreviewItem item: QLPreviewItem, contentRect contentRect: UnsafeMutablePointer<CGRect>) -> UIImage
}
