
@available(tvOS 9.0, *)
let kUTTypeAlembic: String
@available(tvOS 9.0, *)
let kUTType3dObject: String
@available(tvOS 9.0, *)
let kUTTypePolygon: String
@available(tvOS 9.0, *)
let kUTTypeStereolithography: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case UInt8
  static var Uint8: MDLIndexBitDepth { get }
  case UInt16
  static var Uint16: MDLIndexBitDepth { get }
  case UInt32
  static var Uint32: MDLIndexBitDepth { get }
}
enum MDLGeometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case TypePoints
  case TypeLines
  case TypeTriangles
  case TypeTriangleStrips
  case TypeQuads
  case TypeVariableTopology
  static var KindPoints: MDLGeometryType { get }
  static var KindLines: MDLGeometryType { get }
  static var KindTriangles: MDLGeometryType { get }
  static var KindTriangleStrips: MDLGeometryType { get }
  static var KindQuads: MDLGeometryType { get }
}
@available(tvOS 9.0, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(tvOS 9.0, *)
protocol MDLComponent : ObjectProtocol {
}
@available(tvOS 9.0, *)
protocol MDLObjectContainerComponent : MDLComponent, FastEnumeration {
  func add(object: MDLObject)
  func remove(object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS
