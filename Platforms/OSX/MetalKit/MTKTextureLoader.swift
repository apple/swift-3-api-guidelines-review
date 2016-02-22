
@available(OSX 10.11, *)
let MTKTextureLoaderErrorDomain: String
@available(OSX 10.11, *)
let MTKTextureLoaderErrorKey: String
@available(OSX 10.11, *)
let MTKTextureLoaderOptionAllocateMipmaps: String
@available(OSX 10.11, *)
let MTKTextureLoaderOptionSRGB: String
@available(OSX 10.11, *)
let MTKTextureLoaderOptionTextureUsage: String
@available(OSX 10.11, *)
let MTKTextureLoaderOptionTextureCPUCacheMode: String
typealias MTKTextureLoaderCallback = (MTLTexture?, NSError?) -> Void
@available(OSX 10.11, *)
class MTKTextureLoader : NSObject {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTexture(withContentsOf URL: NSURL, options: [String : NSNumber]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(with data: NSData, options: [String : NSNumber]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(with cgImage: CGImage, options: [String : NSNumber]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(withContentsOf URL: NSURL, options: [String : NSNumber]? = [:]) throws -> MTLTexture
  func newTexture(with data: NSData, options: [String : NSNumber]? = [:]) throws -> MTLTexture
  func newTexture(with cgImage: CGImage, options: [String : NSNumber]? = [:]) throws -> MTLTexture
}
