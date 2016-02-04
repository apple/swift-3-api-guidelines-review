
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
