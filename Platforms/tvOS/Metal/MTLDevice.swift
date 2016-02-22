
@available(tvOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(tvOS 9.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case tvos_GPUFamily1_v1
}
@available(tvOS 8.0, *)
struct MTLPipelineOption : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var none: MTLPipelineOption { get }
  static var argumentInfo: MTLPipelineOption { get }
  static var bufferTypeInfo: MTLPipelineOption { get }
}
typealias MTLAutoreleasedRenderPipelineReflection = MTLRenderPipelineReflection
typealias MTLAutoreleasedComputePipelineReflection = MTLComputePipelineReflection
typealias MTLNewLibraryCompletionHandler = (MTLLibrary?, NSError?) -> Void
typealias MTLNewRenderPipelineStateCompletionHandler = (MTLRenderPipelineState?, NSError?) -> Void
typealias MTLNewRenderPipelineStateWithReflectionCompletionHandler = (MTLRenderPipelineState?, MTLRenderPipelineReflection?, NSError?) -> Void
typealias MTLNewComputePipelineStateCompletionHandler = (MTLComputePipelineState?, NSError?) -> Void
typealias MTLNewComputePipelineStateWithReflectionCompletionHandler = (MTLComputePipelineState?, MTLComputePipelineReflection?, NSError?) -> Void
@available(tvOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String? { get }
  @available(tvOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueue(withMaxCommandBufferCount maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBuffer(withLength length: Int, options options: MTLResourceOptions = []) -> MTLBuffer
  func newBuffer(withBytes pointer: UnsafePointer<Void>, length length: Int, options options: MTLResourceOptions = []) -> MTLBuffer
  func newBuffer(withBytesNoCopy pointer: UnsafeMutablePointer<Void>, length length: Int, options options: MTLResourceOptions = [], deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer
  func newDepthStencilState(with descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTexture(with descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerState(with descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibrary(withFile filepath: String) throws -> MTLLibrary
  func newLibrary(with data: dispatch_data_t) throws -> MTLLibrary
  func newLibrary(withSource source: String, options options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibrary(withSource source: String, options options: MTLCompileOptions?, completionHandler completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, completionHandler completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineState(with computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineState(with computeFunction: MTLFunction, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineState(with computeFunction: MTLFunction, completionHandler completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineState(with computeFunction: MTLFunction, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(tvOS 9.0, *)
  func newComputePipelineState(with descriptor: MTLComputePipelineDescriptor, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(tvOS 9.0, *)
  func newComputePipelineState(with descriptor: MTLComputePipelineDescriptor, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool
  @available(tvOS 9.0, *)
  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool
}
