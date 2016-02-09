
extension AVPlayerViewController {
  @available(iOS 8.0, *)
  class func preparePrerollAds()
  @available(iOS 8.0, *)
  func playPrerollAd(withCompletionHandler completionHandler: ((Error!) -> Void)!)
  @available(iOS 8.0, *)
  func cancelPreroll()
}
