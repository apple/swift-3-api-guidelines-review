
@available(tvOS 6.0, *)
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
@available(tvOS 6.0, *)
var SKDownloadTimeRemainingUnknown: NSTimeInterval
@available(tvOS 6.0, *)
class SKDownload : NSObject {
  @available(tvOS 6.0, *)
  var downloadState: SKDownloadState { get }
  @available(tvOS 6.0, *)
  var contentLength: Int64 { get }
  @available(tvOS 6.0, *)
  var contentIdentifier: String { get }
  @available(tvOS 6.0, *)
  var contentURL: NSURL? { get }
  @available(tvOS 6.0, *)
  var contentVersion: String { get }
  @available(tvOS 6.0, *)
  var error: NSError? { get }
  @available(tvOS 6.0, *)
  var progress: Float { get }
  @available(tvOS 6.0, *)
  var timeRemaining: NSTimeInterval { get }
  @available(tvOS 6.0, *)
  var transaction: SKPaymentTransaction { get }
  init()
}
@available(tvOS 3.0, *)
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
var SKErrorStoreProductNotAvailable: Int { get }
@available(tvOS 3.0, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(tvOS 3.0, *)
  convenience init(product: SKProduct)
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 3.0, *)
  @NSCopying var requestData: NSData? { get }
  @available(tvOS 3.0, *)
  var quantity: Int { get }
  @available(tvOS 7.0, *)
  var applicationUsername: String? { get }
  @available(tvOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  @available(tvOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 3.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 3.0, *)
class SKMutablePayment : SKPayment {
  @available(tvOS 7.0, *)
  var applicationUsername: String
  @available(tvOS 3.0, *)
  var productIdentifier: String
  @available(tvOS 3.0, *)
  var quantity: Int
  @available(tvOS 3.0, *)
  @NSCopying var requestData: NSData?
  @available(tvOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool
  @available(tvOS 3.0, *)
  convenience init(product: SKProduct)
  init()
}
@available(tvOS 3.0, *)
class SKPaymentQueue : NSObject {
  @available(tvOS 3.0, *)
  class func defaultQueue() -> Self
  @available(tvOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(tvOS 3.0, *)
  func addPayment(payment: SKPayment)
  @available(tvOS 3.0, *)
  func restoreCompletedTransactions()
  @available(tvOS 7.0, *)
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  @available(tvOS 3.0, *)
  func finishTransaction(transaction: SKPaymentTransaction)
  @available(tvOS 6.0, *)
  func startDownloads(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func pauseDownloads(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func resumeDownloads(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func cancelDownloads(downloads: [SKDownload])
  @available(tvOS 3.0, *)
  func addTransactionObserver(observer: SKPaymentTransactionObserver)
  @available(tvOS 3.0, *)
  func removeTransactionObserver(observer: SKPaymentTransactionObserver)
  @available(tvOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(tvOS 3.0, *)
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  @available(tvOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(tvOS 6.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
@available(tvOS 3.0, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  @available(tvOS 8.0, *)
  case Deferred
}
@available(tvOS 3.0, *)
class SKPaymentTransaction : NSObject {
  @available(tvOS 3.0, *)
  var error: NSError? { get }
  @available(tvOS 3.0, *)
  var originalTransaction: SKPaymentTransaction? { get }
  @available(tvOS 3.0, *)
  var payment: SKPayment { get }
  @available(tvOS 6.0, *)
  var downloads: [SKDownload] { get }
  @available(tvOS 3.0, *)
  var transactionDate: NSDate? { get }
  @available(tvOS 3.0, *)
  var transactionIdentifier: String? { get }
  @available(tvOS 3.0, *)
  var transactionState: SKPaymentTransactionState { get }
  init()
}
@available(tvOS 3.0, *)
class SKProduct : NSObject {
  @available(tvOS 3.0, *)
  var localizedDescription: String { get }
  @available(tvOS 3.0, *)
  var localizedTitle: String { get }
  @available(tvOS 3.0, *)
  var price: NSDecimalNumber { get }
  @available(tvOS 3.0, *)
  var priceLocale: NSLocale { get }
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 6.0, *)
  var downloadable: Bool { get }
  @available(tvOS 6.0, *)
  var downloadContentLengths: [NSNumber] { get }
  @available(tvOS 6.0, *)
  var downloadContentVersion: String { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(tvOS 3.0, *)
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
@available(tvOS 3.0, *)
class SKProductsRequest : SKRequest {
  @available(tvOS 3.0, *)
  init(productIdentifiers: Set<String>)
  @available(tvOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(tvOS 3.0, *)
class SKProductsResponse : NSObject {
  @available(tvOS 3.0, *)
  var products: [SKProduct] { get }
  @available(tvOS 3.0, *)
  var invalidProductIdentifiers: [String] { get }
  init()
}
@available(tvOS 7.0, *)
class SKReceiptRefreshRequest : SKRequest {
  @available(tvOS 7.0, *)
  init(receiptProperties properties: [String : AnyObject]?)
  @available(tvOS 7.0, *)
  var receiptProperties: [String : AnyObject]? { get }
  init()
}
@available(tvOS 7.1, *)
func SKTerminateForInvalidReceipt()
@available(tvOS 7.0, *)
let SKReceiptPropertyIsExpired: String
@available(tvOS 7.0, *)
let SKReceiptPropertyIsRevoked: String
@available(tvOS 7.0, *)
let SKReceiptPropertyIsVolumePurchase: String
@available(tvOS 3.0, *)
class SKRequest : NSObject {
  @available(tvOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  @available(tvOS 3.0, *)
  func cancel()
  @available(tvOS 3.0, *)
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func requestDidFinish(request: SKRequest)
  @available(tvOS 3.0, *)
  optional func request(request: SKRequest, didFailWithError error: NSError)
}
protocol SKStoreProductViewControllerDelegate : NSObjectProtocol {
}
@available(tvOS 6.0, *)
let SKStoreProductParameterITunesItemIdentifier: String
@available(tvOS 8.0, *)
let SKStoreProductParameterAffiliateToken: String
@available(tvOS 8.0, *)
let SKStoreProductParameterCampaignToken: String
@available(tvOS 8.3, *)
let SKStoreProductParameterProviderToken: String
