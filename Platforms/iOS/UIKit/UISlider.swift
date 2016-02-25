
@available(iOS 2.0, *)
class UISlider : UIControl, NSCoding {
  var value: Float
  var minimumValue: Float
  var maximumValue: Float
  var minimumValueImage: UIImage?
  var maximumValueImage: UIImage?
  var continuous: Bool
  @available(iOS 5.0, *)
  var minimumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var maximumTrackTintColor: UIColor?
  @available(iOS 5.0, *)
  var thumbTintColor: UIColor?
  func setValue(_ value: Float, animated animated: Bool)
  func setThumbImage(_ image: UIImage?, forState state: UIControlState)
  func setMinimumTrackImage(_ image: UIImage?, forState state: UIControlState)
  func setMaximumTrackImage(_ image: UIImage?, forState state: UIControlState)
  func thumbImageForState(_ state: UIControlState) -> UIImage?
  func minimumTrackImageForState(_ state: UIControlState) -> UIImage?
  func maximumTrackImageForState(_ state: UIControlState) -> UIImage?
  var currentThumbImage: UIImage? { get }
  var currentMinimumTrackImage: UIImage? { get }
  var currentMaximumTrackImage: UIImage? { get }
  func minimumValueImageRectForBounds(_ bounds: CGRect) -> CGRect
  func maximumValueImageRectForBounds(_ bounds: CGRect) -> CGRect
  func trackRectForBounds(_ bounds: CGRect) -> CGRect
  func thumbRectForBounds(_ bounds: CGRect, trackRect rect: CGRect, value value: Float) -> CGRect
}
