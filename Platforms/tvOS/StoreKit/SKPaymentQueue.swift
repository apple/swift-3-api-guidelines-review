
@available(tvOS 3.0, *)
class SKPaymentQueue : Object {
  @available(tvOS 3.0, *)
  class func defaultQueue() -> Self
  @available(tvOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(tvOS 3.0, *)
  func add(payment: SKPayment)
  @available(tvOS 3.0, *)
  func restoreCompletedTransactions()
  @available(tvOS 7.0, *)
  func restoreCompletedTransactions(applicationUsername username: String?)
  @available(tvOS 3.0, *)
  func finishTransaction(transaction: SKPaymentTransaction)
  @available(tvOS 6.0, *)
  func start(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func pause(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func resumeDownloads(downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func cancel(downloads: [SKDownload])
  @available(tvOS 3.0, *)
  func add(observer: SKPaymentTransactionObserver)
  @available(tvOS 3.0, *)
  func remove(observer: SKPaymentTransactionObserver)
  @available(tvOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
  init()
}
protocol SKPaymentTransactionObserver : ObjectProtocol {
  @available(tvOS 3.0, *)
  func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(tvOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue)
  @available(tvOS 6.0, *)
  optional func paymentQueue(queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
}
