
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
  init(device device: MTLDevice)
  func newTextureWithContentsOfURL(_ URL: NSURL, options options: [String : NSNumber]?, completionHandler completionHandler: MTKTextureLoaderCallback)
  func newTextureWithData(_ data: NSData, options options: [String : NSNumber]?, completionHandler completionHandler: MTKTextureLoaderCallback)
  func newTextureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?, completionHandler completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOfURL(_ URL: NSURL, options options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithData(_ data: NSData, options options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithCGImage(_ cgImage: CGImage, options options: [String : NSNumber]?) throws -> MTLTexture
}
