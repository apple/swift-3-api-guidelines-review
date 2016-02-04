
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
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
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWithTexture(texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func writeToURL(URL: NSURL) -> Bool
  func writeToURL(nsurl: NSURL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> NSData?
  func texelDataWithBottomLeftOrigin() -> NSData?
  func texelDataWithTopLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  func texelDataWithBottomLeftOriginAtMipLevel(level: Int, create: Bool) -> NSData?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  convenience init()
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLURLTexture : MDLTexture {
  init(URL: NSURL, name: String?)
  @NSCopying var URL: NSURL
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLSkyCubeTexture : MDLTexture {
  init(name: String?, channelEncoding: MDLTextureChannelEncoding, textureDimensions: vector_int2, turbidity: Float, sunElevation: Float, upperAtmosphereScattering: Float, groundAlbedo: Float)
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
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, toColor color2: CGColor, name: String?, textureDimensions: vector_int2)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(OSX 10.11, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWithTexture sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: NSBundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: NSBundle?)
  init(data pixelData: NSData?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
