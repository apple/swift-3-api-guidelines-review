
@available(iOS 8.0, *)
enum MTLDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Struct
  case Array
  case Float
  case Float2
  case Float3
  case Float4
  case Float2x2
  case Float2x3
  case Float2x4
  case Float3x2
  case Float3x3
  case Float3x4
  case Float4x2
  case Float4x3
  case Float4x4
  case Half
  case Half2
  case Half3
  case Half4
  case Half2x2
  case Half2x3
  case Half2x4
  case Half3x2
  case Half3x3
  case Half3x4
  case Half4x2
  case Half4x3
  case Half4x4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Short
  case Short2
  case Short3
  case Short4
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Char
  case Char2
  case Char3
  case Char4
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Bool
  case Bool2
  case Bool3
  case Bool4
}

/*!
 @enum MTLArgumentType
 @abstract The type for an input to a MTLRenderPipelineState or a MTLComputePipelineState
 
 @constant MTLArgumentTypeBuffer
 This input is a MTLBuffer
 
 @constant MTLArgumentTypeThreadgroupMemory
 This input is a pointer to the threadgroup memory.
 
 @constant MTLArgumentTypeTexture
 This input is a MTLTexture.
 
 @constant MTLArgumentTypeSampler
 This input is a sampler.
*/
@available(iOS 8.0, *)
enum MTLArgumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Buffer
  case ThreadgroupMemory
  case Texture
  case Sampler
}

/*!
 @enum MTLArgumentAccess
*/
@available(iOS 8.0, *)
enum MTLArgumentAccess : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ReadOnly
  case ReadWrite
  case WriteOnly
}
@available(iOS 8.0, *)
class MTLStructMember : NSObject {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
  init()
}
@available(iOS 8.0, *)
class MTLStructType : NSObject {
  var members: [MTLStructMember] { get }
  func memberByName(name: String) -> MTLStructMember?
  init()
}
@available(iOS 8.0, *)
class MTLArrayType : NSObject {
  var arrayLength: Int { get }
  var elementType: MTLDataType { get }
  var stride: Int { get }
  func elementStructType() -> MTLStructType?
  func element() -> MTLArrayType?
  init()
}

/*!
 MTLArgument
*/
@available(iOS 8.0, *)
class MTLArgument : NSObject {
  var name: String { get }
  var type: MTLArgumentType { get }
  var access: MTLArgumentAccess { get }
  var index: Int { get }
  var isActive: Bool { get }
  var bufferAlignment: Int { get }
  var bufferDataSize: Int { get }
  var bufferDataType: MTLDataType { get }
  var bufferStructType: MTLStructType { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
  init()
}

/*!
 @enum MTLBlitOption
 @abstract Controls the blit operation
 */
@available(iOS 9.0, *)
struct MTLBlitOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLBlitOption { get }
  static var DepthFromDepthStencil: MTLBlitOption { get }
  static var StencilFromDepthStencil: MTLBlitOption { get }
  @available(iOS 9.0, *)
  static var RowLinearPVRTC: MTLBlitOption { get }
}

/*!
 @protocol MTLBlitCommandEncoder
 @abstract A command encoder that performs basic copies and blits between buffers and textures.
 */
@available(iOS 8.0, *)
protocol MTLBlitCommandEncoder : MTLCommandEncoder {

  /*!
   @method copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
   @abstract Copy a rectangle of pixels between textures.
   */
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)

  /*!
   @method copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:
   @abstract Copy an image from a buffer into a texture.
   */
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)

  /*!
   @method copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:
   @abstract Copy an image from a buffer into a texture.
   */
  @available(iOS 9.0, *)
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin, options: MTLBlitOption)

  /*!
   @method copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:
   @abstract Copy an image from a texture into a buffer.
   */
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int)

  /*!
   @method copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:sourceOptions:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:
   @abstract Copy an image from a texture into a buffer.
   */
  @available(iOS 9.0, *)
  func copyFrom(sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int, options: MTLBlitOption)

  /*!
   @method generateMipmapsForTexture:
   @abstract Generate mipmaps for a texture from the base level up to the max level.
   */
  func generateMipmapsFor(texture: MTLTexture)

  /*!
   @method fillBuffer:range:value:
   @abstract Fill a buffer with a fixed value in each byte.
   */
  func fill(buffer: MTLBuffer, range: NSRange, value: UInt8)

  /*!
   @method copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:
   @abstract Basic memory copy between buffers.
   */
  func copyFrom(sourceBuffer: MTLBuffer, sourceOffset: Int, to destinationBuffer: MTLBuffer, destinationOffset: Int, size: Int)
}

/*!
 @protocol MTLBuffer
 @abstract A typeless allocation accessible by both the CPU and the GPU (MTLDevice).
 
 @discussion
 Unlike in OpenGL and OpenCL, access to buffers is not synchronized.  The caller may use the CPU to modify the data at any time
 but is also responsible for ensuring synchronization and coherency.
 
 The contents become undefined if both the CPU and GPU write to the same buffer without a synchronizing action between those writes.
 This is true even when the regions written do not overlap.
 */
@available(iOS 8.0, *)
protocol MTLBuffer : MTLResource {

  /*!
   @property length
   @abstract The length of the buffer in bytes.
   */
  var length: Int { get }

  /*!
   @method contents
   @abstract Returns the data pointer of this buffer's shared copy.
   */
  func contents() -> UnsafeMutablePointer<Void>

  /*!
   @method newTextureWithDescriptor:offset:bytesPerRow:
   @abstract Create a 2D texture that shares storage with this buffer.
  */
  @available(iOS 8.0, *)
  func newTextureWith(descriptor: MTLTextureDescriptor, offset: Int, bytesPerRow: Int) -> MTLTexture
}

/*!
 @enum MTLCommandBufferStatus
 
 @abstract MTLCommandBufferStatus reports the current stage in the lifetime of MTLCommandBuffer, as it proceeds to enqueued, committed, scheduled, and completed.
 
 @constant MTLCommandBufferStatusNotEnqueued
 The command buffer has not been enqueued yet.
 
 @constant MTLCommandBufferStatusEnqueued
 This command buffer is enqueued, but not committed.
 
 @constant MTLCommandBufferStatusCommitted
 Commited to its command queue, but not yet scheduled for execution.
 
 @constant MTLCommandBufferStatusScheduled
 All dependencies have been resolved and the command buffer has been scheduled for execution.
 
 @constant MTLCommandBufferStatusCompleted
 The command buffer has finished executing successfully: any blocks set with -addCompletedHandler: may now be called.
 
 @constant MTLCommandBufferStatusError
 Execution of the command buffer was aborted due to an error during execution.  Check -error for more information.
 */
@available(iOS 8.0, *)
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

/*!
@constant MTLCommandBufferErrorDomain
@abstract An error domain for NSError objects produced by MTLCommandBuffer
*/
@available(iOS 8.0, *)
let MTLCommandBufferErrorDomain: String

/*!
 @enum MTLCommandBufferError
 @abstract Error codes that can be found in MTLCommandBuffer.error
 @constant MTLCommandBufferErrorInternal An internal error that doesn't fit into the other categories. The actual low level error code is encoded in the local description.
 @constant MTLCommandBufferErrorTimeout Execution of this command buffer took too long, execution of this command was interrupted and aborted.
 @constant MTLCommandBufferErrorPageFault Execution of this command buffer generated an unserviceable GPU page fault. This can caused by buffer read write attribute mismatch or out of boundary access.
 @constant MTLCommandBufferErrorBlacklisted Access to this device has been revoked because this client has been responsible for too many timeouts or hangs.
 @constant MTLCommandBufferErrorNotPermitted This process does not have access to use this device.
 @constant MTLCommandBufferErrorOutOfMemory Insufficient memory was available to execute this command buffer.
 @constant MTLCommandBufferErrorInvalidResource The command buffer referenced an invalid resource.  This is most commonly caused when the caller deletes a resource before executing a command buffer that refers to it.
 */
@available(iOS 8.0, *)
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

/*!
 @protocol MTLCommandBuffer
 @abstract A serial list of commands for the device to execute.
 */
@available(iOS 8.0, *)
protocol MTLCommandBuffer : NSObjectProtocol {

  /*!
   @property device
   @abstract The device this resource was created against.
   */
  var device: MTLDevice { get }

  /*!
   @property commandQueue
   @abstract The command queue this command buffer was created from.
   */
  var commandQueue: MTLCommandQueue { get }

  /*!
   @property retainedReferences
   @abstract If YES, this command buffer holds strong references to objects needed to execute this command buffer.
   */
  var retainedReferences: Bool { get }

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get set }

  /*!
   @method enqueue
   @abstract Append this command buffer to the end of its MTLCommandQueue.
  */
  func enqueue()

  /*!
   @method commit
   @abstract Commit a command buffer so it can be executed as soon as possible.
   */
  func commit()

  /*!
   @method addScheduledHandler:block:
   @abstract Adds a block to be called when this command buffer has been scheduled for execution.
   */
  func addScheduledHandler(block: MTLCommandBufferHandler)

  /*!
   @method presentDrawable:
   @abstract Add a drawable present that will be invoked when this command buffer has been scheduled for execution.
   */
  func present(drawable: MTLDrawable)

  /*!
   @method presentDrawable:atTime:
   @abstract Add a drawable present for a specific host time that will be invoked when this command buffer has been scheduled for execution.
   */
  func present(drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)

  /*!
   @method waitUntilScheduled
   @abstract Synchronously wait for this command buffer to be scheduled.
   */
  func waitUntilScheduled()

  /*!
   @method addCompletedHandler:block:
   @abstract Add a block to be called when this command buffer has completed execution.
   */
  func addCompletedHandler(block: MTLCommandBufferHandler)

  /*!
   @method waitUntilCompleted
   @abstract Synchronously wait for this command buffer to complete.
   */
  func waitUntilCompleted()

  /*!
   @property status
   @abstract status reports the current stage in the lifetime of MTLCommandBuffer, as it proceeds to enqueued, committed, scheduled, and completed.
   */
  var status: MTLCommandBufferStatus { get }

  /*!
   @property error
   @abstract If an error occurred during execution, the NSError may contain more details about the problem.
   */
  var error: NSError? { get }

  /*!
   @method blitCommandEncoder
   @abstract returns a blit command encoder to encode into this command buffer.
   */
  func blitCommandEncoder() -> MTLBlitCommandEncoder

  /*!
   @method renderCommandEncoderWithFramebuffer:
   @abstract returns a render command endcoder to encode into this command buffer.
   */
  func renderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder

  /*!
   @method computeCommandEncoder
   @abstract returns a compute command encoder to encode into this command buffer.
   */
  func computeCommandEncoder() -> MTLComputeCommandEncoder

  /*!
   @method parallelRenderCommandEncoderWithFramebuffer:
   @abstract returns a parallel render pass encoder to encode into this command buffer.
   */
  func parallelRenderCommandEncoderWith(renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder
}

