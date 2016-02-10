
@available(tvOS 8.0, *)
enum MTLPrimitiveType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case point
  case line
  case lineStrip
  case triangle
  case triangleStrip
}
@available(tvOS 8.0, *)
enum MTLIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case uInt16
  case uInt32
}
@available(tvOS 8.0, *)
enum MTLVisibilityResultMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case disabled
  case boolean
  @available(tvOS 9.0, *)
  case counting
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
  case none
  case front
  case back
}
@available(tvOS 8.0, *)
enum MTLWinding : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clockwise
  case counterClockwise
}
@available(tvOS 9.0, *)
enum MTLDepthClipMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clip
  case clamp
}
@available(tvOS 8.0, *)
enum MTLTriangleFillMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fill
  case lines
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
  func setVertexBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setVertexBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  @available(tvOS 8.3, *)
  func setVertexBufferOffset(offset: Int, at index: Int)
  func setVertexBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setVertexTexture(texture: MTLTexture?, at index: Int)
  func setVertexTextures(textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func setVertexSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setVertexSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, with range: NSRange)
  func setViewport(viewport: MTLViewport)
  func setFrontFacing(frontFacingWinding: MTLWinding)
  func setCullMode(cullMode: MTLCullMode)
  @available(tvOS 9.0, *)
  func setDepthClipMode(depthClipMode: MTLDepthClipMode)
  func setDepthBias(depthBias: Float, slopeScale: Float, clamp: Float)
  func setScissorRect(rect: MTLScissorRect)
  func setTriangleFillMode(fillMode: MTLTriangleFillMode)
  @available(tvOS 8.3, *)
  func setFragmentBytes(bytes: UnsafePointer<Void>, length: Int, at index: Int)
  func setFragmentBuffer(buffer: MTLBuffer?, offset: Int, at index: Int)
  @available(tvOS 8.3, *)
  func setFragmentBufferOffset(offset: Int, at index: Int)
  func setFragmentBuffers(buffers: UnsafePointer<MTLBuffer?>, offsets offset: UnsafePointer<Int>, with range: NSRange)
  func setFragmentTexture(texture: MTLTexture?, at index: Int)
  func setFragmentTextures(textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, at index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func setFragmentSamplerState(sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, at index: Int)
  func setFragmentSamplerStates(samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, with range: NSRange)
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
