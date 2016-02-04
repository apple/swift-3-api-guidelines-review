
@available(tvOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(tvOS 3.0, *)
  var translucent: Bool
  func pushNavigationItem(item: UINavigationItem, animated: Bool)
  func popNavigationItemAnimated(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(items: [UINavigationItem]?, animated: Bool)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarPosition barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImageForBarPosition(barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImageForBarMetrics(barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 5.0, *)
  var titleTextAttributes: [String : AnyObject]?
  @available(tvOS 5.0, *)
  func setTitleVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func titleVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
  @available(tvOS 7.0, *)
  var barPosition: UIBarPosition { get }
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPushItem item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPushItem item: UINavigationItem)
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, shouldPopItem item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(navigationBar: UINavigationBar, didPopItem item: UINavigationItem)
}
@available(tvOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  init?(coder: NSCoder)
  var title: String?
  var titleView: UIView?
  @available(tvOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(tvOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(tvOS 5.0, *)
  func setLeftBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  @available(tvOS 5.0, *)
  func setRightBarButtonItems(items: [UIBarButtonItem]?, animated: Bool)
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  func setRightBarButtonItem(item: UIBarButtonItem?, animated: Bool)
  convenience init()
  @available(tvOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
}
