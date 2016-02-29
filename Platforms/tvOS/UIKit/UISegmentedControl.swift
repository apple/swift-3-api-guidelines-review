
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case any
  case left
  case center
  case right
  case alone
}
@available(tvOS 2.0, *)
class UISegmentedControl : UIControl, NSCoding {
  init(items items: [AnyObject]?)
  var isMomentary: Bool
  var numberOfSegments: Int { get }
  @available(tvOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegment(withTitle title: String?, at segment: Int, animated animated: Bool)
  func insertSegment(with image: UIImage?, at segment: Int, animated animated: Bool)
  func removeSegment(at segment: Int, animated animated: Bool)
  func removeAllSegments()
  func setTitle(_ title: String?, forSegmentAt segment: Int)
  func titleForSegment(at segment: Int) -> String?
  func setImage(_ image: UIImage?, forSegmentAt segment: Int)
  func imageForSegment(at segment: Int) -> UIImage?
  func setWidth(_ width: CGFloat, forSegmentAt segment: Int)
  func widthForSegment(at segment: Int) -> CGFloat
  func setContentOffset(_ offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegment(at segment: Int) -> CGSize
  func setEnabled(_ enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegment(at segment: Int) -> Bool
  var selectedSegmentIndex: Int
  @available(tvOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImage(for state: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func dividerImage(forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setTitleTextAttributes(_ attributes: [NSObject : AnyObject]?, for state: UIControlState)
  @available(tvOS 5.0, *)
  func titleTextAttributes(for state: UIControlState) -> [NSObject : AnyObject]?
  @available(tvOS 5.0, *)
  func setContentPositionAdjustment(_ adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func contentPositionAdjustment(forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics barMetrics: UIBarMetrics) -> UIOffset
}
