
@available(OSX 10.11, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(OSX 10.11, *)
func MTLCopyAllDevices() -> [MTLDevice]
@available(OSX 10.11, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(OSX 10.11, *)
  case osx_GPUFamily1_v1
}
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
protocol MTLDevice : ObjectProtocol {
  var name: String? { get }
  @available(OSX 10.11, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  @available(OSX 10.11, *)
  var isLowPower: Bool { get }
  @available(OSX 10.11, *)
  var isHeadless: Bool { get }
  @available(OSX 10.11, *)
  var isDepth24Stencil8PixelFormatSupported: Bool { get }
  func newCommandQueue() -> MTLCommandQueue
  func newCommandQueueWithMaxCommandBufferCount(maxCommandBufferCount: Int) -> MTLCommandQueue
  func newBufferWith(length length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBufferWith(bytes pointer: UnsafePointer<Void>, length: Int, options: MTLResourceOptions = []) -> MTLBuffer
  func newBufferWithBytesNoCopy(pointer: UnsafeMutablePointer<Void>, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutablePointer<Void>, Int) -> Void)? = nil) -> MTLBuffer
  func newDepthStencilStateWith(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState
  func newTextureWith(descriptor: MTLTextureDescriptor) -> MTLTexture
  @available(OSX 10.11, *)
  func newTextureWith(descriptor: MTLTextureDescriptor, iosurface: IOSurface, plane: Int) -> MTLTexture
  func newSamplerStateWith(descriptor: MTLSamplerDescriptor) -> MTLSamplerState
  func newDefaultLibrary() -> MTLLibrary?
  func newLibraryWith(file filepath: String) throws -> MTLLibrary
  func newLibraryWith(data: dispatch_data_t) throws -> MTLLibrary
  func newLibraryWith(source source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func newLibraryWith(source source: String, options: MTLCompileOptions?, completionHandler: MTLNewLibraryCompletionHandler)
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>) throws -> MTLRenderPipelineState
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, completionHandler: MTLNewRenderPipelineStateCompletionHandler)
  func newRenderPipelineStateWith(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func newComputePipelineStateWith(computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  func newComputePipelineStateWith(computeFunction: MTLFunction, completionHandler: MTLNewComputePipelineStateCompletionHandler)
  func newComputePipelineStateWith(computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(OSX 10.11, *)
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>) throws -> MTLComputePipelineState
  @available(OSX 10.11, *)
  func newComputePipelineStateWith(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func supportsFeatureSet(featureSet: MTLFeatureSet) -> Bool
  @available(OSX 10.11, *)
  func supportsTextureSampleCount(sampleCount: Int) -> Bool
}
