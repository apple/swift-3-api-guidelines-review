
var SKPaymentTransactionStatePurchasing: Int { get }
var SKPaymentTransactionStatePurchased: Int { get }
var SKPaymentTransactionStateFailed: Int { get }
var SKPaymentTransactionStateRestored: Int { get }
var SKPaymentTransactionStateDeferred: Int { get }
typealias SKPaymentTransactionState = Int
@available(OSX 10.7, *)
class SKPaymentTransaction : Object {
  var error: Error? { get }
  var original: SKPaymentTransaction? { get }
  var payment: SKPayment { get }
  var transactionDate: Date? { get }
  var transactionIdentifier: String? { get }
  var downloads: [AnyObject]? { get }
  var transactionState: SKPaymentTransactionState { get }
  init()
}
