
enum MDLTextureChannelEncoding : Int {
  init?(rawValue rawValue: Int)
  var rawValue: Int { get }
  case UInt8
  static var Uint8: MDLTextureChannelEncoding { get }
  case UInt16
  static var Uint16: MDLTextureChannelEncoding { get }
  case UInt24
  static var Uint24: MDLTextureChannelEncoding { get }
  case UInt32
  static var Uint32: MDLTextureChannelEncoding { get }
  case Float16
  case Float32
}
@available(OSX 10.11, *)
class MDLTexture : NSObject, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  class func irradianceTextureCubeWithTexture(_ texture: MDLTexture, name name: String?, dimensions dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWithTexture(_ texture: MDLTexture, name name: String?, dimensions dimensions: vector_int2, roughness roughness: Float) -> Self
  init(data pixelData: NSData?, topLeftOrigin topLeftOrigin: Bool, name name: String?, dimensions dimensions: vector_int2, rowStride rowStride: Int, channelCount channelCount: Int, channelEncoding channelEncoding: MDLTextureChannelEncoding, isCube isCube: Bool)
  func writeToURL(_ URL: NSURL) -> Bool
  func writeToURL(_ nsurl: NSURL, type type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> NSData?
  func texelDataWithBottomLeftOrigin() -> NSData?
  func texelDataWithTopLeftOriginAtMipLevel(_ level: Int, create create: Bool) -> NSData?
  func texelDataWithBottomLeftOriginAtMipLevel(_ level: Int, create create: Bool) -> NSData?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLURLTexture : MDLTexture {
  init(URL URL: NSURL, name name: String?)
  @NSCopying var URL: NSURL
}
@available(OSX 10.11, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions divisions: Float, name name: String?, dimensions dimensions: vector_int2, channelCount channelCount: Int32, channelEncoding channelEncoding: MDLTextureChannelEncoding, color1 color1: CGColor, color2 color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
}
@available(OSX 10.11, *)
class MDLSkyCubeTexture : MDLTexture {
  init(name name: String?, channelEncoding channelEncoding: MDLTextureChannelEncoding, textureDimensions textureDimensions: vector_int2, turbidity turbidity: Float, sunElevation sunElevation: Float, upperAtmosphereScattering upperAtmosphereScattering: Float, groundAlbedo groundAlbedo: Float)
  func updateTexture()
  var turbidity: Float
  var sunElevation: Float
  var upperAtmosphereScattering: Float
  var groundAlbedo: Float
  var horizonElevation: Float
  var groundColor: CGColor?
  var gamma: Float
  var exposure: Float
  var brightness: Float
  var contrast: Float
  var saturation: Float
  var highDynamicRangeCompression: vector_float2
}
@available(OSX 10.11, *)
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name name: String?, textureDimensions textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, toColor color2: CGColor, name name: String?, textureDimensions textureDimensions: vector_int2)
}
@available(OSX 10.11, *)
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name name: String?, textureDimensions textureDimensions: vector_int2, channelEncoding channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name name: String?, textureDimensions textureDimensions: vector_int2, channelCount channelCount: Int32, channelEncoding channelEncoding: MDLTextureChannelEncoding, grayscale grayscale: Bool)
}
@available(OSX 10.11, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWithTexture sourceTexture: MDLTexture, name name: String?, smoothness smoothness: Float, contrast contrast: Float)
}
