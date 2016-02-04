
enum UIBarButtonItemStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Plain
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
  case Bordered
  case Done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Done
  case Cancel
  case Edit
  case Save
  case Add
  case FlexibleSpace
  case FixedSpace
  case Compose
  case Reply
  case Action
  case Organize
  case Bookmarks
  case Search
  case Refresh
  case Stop
  case Camera
  case Trash
  case Play
  case Pause
  case Rewind
  case FastForward
  @available(iOS 3.0, *)
  case Undo
  @available(iOS 3.0, *)
  case Redo
  @available(iOS 4.0, *)
  case PageCurl
}
@available(iOS 2.0, *)
class UIBarButtonItem : UIBarItem, NSCoding {
  init()
  init?(coder aDecoder: NSCoder)
  convenience init(image: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  @available(iOS 5.0, *)
  convenience init(image: UIImage?, landscapeImagePhone: UIImage?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(title: String?, style: UIBarButtonItemStyle, target: AnyObject?, action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target: AnyObject?, action: Selector)
  convenience init(customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImageForState(state: UIControlState, style: UIBarButtonItemStyle, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustmentForBarMetrics(barMetrics: UIBarMetrics) -> CGFloat
}
