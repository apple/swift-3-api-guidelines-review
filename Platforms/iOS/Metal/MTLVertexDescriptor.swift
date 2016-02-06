
@available(iOS 8.0, *)
enum MTLVertexFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UChar2
  case UChar3
  case UChar4
  case Char2
  case Char3
  case Char4
  case UChar2Normalized
  case UChar3Normalized
  case UChar4Normalized
  case Char2Normalized
  case Char3Normalized
  case Char4Normalized
  case UShort2
  case UShort3
  case UShort4
  case Short2
  case Short3
  case Short4
  case UShort2Normalized
  case UShort3Normalized
  case UShort4Normalized
  case Short2Normalized
  case Short3Normalized
  case Short4Normalized
  case Half2
  case Half3
  case Half4
  case Float
  case Float2
  case Float3
  case Float4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Int1010102Normalized
  case UInt1010102Normalized
}
@available(iOS 8.0, *)
enum MTLVertexStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Constant
  case PerVertex
  case PerInstance
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptor : Object, Copying {
  var stride: Int
  var stepFunction: MTLVertexStepFunction
  var stepRate: Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexBufferLayoutDescriptorArray : Object {
  subscript (indexedSubscript index: Int) -> MTLVertexBufferLayoutDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptor : Object, Copying {
  var format: MTLVertexFormat
  var offset: Int
  var bufferIndex: Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
@available(iOS 8.0, *)
class MTLVertexAttributeDescriptorArray : Object {
  subscript (indexedSubscript index: Int) -> MTLVertexAttributeDescriptor!
  init()
}
@available(iOS 8.0, *)
class MTLVertexDescriptor : Object, Copying {
  var layouts: MTLVertexBufferLayoutDescriptorArray { get }
  var attributes: MTLVertexAttributeDescriptorArray { get }
  func reset()
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