/*!
 @protocol MTLCommandEncoder
 @abstract MTLCommandEncoder is the common interface for objects that write commands into MTLCommandBuffers.
 */
@available(iOS 8.0, *)
protocol MTLCommandEncoder : NSObjectProtocol {

  /*!
   @property device
   @abstract The device this resource was created against.
   */
  var device: MTLDevice { get }

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get set }

  /*!
   @method endEncoding
   @abstract Declare that all command generation from this encoder is complete, and detach from the MTLCommandBuffer.
   */
  func endEncoding()

  /*!
   @method insertDebugSignpost:
   @abstract Inserts a debug string into the command buffer.  This does not change any API behavior, but can be useful when debugging.
   */
  func insertDebugSignpost(string: String)

  /*!
   @method pushDebugGroup:
   @abstract Push a new named string onto a stack of string labels.
   */
  func pushDebugGroup(string: String)

  /*!
   @method popDebugGroup
   @abstract Pop the latest named string off of the stack.
  */
  func popDebugGroup()
}

/*!
 @protocol MTLCommandQueue
 @brief A serial queue of command buffers to be executed by the device.
 */
@available(iOS 8.0, *)
protocol MTLCommandQueue : NSObjectProtocol {

  /*! @brief A string to help identify this object */
  var label: String? { get set }

  /*! @brief The device this queue will submit to */
  var device: MTLDevice { get }

  /*! 
   @method commandBuffer
   @abstract Returns a new autoreleased command buffer used to encode work into this queue that 
   maintains strong references to resources used within the command buffer.
  */
  func commandBuffer() -> MTLCommandBuffer

  /*!
   @method commandBufferWithUnretainedReferences
   @abstract Returns a new autoreleased command buffer used to encode work into this queue that 
   does not maintain strong references to resources used within the command buffer.
  */
  func commandBufferWithUnretainedReferences() -> MTLCommandBuffer

  /*!
   @method insertDebugCaptureBoundary
   @abstract Inform Xcode about when debug capture should start and stop.
   */
  func insertDebugCaptureBoundary()
}
struct MTLDispatchThreadgroupsIndirectArguments {
  var threadgroupsPerGrid: (UInt32, UInt32, UInt32)
  init()
  init(threadgroupsPerGrid: (UInt32, UInt32, UInt32))
}

/*!
 @protocol MTLComputeCommandEncoder
 @abstract A command encoder that writes data parallel compute commands.
 */
@available(iOS 8.0, *)
protocol MTLComputeCommandEncoder : MTLCommandEncoder {

  /*!
   @method setComputePipelineState:
   @abstract Set the compute pipeline state that will be used.
   */
  func setComputePipelineState(state: MTLComputePipelineState)

  /*!
   @method setBytes:length:atIndex:
   @brief Set the data (by copy) for a given buffer binding point.  This will remove any existing MTLBuffer from the binding point.
   */
  @available(iOS 8.3, *)
  func setBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)

  /*!
   @method setBuffer:offset:atIndex:
   @brief Set a global buffer for all compute kernels at the given bind point index.
   */
  func setBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)

  /*!
   @method setBufferOffset:atIndex:
   @brief Set the offset within the current global buffer for all compute kernels at the given bind point index.
   */
  @available(iOS 8.3, *)
  func setBufferOffset(offset: Int, at index: Int)

  /*!
   @method setBuffers:offsets:withRange:
   @brief Set an array of global buffers for all compute kernels with the given bind point range.
   */
  func setBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)

  /*!
   @method setTexture:atIndex:
   @brief Set a global texture for all compute kernels at the given bind point index.
   */
  func setTexture(texture: MTLTexture?, at index: Int)

  /*!
   @method setTextures:withRange:
   @brief Set an array of global textures for all compute kernels with the given bind point range.
   */
  func setTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)

  /*!
   @method setSamplerState:atIndex:
   @brief Set a global sampler for all compute kernels at the given bind point index.
   */
  func setSamplerState(sampler: MTLSamplerState?, at index: Int)

  /*!
   @method setSamplers:withRange:
   @brief Set an array of global samplers for all compute kernels with the given bind point range.
   */
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)

  /*!
   @method setSamplerState:lodMinClamp:lodMaxClamp:atIndex:
   @brief Set a global sampler for all compute kernels at the given bind point index.
   */
  func setSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)

  /*!
   @method setSamplers:lodMinClamps:lodMaxClamps:withRange:
   @brief Set an array of global samplers for all compute kernels with the given bind point range.
   */
  func setSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)

  /*!
   @method setThreadgroupMemoryLength:atIndex:
   @brief Set the threadgroup memory byte length at the binding point specified by the index. This applies to all compute kernels.
   */
  func setThreadgroupMemoryLength(length: Int, at index: Int)
  func dispatchThreadgroups(threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  @available(iOS 9.0, *)
  func dispatchThreadgroupsWithIndirectBuffer(indirectBuffer: MTLBuffer, indirectBufferOffset: Int, threadsPerThreadgroup: MTLSize)
}
@available(iOS 8.0, *)
class MTLComputePipelineReflection : NSObject {
  var arguments: [MTLArgument] { get }
  init()
}
@available(iOS 9.0, *)
class MTLComputePipelineDescriptor : NSObject, NSCopying {

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String?

  /*!
   @property computeFunction
   @abstract The function to use with the MTLComputePipelineState
   */
  var computeFunction: MTLFunction?

  /*!
   @property threadGroupSizeIsMultipleOfThreadExecutionWidth
   @abstract An optimization flag, set if the thread group size will always be a multiple of thread execution width
   */
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool

  /*!
   @method reset
   @abstract Restore all compute pipeline descriptor properties to their default values.
   */
  func reset()
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @protocol MTLComputePipelineState
 @abstract A handle to compiled code for a compute function.
 @discussion MTLComputePipelineState is a single compute function.  It can only be used with the device that it was created against.
*/
@available(iOS 8.0, *)
protocol MTLComputePipelineState : NSObjectProtocol {

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }

  /*!
   @property maxTotalThreadsPerThreadgroup
   @abstract The maximum total number of threads that can be in a single compute threadgroup.
   */
  var maxTotalThreadsPerThreadgroup: Int { get }

  /*!
   @property threadExecutionWidth
   @abstract For most efficient execution, the threadgroup size should be a multiple of this when executing the kernel.
   */
  var threadExecutionWidth: Int { get }
}
@available(iOS 8.0, *)
enum MTLCompareFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Never
  case Less
  case Equal
  case LessEqual
  case Greater
  case NotEqual
  case GreaterEqual
  case Always
}
@available(iOS 8.0, *)
enum MTLStencilOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Keep
  case Zero
  case Replace
  case IncrementClamp
  case DecrementClamp
  case Invert
  case IncrementWrap
  case DecrementWrap
}
@available(iOS 8.0, *)
class MTLStencilDescriptor : NSObject, NSCopying {
  var stencilCompareFunction: MTLCompareFunction

  /*! Stencil is tested first.  stencilFailureOperation declares how the stencil buffer is updated when the stencil test fails. */
  var stencilFailureOperation: MTLStencilOperation

  /*! If stencil passes, depth is tested next.  Declare what happens when the depth test fails. */
  var depthFailureOperation: MTLStencilOperation

  /*! If both the stencil and depth tests pass, declare how the stencil buffer is updated. */
  var depthStencilPassOperation: MTLStencilOperation
  var readMask: UInt32
  var writeMask: UInt32
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLDepthStencilDescriptor : NSObject, NSCopying {
  var depthCompareFunction: MTLCompareFunction
  var isDepthWriteEnabled: Bool
  @NSCopying var frontFaceStencil: MTLStencilDescriptor!
  @NSCopying var backFaceStencil: MTLStencilDescriptor!

  /*!
   @property label
   @abstract A string to help identify the created object.
   */
  var label: String?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
protocol MTLDepthStencilState : NSObjectProtocol {

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get }

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }
}

/*!
 @brief Returns a reference to the preferred system default Metal device.
 @discussion On Mac OS X systems that support automatic graphics switching, calling
 this API to get a Metal device will cause the system to switch to the high power
 GPU.  On other systems that support more than one GPU it will return the GPU that
 is associated with the main display.
 */
@available(iOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(iOS 8.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 8.0, *)
  case iOS_GPUFamily1_v1
  @available(iOS 8.0, *)
  case iOS_GPUFamily2_v1
  @available(iOS 9.0, *)
  case iOS_GPUFamily1_v2
  @available(iOS 9.0, *)
  case iOS_GPUFamily2_v2
  @available(iOS 9.0, *)
  case iOS_GPUFamily3_v1
}

/*!
 @enum MTLPipelineOption
 @abstract Controls the creation of the pipeline
 */
@available(iOS 8.0, *)
struct MTLPipelineOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLPipelineOption { get }
  static var ArgumentInfo: MTLPipelineOption { get }
  static var BufferTypeInfo: MTLPipelineOption { get }
}
typealias MTLAutoreleasedRenderPipelineReflection = MTLRenderPipelineReflection
typealias MTLAutoreleasedComputePipelineReflection = MTLComputePipelineReflection
typealias MTLNewLibraryCompletionHandler = (MTLLibrary?, NSError?) -> Void
typealias MTLNewRenderPipelineStateCompletionHandler = (MTLRenderPipelineState?, NSError?) -> Void
typealias MTLNewRenderPipelineStateWithReflectionCompletionHandler = (MTLRenderPipelineState?, MTLRenderPipelineReflection?, NSError?) -> Void
typealias MTLNewComputePipelineStateCompletionHandler = (MTLComputePipelineState?, NSError?) -> Void
typealias MTLNewComputePipelineStateWithReflectionCompletionHandler = (MTLComputePipelineState?, MTLComputePipelineReflection?, NSError?) -> Void

