
enum MDLMaterialSemantic : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case baseColor
  case subsurface
  case metallic
  case specular
  case specularExponent
  case specularTint
  case roughness
  case anisotropic
  case anisotropicRotation
  case sheen
  case sheenTint
  case clearcoat
  case clearcoatGloss
  case emission
  case bump
  case opacity
  case interfaceIndexOfRefraction
  case materialIndexOfRefraction
  case objectSpaceNormal
  case tangentSpaceNormal
  case displacement
  case displacementScale
  case ambientOcclusion
  case ambientOcclusionScale
  case none
  case userDefined
}
enum MDLMaterialPropertyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case string
  case URL
  case texture
  case color
  case float
  case float2
  case float3
  case float4
  case matrix44
}
enum MDLMaterialTextureWrapMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clamp
  case `repeat`
  case mirror
}
enum MDLMaterialTextureFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case linear
}
enum MDLMaterialMipMapFilterMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case linear
}
@available(OSX 10.11, *)
class MDLTextureFilter : Object {
  var sWrapMode: MDLMaterialTextureWrapMode
  var tWrapMode: MDLMaterialTextureWrapMode
  var rWrapMode: MDLMaterialTextureWrapMode
  var minFilter: MDLMaterialTextureFilterMode
  var magFilter: MDLMaterialTextureFilterMode
  var mipFilter: MDLMaterialMipMapFilterMode
  init()
}
@available(OSX 10.11, *)
class MDLTextureSampler : Object {
  var texture: MDLTexture?
  var hardwareFilter: MDLTextureFilter?
  var transform: MDLTransform?
  init()
}
@available(OSX 10.11, *)
class MDLMaterialProperty : Object, MDLNamed {
  init(name: String, semantic: MDLMaterialSemantic)
  convenience init(name: String, semantic: MDLMaterialSemantic, float value: Float)
  convenience init(name: String, semantic: MDLMaterialSemantic, float2 value: vector_float2)
  convenience init(name: String, semantic: MDLMaterialSemantic, float3 value: vector_float3)
  convenience init(name: String, semantic: MDLMaterialSemantic, float4 value: vector_float4)
  convenience init(name: String, semantic: MDLMaterialSemantic, matrix4x4 value: matrix_float4x4)
  convenience init(name: String, semantic: MDLMaterialSemantic, url URL: URL?)
  convenience init(name: String, semantic: MDLMaterialSemantic, string: String?)
  convenience init(name: String, semantic: MDLMaterialSemantic, textureSampler: MDLTextureSampler?)
  convenience init(name: String, semantic: MDLMaterialSemantic, color: CGColor)
  func setProperties(property: MDLMaterialProperty)
  var semantic: MDLMaterialSemantic
  var type: MDLMaterialPropertyType { get }
  var name: String
  var stringValue: String?
  @NSCopying var urlValue: URL?
  var textureSamplerValue: MDLTextureSampler?
  var color: CGColor?
  var floatValue: Float
  var float2Value: vector_float2
  var float3Value: vector_float3
  var float4Value: vector_float4
  var matrix4x4: matrix_float4x4
}
@available(OSX 10.11, *)
class MDLScatteringFunction : Object, MDLNamed {
  var name: String
  var baseColor: MDLMaterialProperty { get }
  var emission: MDLMaterialProperty { get }
  var specular: MDLMaterialProperty { get }
  var materialIndexOfRefraction: MDLMaterialProperty { get }
  var interfaceIndexOfRefraction: MDLMaterialProperty { get }
  var normal: MDLMaterialProperty { get }
  var ambientOcclusion: MDLMaterialProperty { get }
  var ambientOcclusionScale: MDLMaterialProperty { get }
  init()
}
@available(OSX 10.11, *)
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
  init()
}
@available(OSX 10.11, *)
class MDLMaterial : Object, MDLNamed, FastEnumeration {
  init(name: String, scatteringFunction: MDLScatteringFunction)
  func setProperty(property: MDLMaterialProperty)
  func remove(property: MDLMaterialProperty)
  func propertyNamed(name: String) -> MDLMaterialProperty?
  func property(semantic: MDLMaterialSemantic) -> MDLMaterialProperty?
  func removeAllProperties()
  var scatteringFunction: MDLScatteringFunction { get }
  var name: String
  var base: MDLMaterial?
  subscript(idx: Int) -> MDLMaterialProperty? { get }
  subscript(name: String) -> MDLMaterialProperty? { get }
  var count: Int { get }
  init()
  @available(OSX 10.11, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
