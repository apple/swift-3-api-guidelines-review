
@available(iOS 7.0, *)
enum ADInterstitialPresentationPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Automatic
  case Manual
}
extension UIViewController {
  @available(iOS 7.0, *)
  class func prepareInterstitialAds()
  @available(iOS 7.0, *)
  var interstitialPresentationPolicy: ADInterstitialPresentationPolicy
  @available(iOS 7.0, *)
  var canDisplayBannerAds: Bool
  @available(iOS 7.0, *)
  var originalContentView: UIView! { get }
  @available(iOS 7.0, *)
  var presentingFullScreenAd: Bool { get }
  @available(iOS 7.0, *)
  var displayingBannerAd: Bool { get }
  @available(iOS 7.0, *)
  func requestInterstitialAdPresentation() -> Bool
  @available(iOS 7.0, *)
  var shouldPresentInterstitialAd: Bool { get }
}