/*!
 @protocol MTLDevice
 @abstract MTLDevice represents a processor capable of data parallel computations
 */
@available(iOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {

  /*!
   @property name
   @abstract The full name of the vendor device.
   */
  var name: String? { get }

  /*!
   @property maxThreadsPerThreadgroup
   @abstract The maximum number of threads along each dimension.
   */
  @available(iOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }

  /*!
   @method newCommandQueue
   @brief Create and return a new command queue.   Command Queues created via this method will only allow up to 64 non-completed command buffers.
   @return The new command queue object
   */
  func newCommandQueue() -> MTLCommandQueue

  /*!
   @method newCommandQueueWithMaxCommandBufferCount
   @brief Create and return a new command queue with a given upper bound on non-completed command buffers.
   @return The new command queue object
   */
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue

  /*!
   @method newBufferWithLength:options:
   @brief Create a buffer by allocating new memory.
   */
  func newBufferWithLength(length: Int, options: MTLResourceOptions = []) -> MTLBuffer

  /*!
   @method newBufferWithBytes:length:options:
   @brief Create a buffer by allocating new memory and specifing the initial contents to be copied into it.
   */
  func newBufferWithBytes(pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions = []) -> MTLBuffer

  /*!
   @method newBufferWithBytesNoCopy:length:options:deallocator:
   @brief Create a buffer by wrapping an existing part of the address space.
   */
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer

  /*!
   @method newDepthStencilStateWithDescriptor:
   @brief Create a depth/stencil test state object.
   */
  func newDepthStencilStateWith(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState

  /*!
   @method newTextureWithDescriptor:
   @abstract Allocate a new texture with privately owned storage.
   */
  func newTextureWith(descriptor: MTLTextureDescriptor) -> MTLTexture

  /*!
   @method newSamplerStateWithDescriptor:
   @abstract Create a new sampler.
  */
  func newSamplerStateWith(descriptor: MTLSamplerDescriptor) -> MTLSamplerState

  /*!
   @method newDefaultLibrary
   @abstract Returns the default library for the main bundle.
   */
  func newDefaultLibrary() -> MTLLibrary?

  /*!
   @method newLibraryWithFile:
   @abstract Load a MTLLibrary from a metallib file.
   */
  func newLibraryWithFile(filepath: String) throws -> MTLLibrary

  /*!
   @method newLibraryWithData:
   @abstract Load a MTLLibrary from a dispatch_data_t
   @param data A metallib file already loaded as data in the form of dispatch_data_t.
   @param error An error if we fail to open the metallib data.
   */
  func newLibraryWith(data: dispatch_data_t) throws -> MTLLibrary

  /*!
   @method newLibraryWithSource:options:error:
   @abstract Load a MTLLibrary from source.
   */
  func newLibraryWithSource(source: String, options: MTLCompileOptions?) throws -> MTLLibrary

  /*!
   @method newLibraryWithSource:options:completionHandler:
   @abstract Load a MTLLibrary from source.
   */
  func newLibraryWithSource(source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)

  /*!
   @method newRenderPipelineStateWithDescriptor:error:
   @abstract Create and compile a new MTLRenderPipelineState object synchronously.
   */
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState

  /*!
   @method newRenderPipelineStateWithDescriptor:options:reflection:error:
   @abstract Create and compile a new MTLRenderPipelineState object synchronously and returns additional reflection information.
   */
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState

  /*!
   @method newRenderPipelineState:completionHandler:
   @abstract Create and compile a new MTLRenderPipelineState object asynchronously.
   */
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)

  /*!
   @method newRenderPipelineState:options:completionHandler:
   @abstract Create and compile a new MTLRenderPipelineState object asynchronously and returns additional reflection information
   */
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)

  /*!
   @method newComputePipelineStateWithDescriptor:error:
   @abstract Create and compile a new MTLComputePipelineState object synchronously.
   */
  func newComputePipelineStateWith(computeFunction: MTLFunction) throws -> MTLComputePipelineState

  /*!
   @method newComputePipelineStateWithDescriptor:options:reflection:error:
   @abstract Create and compile a new MTLComputePipelineState object synchronously.
   */
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState

  /*!
   @method newComputePipelineStateWithDescriptor:completionHandler:
   @abstract Create and compile a new MTLComputePipelineState object asynchronously.
   */
  func newComputePipelineStateWith(computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)

  /*!
   @method newComputePipelineStateWithDescriptor:options:completionHandler:
   @abstract Create and compile a new MTLComputePipelineState object asynchronously.
   */
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)

  /*!
   @method newComputePipelineStateWithDescriptor:options:reflection:error:
   @abstract Create and compile a new MTLComputePipelineState object synchronously.
   */
  @available(iOS 9.0, *)
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState

  /*!
   @method newComputePipelineStateWithDescriptor:options:completionHandler:
   @abstract Create and compile a new MTLComputePipelineState object asynchronously.
   */
  @available(iOS 9.0, *)
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)

  /*!
   @method supportsFeatureSet:
   @abstract Returns TRUE if the feature set is supported by this MTLDevice.
   */
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool

  /*!
   @method supportsTextureSampleCount:
   @brief Query device if it support textures with a given sampleCount.
   @return BOOL value. If YES, device supports the given sampleCount for textures. If NO, device does not support the given sampleCount.
   */
  @available(iOS 9.0, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}

/*!
 @protocol MTLDrawable
 @abstract All "drawable" objects (such as those coming from CAMetalLayer) are expected to conform to this protocol
 */
@available(iOS 8.0, *)
protocol MTLDrawable : NSObjectProtocol {
  func present()
  func presentAtTime(presentationTime: CFTimeInterval)
}
@available(iOS 8.0, *)
class MTLVertexAttribute : NSObject {
  var name: String? { get }
  var attributeIndex: Int { get }
  @available(iOS 8.3, *)
  var attributeType: MTLDataType { get }
  var isActive: Bool { get }
  init()
}

/*!
 @enum MTLFunctionType
 @abstract An identifier for a top-level Metal function.
 @discussion Each location in the API where a program is used requires a function written for that specific usage.
 
 @constant MTLFunctionTypeVertex
 A vertex shader, usable for a MTLRenderPipelineState.
 
 @constant MTLFunctionTypeFragment
 A fragment shader, usable for a MTLRenderPipelineState.
 
 @constant MTLFunctionTypeKernel
 A compute kernel, usable to create a MTLComputePipelineState.
 */
@available(iOS 8.0, *)
enum MTLFunctionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Vertex
  case Fragment
  case Kernel
}

/*!
 @protocol MTLFunction
 @abstract A handle to to intermediate code used as inputs for either a MTLComputePipelineState or a MTLRenderPipelineState.
 @discussion MTLFunction is a single vertex shader, fragment shader, or compute function.  A Function can only be used with the device that it was created against.
*/
@available(iOS 8.0, *)
protocol MTLFunction : NSObjectProtocol {

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }

  /*!
   @property functionType
   @abstract The overall kind of entry point: compute, vertex, or fragment.
   */
  var functionType: MTLFunctionType { get }
  var vertexAttributes: [MTLVertexAttribute]? { get }

  /*!
   @property name
   @abstract The name of the function in the shading language.
   */
  var name: String { get }
}
@available(iOS 9.0, *)
enum MTLLanguageVersion : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 9.0, *)
  case Version1_0
  case Version1_1
}
@available(iOS 8.0, *)
class MTLCompileOptions : NSObject, NSCopying {

  /*!
   @property preprocessorNames
   @abstract List of preprocessor macros to consider to when compiling this program. Specified as key value pairs, using a NSDictionary. The keys must be NSString objects and values can be either NSString or NSNumber objects.
   @discussion The default value is nil.
   */
  var preprocessorMacros: [String : NSObject]?

  /*!
   @property fastMathEnabled
   @abstract If YES, enables the compiler to perform optimizations for floating-point arithmetic that may violate the IEEE 754 standard. It also enables the high precision variant of math functions for single precision floating-point scalar and vector types. fastMathEnabled defaults to YES.
   */
  var isFastMathEnabled: Bool

  /*!
   @property languageVersion
   @abstract set the metal language version used to interpret the source.
   */
  @available(iOS 9.0, *)
  var languageVersion: MTLLanguageVersion
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @constant MTLLibraryErrorDomain
 @abstract NSErrors raised when creating a library.
 */
@available(iOS 8.0, *)
let MTLLibraryErrorDomain: String

/*!
 @enum MTLLibraryError
 @abstract NSErrors raised when creating a library.
 */
@available(iOS 8.0, *)
enum MTLLibraryError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unsupported
  case Internal
  case CompileFailure
  case CompileWarning
}
let MTLRenderPipelineErrorDomain: String

/*!
 @enum MTLRenderPipelineError
 @abstract NSErrors raised when creating a pipeline or kernel.
 */
@available(iOS 8.0, *)
enum MTLRenderPipelineError : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Internal
  case Unsupported
  case InvalidInput
}
@available(iOS 8.0, *)
protocol MTLLibrary : NSObjectProtocol {

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get set }

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }

  /*!
   @method newFunctionWithName
   @abstract Returns a pointer to a function object, return nil if the function is not found in the library.
   */
  func newFunctionWithName(functionName: String) -> MTLFunction?

  /*!
   @property functionNames
   @abstract The array contains NSString objects, with the name of each function in library.
   */
  var functionNames: [String] { get }
}

/*!
 @protocol MTLParallelRenderCommandEncoder
 @discussion The MTLParallelRenderCommandEncoder protocol is designed to allow a single render to texture operation to be efficiently (and safely) broken up across multiple threads.
 */
@available(iOS 8.0, *)
protocol MTLParallelRenderCommandEncoder : MTLCommandEncoder {

