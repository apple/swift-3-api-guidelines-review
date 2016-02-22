
@available(OSX 10.7, *)
class SKPaymentQueue : NSObject {
  class func defaultQueue() -> SKPaymentQueue
  class func canMakePayments() -> Bool
  func add(payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactions(applicationUsername username: String?)
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
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  @available(OSX 10.7, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(OSX 10.8, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
