
@available(OSX 10.11, *)
enum MTLTextureType : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Type1D
  case Type1DArray
  case Type2D
  case Type2DArray
  case Type2DMultisample
  case TypeCube
  @available(OSX 10.11, *)
  case TypeCubeArray
  case Type3D
}
@available(OSX 10.11, *)
struct MTLTextureUsage : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Unknown: MTLTextureUsage { get }
  static var ShaderRead: MTLTextureUsage { get }
  static var ShaderWrite: MTLTextureUsage { get }
  static var RenderTarget: MTLTextureUsage { get }
  static var PixelFormatView: MTLTextureUsage { get }
}
@available(OSX 10.11, *)
class MTLTextureDescriptor : NSObject, NSCopying {
  class func texture2DDescriptorWithPixelFormat(_ pixelFormat: MTLPixelFormat, width width: Int, height height: Int, mipmapped mipmapped: Bool) -> MTLTextureDescriptor
  class func textureCubeDescriptorWithPixelFormat(_ pixelFormat: MTLPixelFormat, size size: Int, mipmapped mipmapped: Bool) -> MTLTextureDescriptor
  var textureType: MTLTextureType
  var pixelFormat: MTLPixelFormat
  var width: Int
  var height: Int
  var depth: Int
  var mipmapLevelCount: Int
  var sampleCount: Int
  var arrayLength: Int
  var resourceOptions: MTLResourceOptions
  @available(OSX 10.11, *)
  var cpuCacheMode: MTLCPUCacheMode
  @available(OSX 10.11, *)
  var storageMode: MTLStorageMode
  @available(OSX 10.11, *)
  var usage: MTLTextureUsage
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
@available(OSX 10.11, *)
protocol MTLTexture : MTLResource {
  var rootResource: MTLResource? { get }
  @available(OSX 10.11, *)
  var parentTexture: MTLTexture? { get }
  @available(OSX 10.11, *)
  var parentRelativeLevel: Int { get }
  @available(OSX 10.11, *)
  var parentRelativeSlice: Int { get }
  var iosurface: IOSurface? { get }
  var iosurfacePlane: Int { get }
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
  func getBytes(_ pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow bytesPerRow: Int, bytesPerImage bytesPerImage: Int, fromRegion region: MTLRegion, mipmapLevel level: Int, slice slice: Int)
  func replaceRegion(_ region: MTLRegion, mipmapLevel level: Int, slice slice: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow bytesPerRow: Int, bytesPerImage bytesPerImage: Int)
  func getBytes(_ pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow bytesPerRow: Int, fromRegion region: MTLRegion, mipmapLevel level: Int)
  func replaceRegion(_ region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow bytesPerRow: Int)
  func newTextureViewWithPixelFormat(_ pixelFormat: MTLPixelFormat) -> MTLTexture
  func newTextureViewWithPixelFormat(_ pixelFormat: MTLPixelFormat, textureType textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture
}
