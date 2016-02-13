
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case subtract
  case reverseSubtract
  case min
  case max
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
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
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLRenderPipelineReflection : Object {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  init()
}
@available(iOS 8.0, *)
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
  func reset()
  init()
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
protocol MTLRenderPipelineState : ObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
@available(iOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : Object {
  subscript(attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
  init()
}
