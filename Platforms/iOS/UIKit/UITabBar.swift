
@available(iOS 7.0, *)
enum UITabBarItemPositioning : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Fill
  case Centered
}
@available(iOS 2.0, *)
class UITabBar : UIView {
  unowned(unsafe) var delegate: @sil_unmanaged UITabBarDelegate?
  var items: [UITabBarItem]?
  unowned(unsafe) var selectedItem: @sil_unmanaged UITabBarItem?
  func setItems(items: [UITabBarItem]?, animated: Bool)
  func beginCustomizingItems(items: [UITabBarItem])
  func endCustomizingAnimated(animated: Bool) -> Bool
  func isCustomizing() -> Bool
  @available(iOS 5.0, *)
  var tintColor: UIColor!
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use tintColor")
  var selectedImageTintColor: UIColor?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 7.0, *)
  var itemPositioning: UITabBarItemPositioning
  @available(iOS 7.0, *)
  var itemWidth: CGFloat
  @available(iOS 7.0, *)
  var itemSpacing: CGFloat
  @available(iOS 7.0, *)
  var barStyle: UIBarStyle
  @available(iOS 7.0, *)
  var translucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem)
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, willBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didBeginCustomizingItems items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, willEndCustomizingItems items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didEndCustomizingItems items: [UITabBarItem], changed: Bool)
}
