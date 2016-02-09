
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
  func insertSegment(withTitle title: String?, at segment: Int, animated: Bool)
  func insertSegment(withImage image: UIImage?, at segment: Int, animated: Bool)
  func removeSegment(at segment: Int, animated: Bool)
  func removeAllSegments()
  func setTitle(title: String?, forSegmentAt segment: Int)
  func titleForSegment(at segment: Int) -> String?
  func setImage(image: UIImage?, forSegmentAt segment: Int)
  func imageForSegment(at segment: Int) -> UIImage?
  func setWidth(width: CGFloat, forSegmentAt segment: Int)
  func widthForSegment(at segment: Int) -> CGFloat
  func setContentOffset(offset: CGSize, forSegmentAt segment: Int)
  func contentOffsetForSegment(at segment: Int) -> CGSize
  func setEnabled(enabled: Bool, forSegmentAt segment: Int)
  func isEnabledForSegment(at segment: Int) -> Bool
  var selectedSegmentIndex: Int
  var tintColor: UIColor!
  @available(iOS 5.0, *)
  func setBackgroundImage(backgroundImage: UIImage?, forState state: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(forState state: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setDividerImage(dividerImage: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func dividerImage(forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setTitleTextAttributes(attributes: [Object : AnyObject]? = [:], forState state: UIControlState)
  @available(iOS 5.0, *)
  func titleTextAttributes(forState state: UIControlState) -> [Object : AnyObject]?
  @available(iOS 5.0, *)
  func setContentPositionAdjustment(adjustment: UIOffset, forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func contentPositionAdjustment(forSegmentType leftCenterRightOrAlone: UISegmentedControlSegment, barMetrics: UIBarMetrics) -> UIOffset
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
