
@available(OSX 10.11, *)
protocol MTLCommandEncoder : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
  func endEncoding()
  func insertDebugSignpost(string: String)
  func pushDebugGroup(string: String)
  func popDebugGroup()
}
