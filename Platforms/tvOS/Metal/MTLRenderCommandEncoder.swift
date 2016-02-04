
@available(tvOS 8.0, *)
enum MTLPrimitiveType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Point
  case Line
  case LineStrip
  case Triangle
  case TriangleStrip
}
@available(tvOS 8.0, *)
enum MTLIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case UInt16
  case UInt32
}
@available(tvOS 8.0, *)
enum MTLVisibilityResultMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Disabled
  case Boolean
  @available(tvOS 9.0, *)
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
@available(tvOS 8.0, *)
enum MTLCullMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Front
  case Back
}
@available(tvOS 8.0, *)
enum MTLWinding : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clockwise
  case CounterClockwise
}
@available(tvOS 9.0, *)
enum MTLDepthClipMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Clip
  case Clamp
}
@available(tvOS 8.0, *)
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
@available(tvOS 8.0, *)
protocol MTLRenderCommandEncoder : MTLCommandEncoder {
  func setRenderPipelineState(pipelineState: MTLRenderPipelineState)
  @available(tvOS 8.3, *)
  func setVertexBytes(bytes: UnsafePointer<Void>, length: Int, atIndex index: Int)
  func setVertexBuffer(buffer: MTLBuffer?, offset: Int, atIndex index: Int)
  @available(tvOS 8.3, *)
  func setVertexBufferOffset(offset: Int, atIndex index: Int)
  func setVertexBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setVertexTexture(texture: MTLTexture?, atIndex index: Int)
  func setVertexTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, atIndex index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, atIndex index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setViewport(viewport: MTLViewport)
  func setFrontFacingWinding(frontFacingWinding: MTLWinding)
  func setCullMode(cullMode: MTLCullMode)
  @available(tvOS 9.0, *)
  func setDepthClipMode(depthClipMode: MTLDepthClipMode)
  func setDepthBias(depthBias: Float, slopeScale: Float, clamp: Float)
  func setScissorRect(rect: MTLScissorRect)
  func setTriangleFillMode(fillMode: MTLTriangleFillMode)
  @available(tvOS 8.3, *)
  func setFragmentBytes(bytes: UnsafePointer<Void>, length: Int, atIndex index: Int)
  func setFragmentBuffer(buffer: MTLBuffer?, offset: Int, atIndex index: Int)
  @available(tvOS 8.3, *)
  func setFragmentBufferOffset(offset: Int, atIndex index: Int)
  func setFragmentBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets offset: UnsafePointer<Int>, withRange range: NSRange)
  func setFragmentTexture(texture: MTLTexture?, atIndex index: Int)
  func setFragmentTextures(textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, atIndex index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, atIndex index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setBlendColorRed(red: Float, green: Float, blue: Float, alpha: Float)
  func setDepthStencilState(depthStencilState: MTLDepthStencilState?)
  func setStencilReferenceValue(referenceValue: UInt32)
  @available(tvOS 9.0, *)
  func setStencilFrontReferenceValue(frontReferenceValue: UInt32, backReferenceValue: UInt32)
  func setVisibilityResultMode(mode: MTLVisibilityResultMode, offset: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int, baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int, baseVertex: Int, baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(primitiveType: MTLPrimitiveType, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(primitiveType: MTLPrimitiveType, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
}
