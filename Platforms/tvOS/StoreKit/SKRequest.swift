
@available(tvOS 3.0, *)
class SKRequest : NSObject {
  @available(tvOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  @available(tvOS 3.0, *)
  func cancel()
  @available(tvOS 3.0, *)
  func start()
  init()
}
protocol SKRequestDelegate : NSObjectProtocol {
  @available(tvOS 3.0, *)
  optional func requestDidFinish(request: SKRequest)
  @available(tvOS 3.0, *)
  optional func request(request: SKRequest, didFailWithError error: NSError)
}
