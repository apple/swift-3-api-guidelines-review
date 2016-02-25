
@available(OSX 10.7, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  class func paymentWithProduct(_ product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  @available(OSX 10.7, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.7, *)
class SKMutablePayment : SKPayment {
}
