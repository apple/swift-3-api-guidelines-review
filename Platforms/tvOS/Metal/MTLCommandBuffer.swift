
@available(tvOS 8.0, *)
enum MTLCommandBufferStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotEnqueued
  case Enqueued
  case Committed
  case Scheduled
  case Completed
  case Error
}
@available(tvOS 8.0, *)
let MTLCommandBufferErrorDomain: String
@available(tvOS 8.0, *)
enum MTLCommandBufferError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Internal
  case Timeout
  case PageFault
  case Blacklisted
  case NotPermitted
  case OutOfMemory
  case InvalidResource
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
@available(tvOS 8.0, *)
protocol MTLCommandBuffer : NSObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  var label: String? { get set }
  func enqueue()
  func commit()
  func addScheduledHandler(block: MTLCommandBufferHandler)
  func presentDrawable(drawable: MTLDrawable)
  func presentDrawable(drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(block: MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: NSError? { get }
  func blitCommandEncoder() -> MTLBlitCommandEncoder
  func renderCommandEncoderWithDescriptor(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder
  func computeCommandEncoder() -> MTLComputeCommandEncoder
  func parallelRenderCommandEncoderWithDescriptor(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}
