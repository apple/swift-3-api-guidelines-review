
@available(iOS 3.0, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  @available(iOS 8.0, *)
  case Deferred
}
@available(iOS 3.0, *)
class SKPaymentTransaction : NSObject {
  @available(iOS 3.0, *)
  var error: NSError? { get }
  @available(iOS 3.0, *)
  var originalTransaction: SKPaymentTransaction? { get }
  @available(iOS 3.0, *)
  var payment: SKPayment { get }
  @available(iOS 6.0, *)
  var downloads: [SKDownload] { get }
  @available(iOS 3.0, *)
  var transactionDate: NSDate? { get }
  @available(iOS 3.0, *)
  var transactionIdentifier: String? { get }
  @available(iOS 3.0, *)
  var transactionState: SKPaymentTransactionState { get }
}
