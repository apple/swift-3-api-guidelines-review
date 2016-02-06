
@available(iOS 5.0, *)
class UIStepper : UIControl {
  var isContinuous: Bool
  var autorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  @available(iOS 6.0, *)
  var tintColor: UIColor!
  @available(iOS 6.0, *)
  func setBackgroundImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func backgroundImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 6.0, *)
  func dividerImageFor(leftSegmentState state: UIControlState, rightSegmentState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func incrementImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func decrementImageFor(state: UIControlState) -> UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
