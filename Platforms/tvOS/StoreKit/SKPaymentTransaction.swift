
@available(tvOS 3.0, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Purchasing
  case Purchased
  case Failed
  case Restored
  @available(tvOS 8.0, *)
  case Deferred
}
@available(tvOS 3.0, *)
class SKPaymentTransaction : NSObject {
  @available(tvOS 3.0, *)
  var error: NSError? { get }
  @available(tvOS 3.0, *)
  var originalTransaction: SKPaymentTransaction? { get }
  @available(tvOS 3.0, *)
  var payment: SKPayment { get }
  @available(tvOS 6.0, *)
  var downloads: [SKDownload] { get }
  @available(tvOS 3.0, *)
  var transactionDate: NSDate? { get }
  @available(tvOS 3.0, *)
  var transactionIdentifier: String? { get }
  @available(tvOS 3.0, *)
  var transactionState: SKPaymentTransactionState { get }
  init()
}
