
enum UIBarButtonItemStyle : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Plain
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use UIBarButtonItemStylePlain when minimum deployment target is iOS7 or later")
  case Bordered
  case Done
}
enum UIBarButtonSystemItem : Int {
  init?(rawValue rawValue: Int)
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
  convenience init(image image: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  @available(iOS 5.0, *)
  convenience init(image image: UIImage?, landscapeImagePhone landscapeImagePhone: UIImage?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(title title: String?, style style: UIBarButtonItemStyle, target target: AnyObject?, action action: Selector)
  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem, target target: AnyObject?, action action: Selector)
  convenience init(customView customView: UIView)
  var style: UIBarButtonItemStyle
  var width: CGFloat
  var possibleTitles: Set<String>?
  var customView: UIView?
  var action: Selector
  weak var target: @sil_weak AnyObject?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForState(_ state: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState, style style: UIBarButtonItemStyle, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 6.0, *)
  func backgroundImageForState(_ state: UIControlState, style style: UIBarButtonItemStyle, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  var tintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
  @available(iOS 5.0, *)
  func setTitlePositionAdjustment(_ adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func titlePositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundImageForState(_ state: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonTitlePositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> UIOffset
  @available(iOS 5.0, *)
  func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, forBarMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backButtonBackgroundVerticalPositionAdjustmentForBarMetrics(_ barMetrics: UIBarMetrics) -> CGFloat
}
