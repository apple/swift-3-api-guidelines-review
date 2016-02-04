
@available(tvOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(tvOS 9.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case TVOS_GPUFamily1_v1
}
@available(tvOS 8.0, *)
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
@available(tvOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String? { get }
  @available(tvOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBufferWithLength(length: Int, options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytes(pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?) -> MTLBuffer
  func newDepthStencilStateWithDescriptor(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTextureWithDescriptor(descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerStateWithDescriptor(descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibraryWithFile(filepath: String) throws -> MTLLibrary
  func newLibraryWithData(data: dispatch_data_t) throws -> MTLLibrary
  func newLibraryWithSource(source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibraryWithSource(source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineStateWithDescriptor(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWithDescriptor(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWithDescriptor(descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineStateWithDescriptor(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineStateWithFunction(computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineStateWithFunction(computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineStateWithFunction(computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineStateWithFunction(computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(tvOS 9.0, *)
  func newComputePipelineStateWithDescriptor(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(tvOS 9.0, *)
  func newComputePipelineStateWithDescriptor(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  @available(tvOS 9.0, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
