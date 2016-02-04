
@available(tvOS 3.0, *)
class SKRequest : Object {
  @available(tvOS 3.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  @available(tvOS 3.0, *)
  func cancel()
  @available(tvOS 3.0, *)
  func start()
  init()
}
protocol SKRequestDelegate : ObjectProtocol {
  @available(tvOS 3.0, *)
  optional func requestDidFinish(request: SKRequest)
  @available(tvOS 3.0, *)
  optional func request(request: SKRequest, didFailWithError error: Error)
}
