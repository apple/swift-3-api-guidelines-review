
struct SKDownloadState : RawRepresentable, Equatable {
  init(_ rawValue: Int)
  init(rawValue: Int)
  var rawValue: Int
}
var SKDownloadStateWaiting: SKDownloadState { get }
var SKDownloadStateActive: SKDownloadState { get }
var SKDownloadStatePaused: SKDownloadState { get }
var SKDownloadStateFinished: SKDownloadState { get }
var SKDownloadStateFailed: SKDownloadState { get }
var SKDownloadStateCancelled: SKDownloadState { get }
@available(OSX 10.8, *)
class SKDownload : NSObject {
  var contentIdentifier: String { get }
  var state: SKDownloadState { get }
  @NSCopying var contentURL: NSURL? { get }
  var progress: Float { get }
  @NSCopying var error: NSError? { get }
  var timeRemaining: NSTimeInterval { get }
  @NSCopying var contentLength: NSNumber { get }
  var contentVersion: String? { get }
  var transaction: SKPaymentTransaction? { get }
  class func contentURLForProductID(productID: String) -> NSURL?
  class func deleteContentForProductID(productID: String)
  init()
}
@available(OSX 10.7, *)
let SKErrorDomain: String
var SKErrorUnknown: Int { get }
var SKErrorClientInvalid: Int { get }
var SKErrorPaymentCancelled: Int { get }
var SKErrorPaymentInvalid: Int { get }
var SKErrorPaymentNotAllowed: Int { get }
@available(OSX 10.7, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  class func paymentWith(product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  init()
  @available(OSX 10.7, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class SKMutablePayment : SKPayment {
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: NSData?
  var applicationUsername: String?
  init()
}
@available(OSX 10.7, *)
class SKPaymentQueue : NSObject {
  class func defaultQueue() -> SKPaymentQueue
  class func canMakePayments() -> Bool
  func add(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(username: String?)
  func finishTransaction(transaction: SKPaymentTransaction)
  func add(observer: SKPaymentTransactionObserver)
  func remove(observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction]? { get }
  func start(downloads: [SKDownload])
  func pause(downloads: [SKDownload])
  func resumeDownloads(downloads: [SKDownload])
  func cancel(downloads: [SKDownload])
  init()
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(OSX 10.7, *)
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(OSX 10.7, *)
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(OSX 10.7, *)
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWith error: NSError)
  @available(OSX 10.7, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(OSX 10.8, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
var SKPaymentTransactionStatePurchasing: Int { get }
var SKPaymentTransactionStatePurchased: Int { get }
var SKPaymentTransactionStateFailed: Int { get }
var SKPaymentTransactionStateRestored: Int { get }
var SKPaymentTransactionStateDeferred: Int { get }
typealias SKPaymentTransactionState = Int
@available(OSX 10.7, *)
class SKPaymentTransaction : NSObject {
  var error: NSError? { get }
  var original: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var transactionDate: NSDate? { get }
  var transactionIdentifier: String? { get }
  var downloads: [AnyObject]? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
@available(OSX 10.7, *)
class SKProduct : NSObject {
  var localizedDescription: String? { get }
  var localizedTitle: String? { get }
  var price: NSDecimalNumber? { get }
  var priceLocale: NSLocale? { get }
  var productIdentifier: String? { get }
  var isDownloadable: Bool { get }
  var contentVersion: String? { get }
  var contentLengths: [NSNumber]? { get }
  init()
}
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(OSX 10.7, *)
  func productsRequest(request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(OSX 10.7, *)
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<NSObject>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(OSX 10.7, *)
class SKProductsResponse : NSObject {
  var products: [SKProduct]? { get }
  var invalidProductIdentifiers: [String]? { get }
  init()
}
@available(OSX 10.9, *)
class SKReceiptRefreshRequest : SKRequest {
  init?(receiptProperties properties: [String : AnyObject])
  var receiptProperties: [String : AnyObject]? { get }
  init()
}
@available(OSX 10.7, *)
let SKReceiptPropertyIsExpired: String
@available(OSX 10.7, *)
let SKReceiptPropertyIsRevoked: String
@available(OSX 10.7, *)
let SKReceiptPropertyIsVolumePurchase: String
@available(OSX 10.7, *)
class SKRequest : NSObject {
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  func cancel()
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(OSX 10.7, *)
  optional func requestDidFinish(request: SKRequest)
  @available(OSX 10.7, *)
  optional func request(request: SKRequest, didFailWith error: NSError?)
}
