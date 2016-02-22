
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
@available(iOS 8.0, *)
struct MTLPipelineOption : OptionSetType {
  init(rawValue: UInt)
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
@available(iOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String? { get }
  @available(iOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueue(withMaxCommandBufferCount maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBuffer(withLength length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBuffer(withBytes pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBuffer(withBytesNoCopy pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer
  func newDepthStencilState(with descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTexture(with descriptor: MTLTextureDescriptor) -> MTLTexture
  func newSamplerState(with descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibrary(withFile filepath: String) throws -> MTLLibrary
  func newLibrary(with data: dispatch_data_t) throws -> MTLLibrary
  func newLibrary(withSource source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibrary(withSource source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineState(with descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineState(with computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineState(with computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineState(with computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineState(with computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(iOS 9.0, *)
  func newComputePipelineState(with descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(iOS 9.0, *)
  func newComputePipelineState(with descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  @available(iOS 9.0, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