  /*!
   @method renderCommandEncoder
   @abstract Return a new autoreleased object that conforms to <MTLRenderCommandEncoder> that may be used to encode on a different thread.
   */
  func renderCommandEncoder() -> MTLRenderCommandEncoder
}
@available(iOS 8.0, *)
enum MTLPixelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case A8Unorm
  case R8Unorm
  @available(iOS 8.0, *)
  case R8Unorm_sRGB
  case R8Snorm
  case R8Uint
  case R8Sint
  case R16Unorm
  case R16Snorm
  case R16Uint
  case R16Sint
  case R16Float
  case RG8Unorm
  @available(iOS 8.0, *)
  case RG8Unorm_sRGB
  case RG8Snorm
  case RG8Uint
  case RG8Sint
  @available(iOS 8.0, *)
  case B5G6R5Unorm
  @available(iOS 8.0, *)
  case A1BGR5Unorm
  @available(iOS 8.0, *)
  case ABGR4Unorm
  @available(iOS 8.0, *)
  case BGR5A1Unorm
  case R32Uint
  case R32Sint
  case R32Float
  case RG16Unorm
  case RG16Snorm
  case RG16Uint
  case RG16Sint
  case RG16Float
  case RGBA8Unorm
  case RGBA8Unorm_sRGB
  case RGBA8Snorm
  case RGBA8Uint
  case RGBA8Sint
  case BGRA8Unorm
  case BGRA8Unorm_sRGB
  case RGB10A2Unorm
  case RGB10A2Uint
  case RG11B10Float
  case RGB9E5Float
  case RG32Uint
  case RG32Sint
  case RG32Float
  case RGBA16Unorm
  case RGBA16Snorm
  case RGBA16Uint
  case RGBA16Sint
  case RGBA16Float
  case RGBA32Uint
  case RGBA32Sint
  case RGBA32Float
  @available(iOS 8.0, *)
  case PVRTC_RGB_2BPP
  @available(iOS 8.0, *)
  case PVRTC_RGB_2BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGB_4BPP
  @available(iOS 8.0, *)
  case PVRTC_RGB_4BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGBA_2BPP
  @available(iOS 8.0, *)
  case PVRTC_RGBA_2BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGBA_4BPP
  @available(iOS 8.0, *)
  case PVRTC_RGBA_4BPP_sRGB
  @available(iOS 8.0, *)
  case EAC_R11Unorm
  @available(iOS 8.0, *)
  case EAC_R11Snorm
  @available(iOS 8.0, *)
  case EAC_RG11Unorm
  @available(iOS 8.0, *)
  case EAC_RG11Snorm
  @available(iOS 8.0, *)
  case EAC_RGBA8
  @available(iOS 8.0, *)
  case EAC_RGBA8_sRGB
  @available(iOS 8.0, *)
  case ETC2_RGB8
  @available(iOS 8.0, *)
  case ETC2_RGB8_sRGB
  @available(iOS 8.0, *)
  case ETC2_RGB8A1
  @available(iOS 8.0, *)
  case ETC2_RGB8A1_sRGB
  @available(iOS 8.0, *)
  case ASTC_4x4_sRGB
  @available(iOS 8.0, *)
  case ASTC_5x4_sRGB
  @available(iOS 8.0, *)
  case ASTC_5x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_6x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_6x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x8_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x8_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x10_sRGB
  @available(iOS 8.0, *)
  case ASTC_12x10_sRGB
  @available(iOS 8.0, *)
  case ASTC_12x12_sRGB
  @available(iOS 8.0, *)
  case ASTC_4x4_LDR
  @available(iOS 8.0, *)
  case ASTC_5x4_LDR
  @available(iOS 8.0, *)
  case ASTC_5x5_LDR
  @available(iOS 8.0, *)
  case ASTC_6x5_LDR
  @available(iOS 8.0, *)
  case ASTC_6x6_LDR
  @available(iOS 8.0, *)
  case ASTC_8x5_LDR
  @available(iOS 8.0, *)
  case ASTC_8x6_LDR
  @available(iOS 8.0, *)
  case ASTC_8x8_LDR
  @available(iOS 8.0, *)
  case ASTC_10x5_LDR
  @available(iOS 8.0, *)
  case ASTC_10x6_LDR
  @available(iOS 8.0, *)
  case ASTC_10x8_LDR
  @available(iOS 8.0, *)
  case ASTC_10x10_LDR
  @available(iOS 8.0, *)
  case ASTC_12x10_LDR
  @available(iOS 8.0, *)
  case ASTC_12x12_LDR

  /*!
   @constant MTLPixelFormatGBGR422
   @abstract A pixel format where the red and green channels are subsampled horizontally.  Two pixels are stored in 32 bits, with shared red and blue values, and unique green values.
   @discussion This format is equivelent to YUY2, YUYV, yuvs, or GL_RGB_422_APPLE/GL_UNSIGNED_SHORT_8_8_REV_APPLE.   The component order, from lowest addressed byte to highest, is Y0, Cb, Y1, Cr.  There is no implicit colorspace conversion from YUV to RGB, the shader will receive (Cr, Y, Cb, 1).  422 textures must have a width that is a multiple of 2, and can only be used for 2D non-mipmap textures.  When sampling, ClampToEdge is the only usable wrap mode.
   */
  case GBGR422

  /*!
   @constant MTLPixelFormatBGRG422
   @abstract A pixel format where the red and green channels are subsampled horizontally.  Two pixels are stored in 32 bits, with shared red and blue values, and unique green values.
   @discussion This format is equivelent to UYVY, 2vuy, or GL_RGB_422_APPLE/GL_UNSIGNED_SHORT_8_8_APPLE. The component order, from lowest addressed byte to highest, is Cb, Y0, Cr, Y1.  There is no implicit colorspace conversion from YUV to RGB, the shader will receive (Cr, Y, Cb, 1).  422 textures must have a width that is a multiple of 2, and can only be used for 2D non-mipmap textures.  When sampling, ClampToEdge is the only usable wrap mode.
   */
  case BGRG422

  /*!
   @constant MTLPixelFormatBGRG422
   @abstract A pixel format where the red and green channels are subsampled horizontally.  Two pixels are stored in 32 bits, with shared red and blue values, and unique green values.
   @discussion This format is equivelent to UYVY, 2vuy, or GL_RGB_422_APPLE/GL_UNSIGNED_SHORT_8_8_APPLE. The component order, from lowest addressed byte to highest, is Cb, Y0, Cr, Y1.  There is no implicit colorspace conversion from YUV to RGB, the shader will receive (Cr, Y, Cb, 1).  422 textures must have a width that is a multiple of 2, and can only be used for 2D non-mipmap textures.  When sampling, ClampToEdge is the only usable wrap mode.
   */
  case Depth32Float

  /*!
   @constant MTLPixelFormatBGRG422
   @abstract A pixel format where the red and green channels are subsampled horizontally.  Two pixels are stored in 32 bits, with shared red and blue values, and unique green values.
   @discussion This format is equivelent to UYVY, 2vuy, or GL_RGB_422_APPLE/GL_UNSIGNED_SHORT_8_8_APPLE. The component order, from lowest addressed byte to highest, is Cb, Y0, Cr, Y1.  There is no implicit colorspace conversion from YUV to RGB, the shader will receive (Cr, Y, Cb, 1).  422 textures must have a width that is a multiple of 2, and can only be used for 2D non-mipmap textures.  When sampling, ClampToEdge is the only usable wrap mode.
   */
  case Stencil8

  /*!
   @constant MTLPixelFormatBGRG422
   @abstract A pixel format where the red and green channels are subsampled horizontally.  Two pixels are stored in 32 bits, with shared red and blue values, and unique green values.
   @discussion This format is equivelent to UYVY, 2vuy, or GL_RGB_422_APPLE/GL_UNSIGNED_SHORT_8_8_APPLE. The component order, from lowest addressed byte to highest, is Cb, Y0, Cr, Y1.  There is no implicit colorspace conversion from YUV to RGB, the shader will receive (Cr, Y, Cb, 1).  422 textures must have a width that is a multiple of 2, and can only be used for 2D non-mipmap textures.  When sampling, ClampToEdge is the only usable wrap mode.
   */
  @available(iOS 9.0, *)
  case Depth32Float_Stencil8
}
@available(iOS 8.0, *)
enum MTLPrimitiveType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Point
  case Line
  case LineStrip
  case Triangle
  case TriangleStrip
}
@available(iOS 8.0, *)
enum MTLIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UInt16
  case UInt32
}
@available(iOS 8.0, *)
enum MTLVisibilityResultMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Disabled
  case Boolean
  @available(iOS 9.0, *)
  case Counting
}
struct MTLScissorRect {
  var x: Int
  var y: Int
  var width: Int
  var height: Int
  init()
  init(x: Int, y: Int, width: Int, height: Int)
}
struct MTLViewport {
  var originX: Double
  var originY: Double
  var width: Double
  var height: Double
  var znear: Double
  var zfar: Double
  init()
  init(originX: Double, originY: Double, width: Double, height: Double, znear: Double, zfar: Double)
}
@available(iOS 8.0, *)
enum MTLCullMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Front
  case Back
}
@available(iOS 8.0, *)
enum MTLWinding : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clockwise
  case CounterClockwise
}
@available(iOS 9.0, *)
enum MTLDepthClipMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clip
  case Clamp
}
@available(iOS 8.0, *)
enum MTLTriangleFillMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Fill
  case Lines
}
struct MTLDrawPrimitivesIndirectArguments {
  var vertexCount: UInt32
  var instanceCount: UInt32
  var vertexStart: UInt32
  var baseInstance: UInt32
  init()
  init(vertexCount: UInt32, instanceCount: UInt32, vertexStart: UInt32, baseInstance: UInt32)
}
struct MTLDrawIndexedPrimitivesIndirectArguments {
  var indexCount: UInt32
  var instanceCount: UInt32
  var indexStart: UInt32
  var baseVertex: Int32
  var baseInstance: UInt32
  init()
  init(indexCount: UInt32, instanceCount: UInt32, indexStart: UInt32, baseVertex: Int32, baseInstance: UInt32)
}

