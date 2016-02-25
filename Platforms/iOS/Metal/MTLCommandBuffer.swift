
@available(iOS 8.0, *)
enum MTLCommandBufferStatus : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NotEnqueued
  case Enqueued
  case Committed
  case Scheduled
  case Completed
  case Error
}
@available(iOS 8.0, *)
let MTLCommandBufferErrorDomain: String
@available(iOS 8.0, *)
enum MTLCommandBufferError : UInt {
  init?(rawValue rawValue: UInt)
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
@available(iOS 8.0, *)
protocol MTLCommandBuffer : NSObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  var label: String? { get set }
  func enqueue()
  func commit()
  func addScheduledHandler(_ block: MTLCommandBufferHandler)
  func presentDrawable(_ drawable: MTLDrawable)
  func presentDrawable(_ drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(_ block: MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: NSError? { get }
  func blitCommandEncoder() -> MTLBlitCommandEncoder
  func renderCommandEncoderWithDescriptor(_ renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder
  func computeCommandEncoder() -> MTLComputeCommandEncoder
  func parallelRenderCommandEncoderWithDescriptor(_ renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}
