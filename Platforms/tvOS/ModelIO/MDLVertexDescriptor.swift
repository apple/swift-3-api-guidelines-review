
let MDLVertexAttributeAnisotropy: String
let MDLVertexAttributeBinormal: String
let MDLVertexAttributeBitangent: String
let MDLVertexAttributeColor: String
let MDLVertexAttributeEdgeCrease: String
let MDLVertexAttributeJointIndices: String
let MDLVertexAttributeJointWeights: String
let MDLVertexAttributeNormal: String
let MDLVertexAttributeOcclusionValue: String
let MDLVertexAttributePosition: String
let MDLVertexAttributeShadingBasisU: String
let MDLVertexAttributeShadingBasisV: String
let MDLVertexAttributeSubdivisionStencil: String
let MDLVertexAttributeTangent: String
let MDLVertexAttributeTextureCoordinate: String
enum MDLVertexFormat : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case PackedBit
  case UCharBits
  case CharBits
  case UCharNormalizedBits
  case CharNormalizedBits
  case UShortBits
  case ShortBits
  case UShortNormalizedBits
  case ShortNormalizedBits
  case UIntBits
  case IntBits
  case HalfBits
  case FloatBits
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Char
  case Char2
  case Char3
  case Char4
  case UCharNormalized
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case CharNormalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Short
  case Short2
  case Short3
  case Short4
  case UShortNormalized
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case ShortNormalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int
  case Int2
  case Int3
  case Int4
  case Half
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int1010102Normalized
  case UInt1010102Normalized
}
@available(tvOS 9.0, *)
class MDLVertexBufferLayout : NSObject, NSCopying {
  var stride: Int
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class MDLVertexAttribute : NSObject, NSCopying {
  init(name name: String, format format: MDLVertexFormat, offset offset: Int, bufferIndex bufferIndex: Int)
  var name: String
  var format: MDLVertexFormat
  var offset: Int
  var bufferIndex: Int
  var initializationValue: vector_float4
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(tvOS 9.0, *)
class MDLVertexDescriptor : NSObject, NSCopying {
  init(vertexDescriptor vertexDescriptor: MDLVertexDescriptor)
  func attributeNamed(_ name: String) -> MDLVertexAttribute?
  func addOrReplaceAttribute(_ attribute: MDLVertexAttribute)
  var attributes: NSMutableArray
  var layouts: NSMutableArray
  func reset()
  func setPackedStrides()
  func setPackedOffsets()
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
