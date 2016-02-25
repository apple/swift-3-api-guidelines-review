
@available(OSX 10.7, *)
class SKPaymentQueue : NSObject {
  class func defaultQueue() -> SKPaymentQueue
  class func canMakePayments() -> Bool
  func addPayment(_ payment: SKPayment)
  func restoreCompletedTransactions()
  func restoreCompletedTransactionsWithApplicationUsername(_ username: String?)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  func addTransactionObserver(_ observer: SKPaymentTransactionObserver)
  func removeTransactionObserver(_ observer: SKPaymentTransactionObserver)
  var transactions: [SKPaymentTransaction]? { get }
  func startDownloads(_ downloads: [SKDownload])
  func pauseDownloads(_ downloads: [SKDownload])
  func resumeDownloads(_ downloads: [SKDownload])
  func cancelDownloads(_ downloads: [SKDownload])
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(OSX 10.7, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(OSX 10.7, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(OSX 10.7, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  @available(OSX 10.7, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(OSX 10.8, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
