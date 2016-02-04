
@available(OSX 10.11, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(OSX 10.11, *)
func MTLCopyAllDevices() -> [MTLDevice]
@available(OSX 10.11, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(OSX 10.11, *)
  case OSX_GPUFamily1_v1
}
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String? { get }
  @available(OSX 10.11, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  @available(OSX 10.11, *)
  var lowPower: Bool { get }
  @available(OSX 10.11, *)
  var headless: Bool { get }
  @available(OSX 10.11, *)
  var depth24Stencil8PixelFormatSupported: Bool { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBufferWithLength(length: Int, options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytes(pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions) -> MTLBuffer
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions, deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)?) -> MTLBuffer
  func newDepthStencilStateWithDescriptor(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTextureWithDescriptor(descriptor: MTLTextureDescriptor) -> MTLTexture
  @available(OSX 10.11, *)
  func newTextureWithDescriptor(descriptor: MTLTextureDescriptor, iosurface: IOSurface, plane: Int) -> MTLTexture
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
  @available(OSX 10.11, *)
  func newComputePipelineStateWithDescriptor(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(OSX 10.11, *)
  func newComputePipelineStateWithDescriptor(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  @available(OSX 10.11, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
