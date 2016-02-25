
@available(OSX 10.11, *)
enum MTLBlendFactor : UInt {
  init?(rawValue rawValue: UInt)
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
@available(OSX 10.11, *)
enum MTLBlendOperation : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Add
  case Subtract
  case ReverseSubtract
  case Min
  case Max
}
@available(OSX 10.11, *)
struct MTLColorWriteMask : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: MTLColorWriteMask { get }
  static var Red: MTLColorWriteMask { get }
  static var Green: MTLColorWriteMask { get }
  static var Blue: MTLColorWriteMask { get }
  static var Alpha: MTLColorWriteMask { get }
  static var All: MTLColorWriteMask { get }
}
@available(OSX 10.11, *)
enum MTLPrimitiveTopologyClass : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Unspecified
  case Point
  case Line
  case Triangle
}
@available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
}
@available(OSX 10.11, *)
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
  @available(OSX 10.11, *)
  var inputPrimitiveTopology: MTLPrimitiveTopologyClass
  func reset()
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
}
@available(OSX 10.11, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(_ attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
}
