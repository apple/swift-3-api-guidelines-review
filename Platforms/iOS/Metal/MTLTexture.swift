
@available(iOS 8.0, *)
enum MTLTextureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Type1D
  case Type1DArray
  case Type2D
  case Type2DArray
  case Type2DMultisample
  case TypeCube
  case Type3D
}
@available(iOS 9.0, *)
struct MTLTextureUsage : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MTLTextureUsage { get }
  static var ShaderRead: MTLTextureUsage { get }
  static var ShaderWrite: MTLTextureUsage { get }
  static var RenderTarget: MTLTextureUsage { get }
  static var PixelFormatView: MTLTextureUsage { get }
}
@available(iOS 8.0, *)
class MTLTextureDescriptor : NSObject, NSCopying {
  class func texture2DDescriptorWithPixelFormat(pixelFormat: MTLPixelFormat, width: Int, height: Int, mipmapped: Bool) -> MTLTextureDescriptor
  class func textureCubeDescriptorWithPixelFormat(pixelFormat: MTLPixelFormat, size: Int, mipmapped: Bool) -> MTLTextureDescriptor
  var textureType: MTLTextureType
  var pixelFormat: MTLPixelFormat
  var width: Int
  var height: Int
  var depth: Int
  var mipmapLevelCount: Int
  var sampleCount: Int
  var arrayLength: Int
  var resourceOptions: MTLResourceOptions
  @available(iOS 9.0, *)
  var cpuCacheMode: MTLCPUCacheMode
  @available(iOS 9.0, *)
  var storageMode: MTLStorageMode
  @available(iOS 9.0, *)
  var usage: MTLTextureUsage
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(iOS 8.0, *)
protocol MTLTexture : MTLResource {
  var rootResource: MTLResource? { get }
  @available(iOS 9.0, *)
  var parentTexture: MTLTexture? { get }
  @available(iOS 9.0, *)
  var parentRelativeLevel: Int { get }
  @available(iOS 9.0, *)
  var parentRelativeSlice: Int { get }
  @available(iOS 9.0, *)
  var buffer: MTLBuffer? { get }
  @available(iOS 9.0, *)
  var bufferOffset: Int { get }
  @available(iOS 9.0, *)
  var bufferBytesPerRow: Int { get }
  var textureType: MTLTextureType { get }
  var pixelFormat: MTLPixelFormat { get }
  var width: Int { get }
  var height: Int { get }
  var depth: Int { get }
  var mipmapLevelCount: Int { get }
  var sampleCount: Int { get }
  var arrayLength: Int { get }
  var usage: MTLTextureUsage { get }
  var framebufferOnly: Bool { get }
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, bytesPerImage: Int, fromRegion region: MTLRegion, mipmapLevel level: Int, slice: Int)
  func replaceRegion(region: MTLRegion, mipmapLevel level: Int, slice: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int, bytesPerImage: Int)
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, fromRegion region: MTLRegion, mipmapLevel level: Int)
  func replaceRegion(region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int)
  func newTextureViewWithPixelFormat(pixelFormat: MTLPixelFormat) -> MTLTexture
  func newTextureViewWithPixelFormat(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture
}
