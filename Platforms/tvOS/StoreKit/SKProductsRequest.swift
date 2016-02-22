
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(tvOS 3.0, *)
  func productsRequest(request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(tvOS 3.0, *)
class SKProductsRequest : SKRequest {
  @available(tvOS 3.0, *)
  init(productIdentifiers: Set<String>)
  @available(tvOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(tvOS 3.0, *)
class SKProductsResponse : NSObject {
  @available(tvOS 3.0, *)
  var products: [SKProduct] { get }
  @available(tvOS 3.0, *)
  var invalidProductIdentifiers: [String] { get }
  init()
}
