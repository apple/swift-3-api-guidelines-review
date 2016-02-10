
@available(tvOS 3.0, *)
class SKPayment : Object, Copying, MutableCopying {
  @available(tvOS 3.0, *)
  convenience init(product: SKProduct)
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 3.0, *)
  @NSCopying var requestData: Data? { get }
  @available(tvOS 3.0, *)
  var quantity: Int { get }
  @available(tvOS 7.0, *)
  var applicationUsername: String? { get }
  @available(tvOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  init()
  @available(tvOS 3.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 3.0, *)
  func mutableCopy(withZone zone: Zone = nil) -> AnyObject
}
@available(tvOS 3.0, *)
class SKMutablePayment : SKPayment {
  @available(tvOS 7.0, *)
  var applicationUsername: String
  @available(tvOS 3.0, *)
  var productIdentifier: String
  @available(tvOS 3.0, *)
  var quantity: Int
  @available(tvOS 3.0, *)
  @NSCopying var requestData: Data?
  @available(tvOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool
  @available(tvOS 3.0, *)
  convenience init(product: SKProduct)
  init()
}
