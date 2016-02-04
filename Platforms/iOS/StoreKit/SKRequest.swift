
@available(iOS 3.0, *)
class SKRequest : NSObject {
  @available(iOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  @available(iOS 3.0, *)
  func cancel()
  @available(iOS 3.0, *)
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(iOS 3.0, *)
  optional func requestDidFinish(request: SKRequest)
  @available(iOS 3.0, *)
  optional func request(request: SKRequest, didFailWithError error: NSError)
}
