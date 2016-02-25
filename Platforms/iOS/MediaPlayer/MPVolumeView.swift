
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
  func setMinimumVolumeSliderImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setMaximumVolumeSliderImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func setVolumeThumbImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func minimumVolumeSliderImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func maximumVolumeSliderImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func volumeThumbImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 7.0, *)
  var volumeWarningSliderImage: UIImage?
  @available(iOS 6.0, *)
  func volumeSliderRectForBounds(_ bounds: CGRect) -> CGRect
  @available(iOS 6.0, *)
  func volumeThumbRectForBounds(_ bounds: CGRect, volumeSliderRect rect: CGRect, value value: Float) -> CGRect
  @available(iOS 6.0, *)
  func setRouteButtonImage(_ image: UIImage?, forState state: UIControlState)
  @available(iOS 6.0, *)
  func routeButtonImageForState(_ state: UIControlState) -> UIImage?
  @available(iOS 6.0, *)
  func routeButtonRectForBounds(_ bounds: CGRect) -> CGRect
}
@available(iOS 7.0, *)
let MPVolumeViewWirelessRoutesAvailableDidChangeNotification: String
@available(iOS 7.0, *)
let MPVolumeViewWirelessRouteActiveDidChangeNotification: String