/*!
 @protocol MTLRenderCommandEncoder
 @discussion MTLRenderCommandEncoder is a container for graphics rendering state and the code to translate the state into a command format that the device can execute. 
 */
@available(iOS 8.0, *)
protocol MTLRenderCommandEncoder : MTLCommandEncoder {

  /*!
   @method setRenderPipelineState
   @brief Sets the current render pipeline state object.
   */
  func setRenderPipelineState(pipelineState: MTLRenderPipelineState)

  /*!
   @method setVertexBytes:length:atIndex:
   @brief Set the data (by copy) for a given vertex buffer binding point.  This will remove any existing MTLBuffer from the binding point.
   */
  @available(iOS 8.3, *)
  func setVertexBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)

  /*!
   @method setVertexBuffer:offset:atIndex:
   @brief Set a global buffer for all vertex shaders at the given bind point index.
   */
  func setVertexBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)

  /*!
   @method setVertexBufferOffset:atIndex:
   @brief Set the offset within the current global buffer for all vertex shaders at the given bind point index.
   */
  @available(iOS 8.3, *)
  func setVertexBufferOffset(offset: Int, at index: Int)

  /*!
   @method setVertexBuffers:offsets:withRange:
   @brief Set an array of global buffers for all vertex shaders with the given bind point range.
   */
  func setVertexBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)

  /*!
   @method setVertexTexture:atIndex:
   @brief Set a global texture for all vertex shaders at the given bind point index.
   */
  func setVertexTexture(texture: MTLTexture?, at index: Int)

  /*!
   @method setVertexTextures:withRange:
   @brief Set an array of global textures for all vertex shaders with the given bind point range.
   */
  func setVertexTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)

  /*!
   @method setVertexSamplerState:atIndex:
   @brief Set a global sampler for all vertex shaders at the given bind point index.
   */
  func setVertexSamplerState(sampler: MTLSamplerState?, at index: Int)

  /*!
   @method setVertexSamplerStates:withRange:
   @brief Set an array of global samplers for all vertex shaders with the given bind point range.
   */
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)

  /*!
   @method setVertexSamplerState:lodMinClamp:lodMaxClamp:atIndex:
   @brief Set a global sampler for all vertex shaders at the given bind point index.
   */
  func setVertexSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)

  /*!
   @method setVertexSamplerStates:lodMinClamps:lodMaxClamps:withRange:
   @brief Set an array of global samplers for all vertex shaders with the given bind point range.
   */
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)

  /*!
   @method setViewport:
   @brief Set the viewport, which is used to transform vertexes from normalized device coordinates to window coordinates.  Fragments that lie outside of the viewport are clipped, and optionally clamped for fragments outside of znear/zfar.
   */
  func setViewport(viewport: MTLViewport)

  /*!
   @method setFrontFacingWinding:
   @brief The winding order of front-facing primitives.
   */
  func setFrontFacing(frontFacingWinding: MTLWinding)

  /*!
   @method setCullMode:
   @brief Controls if primitives are culled when front facing, back facing, or not culled at all.
   */
  func setCullMode(cullMode: MTLCullMode)

  /*!
  @method setDepthClipMode:
  @brief Controls what is done with fragments outside of the near or far planes.
  */
  @available(iOS 9.0, *)
  func setDepthClipMode(depthClipMode: MTLDepthClipMode)

  /*!
   @method setDepthBias:slopeScale:clamp:
   @brief Depth Bias.
   */
  func setDepthBias(depthBias: Float, slopeScale: Float, clamp: Float)

  /*!
   @method setScissorRect:
   @brief Specifies a rectangle for a fragment scissor test.  All fragments outside of this rectangle are discarded.
   */
  func setScissorRect(rect: MTLScissorRect)

  /*!
   @method setTriangleFillMode:
   @brief Set how to rasterize triangle and triangle strip primitives.
   */
  func setTriangleFillMode(fillMode: MTLTriangleFillMode)

  /*!
   @method setFragmentBytes:length:atIndex:
   @brief Set the data (by copy) for a given fragment buffer binding point.  This will remove any existing MTLBuffer from the binding point.
   */
  @available(iOS 8.3, *)
  func setFragmentBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)

  /*!
   @method setFragmentBuffer:offset:atIndex:
   @brief Set a global buffer for all fragment shaders at the given bind point index.
   */
  func setFragmentBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)

  /*!
   @method setFragmentBufferOffset:atIndex:
   @brief Set the offset within the current global buffer for all fragment shaders at the given bind point index.
   */
  @available(iOS 8.3, *)
  func setFragmentBufferOffset(offset: Int, at index: Int)

  /*!
   @method setFragmentBuffers:offsets:withRange:
   @brief Set an array of global buffers for all fragment shaders with the given bind point range.
   */
  func setFragmentBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets offset: UnsafePointer<Int>, withRange range: NSRange)

  /*!
   @method setFragmentTexture:atIndex:
   @brief Set a global texture for all fragment shaders at the given bind point index.
   */
  func setFragmentTexture(texture: MTLTexture?, at index: Int)

  /*!
   @method setFragmentTextures:withRange:
   @brief Set an array of global textures for all fragment shaders with the given bind point range.
   */
  func setFragmentTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)

  /*!
   @method setFragmentSamplerState:atIndex:
   @brief Set a global sampler for all fragment shaders at the given bind point index.
   */
  func setFragmentSamplerState(sampler: MTLSamplerState?, at index: Int)

  /*!
   @method setFragmentSamplerStates:withRange:
   @brief Set an array of global samplers for all fragment shaders with the given bind point range.
   */
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)

  /*!
   @method setFragmentSamplerState:lodMinClamp:lodMaxClamp:atIndex:
   @brief Set a global sampler for all fragment shaders at the given bind point index.
   */
  func setFragmentSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)

  /*!
   @method setFragmentSamplerStates:lodMinClamps:lodMaxClamps:withRange:
   @brief Set an array of global samplers for all fragment shaders with the given bind point range.
   */
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)

  /*!
   @method setBlendColorRed:green:blue:alpha:
   @brief Set the constant blend color used across all blending on all render targets
   */
  func setBlendColorRed(red: Float, green: Float, blue: Float, alpha: Float)

  /*! 
   @method setDepthStencilState:
   @brief Set the DepthStencil state object.
   */
  func setDepthStencilState(depthStencilState: MTLDepthStencilState?)

  /*! 
   @method setStencilReferenceValue:
   @brief Set the stencil reference value for both the back and front stencil buffers.
   */
  func setStencilReferenceValue(referenceValue: UInt32)

  /*! 
   @method setStencilFrontReferenceValue:backReferenceValue:
   @brief Set the stencil reference value for the back and front stencil buffers independently.
   */
  @available(iOS 9.0, *)
  func setStencilFrontReferenceValue(frontReferenceValue: UInt32, backReferenceValue: UInt32)

  /*!
   @method setVisibilityResultMode:offset:
   @abstract Monitor if samples pass the depth and stencil tests.
   @param mode Controls if the counter is disabled or moniters passing samples.
   @param offset The offset relative to the occlusion query buffer provided when the command encoder was created.  offset must be a multiple of 8.
   */
  func setVisibilityResultMode(mode: MTLVisibilityResultMode, offset: Int)

  /*!
   @method drawPrimitives:vertexStart:vertexCount:instanceCount:
   @brief Draw primitives without an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param vertexStart For each instance, the first index to draw
   @param vertexCount For each instance, the number of indexes to draw
   @param instanceCount The number of instances drawn.
   */
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int)

  /*!
   @method drawPrimitives:vertexStart:vertexCount:instanceCount:
   @brief Draw primitives without an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param vertexStart For each instance, the first index to draw
   @param vertexCount For each instance, the number of indexes to draw
   */
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int)

  /*!
   @method drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:
   @brief Draw primitives with an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param indexCount The number of indexes to read from the index buffer for each instance.
   @param indexType The type if indexes, either 16 bit integer or 32 bit integer.
   @param indexBuffer A buffer object that the device will read indexes from.
   @param indexBufferOffset Byte offset within @a indexBuffer to start reading indexes from.  @a indexBufferOffset must be a multiple of the index size.
   @param instanceCount The number of instances drawn.
   */
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int)

  /*!
   @method drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:
   @brief Draw primitives with an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param indexCount The number of indexes to read from the index buffer for each instance.
   @param indexType The type if indexes, either 16 bit integer or 32 bit integer.
   @param indexBuffer A buffer object that the device will read indexes from.
   @param indexBufferOffset Byte offset within @a indexBuffer to start reading indexes from.  @a indexBufferOffset must be a multiple of the index size.
   */
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int)

  /*!
   @method drawPrimitives:vertexStart:vertexCount:instanceCount:
   @brief Draw primitives without an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param vertexStart For each instance, the first index to draw
   @param vertexCount For each instance, the number of indexes to draw
   @param instanceCount The number of instances drawn.
   @param baseInstance Offset for instance_id.
   */
  @available(iOS 9.0, *)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int, baseInstance: Int)

  /*!
   @method drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:
   @brief Draw primitives with an index list.
   @param primitiveType The type of primitives that elements are assembled into.
   @param indexCount The number of indexes to read from the index buffer for each instance.
   @param indexType The type if indexes, either 16 bit integer or 32 bit integer.
   @param indexBuffer A buffer object that the device will read indexes from.
   @param indexBufferOffset Byte offset within @a indexBuffer to start reading indexes from.  @a indexBufferOffset must be a multiple of the index size.
   @param instanceCount The number of instances drawn.
   @param baseVertex Offset for vertex_id. NOTE: this can be negative
   @param baseInstance Offset for instance_id.
   */
  @available(iOS 9.0, *)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int, baseVertex: Int, baseInstance: Int)

  /*!
   @method drawPrimitives:indirectBuffer:indirectBufferOffset:
   @brief Draw primitives without an index list using an indirect buffer see MTLDrawPrimitivesIndirectArguments.
   @param primitiveType The type of primitives that elements are assembled into.
   @param indirectBuffer A buffer object that the device will read drawPrimitives arguments from, see MTLDrawPrimitivesIndirectArguments.
   @param indirectBufferOffset Byte offset within @a indirectBuffer to start reading indexes from.  @a indirectBufferOffset must be a multiple of 4.
   */
  @available(iOS 9.0, *)
  func drawPrimitives(primitiveType: MTLPrimitiveType, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)

  /*!
   @method drawIndexedPrimitives:indexType:indexBuffer:indexBufferOffset:indirectBuffer:indirectBufferOffset:
   @brief Draw primitives with an index list using an indirect buffer see MTLDrawIndexedPrimitivesIndirectArguments.
   @param primitiveType The type of primitives that elements are assembled into.
   @param indexType The type if indexes, either 16 bit integer or 32 bit integer.
   @param indexBuffer A buffer object that the device will read indexes from.
   @param indexBufferOffset Byte offset within @a indexBuffer to start reading indexes from.  @a indexBufferOffset must be a multiple of the index size.
   @param indirectBuffer A buffer object that the device will read drawIndexedPrimitives arguments from, see MTLDrawIndexedPrimitivesIndirectArguments.
   @param indirectBufferOffset Byte offset within @a indirectBuffer to start reading indexes from.  @a indirectBufferOffset must be a multiple of 4.
   */
  @available(iOS 9.0, *)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
}
@available(iOS 8.0, *)
enum MTLLoadAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Load
  case Clear
}
@available(iOS 8.0, *)
enum MTLStoreAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DontCare
  case Store
  case MultisampleResolve
}
struct MTLClearColor {
  var red: Double
  var green: Double
  var blue: Double
  var alpha: Double
  init()
  init(red: Double, green: Double, blue: Double, alpha: Double)
}
@available(iOS 8.0, *)
class MTLRenderPassAttachmentDescriptor : NSObject, NSCopying {

