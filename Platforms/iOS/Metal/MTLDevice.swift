
@available(iOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(iOS 8.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue rawValue: UInt)
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
@available(iOS 8.0, *)
struct MTLPipelineOption : OptionSetType {
  init(rawValue rawValue: UInt)
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
@available(iOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String? { get }
  @available(iOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(_ maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBufferWithLength(_ length: Int, options options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytes(_ pointer: UnsafePointer<Void>, length length: Int, options options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytesNoCopy(_ pointer: UnsafeMutablePointer<Void>, length length: Int, options options: MTLResourceOptions, deallocator deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?) -> MTLBuffer
  func newDepthStencilStateWithDescriptor(_ descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTextureWithDescriptor(_ descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerStateWithDescriptor(_ descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibraryWithFile(_ filepath: String) throws -> MTLLibrary
  func newLibraryWithData(_ data: dispatch_data_t) throws -> MTLLibrary
  func newLibraryWithSource(_ source: String, options options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibraryWithSource(_ source: String, options options: MTLCompileOptions?, completionHandler completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineStateWithDescriptor(_ descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWithDescriptor(_ descriptor: MTLRenderPipelineDescriptor, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWithDescriptor(_ descriptor: MTLRenderPipelineDescriptor, completionHandler completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineStateWithDescriptor(_ descriptor: MTLRenderPipelineDescriptor, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineStateWithFunction(_ computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineStateWithFunction(_ computeFunction: MTLFunction, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineStateWithFunction(_ computeFunction: MTLFunction, completionHandler completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineStateWithFunction(_ computeFunction: MTLFunction, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(iOS 9.0, *)
  func newComputePipelineStateWithDescriptor(_ descriptor: MTLComputePipelineDescriptor, options options: MTLPipelineOption, reflection reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(iOS 9.0, *)
  func newComputePipelineStateWithDescriptor(_ descriptor: MTLComputePipelineDescriptor, options options: MTLPipelineOption, completionHandler completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool
  @available(iOS 9.0, *)
  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool
}
