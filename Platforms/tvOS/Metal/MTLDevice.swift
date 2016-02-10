
@available(tvOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(tvOS 9.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case tvos_GPUFamily1_v1
}
@available(tvOS 8.0, *)
struct MTLPipelineOption : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: MTLPipelineOption { get }
  static var argumentInfo: MTLPipelineOption { get }
  static var bufferTypeInfo: MTLPipelineOption { get }
}
typealias MTLAutoreleasedRenderPipelineReflection = MTLRenderPipelineReflection
typealias MTLAutoreleasedComputePipelineReflection = MTLComputePipelineReflection
typealias MTLNewLibraryCompletionHandler = (MTLLibrary?, Error?) -> Void
typealias MTLNewRenderPipelineStateCompletionHandler = (MTLRenderPipelineState?, Error?) -> Void
typealias MTLNewRenderPipelineStateWithReflectionCompletionHandler = (MTLRenderPipelineState?, MTLRenderPipelineReflection?, Error?) -> Void
typealias MTLNewComputePipelineStateCompletionHandler = (MTLComputePipelineState?, Error?) -> Void
typealias MTLNewComputePipelineStateWithReflectionCompletionHandler = (MTLComputePipelineState?, MTLComputePipelineReflection?, Error?) -> Void
@available(tvOS 8.0, *)
protocol MTLDevice : ObjectProtocol {
  var name: String? { get }
  @available(tvOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBuffer(withLength length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBuffer(withBytes pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer
  func newDepthStencilState(withDescriptor descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTexture(withDescriptor descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerState(withDescriptor descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibrary(withFile filepath: String) throws -> MTLLibrary
  func newLibrary(withData data: dispatch_data_t) throws -> MTLLibrary
  func newLibrary(withSource source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibrary(withSource source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineState(withDescriptor descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineState(withDescriptor descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineState(withDescriptor descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineState(withDescriptor descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineState(withFunction computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineState(withFunction computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineState(withFunction computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineState(withFunction computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(tvOS 9.0, *)
  func newComputePipelineState(withDescriptor descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(tvOS 9.0, *)
  func newComputePipelineState(withDescriptor descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  @available(tvOS 9.0, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
