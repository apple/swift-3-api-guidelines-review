
@available(iOS 3.0, *)
class SKPaymentQueue : NSObject {
  @available(iOS 3.0, *)
  class func defaultQueue() -> Self
  @available(iOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(iOS 3.0, *)
  func addPayment(_ payment: SKPayment)
  @available(iOS 3.0, *)
  func restoreCompletedTransactions()
  @available(iOS 7.0, *)
  func restoreCompletedTransactionsWithApplicationUsername(_ username: String?)
  @available(iOS 3.0, *)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  @available(iOS 6.0, *)
  func startDownloads(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func pauseDownloads(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func resumeDownloads(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func cancelDownloads(_ downloads: [SKDownload])
  @available(iOS 3.0, *)
  func addTransactionObserver(_ observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  func removeTransactionObserver(_ observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(iOS 3.0, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: NSError)
  @available(iOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(iOS 6.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
