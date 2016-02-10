
@available(iOS 2.0, *)
class MPVolumeView : UIView, Coding {
  @available(iOS 4.2, *)
  var showsVolumeSlider: Bool
  @available(iOS 4.2, *)
  var showsRouteButton: Bool
  @available(iOS 7.0, *)
  var areWirelessRoutesAvailable: Bool { get }
  @available(iOS 7.0, *)
  var isWirelessRouteActive: Bool { get }
  @available(iOS 6.0, *)
  func setMinimumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImageFor(state: UIControlState) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRectFor(bounds bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRectFor(bounds bounds: CGRect, volumeSliderRect rect: CGRect, value: Float) -> CGRect
  @available(iOS 6.0, *)
  func setRouteButtonImage(image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func routeButtonImageFor(state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func routeButtonRectFor(bounds bounds: CGRect) -> CGRect
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
@available(iOS 7.0, *)
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
@available(iOS 7.0, *)
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
