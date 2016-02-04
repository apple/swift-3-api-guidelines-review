
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Any
  case Left
  case Center
  case Right
  case Alone
}
@available(iOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items: [AnyObject]?)
  var momentary: Bool
  var numberOfSegments: Int { get }
  @available(iOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegmentWithTitle(title: String?, atIndex segment: Int, animated: Bool)
  func insertSegmentWithImage(image: UIImage?, atIndex segment: Int, animated: Bool)
  func removeSegmentAtIndex(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAtIndex segment: Int)
  func titleForSegmentAtIndex(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAtIndex segment: Int)
  func imageForSegmentAtIndex(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAtIndex segment: Int)
  func widthForSegmentAtIndex(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAtIndex segment: Int)
  func contentOffsetForSegmentAtIndex(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAtIndex segment: Int)
  func isEnabledForSegmentAtIndex(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImageForState(state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func dividerImageForLeftSegmentState(leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [NSObject : AnyObject]?, forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesForState(state: UIControlState) -> [NSObject : AnyObject]?
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func contentPositionAdjustmentForSegmentType(leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
