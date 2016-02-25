
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Left
  case Center
  case Right
  case Alone
}
@available(iOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items items: [AnyObject]?)
  var momentary: Bool
  var numberOfSegments: Int { get }
  @available(iOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(_ title: String?, atIndex segment: Int, animated animated: Bool)
  func insertSegmentWithImage(_ image: UIImage?, atIndex segment: Int, animated animated: Bool)
  func removeSegmentAtIndex(_ segment: Int, animated animated: Bool)
  func removeAllSegments()
  func setTitle(_ title: String?, forSegmentAtIndex segment: Int)
  func titleForSegmentAtIndex(_ segment: Int) -> String?
  func setImage(_ image: UIImage?, forSegmentAtIndex segment: Int)
  func imageForSegmentAtIndex(_ segment: Int) -> UIImage?
  func setWidth(_ width: CGFloat, forSegmentAtIndex segment: Int)
  func widthForSegmentAtIndex(_ segment: Int) -> CGFloat
  func setContentOffset(_ offset: CGSize, forSegmentAtIndex segment: Int)
  func contentOffsetForSegmentAtIndex(_ segment: Int) -> CGSize
  func setEnabled(_ enabled: Bool, forSegmentAtIndex segment: Int)
  func isEnabledForSegmentAtIndex(_ segment: Int) -> Bool
  var selectedSegmentIndex: Int
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forState state: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForState(_ state: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func dividerImageForLeftSegmentState(_ leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSObject : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesForState(_ state: UIControlState) -> [NSObject : AnyObject]?
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func contentPositionAdjustmentForSegmentType(_ leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics barMetrics: UIBarMetrics) -> UIOffset
}
