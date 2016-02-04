
@available(iOS 4.3, *)
class ADInterstitialAd : Object {
  weak var delegate: @sil_weak ADInterstitialAdDelegate!
  var isLoaded: Bool { get }
  var isActionInProgress: Bool { get }
  func cancelAction()
  func presentIn(containerView: UIView!) -> Bool
  init()
}
protocol ADInterstitialAdDelegate : ObjectProtocol {
  @available(iOS 4.3, *)
  func interstitialAdDidUnload(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  func interstitialAd(interstitialAd: ADInterstitialAd!, didFailWithError error: Error!)
  @available(iOS 5.0, *)
  optional func interstitialAdWillLoad(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  optional func interstitialAdDidLoad(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  optional func interstitialAdActionShouldBegin(interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool
  @available(iOS 4.3, *)
  optional func interstitialAdActionDidFinish(interstitialAd: ADInterstitialAd!)
}
