
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(OSX 10.7, *)
  func productsRequest(request: SKProductsRequest, didReceive response: SKProductsResponse)
}
@available(OSX 10.7, *)
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<Object>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(OSX 10.7, *)
class SKProductsResponse : Object {
  var products: [SKProduct]? { get }
  var invalidProductIdentifiers: [String]? { get }
  init()
}
