
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
