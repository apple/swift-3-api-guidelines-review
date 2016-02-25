
@available(iOS 9.0, *)
let kUTTypeAlembic: String
@available(iOS 9.0, *)
let kUTType3dObject: String
@available(iOS 9.0, *)
let kUTTypePolygon: String
@available(iOS 9.0, *)
let kUTTypeStereolithography: String
enum MDLIndexBitDepth : UInt {
  init?(rawValue rawValue: UInt)
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
  init?(rawValue rawValue: Int)
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
@available(iOS 9.0, *)
protocol MDLNamed {
  var name: String { get set }
}
@available(iOS 9.0, *)
protocol MDLComponent : NSObjectProtocol {
}
@available(iOS 9.0, *)
protocol MDLObjectContainerComponent : MDLComponent, NSFastEnumeration {
  func addObject(_ object: MDLObject)
  func removeObject(_ object: MDLObject)
  var objects: [MDLObject] { get }
}
struct MDL_EXPORT_CPPCLASS {
  var maxBounds: vector_float3
  var minBounds: vector_float3
  init()
  init(maxBounds maxBounds: vector_float3, minBounds minBounds: vector_float3)
}
typealias MDLAxisAlignedBoundingBox = MDL_EXPORT_CPPCLASS
