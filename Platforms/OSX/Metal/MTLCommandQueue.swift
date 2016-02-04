
@available(OSX 10.11, *)
protocol MTLCommandQueue : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func commandBuffer() -> MTLCommandBuffer
  func commandBufferWithUnretainedReferences() -> MTLCommandBuffer
  func insertDebugCaptureBoundary()
}
