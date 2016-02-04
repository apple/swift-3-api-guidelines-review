
@available(OSX 10.11, *)
let kUTTypeAlembic: String
@available(OSX 10.11, *)
let kUTType3dObject: String
@available(OSX 10.11, *)
let kUTTypePolygon: String
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(OSX 10.11, *)
protocol MDLComponent : NSObjectProtocol {
}
@available(OSX 10.11, *)
protocol MDLObjectContainerComponent : MDLComponent, NSFastEnumeration {
  func addObject(object: MDLObject)
  func removeObject(object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds: vector_float3, minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS
