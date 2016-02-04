
@available(tvOS 8.0, *)
protocol MTLCommandQueue : ObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  func commandBuffer() -> MTLCommandBuffer
  func commandBufferWithUnretainedReferences() -> MTLCommandBuffer
  func insertDebugCaptureBoundary()
}