  /*!
   @property texture
   @abstract The MTLTexture object for this attachment.
   */
  var texture: MTLTexture?

  /*!
   @property level
   @abstract The mipmap level of the texture to be used for rendering.  Default is zero.
   */
  var level: Int

  /*!
   @property slice
   @abstract The slice of the texture to be used for rendering.  Default is zero.
   */
  var slice: Int

  /*!
   @property depthPlane
   @abstract The depth plane of the texture to be used for rendering.  Default is zero.
   */
  var depthPlane: Int

  /*!
   @property resolveTexture
   @abstract The texture used for multisample resolve operations.  Only used (and required)
   if the store action is set to MTLStoreActionMultisampleResolve.
   */
  var resolveTexture: MTLTexture?

  /*!
   @property resolveLevel
   @abstract The mipmap level of the resolve texture to be used for multisample resolve.  Defaults to zero.
   */
  var resolveLevel: Int

  /*!
   @property resolveLevel
   @abstract The texture slice of the resolve texture to be used for multisample resolve.  Defaults to zero.
   */
  var resolveSlice: Int

  /*!
   @property resolveDepthPlane
   @abstract The texture depth plane of the resolve texture to be used for multisample resolve.  Defaults to zero.
   */
  var resolveDepthPlane: Int

  /*!
   @property loadAction
   @abstract The action to be performed with this attachment at the beginning of a render pass.  Default is
   MTLLoadActionDontCare unless specified by a creation or init method.
   */
  var loadAction: MTLLoadAction

  /*!
   @property storeAction
   @abstract The action to be performed with this attachment at the end of a render pass.  Default is
   MTLStoreActionDontCare unless specified by a creation or init method.
   */
  var storeAction: MTLStoreAction
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {

  /*!
   @property clearColor
   @abstract The clear color to be used if the loadAction property is MTLLoadActionClear
   */
  var clearColor: MTLClearColor
  init()
}

/*!
 @enum MTLMultisampleDepthResolveFilter
 @abstract Controls the MSAA depth resolve operation. Supported on iOS GPU Family 3 and later.
 */
@available(iOS 9.0, *)
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Sample0
  case Min
  case Max
}
@available(iOS 8.0, *)
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {

  /*!
   @property clearDepth
   @abstract The clear depth value to be used if the loadAction property is MTLLoadActionClear
   */
  var clearDepth: Double

  /*!
   @property resolveFilter
   @abstract The filter to be used for depth multisample resolve.  Defaults to MTLMultisampleDepthResolveFilterSample0.
   */
  @available(iOS 9.0, *)
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
  init()
}
@available(iOS 8.0, *)
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {

  /*!
   @property clearStencil
   @abstract The clear stencil value to be used if the loadAction property is MTLLoadActionClear
   */
  var clearStencil: UInt32
  init()
}
@available(iOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptorArray : NSObject {
  subscript (attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
  init()
}

/*!
 @class MTLRenderPassDescriptor
 @abstract MTLRenderPassDescriptor represents a collection of attachments to be used to create a concrete render command encoder
 */
@available(iOS 8.0, *)
class MTLRenderPassDescriptor : NSObject, NSCopying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!

  /*!
   @property visibilityResultBuffer:
   @abstract Buffer into which samples passing the depth and stencil tests are counted.
   */
  var visibilityResultBuffer: MTLBuffer?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
func MTLClearColorMake(red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> MTLClearColor
@available(iOS 8.0, *)
enum MTLBlendFactor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Zero
  case One
  case SourceColor
  case OneMinusSourceColor
  case SourceAlpha
  case OneMinusSourceAlpha
  case DestinationColor
  case OneMinusDestinationColor
  case DestinationAlpha
  case OneMinusDestinationAlpha
  case SourceAlphaSaturated
  case BlendColor
  case OneMinusBlendColor
  case BlendAlpha
  case OneMinusBlendAlpha
}
@available(iOS 8.0, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Add
  case Subtract
  case ReverseSubtract
  case Min
  case Max
}
@available(iOS 8.0, *)
struct MTLColorWriteMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLColorWriteMask { get }
  static var Red: MTLColorWriteMask { get }
  static var Green: MTLColorWriteMask { get }
  static var Blue: MTLColorWriteMask { get }
  static var Alpha: MTLColorWriteMask { get }
  static var All: MTLColorWriteMask { get }
}
@available(iOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptor : NSObject, NSCopying {

  /*! Pixel format.  Defaults to MTLPixelFormatInvalid */
  var pixelFormat: MTLPixelFormat

  /*! Enable blending.  Defaults to NO. */
  var isBlendingEnabled: Bool

  /*! Defaults to MTLBlendFactorOne */
  var sourceRGBBlendFactor: MTLBlendFactor

  /*! Defaults to MTLBlendFactorZero */
  var destinationRGBBlendFactor: MTLBlendFactor

  /*! Defaults to MTLBlendOperationAdd */
  var rgbBlendOperation: MTLBlendOperation

  /*! Defaults to MTLBlendFactorOne */
  var sourceAlphaBlendFactor: MTLBlendFactor

  /*! Defaults to MTLBlendFactorZero */
  var destinationAlphaBlendFactor: MTLBlendFactor

  /*! Defaults to MTLBlendOperationAdd */
  var alphaBlendOperation: MTLBlendOperation

  /*! Defaults to MTLColorWriteMaskAll */
  var writeMask: MTLColorWriteMask
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  init()
}
@available(iOS 8.0, *)
class MTLRenderPipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var vertexFunction: MTLFunction?
  var fragmentFunction: MTLFunction?
  @NSCopying var vertexDescriptor: MTLVertexDescriptor?
  var sampleCount: Int
  var isAlphaToCoverageEnabled: Bool
  var isAlphaToOneEnabled: Bool
  var isRasterizationEnabled: Bool
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat

  /*!
   @method reset
   @abstract Restore all pipeline descriptor properties to their default values.
   */
  func reset()
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @protocol MTLRenderPipelineState
 @abstract MTLRenderPipelineState represents a compiled render pipeline
 
 @discussion MTLRenderPipelineState is a compiled render pipeline and can be set on a MTLRenderCommandEncoder.
 */
@available(iOS 8.0, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
@available(iOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript (attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
  init()
}

/*!
 @enum MTLPurgeableOption
 @abstract Options for setPurgeable call.
 
 @constant MTLPurgeableStateNonVolatile
 The contents of this resource may not be discarded.

 @constant MTLPurgeableStateNoVolatile
 The contents of this resource may be discarded.

 @constant MTLPurgeableStateEmpty
 The contents of this are discarded.
 
 @constant MTLPurgeableStateKeepCurrent
 The purgeabelity state is not changed.
 */
@available(iOS 8.0, *)
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case KeepCurrent
  case NonVolatile
  case Volatile
  case Empty
}

/*!
 @enum MTLCPUCacheMode
 @abstract Describes what CPU cache mode is used for the CPU's mapping of a resource.
 @constant MTLCPUCacheModeDefaultCache
 The default cache mode for the system.
 
 @constant MTLCPUCacheModeWriteCombined
 Write combined memory is optimized for resources that the CPU will write into, but never read.  On some implementations, writes may bypass caches avoiding cache pollution, and reads perform very poorly.
 
 @discussion
 Applications should only investigate changing the cache mode if writing to normally cached buffers is known to cause performance issues due to cache pollution, as write combined memory can have surprising performance pitfalls.  Another approach is to use non-temporal stores to normally cached memory (STNP on ARMv8, _mm_stream_* on x86_64).
 */
@available(iOS 8.0, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case DefaultCache
  case WriteCombined
}

/*!
 @enum MTLStorageMode
 @abstract Describes location and CPU mapping of MTLResource (MTLTexture or MTLBuffer).
 @constant MTLStorageModeShared
 In this mode, CPU and device will nominally both use the same underlying memory when accessing the contents of the resource.
 However, coherency is only guaranteed at command buffer boundaries to minimize the required flushing of CPU and GPU caches.
 This is the default storage mode for iOS Textures.

 @constant MTLStorageModeManaged
 This mode relaxes the coherency requirements and requires that the developer make explicit requests to maintain
 coherency between a CPU and GPU version of the resource.  Changes due to CPU stores outside of the Metal API must be
 indicated to Metal via MTLBuffer::didModifyRange:(NSRange)range.  In order for CPU to access up to date GPU results,
 first, a blit synchronizations must be completed (see synchronize methods of MTLBlitCommandEncoder).
 Blit overhead is only incurred if GPU has modified the resource.
 This is the default storage mode for OS X Textures.

 @constant MTLStorageModePrivate
 This mode allows the data to be kept entirely to GPU (or driver) private memory that will never be accessed by the CPU directly, so no
 conherency of any kind must be maintained.
*/
@available(iOS 9.0, *)
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Shared
  case Private
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceStorageModeShift: Int32 { get }
@available(iOS 8.0, *)
struct MTLResourceOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var CPUCacheModeDefaultCache: MTLResourceOptions { get }
  static var CPUCacheModeWriteCombined: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var StorageModeShared: MTLResourceOptions { get }
  @available(iOS 9.0, *)
  static var StorageModePrivate: MTLResourceOptions { get }
  static var OptionCPUCacheModeDefault: MTLResourceOptions { get }
  static var OptionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}

/*!
 @protocol MTLResource
 @abstract Common APIs available for MTLBuffer and MTLTexture instances
 */
@available(iOS 8.0, *)
protocol MTLResource : NSObjectProtocol {

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get set }

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }

  /*!
   @property cpuCacheMode
   @abstract The cache mode used for the CPU mapping for this resource
   */
  var cpuCacheMode: MTLCPUCacheMode { get }

  /*!
   @property storageMode
   @abstract The resource storage mode used for the CPU mapping for this resource
   */
  @available(iOS 9.0, *)
  var storageMode: MTLStorageMode { get }

  /*!
   @method setPurgeableState
   @abstract Set (or query) the purgeability state of a resource
   @discussion Synchronously set the purgeability state of a resource and return what the prior (or current) state is.
   FIXME: If the device is keeping a cached copy of the resource, both the shared copy and cached copy are made purgeable.  Any access to the resource by either the CPU or device will be undefined.
   */
  func setPurgeableState(state: MTLPurgeableState) -> MTLPurgeableState
}

