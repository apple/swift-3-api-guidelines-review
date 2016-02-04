
@available(OSX 10.11, *)
enum MTLDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case Struct
  case Array
  case Float
  case Float2
  case Float3
  case Float4
  case Float2x2
  case Float2x3
  case Float2x4
  case Float3x2
  case Float3x3
  case Float3x4
  case Float4x2
  case Float4x3
  case Float4x4
  case Half
  case Half2
  case Half3
  case Half4
  case Half2x2
  case Half2x3
  case Half2x4
  case Half3x2
  case Half3x3
  case Half3x4
  case Half4x2
  case Half4x3
  case Half4x4
  case Int
  case Int2
  case Int3
  case Int4
  case UInt
  case UInt2
  case UInt3
  case UInt4
  case Short
  case Short2
  case Short3
  case Short4
  case UShort
  case UShort2
  case UShort3
  case UShort4
  case Char
  case Char2
  case Char3
  case Char4
  case UChar
  case UChar2
  case UChar3
  case UChar4
  case Bool
  case Bool2
  case Bool3
  case Bool4
}
@available(OSX 10.11, *)
enum MTLArgumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Buffer
  case ThreadgroupMemory
  case Texture
  case Sampler
}
@available(OSX 10.11, *)
enum MTLArgumentAccess : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case ReadOnly
  case ReadWrite
  case WriteOnly
}
@available(OSX 10.11, *)
class MTLStructMember : Object {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
  init()
}
@available(OSX 10.11, *)
class MTLStructType : Object {
  var members: [MTLStructMember] { get }
  func memberByName(name: String) -> MTLStructMember?
  init()
}
@available(OSX 10.11, *)
class MTLArrayType : Object {
  var arrayLength: Int { get }
  var elementType: MTLDataType { get }
  var stride: Int { get }
  func elementStructType() -> MTLStructType?
  func element() -> MTLArrayType?
  init()
}
@available(OSX 10.11, *)
class MTLArgument : Object {
  var name: String { get }
  var type: MTLArgumentType { get }
  var access: MTLArgumentAccess { get }
  var index: Int { get }
  var isActive: Bool { get }
  var bufferAlignment: Int { get }
  var bufferDataSize: Int { get }
  var bufferDataType: MTLDataType { get }
  var bufferStructType: MTLStructType { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
  init()
}
