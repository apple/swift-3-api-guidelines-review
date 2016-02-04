
@available(iOS 2.0, *)
class MPVolumeView : UIView, NSCoding {
  @available(iOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(iOS 4.2, *)
  var showsRouteButton: Bool
  @available(iOS 7.0, *)
  var wirelessRoutesAvailable: Bool { get }
  @available(iOS 7.0, *)
  var wirelessRouteActive: Bool { get }
  @available(iOS 6.0, *)
  func setMinimumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImageForState(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImageForState(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImageForState(state: UIControlState) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRectForBounds(bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRectForBounds(bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(iOS 6.0, *)
  func setRouteButtonImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func routeButtonImageForState(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func routeButtonRectForBounds(bounds: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 7.0, *)
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
@available(iOS 7.0, *)
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
