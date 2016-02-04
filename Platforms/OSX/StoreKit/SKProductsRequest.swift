
protocol SKProductsRequestDelegate : SKRequestDelegate {
  @available(OSX 10.7, *)
  func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse)
}
@available(OSX 10.7, *)
class SKProductsRequest : SKRequest {
  init(productIdentifiers: Set<NSObject>)
  unowned(unsafe) var delegate: @sil_unmanaged SKProductsRequestDelegate?
  init()
}
@available(OSX 10.7, *)
class SKProductsResponse : NSObject {
  var products: [SKProduct]? { get }
  var invalidProductIdentifiers: [String]? { get }
  init()
}
