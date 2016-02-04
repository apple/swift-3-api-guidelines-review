
@available(tvOS 8.0, *)
enum MTLBlendFactor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Zero
  case One
  case SourceColor
  case OneMinusSourceColor
  case SourceAlpha
  case OneMinusSourceAlpha
  case DestinationColor
  case OneMinusDestinationColor
  case DestinationAlpha
  case OneMinusDestinationAlpha
  case SourceAlphaSaturated
  case BlendColor
  case OneMinusBlendColor
  case BlendAlpha
  case OneMinusBlendAlpha
}
@available(tvOS 8.0, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Add
  case Subtract
  case ReverseSubtract
  case Min
  case Max
}
@available(tvOS 8.0, *)
struct MTLColorWriteMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: MTLColorWriteMask { get }
  static var Red: MTLColorWriteMask { get }
  static var Green: MTLColorWriteMask { get }
  static var Blue: MTLColorWriteMask { get }
  static var Alpha: MTLColorWriteMask { get }
  static var All: MTLColorWriteMask { get }
}
@available(tvOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptor : NSObject, NSCopying {
  var pixelFormat: MTLPixelFormat
  var blendingEnabled: Bool
  var sourceRGBBlendFactor: MTLBlendFactor
  var destinationRGBBlendFactor: MTLBlendFactor
  var rgbBlendOperation: MTLBlendOperation
  var sourceAlphaBlendFactor: MTLBlendFactor
  var destinationAlphaBlendFactor: MTLBlendFactor
  var alphaBlendOperation: MTLBlendOperation
  var writeMask: MTLColorWriteMask
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  init()
}
@available(tvOS 8.0, *)
class MTLRenderPipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var vertexFunction: MTLFunction?
  var fragmentFunction: MTLFunction?
  @NSCopying var vertexDescriptor: MTLVertexDescriptor?
  var sampleCount: Int
  var alphaToCoverageEnabled: Bool
  var alphaToOneEnabled: Bool
  var rasterizationEnabled: Bool
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  func reset()
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(tvOS 8.0, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
@available(tvOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript (attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
  init()
}
