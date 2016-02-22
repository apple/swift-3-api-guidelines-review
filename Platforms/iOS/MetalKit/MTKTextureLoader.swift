
@available(iOS 9.0, *)
let MTKTextureLoaderErrorDomain: String
@available(iOS 9.0, *)
let MTKTextureLoaderErrorKey: String
@available(iOS 9.0, *)
let MTKTextureLoaderOptionAllocateMipmaps: String
@available(iOS 9.0, *)
let MTKTextureLoaderOptionSRGB: String
@available(iOS 9.0, *)
let MTKTextureLoaderOptionTextureUsage: String
@available(iOS 9.0, *)
let MTKTextureLoaderOptionTextureCPUCacheMode: String
typealias MTKTextureLoaderCallback = (MTLTexture?, NSError?) -> Void
@available(iOS 9.0, *)
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
