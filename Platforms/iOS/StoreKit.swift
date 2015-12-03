
@available(iOS 6.0, *)
enum SKDownloadState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Waiting
  case Active
  case Paused
  case Finished
  case Failed
  case Cancelled
}
@available(iOS 6.0, *)
var SKDownloadTimeRemainingUnknown: NSTimeInterval
@available(iOS 6.0, *)
class SKDownload : NSObject {
  @available(iOS 6.0, *)
  var downloadState: SKDownloadState { get }
  @available(iOS 6.0, *)
  var contentLength: Int64 { get }
  @available(iOS 6.0, *)
  var contentIdentifier: String { get }
  @available(iOS 6.0, *)
  var contentURL: NSURL? { get }
  @available(iOS 6.0, *)
  var contentVersion: String { get }
  @available(iOS 6.0, *)
  var error: NSError? { get }
  @available(iOS 6.0, *)
  var progress: Float { get }
  @available(iOS 6.0, *)
  var timeRemaining: NSTimeInterval { get }
  @available(iOS 6.0, *)
  var transaction: SKPaymentTransaction { get }
  init()
}
@available(iOS 3.0, *)
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
var SKErrorStoreProductNotAvailable: Int { get }
@available(iOS 3.0, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(iOS 3.0, *)
  convenience init(product: SKProduct)
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 3.0, *)
  @NSCopying var requestData: NSData? { get }
  @available(iOS 3.0, *)
  var quantity: Int { get }
  @available(iOS 7.0, *)
  var applicationUsername: String? { get }
  @available(iOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 3.0, *)
class SKMutablePayment : SKPayment {
  @available(iOS 7.0, *)
  var applicationUsername: String
  @available(iOS 3.0, *)
  var productIdentifier: String
  @available(iOS 3.0, *)
  var quantity: Int
  @available(iOS 3.0, *)
  @NSCopying var requestData: NSData?
  @available(iOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool
  @available(iOS 3.0, *)
  convenience init(product: SKProduct)
  init()
}
@available(iOS 3.0, *)
class SKPaymentQueue : NSObject {
  @available(iOS 3.0, *)
  class func defaultQueue() -> Self
  @available(iOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(iOS 3.0, *)
  func addPayment(payment: SKPayment)
  @available(iOS 3.0, *)
  func restoreCompletedTransactions()
  @available(iOS 7.0, *)
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  @available(iOS 3.0, *)
  func finishTransaction(transaction: SKPaymentTransaction)
  @available(iOS 6.0, *)
  func startDownloads(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func pauseDownloads(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func resumeDownloads(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func cancelDownloads(downloads: [SKDownload])
  @available(iOS 3.0, *)
  func addTransactionObserver(observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  func removeTransactionObserver(observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(iOS 3.0, *)
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  @available(iOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(iOS 6.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
@available(iOS 3.0, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  @available(iOS 8.0, *)
  case Deferred
}
@available(iOS 3.0, *)
class SKPaymentTransaction : NSObject {
  @available(iOS 3.0, *)
  var error: NSError? { get }
  @available(iOS 3.0, *)
  var originalTransaction: SKPaymentTransaction? { get }
  @available(iOS 3.0, *)
  var payment: SKPayment { get }
  @available(iOS 6.0, *)
  var downloads: [SKDownload] { get }
  @available(iOS 3.0, *)
  var transactionDate: NSDate? { get }
  @available(iOS 3.0, *)
  var transactionIdentifier: String? { get }
  @available(iOS 3.0, *)
  var transactionState: SKPaymentTransactionState { get }
  init()
}
@available(iOS 3.0, *)
class SKProduct : NSObject {
  @available(iOS 3.0, *)
  var localizedDescription: String { get }
  @available(iOS 3.0, *)
  var localizedTitle: String { get }
  @available(iOS 3.0, *)
  var price: NSDecimalNumber { get }
  @available(iOS 3.0, *)
  var priceLocale: NSLocale { get }
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 6.0, *)
  var downloadable: Bool { get }
  @available(iOS 6.0, *)
  var downloadContentLengths: [NSNumber] { get }
  @available(iOS 6.0, *)
  var downloadContentVersion: String { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(iOS 3.0, *)
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
@available(iOS 3.0, *)
class SKProductsRequest : SKRequest {
  @available(iOS 3.0, *)
  init(productIdentifiers: Set<String>)
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(iOS 3.0, *)
class SKProductsResponse : NSObject {
  @available(iOS 3.0, *)
  var products: [SKProduct] { get }
  @available(iOS 3.0, *)
  var invalidProductIdentifiers: [String] { get }
  init()
}
@available(iOS 7.0, *)
class SKReceiptRefreshRequest : SKRequest {
  @available(iOS 7.0, *)
  init(receiptProperties properties: [String : AnyObject]?)
  @available(iOS 7.0, *)
  var receiptProperties: [String : AnyObject]? { get }
  init()
}
@available(iOS 7.1, *)
func SKTerminateForInvalidReceipt()
@available(iOS 7.0, *)
let SKReceiptPropertyIsExpired: String
@available(iOS 7.0, *)
let SKReceiptPropertyIsRevoked: String
@available(iOS 7.0, *)
let SKReceiptPropertyIsVolumePurchase: String
@available(iOS 3.0, *)
class SKRequest : NSObject {
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  @available(iOS 3.0, *)
  func cancel()
  @available(iOS 3.0, *)
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func requestDidFinish(request: SKRequest)
  @available(iOS 3.0, *)
  optional func request(request: SKRequest, didFailWithError error: NSError)
}
@available(iOS 6.0, *)
class SKStoreProductViewController : UIViewController {
  @available(iOS 6.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKStoreProductViewControllerDelegate?
  @available(iOS 6.0, *)
  func loadProductWithParameters(parameters: [String : AnyObject], completionBlock block: ((Bool, NSError?) -> Void)?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
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
