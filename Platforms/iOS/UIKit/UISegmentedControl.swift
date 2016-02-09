
var UISegmentedControlNoSegment: Int { get }
enum UISegmentedControlSegment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case any
  case left
  case center
  case right
  case alone
}
@available(iOS 2.0, *)
class UISegmentedControl : UIControl, Coding {
  init(items: [AnyObject]?)
  var isMomentary: Bool
  var numberOfSegments: Int { get }
  @available(iOS 5.0, *)
  var apportionsSegmentWidthsByContent: Bool
  func insertSegment(title title: String?, at segment: Int, animated: Bool)
  func insertSegment(image: UIImage?, at segment: Int, animated: Bool)
  func removeSegmentAt(segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAt segment: Int)
  func titleForSegmentAt(segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAt segment: Int)
  func imageForSegmentAt(segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAt segment: Int)
  func widthForSegmentAt(segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegmentAt(segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegmentAt(segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics = .`default`)
  @available(iOS 5.0, *)
  func backgroundImageFor(state: UIControlState, barMetrics: UIBarMetrics = .`default`) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics = .`default`)
  @available(iOS 5.0, *)
  func dividerImageFor(leftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics = .`default`) -> UIImage?
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [Object : AnyObject]? = [:], forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributesFor(state: UIControlState) -> [Object : AnyObject]?
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics = .`default`)
  @available(iOS 5.0, *)
  func contentPositionAdjustmentFor(segmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics = .`default`) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
