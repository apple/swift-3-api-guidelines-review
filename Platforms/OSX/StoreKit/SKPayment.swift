
@available(OSX 10.7, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  class func payment(with product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: NSData? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  @available(OSX 10.7, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class SKMutablePayment : SKPayment {
}
