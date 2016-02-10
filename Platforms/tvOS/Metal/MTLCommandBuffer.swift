
@available(tvOS 8.0, *)
enum MTLCommandBufferStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notEnqueued
  case enqueued
  case committed
  case scheduled
  case completed
  case error
}
@available(tvOS 8.0, *)
let MTLCommandBufferErrorDomain: String
@available(tvOS 8.0, *)
enum MTLCommandBufferError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case `internal`
  case timeout
  case pageFault
  case blacklisted
  case notPermitted
  case outOfMemory
  case invalidResource
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
@available(tvOS 8.0, *)
protocol MTLCommandBuffer : ObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  var label: String? { get set }
  func enqueue()
  func commit()
  func addScheduledHandler(block: MTLCommandBufferHandler)
  func present(drawable: MTLDrawable)
  func present(drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(block: MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: Error? { get }
  func blitCommandEncoder() -> MTLBlitCommandEncoder
  func renderCommandEncoder(with renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder
  func computeCommandEncoder() -> MTLComputeCommandEncoder
  func parallelRenderCommandEncoder(with renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}
