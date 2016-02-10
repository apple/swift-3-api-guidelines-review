
@available(OSX 10.11, *)
enum MTLBlendFactor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case zero
  case one
  case sourceColor
  case oneMinusSourceColor
  case sourceAlpha
  case oneMinusSourceAlpha
  case destinationColor
  case oneMinusDestinationColor
  case destinationAlpha
  case oneMinusDestinationAlpha
  case sourceAlphaSaturated
  case blendColor
  case oneMinusBlendColor
  case blendAlpha
  case oneMinusBlendAlpha
}
@available(OSX 10.11, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case subtract
  case reverseSubtract
  case min
  case max
}
@available(OSX 10.11, *)
struct MTLColorWriteMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: MTLColorWriteMask { get }
  static var red: MTLColorWriteMask { get }
  static var green: MTLColorWriteMask { get }
  static var blue: MTLColorWriteMask { get }
  static var alpha: MTLColorWriteMask { get }
  static var all: MTLColorWriteMask { get }
}
@available(OSX 10.11, *)
enum MTLPrimitiveTopologyClass : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unspecified
  case point
  case line
  case triangle
}
@available(OSX 10.11, *)
class MTLRenderPipelineColorAttachmentDescriptor : Object, Copying {
  var pixelFormat: MTLPixelFormat
  var isBlendingEnabled: Bool
  var sourceRGBBlendFactor: MTLBlendFactor
  var destinationRGBBlendFactor: MTLBlendFactor
  var rgbBlendOperation: MTLBlendOperation
  var sourceAlphaBlendFactor: MTLBlendFactor
  var destinationAlphaBlendFactor: MTLBlendFactor
  var alphaBlendOperation: MTLBlendOperation
  var writeMask: MTLColorWriteMask
  init()
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
class MTLRenderPipelineReflection : Object {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  init()
}
@available(OSX 10.11, *)
class MTLRenderPipelineDescriptor : Object, Copying {
  var label: String?
  var vertexFunction: MTLFunction?
  var fragmentFunction: MTLFunction?
  @NSCopying var vertexDescriptor: MTLVertexDescriptor?
  var sampleCount: Int
  var isAlphaToCoverageEnabled: Bool
  var isAlphaToOneEnabled: Bool
  var isRasterizationEnabled: Bool
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  @available(OSX 10.11, *)
  var inputPrimitiveTopology: MTLPrimitiveTopologyClass
  func reset()
  init()
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLRenderPipelineState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
@available(OSX 10.11, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : Object {
  subscript (atIndexedSubscript attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
  init()
}
