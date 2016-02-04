
@available(OSX 10.7, *)
class SKRequest : Object {
  unowned(unsafe) var delegate: @sil_unmanaged SKRequestDelegate?
  func cancel()
  func start()
  init()
}
protocol SKRequestDelegate : ObjectProtocol {
  @available(OSX 10.7, *)
  optional func requestDidFinish(request: SKRequest)
  @available(OSX 10.7, *)
  optional func request(request: SKRequest, didFailWithError error: Error?)
}
