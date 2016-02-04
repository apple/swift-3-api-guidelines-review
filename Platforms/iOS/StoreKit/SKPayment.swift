
@available(iOS 3.0, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(iOS 3.0, *)
  convenience init(product: SKProduct)
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 3.0, *)
  @NSCopying var requestData: NSData? { get }
  @available(iOS 3.0, *)
  var quantity: Int { get }
  @available(iOS 7.0, *)
  var applicationUsername: String? { get }
  @available(iOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  @available(iOS 3.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 3.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 3.0, *)
class SKMutablePayment : SKPayment {
  @available(iOS 7.0, *)
  var applicationUsername: String
  @available(iOS 3.0, *)
  var productIdentifier: String
  @available(iOS 3.0, *)
  var quantity: Int
  @available(iOS 3.0, *)
  @NSCopying var requestData: NSData?
  @available(iOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool
  @available(iOS 3.0, *)
  convenience init(product: SKProduct)
  init()
}