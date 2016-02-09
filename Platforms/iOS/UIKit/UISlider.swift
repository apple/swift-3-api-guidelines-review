
@available(iOS 2.0, *)
class UISlider : UIControl, Coding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var isContinuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(value: Float, animated: Bool)
  func setThumbImage(image: UIImage?, forState state: UIControlState)
  func setMinimumTrackImage(image: UIImage?, forState state: UIControlState)
  func setMaximumTrackImage(image: UIImage?, forState state: UIControlState)
  func thumbImage(forState state: UIControlState) -> UIImage?
  func minimumTrackImage(forState state: UIControlState) -> UIImage?
  func maximumTrackImage(forState state: UIControlState) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRect(forBounds bounds: CGRect) -> CGRect
  func maximumValueImageRect(forBounds bounds: CGRect) -> CGRect
  func trackRect(forBounds bounds: CGRect) -> CGRect
  func thumbRect(forBounds bounds: CGRect, trackRect rect: CGRect, value: Float) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
