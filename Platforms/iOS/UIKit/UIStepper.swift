
@available(iOS 5.0, *)
class UIStepper : UIControl {
  var continuous: Bool
  var autorepeat: Bool
  var wraps: Bool
  var value: Double
  var minimumValue: Double
  var maximumValue: Double
  var stepValue: Double
  @available(iOS 6.0, *)
  func setBackgroundImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func backgroundImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDividerImage(_ image: UIImage?, forLeftSegmentState leftState: UIControlState, rightSegmentState rightState: UIControlState)
  @available(iOS 6.0, *)
  func dividerImageForLeftSegmentState(_ state: UIControlState, rightSegmentState state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setIncrementImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func incrementImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func setDecrementImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func decrementImageForState(_ state: UIControlState) -> UIImage?
}
