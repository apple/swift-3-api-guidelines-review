
@available(OSX 10.7, *)
class SKPayment : Object, Copying, MutableCopying {
  class func payment(withProduct product: SKProduct) -> AnyObject
  var productIdentifier: String { get }
  @NSCopying var requestData: Data? { get }
  var quantity: Int { get }
  var applicationUsername: String? { get }
  init()
  @available(OSX 10.7, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.7, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.7, *)
class SKMutablePayment : SKPayment {
  var productIdentifier: String
  var quantity: Int
  @NSCopying var requestData: Data?
  var applicationUsername: String?
  init()
}
