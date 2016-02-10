
@available(OSX 10.11, *)
enum MTLTextureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case type1D
  case type1DArray
  case type2D
  case type2DArray
  case type2DMultisample
  case typeCube
  @available(OSX 10.11, *)
  case typeCubeArray
  case type3D
}
@available(OSX 10.11, *)
struct MTLTextureUsage : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var unknown: MTLTextureUsage { get }
  static var shaderRead: MTLTextureUsage { get }
  static var shaderWrite: MTLTextureUsage { get }
  static var renderTarget: MTLTextureUsage { get }
  static var pixelFormatView: MTLTextureUsage { get }
}
@available(OSX 10.11, *)
class MTLTextureDescriptor : Object, Copying {
  class func texture2DDescriptor(withPixelFormat pixelFormat: MTLPixelFormat, width: Int, height: Int, mipmapped: Bool) -> MTLTextureDescriptor
  class func textureCubeDescriptor(withPixelFormat pixelFormat: MTLPixelFormat, size: Int, mipmapped: Bool) -> MTLTextureDescriptor
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
  init()
  @available(OSX 10.11, *)
  func copyWith(zone: Zone = nil) -> AnyObject
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
  var isFramebufferOnly: Bool { get }
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, bytesPerImage: Int, from region: MTLRegion, mipmapLevel level: Int, slice: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, slice: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int, bytesPerImage: Int)
  func getBytes(pixelBytes: UnsafeMutablePointer<Void>, bytesPerRow: Int, from region: MTLRegion, mipmapLevel level: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafePointer<Void>, bytesPerRow: Int)
  func newTextureView(withPixelFormat pixelFormat: MTLPixelFormat) -> MTLTexture
  func newTextureView(withPixelFormat pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture
}
