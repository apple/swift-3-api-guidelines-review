
@available(OSX 10.7, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  class func paymentWithProduct(product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  init()
  @available(OSX 10.7, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class SKMutablePayment : SKPayment {
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: NSData?
  var applicationUsername: String?
  init()
}
