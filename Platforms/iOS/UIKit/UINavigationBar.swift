
@available(iOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(iOS 3.0, *)
  var translucent: Bool
  func pushNavigationItem(_ item: UINavigationItem, animated animated: Bool)
  func popNavigationItemAnimated(_ animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(_ items: [UINavigationItem]?, animated animated: Bool)
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImageForBarPosition(_ barPosition: UIBarPosition, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForBarMetrics(_ barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 5.0, *)
  var titleTextAttributes: [String : AnyObject]?
  @available(iOS 5.0, *)
  func setTitleVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titleVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 7.0, *)
  var backIndicatorImage: UIImage?
  @available(iOS 7.0, *)
  var backIndicatorTransitionMaskImage: UIImage?
  @available(iOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPushItem item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPushItem item: UINavigationItem)
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPopItem item: UINavigationItem) -> Bool
  @available(iOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPopItem item: UINavigationItem)
}
@available(iOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title title: String)
  init?(coder coder: NSCoder)
  var title: String?
  var titleView: UIView?
  var prompt: String?
  var backBarButtonItem: UIBarButtonItem?
  var hidesBackButton: Bool
  func setHidesBackButton(_ hidesBackButton: Bool, animated animated: Bool)
  @available(iOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  func setLeftBarButtonItems(_ items: [UIBarButtonItem]?, animated animated: Bool)
  @available(iOS 5.0, *)
  func setRightBarButtonItems(_ items: [UIBarButtonItem]?, animated animated: Bool)
  @available(iOS 5.0, *)
  var leftItemsSupplementBackButton: Bool
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(_ item: UIBarButtonItem?, animated animated: Bool)
  func setRightBarButtonItem(_ item: UIBarButtonItem?, animated animated: Bool)
  @available(iOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
}
