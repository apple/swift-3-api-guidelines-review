
@available(tvOS 9.0, *)
let MTKTextureLoaderErrorDomain: String
@available(tvOS 9.0, *)
let MTKTextureLoaderErrorKey: String
@available(tvOS 9.0, *)
let MTKTextureLoaderOptionAllocateMipmaps: String
@available(tvOS 9.0, *)
let MTKTextureLoaderOptionSRGB: String
@available(tvOS 9.0, *)
let MTKTextureLoaderOptionTextureUsage: String
@available(tvOS 9.0, *)
let MTKTextureLoaderOptionTextureCPUCacheMode: String
typealias MTKTextureLoaderCallback = (MTLTexture?, NSError?) -> Void
@available(tvOS 9.0, *)
class MTKTextureLoader : NSObject {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTextureWithContentsOfURL(URL: NSURL, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithData(data: NSData, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?, completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOfURL(URL: NSURL, options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithData(data: NSData, options: [String : NSNumber]?) throws -> MTLTexture
  func newTextureWithCGImage(cgImage: CGImage, options: [String : NSNumber]?) throws -> MTLTexture
}