/*!
 @enum MTLSamplerMinMagFilter
 @abstract Options for filtering texels within a mip level.
 
 @constant MTLSamplerMinMagFilterNearest
 Select the single texel nearest to the sample point.
 
 @constant MTLSamplerMinMagFilterLinear
 Select two texels in each dimension, and interpolate linearly between them.  Not all devices support linear filtering for all formats.  Integer textures can not use linear filtering on any device, and only some devices support linear filtering of Float textures.
 */
@available(iOS 8.0, *)
enum MTLSamplerMinMagFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}

/*!
 @enum MTLSamplerMipFilter
 @abstract Options for selecting and filtering between mipmap levels
 @constant MTLSamplerMipFilterNotMipmapped The texture is sampled as if it only had a single mipmap level.  All samples are read from level 0.
 @constant MTLSamplerMipFilterNearest The nearst mipmap level is selected.
 @constant MTLSamplerMipFilterLinear If the filter falls between levels, both levels are sampled, and their results linearly interpolated between levels.
 */
@available(iOS 8.0, *)
enum MTLSamplerMipFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NotMipmapped
  case Nearest
  case Linear
}

/*!
 @enum MTLSamplerAddressMode
 @abstract Options for what value is returned when a fetch falls outside the bounds of a texture.
 
 @constant MTLSamplerAddressModeClampToEdge
 Texture coordinates will be clamped between 0 and 1.

 @constant MTLSamplerAddressModeMirrorClampToEdge
 Mirror the texture while coordinates are within -1..1, and clamp to edge when outside.

 @constant MTLSamplerAddressModeRepeat
 Wrap to the other side of the texture, effectively ignoring fractional parts of the texture coordinate.
 
 @constant MTLSamplerAddressModeMirrorRepeat
 Between -1 and 1 the texture is mirrored across the 0 axis.  The image is repeated outside of that range.
 
 @constant MTLSamplerAddressModeClampToZero
 ClampToZero returns transparent zero (0,0,0,0) for images with an alpha channel, and returns opaque zero (0,0,0,1) for images without an alpha channel.
 */
@available(iOS 8.0, *)
enum MTLSamplerAddressMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ClampToEdge
  case Repeat
  case MirrorRepeat
  case ClampToZero
}

/*!
 @class MTLSamplerDescriptor
 @abstract A mutable descriptor used to configure a sampler.  When complete, this can be used to create an immutable MTLSamplerState.
 */
@available(iOS 8.0, *)
class MTLSamplerDescriptor : NSObject, NSCopying {

  /*!
   @property minFilter
   @abstract Filter option for combining texels within a mipmap level the sample footprint is larger than a pixel (minification).
   @discussion The default value is MTLSamplerMinMagFilterNearest.
   */
  var minFilter: MTLSamplerMinMagFilter

  /*!
   @property magFilter
   @abstract Filter option for combining texels within a mipmap level the sample footprint is smaller than a pixel (magnification).
   @discussion The default value is MTLSamplerMinMagFilterNearest.
   */
  var magFilter: MTLSamplerMinMagFilter

  /*!
   @property mipFilter
   @abstract Filter options for filtering between two mipmap levels.
   @discussion The default value is MTLSamplerMipFilterNotMipmapped
   */
  var mipFilter: MTLSamplerMipFilter

  /*!
   @property maxAnisotropy
   @abstract The number of samples that can be taken to improve quality of sample footprints that are anisotropic.
   @discussion The default value is 1.
   */
  var maxAnisotropy: Int

  /*!
   @property sAddressMode
   @abstract Set the wrap mode for the S texture coordinate.  The default value is MTLSamplerAddressModeClampToEdge.
   */
  var sAddressMode: MTLSamplerAddressMode

  /*!
   @property tAddressMode
   @abstract Set the wrap mode for the T texture coordinate.  The default value is MTLSamplerAddressModeClampToEdge.
   */
  var tAddressMode: MTLSamplerAddressMode

  /*!
   @property rAddressMode
   @abstract Set the wrap mode for the R texture coordinate.  The default value is MTLSamplerAddressModeClampToEdge.
   */
  var rAddressMode: MTLSamplerAddressMode

  /*!
   @property normalizedCoordinates.
   @abstract If YES, texture coordates are from 0 to 1.  If NO, texture coordinates are 0..width, 0..height.
   @discussion normalizedCoordinates defaults to YES.  Non-normalized coordinates should only be used with 1D and 2D textures with the ClampToEdge wrap mode, otherwise the results of sampling are undefined.
   */
  var normalizedCoordinates: Bool

  /*!
   @property lodMinClamp
   @abstract The minimum level of detail that will be used when sampling from a texture.
   @discussion The default value of lodMinClamp is 0.0.  Clamp values are ignored for texture sample variants that specify an explicit level of detail.
   */
  var lodMinClamp: Float

  /*!
   @property lodMaxClamp
   @abstract The maximum level of detail that will be used when sampling from a texture.
   @discussion The default value of lodMaxClamp is FLT_MAX.  Clamp values are ignored for texture sample variants that specify an explicit level of detail.
   */
  var lodMaxClamp: Float

  /*!
   @property lodAverage
   @abstract If YES, an average level of detail will be used when sampling from a texture. If NO, no averaging is performed.
   @discussion lodAverage defaults to NO. This option is a performance hint. An implementation is free to ignore this property.
   */
  @available(iOS 9.0, *)
  var isLodAverage: Bool

  /*!
   @property compareFunction
   @abstract Set the comparison function used when sampling shadow maps. The default value is MTLCompareFunctionNever.
   */
  @available(iOS 9.0, *)
  var compareFunction: MTLCompareFunction

  /*!
   @property label
   @abstract A string to help identify the created object.
   */
  var label: String?
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @protocol MTLSamplerState
 @abstract An immutable collection of sampler state compiled for a single device.
 */
@available(iOS 8.0, *)
protocol MTLSamplerState : NSObjectProtocol {

  /*!
   @property label
   @abstract A string to help identify this object.
   */
  var label: String? { get }

  /*!
   @property device
   @abstract The device this resource was created against.  This resource can only be used with this device.
   */
  var device: MTLDevice { get }
}

/*!
 @enum MTLTextureType
 @abstract MTLTextureType describes the dimensionality of each image, and if multiple images are arranged into an array or cube.
 */
@available(iOS 8.0, *)
enum MTLTextureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Type1D
  case Type1DArray
  case Type2D
  case Type2DArray
  case Type2DMultisample
  case TypeCube
  case Type3D
}

/*!
 @enum MTLTextureUsage
 @abstract MTLTextureUsage declares how the texture will be used over its lifetime (bitwise OR for multiple uses).
 @discussion This information may be used by the driver to make optimization decisions.
*/
@available(iOS 9.0, *)
struct MTLTextureUsage : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MTLTextureUsage { get }
  static var ShaderRead: MTLTextureUsage { get }
  static var ShaderWrite: MTLTextureUsage { get }
  static var RenderTarget: MTLTextureUsage { get }
  static var PixelFormatView: MTLTextureUsage { get }
}

/*!
 @header MTLBuffer.h
 @discussion Header file for MTLBuffer
 */
@available(iOS 8.0, *)
class MTLTextureDescriptor : NSObject, NSCopying {

  /*!
   @method texture2DDescriptorWithPixelFormat:width:height:mipmapped:
   @abstract Create a TextureDescriptor for a common 2D texture.
   */
  class func texture2DDescriptorWith(pixelFormat: MTLPixelFormat, width: Int, height: Int, mipmapped: Bool) -> MTLTextureDescriptor

  /*!
   @method textureCubeDescriptorWithPixelFormat:size:mipmapped:
   @abstract Create a TextureDescriptor for a common Cube texture.
   */
  class func textureCubeDescriptorWith(pixelFormat: MTLPixelFormat, size: Int, mipmapped: Bool) -> MTLTextureDescriptor

  /*!
   @property type
   @abstract The overall type of the texture to be created. The default value is MTLTextureType2D.
   */
  var textureType: MTLTextureType

  /*!
   @property pixelFormat
   @abstract The pixel format to use when allocating this texture. This is also the pixel format that will be used to when the caller writes or reads pixels from this texture. The default value is MTLPixelFormatRGBA8Unorm.
   */
  var pixelFormat: MTLPixelFormat

