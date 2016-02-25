
protocol UIPopoverPresentationControllerDelegate : UIAdaptivePresentationControllerDelegate {
  @available(iOS 8.0, *)
  optional func prepareForPopoverPresentation(_ popoverPresentationController: UIPopoverPresentationController)
  @available(iOS 8.0, *)
  optional func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool
  @available(iOS 8.0, *)
  optional func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController)
  @available(iOS 8.0, *)
  optional func popoverPresentationController(_ popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverToRect rect: UnsafeMutablePointer<CGRect>, inView view: AutoreleasingUnsafeMutablePointer<UIView?>)
}
@available(iOS 8.0, *)
class UIPopoverPresentationController : UIPresentationController {
  var permittedArrowDirections: UIPopoverArrowDirection
  var sourceView: UIView?
  var sourceRect: CGRect
  @available(iOS 9.0, *)
  var canOverlapSourceViewRect: Bool
  var barButtonItem: UIBarButtonItem?
  var arrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: AnyObject.Type?
}
