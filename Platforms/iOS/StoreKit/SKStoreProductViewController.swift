
@available(iOS 6.0, *)
class SKStoreProductViewController : UIViewController {
  @available(iOS 6.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKStoreProductViewControllerDelegate?
  @available(iOS 6.0, *)
  func loadProduct(withParameters parameters: [String : AnyObject], completionBlock block: ((Bool, Error?) -> Void)? = nil)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol SKStoreProductViewControllerDelegate : ObjectProtocol {
  @available(iOS 6.0, *)
  optional func productViewControllerDidFinish(viewController: SKStoreProductViewController)
}
@available(iOS 6.0, *)
let SKStoreProductParameterITunesItemIdentifier: String
@available(iOS 8.0, *)
let SKStoreProductParameterAffiliateToken: String
@available(iOS 8.0, *)
let SKStoreProductParameterCampaignToken: String
@available(iOS 8.3, *)
let SKStoreProductParameterProviderToken: String
