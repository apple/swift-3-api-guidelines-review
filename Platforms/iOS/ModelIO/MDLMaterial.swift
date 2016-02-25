
enum MDLMaterialSemantic : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BaseColor
  case Subsurface
  case Metallic
  case Specular
  case SpecularExponent
  case SpecularTint
  case Roughness
  case Anisotropic
  case AnisotropicRotation
  case Sheen
  case SheenTint
  case Clearcoat
  case ClearcoatGloss
  case Emission
  case Bump
  case Opacity
  case InterfaceIndexOfRefraction
  case MaterialIndexOfRefraction
  case ObjectSpaceNormal
  case TangentSpaceNormal
  case Displacement
  case DisplacementScale
  case AmbientOcclusion
  case AmbientOcclusionScale
  case None
  case UserDefined
}
enum MDLMaterialPropertyType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case String
  case URL
  case Texture
  case Color
  case Float
  case Float2
  case Float3
  case Float4
  case Matrix44
}
enum MDLMaterialTextureWrapMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Clamp
  case Repeat
  case Mirror
}
enum MDLMaterialTextureFilterMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
enum MDLMaterialMipMapFilterMode : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Nearest
  case Linear
}
@available(iOS 9.0, *)
class MDLTextureFilter : NSObject {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
}
@available(iOS 9.0, *)
class MDLTextureSampler : NSObject {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
}
@available(iOS 9.0, *)
class MDLMaterialProperty : NSObject, MDLNamed {
  init(name name: String, semantic semantic: MDLMaterialSemantic)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, URL URL: NSURL?)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, string string: String?)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, textureSampler textureSampler: MDLTextureSampler?)
  convenience init(name name: String, semantic semantic: MDLMaterialSemantic, color color: CGColor)
  func setProperties(_ property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }
  var name: String
  var stringValue: String?
  @NSCopying var URLValue: NSURL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}
@available(iOS 9.0, *)
class MDLScatteringFunction : NSObject, MDLNamed {
  var name: String
  var baseColor: MDLMaterialProperty { get }
  var emission: MDLMaterialProperty { get }
  var specular: MDLMaterialProperty { get }
  var materialIndexOfRefraction: MDLMaterialProperty { get }
  var interfaceIndexOfRefraction: MDLMaterialProperty { get }
  var normal: MDLMaterialProperty { get }
  var ambientOcclusion: MDLMaterialProperty { get }
  var ambientOcclusionScale: MDLMaterialProperty { get }
}
@available(iOS 9.0, *)
class MDLPhysicallyPlausibleScatteringFunction : MDLScatteringFunction {
  var version: Int { get }
  var subsurface: MDLMaterialProperty { get }
  var metallic: MDLMaterialProperty { get }
  var specularAmount: MDLMaterialProperty { get }
  var specularTint: MDLMaterialProperty { get }
  var roughness: MDLMaterialProperty { get }
  var anisotropic: MDLMaterialProperty { get }
  var anisotropicRotation: MDLMaterialProperty { get }
  var sheen: MDLMaterialProperty { get }
  var sheenTint: MDLMaterialProperty { get }
  var clearcoat: MDLMaterialProperty { get }
  var clearcoatGloss: MDLMaterialProperty { get }
}
@available(iOS 9.0, *)
class MDLMaterial : NSObject, MDLNamed, NSFastEnumeration {
  init(name name: String, scatteringFunction scatteringFunction: MDLScatteringFunction)
  func setProperty(_ property: MDLMaterialProperty)
  func removeProperty(_ property: MDLMaterialProperty)
  func propertyNamed(_ name: String) -> MDLMaterialProperty?
  func propertyWithSemantic(_ semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }
  var name: String
  var baseMaterial: MDLMaterial?
  subscript(_ idx: Int) -> MDLMaterialProperty? { get }
  subscript(_ name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
