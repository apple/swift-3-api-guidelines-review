
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
  func backgroundImage(forState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 6.0, *)
  func dividerImage(forLeftSegmentState state: UIControlState, rightSegmentState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func incrementImage(forState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func decrementImage(forState state: UIControlState) -> UIImage?
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
