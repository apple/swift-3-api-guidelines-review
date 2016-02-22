
enum MDLLightType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case ambient
  case directional
  case spot
  case point
  case linear
  case discArea
  case rectangularArea
  case superElliptical
  case photometric
  case probe
  case environment
}
@available(tvOS 9.0, *)
class MDLLight : MDLObject {
  func irradiance(atPoint point: vector_float3) -> Unmanaged<CGColor>
  func irradiance(atPoint point: vector_float3, colorSpace: CGColorSpace) -> Unmanaged<CGColor>
  var lightType: MDLLightType
  init()
}
@available(tvOS 9.0, *)
class MDLPhysicallyPlausibleLight : MDLLight {
  func setColorByTemperature(temperature: Float)
  var color: CGColor?
  var lumens: Float
  var innerConeAngle: Float
  var outerConeAngle: Float
  var attenuationStartDistance: Float
  var attenuationEndDistance: Float
  init()
}
@available(tvOS 9.0, *)
class MDLAreaLight : MDLPhysicallyPlausibleLight {
  var areaRadius: Float
  var superEllipticPower: vector_float2
  var aspect: Float
  init()
}
@available(tvOS 9.0, *)
class MDLPhotometricLight : MDLPhysicallyPlausibleLight {
  init?(iesProfile URL: NSURL)
  func generateSphericalHarmonics(fromLight sphericalHarmonicsLevel: Int)
  func generateCubemap(fromLight textureSize: Int)
  var lightCubeMap: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
@available(tvOS 9.0, *)
class MDLLightProbe : MDLLight {
  init(reflectiveTexture: MDLTexture?, irradianceTexture: MDLTexture?)
  func generateSphericalHarmonics(fromIrradiance sphericalHarmonicsLevel: Int)
  var reflectiveTexture: MDLTexture? { get }
  var irradianceTexture: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
extension MDLLightProbe {
  /*not inherited*/ init?(textureSize: Int, forLocation transform: MDLTransform, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], reflectiveCubemap: MDLTexture?, irradianceCubemap: MDLTexture?)
}