  /*!
   @property width
   @abstract The width of the texture to create. The default value is 1.
   */
  var width: Int

  /*!
   @property height
   @abstract The height of the texture to create. The default value is 1.
   @discussion height If allocating a 1D texture, height must be 1.
   */
  var height: Int

  /*!
   @property depth
   @abstract The depth of the texture to create. The default value is 1.
   @discussion depth When allocating any texture types other than 3D, depth must be 1.
   */
  var depth: Int

  /*!
   @property mipmapLevelCount
   @abstract The number of mipmap levels to allocate. The default value is 1.
   @discussion When creating Buffer and Multisample textures, mipmapLevelCount must be 1.
   */
  var mipmapLevelCount: Int

  /*!
   @property sampleCount
   @abstract The number of samples in the texture to create. The default value is 1.
   @discussion When creating Buffer and Array textures, sampleCount must be 1. Implementations may round sample counts up to the next supported value.
   */
  var sampleCount: Int

  /*!
   @property arrayLength
   @abstract The number of array elements to allocate. The default value is 1.
   @discussion When allocating any non-Array texture type, arrayLength has to be 1. Otherwise it must be set to something greater than 1 and less than 2048.
   */
  var arrayLength: Int

  /*!
   @property resourceOptions
   @abstract Options to control memory allocation parameters, etc.
   */
  var resourceOptions: MTLResourceOptions

  /*!
   @property cpuCacheMode
   @abstract Options to specify CPU cache mode of texture resource.
   */
  @available(iOS 9.0, *)
  var cpuCacheMode: MTLCPUCacheMode

  /*!
   @property storageMode
   @abstract To specify storage mode of texture resource.
   */
  @available(iOS 9.0, *)
  var storageMode: MTLStorageMode

  /*!
   @property usage
   @abstract Description of texture usage
   */
  @available(iOS 9.0, *)
  var usage: MTLTextureUsage
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
 @protocol MTLTexture
 @abstract MTLTexture represents a collection of 1D, 2D, or 3D images.
 @discussion
 Each image in a texture is a 1D, 2D, 2DMultisample, or 3D image. The texture contains one or more images arranged in a mipmap stack. If there are multiple mipmap stacks, each one is referred to as a slice of the texture. 1D, 2D, 2DMultisample, and 3D textures have a single slice. In 1DArray and 2DArray textures, every slice is an array element. A Cube texture always has 6 slices, one for each face. In a CubeArray texture, each set of six slices is one element in the array.
 
 Most APIs that operate on individual images in a texture address those images via a tuple of a Slice, and Mipmap Level within that slice.
 */
@available(iOS 8.0, *)
protocol MTLTexture : MTLResource {

  /*!
   @property rootResource
   @abstract The resource this texture was created from. It may be a texture or a buffer. If this texture is not reusing storage of another MTLResource, then nil is returned.
   */
  var rootResource: MTLResource? { get }

  /*!
   @property parentTexture
   @abstract The texture this texture view was created from, or nil if this is not a texture view or it was not created from a texture.
   */
  @available(iOS 9.0, *)
  var parentTexture: MTLTexture? { get }

  /*!
   @property parentRelativeLevel
   @abstract The base level of the texture this texture view was created from, or 0 if this is not a texture view.
   */
  @available(iOS 9.0, *)
  var parentRelativeLevel: Int { get }

  /*!
   @property parentRelativeSlice
   @abstract The base slice of the texture this texture view was created from, or 0 if this is not a texture view.
   */
  @available(iOS 9.0, *)
  var parentRelativeSlice: Int { get }

  /*!
   @property buffer
   @abstract The buffer this texture view was created from, or nil if this is not a texture view or it was not created from a buffer.
   */
  @available(iOS 9.0, *)
  var buffer: MTLBuffer? { get }

  /*!
   @property bufferOffset
   @abstract The offset of the buffer this texture view was created from, or 0 if this is not a texture view.
   */
  @available(iOS 9.0, *)
  var bufferOffset: Int { get }

  /*!
   @property bufferBytesPerRow
   @abstract The bytesPerRow of the buffer this texture view was created from, or 0 if this is not a texture view.
   */
  @available(iOS 9.0, *)
  var bufferBytesPerRow: Int { get }

  /*!
   @property type
   @abstract The type of this texture.
   */
  var textureType: MTLTextureType { get }

  /*!
   @property pixelFormat
   @abstract The MTLPixelFormat that is used to interpret this texture's contents.
   */
  var pixelFormat: MTLPixelFormat { get }

  /*!
   @property width
   @abstract The width of the MTLTexture instance in pixels.
   */
  var width: Int { get }

  /*!
   @property height
   @abstract The height of the MTLTexture instance in pixels.
   @discussion. height is 1 if the texture is 1D.
   */
  var height: Int { get }

  /*!
   @property depth
   @abstract The depth of this MTLTexture instance in pixels.
   @discussion If this MTLTexture is not a 3D texture, the depth is 1
   */
  var depth: Int { get }

  /*!
   @property mipmapLevelCount
   @abstract The number of mipmap levels in each slice of this MTLTexture.
   */
  var mipmapLevelCount: Int { get }

  /*!
   @property sampleCount
   @abstract The number of samples in each pixel of this MTLTexture.
   @discussion If this texture is any type other than 2DMultisample, samples is 1.
   */
  var sampleCount: Int { get }

  /*!
   @property arrayLength
   @abstract The number of array elements in this MTLTexture.
   @discussion For non-Array texture types, arrayLength is 1.
   */
  var arrayLength: Int { get }

  /*!
   @property usage
   @abstract Description of texture usage.
   */
  var usage: MTLTextureUsage { get }

  /*!
   @property framebufferOnly
   @abstract If YES, this texture can only be used with a MTLAttachmentDescriptor, and cannot be used as a texture argument for MTLRenderCommandEncoder, MTLBlitCommandEncoder, or MTLComputeCommandEncoder. Furthermore, when this property's value is YES, readPixels/writePixels may not be used with this texture.
   @discussion Textures obtained from CAMetalDrawables may have this property set to YES, depending on the value of frameBufferOnly passed to their parent CAMetalLayer. Textures created directly by the application will not have any restrictions.
   */
  var framebufferOnly: Bool { get }

  /*!
   @method getBytes:bytesPerRow:bytesPerImage:fromRegion:mipmapLevel:slice:
   @abstract Copies a block of pixels from a texture slice into the application's memory.
   */
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, bytesPerImage: Int, from region: MTLRegion, mipmapLevel level: Int, slice: Int)

  /*!
   @method replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage:
   @abstract Copy a block of pixel data from the caller's pointer into a texture slice.
   */
  func replace(region: MTLRegion, mipmapLevel level: Int, slice: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int, bytesPerImage: Int)

  /*!
   @method getBytes:bytesPerRow:fromRegion:mipmapLevel:
   @abstract Convenience for getBytes:bytesPerRow:bytesPerImage:fromRegion:mipmapLevel:slice: that doesn't require slice related arguments
   */
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, from region: MTLRegion, mipmapLevel level: Int)

  /*!
   @method replaceRegion:mipmapLevel:withBytes:bytesPerRow:
   @abstract Convenience for replaceRegion:mipmapLevel:slice:withBytes:bytesPerRow:bytesPerImage: that doesn't require slice related arguments
   */
  func replace(region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int)

  /*!
   @method newTextureViewWithPixelFormat:
   @abstract Create a new texture which shares the same storage as the source texture, but with a different (but compatible) pixel format.
   */
  func newTextureViewWith(pixelFormat: MTLPixelFormat) -> MTLTexture

  /*!
   @method newTextureViewWithPixelFormat:textureType:levels:slices:
   @abstract Create a new texture which shares the same storage as the source texture, but with a different (but compatible) pixel format, texture type, levels and slices.
   */
  func newTextureViewWith(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture
}

/*!
 @struct MTLOrigin
 @abstract Identify a pixel in an image. MTLOrigin is ususally used as the upper-left corner of a region of a texture.
 */
struct MTLOrigin {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
func MTLOriginMake(x: Int, _ y: Int, _ z: Int) -> MTLOrigin

/*!
 @typedef MTLSize
 @abstract A set of dimensions to declare the size of an object such as a compute kernel work group or grid.
 */
struct MTLSize {
  var width: Int
  var height: Int
  var depth: Int
  init()
  init(width: Int, height: Int, depth: Int)
}
func MTLSizeMake(width: Int, _ height: Int, _ depth: Int) -> MTLSize

/*!
 @struct MTLRegion
 @abstract Identify a region in an image or texture.
 */
struct MTLRegion {
  var origin: MTLOrigin
  var size: MTLSize
  init()
  init(origin: MTLOrigin, size: MTLSize)
}
func MTLRegionMake1D(x: Int, _ width: Int) -> MTLRegion
func MTLRegionMake2D(x: Int, _ y: Int, _ width: Int, _ height: Int) -> MTLRegion
func MTLRegionMake3D(x: Int, _ y: Int, _ z: Int, _ width: Int, _ height: Int, _ depth: Int) -> MTLRegion
@available(iOS 8.0, *)
enum MTLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UChar2
  case UChar3
  case UChar4
  case Char2
  case Char3
  case Char4
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort2
  case UShort3
  case UShort4
  case Short2
  case Short3
  case Short4
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int1010102Normalized
  case UInt1010102Normalized
}
@available(iOS 8.0, *)
enum MTLVertexStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Constant
  case PerVertex
  case PerInstance
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptor : NSObject, NSCopying {
  var stride: Int
  var stepFunction: MTLVertexStepFunction
  var stepRate: Int
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptorArray : NSObject {
  subscript (index: Int) -> MTLVertexBufferLayoutDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptor : NSObject, NSCopying {
  var format: MTLVertexFormat
  var offset: Int
  var bufferIndex: Int
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptorArray : NSObject {
  subscript (index: Int) -> MTLVertexAttributeDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexDescriptor : NSObject, NSCopying {
  var layouts: MTLVertexBufferLayoutDescriptorArray { get }
  var attributes: MTLVertexAttributeDescriptorArray { get }
  func reset()
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
}
