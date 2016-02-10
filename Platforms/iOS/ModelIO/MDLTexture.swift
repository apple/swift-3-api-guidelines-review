
enum MDLTextureChannelEncoding : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case uInt8
  static var uint8: MDLTextureChannelEncoding { get }
  case uInt16
  static var uint16: MDLTextureChannelEncoding { get }
  case uInt24
  static var uint24: MDLTextureChannelEncoding { get }
  case uInt32
  static var uint32: MDLTextureChannelEncoding { get }
  case float16
  case float32
}
@available(iOS 9.0, *)
class MDLTexture : Object, MDLNamed {
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  class func irradianceTextureCubeWith(texture: MDLTexture, name: String?, dimensions: vector_int2) -> Self
  class func irradianceTextureCubeWith(texture: MDLTexture, name: String?, dimensions: vector_int2, roughness: Float) -> Self
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  func writeTo(URL: URL) -> Bool
  func writeTo(nsurl: URL, type: CFString) -> Bool
  func imageFromTexture() -> Unmanaged<CGImage>?
  func texelDataWithTopLeftOrigin() -> Data?
  func texelDataWithBottomLeftOrigin() -> Data?
  func texelDataWithTopLeftOriginAtMipLevel(level: Int, create: Bool) -> Data?
  func texelDataWithBottomLeftOriginAtMipLevel(level: Int, create: Bool) -> Data?
  var dimensions: vector_int2 { get }
  var rowStride: Int { get }
  var channelCount: Int { get }
  var mipLevelCount: Int { get }
  var channelEncoding: MDLTextureChannelEncoding { get }
  var isCube: Bool
  convenience init()
  @available(iOS 9.0, *)
  var name: String
}
@available(iOS 9.0, *)
class MDLURLTexture : MDLTexture {
  init(url URL: URL, name: String?)
  @NSCopying var url: URL
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLCheckerboardTexture : MDLTexture {
  init(divisions: Float, name: String?, dimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, color1: CGColor, color2: CGColor)
  var divisions: Float
  var color1: CGColor?
  var color2: CGColor?
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
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
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLColorSwatchTexture : MDLTexture {
  init(colorTemperatureGradientFrom colorTemperature1: Float, toColorTemperature colorTemperature2: Float, name: String?, textureDimensions: vector_int2)
  init(colorGradientFrom color1: CGColor, to color2: CGColor, name: String?, textureDimensions: vector_int2)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLNoiseTexture : MDLTexture {
  init(vectorNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelEncoding: MDLTextureChannelEncoding)
  init(scalarNoiseWithSmoothness smoothness: Float, name: String?, textureDimensions: vector_int2, channelCount: Int32, channelEncoding: MDLTextureChannelEncoding, grayscale: Bool)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
@available(iOS 9.0, *)
class MDLNormalMapTexture : MDLTexture {
  init(byGeneratingNormalMapWith sourceTexture: MDLTexture, name: String?, smoothness: Float, contrast: Float)
  convenience init?(named name: String)
  convenience init?(named name: String, bundle bundleOrNil: Bundle?)
  convenience init?(cubeWithImagesNamed names: [String])
  convenience init?(cubeWithImagesNamed names: [String], bundle bundleOrNil: Bundle?)
  init(data pixelData: Data?, topLeftOrigin: Bool, name: String?, dimensions: vector_int2, rowStride: Int, channelCount: Int, channelEncoding: MDLTextureChannelEncoding, isCube: Bool)
  convenience init()
}
