
enum MDLLightType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Unknown
  case Ambient
  case Directional
  case Spot
  case Point
  case Linear
  case DiscArea
  case RectangularArea
  case SuperElliptical
  case Photometric
  case Probe
  case Environment
}
@available(OSX 10.11, *)
class MDLLight : MDLObject {
  func irradianceAtPoint(point: vector_float3) -> Unmanaged<CGColor>
  func irradianceAtPoint(point: vector_float3, colorSpace: CGColorSpace) -> Unmanaged<CGColor>
  var lightType: MDLLightType
  init()
}
@available(OSX 10.11, *)
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
@available(OSX 10.11, *)
class MDLAreaLight : MDLPhysicallyPlausibleLight {
  var areaRadius: Float
  var superEllipticPower: vector_float2
  var aspect: Float
  init()
}
@available(OSX 10.11, *)
class MDLPhotometricLight : MDLPhysicallyPlausibleLight {
  init?(IESProfile URL: NSURL)
  func generateSphericalHarmonicsFromLight(sphericalHarmonicsLevel: Int)
  func generateCubemapFromLight(textureSize: Int)
  var lightCubeMap: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
@available(OSX 10.11, *)
class MDLLightProbe : MDLLight {
  init(reflectiveTexture: MDLTexture?, irradianceTexture: MDLTexture?)
  func generateSphericalHarmonicsFromIrradiance(sphericalHarmonicsLevel: Int)
  var reflectiveTexture: MDLTexture? { get }
  var irradianceTexture: MDLTexture? { get }
  var sphericalHarmonicsLevel: Int { get }
  @NSCopying var sphericalHarmonicsCoefficients: NSData? { get }
  init()
}
extension MDLLightProbe {
  /*not inherited*/ init?(textureSize: Int, forLocation transform: MDLTransform, lightsToConsider: [MDLLight], objectsToConsider: [MDLObject], reflectiveCubemap: MDLTexture?, irradianceCubemap: MDLTexture?)
}
