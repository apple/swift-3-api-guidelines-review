
@available(iOS 2.0, *)
class UIToolbar : UIView, UIBarPositioning {
  var barStyle: UIBarStyle
  var items: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  var translucent: Bool
  func setItems(items: [UIBarButtonItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForToolbarPosition(topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setShadowImage(shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition)
  @available(iOS 6.0, *)
  func shadowImageForToolbarPosition(topOrBottom: UIBarPosition) -> UIImage?
  @available(iOS 7.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged UIToolbarDelegate?
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UIToolbarDelegate : UIBarPositioningDelegate {
}
