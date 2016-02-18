
@available(iOS 3.0, *)
class SKPaymentQueue : Object {
  @available(iOS 3.0, *)
  class func defaultQueue() -> Self
  @available(iOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(iOS 3.0, *)
  func add(payment: SKPayment)
  @available(iOS 3.0, *)
  func restoreCompletedTransactions()
  @available(iOS 7.0, *)
  func restoreCompletedTransactions(withApplicationUsername username: String?)
  @available(iOS 3.0, *)
  func finishTransaction(transaction: SKPaymentTransaction)
  @available(iOS 6.0, *)
  func start(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func pause(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func resumeDownloads(downloads: [SKDownload])
  @available(iOS 6.0, *)
  func cancel(downloads: [SKDownload])
  @available(iOS 3.0, *)
  func add(observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  func remove(observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : ObjectProtocol {
  @available(iOS 3.0, *)
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(iOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(iOS 6.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
