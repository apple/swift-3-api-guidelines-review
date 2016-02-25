
@available(tvOS 8.0, *)
enum MTLPrimitiveType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Point
  case Line
  case LineStrip
  case Triangle
  case TriangleStrip
}
@available(tvOS 8.0, *)
enum MTLIndexType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case UInt16
  case UInt32
}
@available(tvOS 8.0, *)
enum MTLVisibilityResultMode : UInt {
  init?(rawValue rawValue: UInt)
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
  init(x x: Int, y y: Int, width width: Int, height height: Int)
}
struct MTLViewport {
  var originX: Double
  var originY: Double
  var width: Double
  var height: Double
  var znear: Double
  var zfar: Double
  init()
  init(originX originX: Double, originY originY: Double, width width: Double, height height: Double, znear znear: Double, zfar zfar: Double)
}
@available(tvOS 8.0, *)
enum MTLCullMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Front
  case Back
}
@available(tvOS 8.0, *)
enum MTLWinding : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Clockwise
  case CounterClockwise
}
@available(tvOS 9.0, *)
enum MTLDepthClipMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Clip
  case Clamp
}
@available(tvOS 8.0, *)
enum MTLTriangleFillMode : UInt {
  init?(rawValue rawValue: UInt)
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
  init(vertexCount vertexCount: UInt32, instanceCount instanceCount: UInt32, vertexStart vertexStart: UInt32, baseInstance baseInstance: UInt32)
}
struct MTLDrawIndexedPrimitivesIndirectArguments {
  var indexCount: UInt32
  var instanceCount: UInt32
  var indexStart: UInt32
  var baseVertex: Int32
  var baseInstance: UInt32
  init()
  init(indexCount indexCount: UInt32, instanceCount instanceCount: UInt32, indexStart indexStart: UInt32, baseVertex baseVertex: Int32, baseInstance baseInstance: UInt32)
}
@available(tvOS 8.0, *)
protocol MTLRenderCommandEncoder : MTLCommandEncoder {
  func setRenderPipelineState(_ pipelineState: MTLRenderPipelineState)
  @available(tvOS 8.3, *)
  func setVertexBytes(_ bytes: UnsafePointer<Void>, length length: Int, atIndex index: Int)
  func setVertexBuffer(_ buffer: MTLBuffer?, offset offset: Int, atIndex index: Int)
  @available(tvOS 8.3, *)
  func setVertexBufferOffset(_ offset: Int, atIndex index: Int)
  func setVertexBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets offsets: UnsafePointer<Int>, withRange range: NSRange)
  func setVertexTexture(_ texture: MTLTexture?, atIndex index: Int)
  func setVertexTextures(_ textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setVertexSamplerState(_ sampler: MTLSamplerState?, atIndex index: Int)
  func setVertexSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setVertexSamplerState(_ sampler: MTLSamplerState?, lodMinClamp lodMinClamp: Float, lodMaxClamp lodMaxClamp: Float, atIndex index: Int)
  func setVertexSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps lodMinClamps: UnsafePointer<Float>, lodMaxClamps lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setViewport(_ viewport: MTLViewport)
  func setFrontFacingWinding(_ frontFacingWinding: MTLWinding)
  func setCullMode(_ cullMode: MTLCullMode)
  @available(tvOS 9.0, *)
  func setDepthClipMode(_ depthClipMode: MTLDepthClipMode)
  func setDepthBias(_ depthBias: Float, slopeScale slopeScale: Float, clamp clamp: Float)
  func setScissorRect(_ rect: MTLScissorRect)
  func setTriangleFillMode(_ fillMode: MTLTriangleFillMode)
  @available(tvOS 8.3, *)
  func setFragmentBytes(_ bytes: UnsafePointer<Void>, length length: Int, atIndex index: Int)
  func setFragmentBuffer(_ buffer: MTLBuffer?, offset offset: Int, atIndex index: Int)
  @available(tvOS 8.3, *)
  func setFragmentBufferOffset(_ offset: Int, atIndex index: Int)
  func setFragmentBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets offset: UnsafePointer<Int>, withRange range: NSRange)
  func setFragmentTexture(_ texture: MTLTexture?, atIndex index: Int)
  func setFragmentTextures(_ textures: UnsafePointer<MTLTexture?>, withRange range: NSRange)
  func setFragmentSamplerState(_ sampler: MTLSamplerState?, atIndex index: Int)
  func setFragmentSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, withRange range: NSRange)
  func setFragmentSamplerState(_ sampler: MTLSamplerState?, lodMinClamp lodMinClamp: Float, lodMaxClamp lodMaxClamp: Float, atIndex index: Int)
  func setFragmentSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps lodMinClamps: UnsafePointer<Float>, lodMaxClamps lodMaxClamps: UnsafePointer<Float>, withRange range: NSRange)
  func setBlendColorRed(_ red: Float, green green: Float, blue blue: Float, alpha alpha: Float)
  func setDepthStencilState(_ depthStencilState: MTLDepthStencilState?)
  func setStencilReferenceValue(_ referenceValue: UInt32)
  @available(tvOS 9.0, *)
  func setStencilFrontReferenceValue(_ frontReferenceValue: UInt32, backReferenceValue backReferenceValue: UInt32)
  func setVisibilityResultMode(_ mode: MTLVisibilityResultMode, offset offset: Int)
  func drawPrimitives(_ primitiveType: MTLPrimitiveType, vertexStart vertexStart: Int, vertexCount vertexCount: Int, instanceCount instanceCount: Int)
  func drawPrimitives(_ primitiveType: MTLPrimitiveType, vertexStart vertexStart: Int, vertexCount vertexCount: Int)
  func drawIndexedPrimitives(_ primitiveType: MTLPrimitiveType, indexCount indexCount: Int, indexType indexType: MTLIndexType, indexBuffer indexBuffer: MTLBuffer, indexBufferOffset indexBufferOffset: Int, instanceCount instanceCount: Int)
  func drawIndexedPrimitives(_ primitiveType: MTLPrimitiveType, indexCount indexCount: Int, indexType indexType: MTLIndexType, indexBuffer indexBuffer: MTLBuffer, indexBufferOffset indexBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(_ primitiveType: MTLPrimitiveType, vertexStart vertexStart: Int, vertexCount vertexCount: Int, instanceCount instanceCount: Int, baseInstance baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(_ primitiveType: MTLPrimitiveType, indexCount indexCount: Int, indexType indexType: MTLIndexType, indexBuffer indexBuffer: MTLBuffer, indexBufferOffset indexBufferOffset: Int, instanceCount instanceCount: Int, baseVertex baseVertex: Int, baseInstance baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(_ primitiveType: MTLPrimitiveType, indirectBuffer indirectBuffer: MTLBuffer, indirectBufferOffset indirectBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(_ primitiveType: MTLPrimitiveType, indexType indexType: MTLIndexType, indexBuffer indexBuffer: MTLBuffer, indexBufferOffset indexBufferOffset: Int, indirectBuffer indirectBuffer: MTLBuffer, indirectBufferOffset indirectBufferOffset: Int)
}
