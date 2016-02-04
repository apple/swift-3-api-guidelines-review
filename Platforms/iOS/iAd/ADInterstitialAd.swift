
@available(iOS 4.3, *)
class ADInterstitialAd : NSObject {
  weak var delegate: @sil_weak ADInterstitialAdDelegate!
  var loaded: Bool { get }
  var actionInProgress: Bool { get }
  func cancelAction()
  func presentInView(containerView: UIView!) -> Bool
  init()
}
protocol ADInterstitialAdDelegate : NSObjectProtocol {
  @available(iOS 4.3, *)
  func interstitialAdDidUnload(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  func interstitialAd(interstitialAd: ADInterstitialAd!, didFailWithError error: NSError!)
  @available(iOS 5.0, *)
  optional func interstitialAdWillLoad(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  optional func interstitialAdDidLoad(interstitialAd: ADInterstitialAd!)
  @available(iOS 4.3, *)
  optional func interstitialAdActionShouldBegin(interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool
  @available(iOS 4.3, *)
  optional func interstitialAdActionDidFinish(interstitialAd: ADInterstitialAd!)
}
