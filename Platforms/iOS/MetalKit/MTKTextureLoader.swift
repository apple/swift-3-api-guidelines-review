
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
typealias MTKTextureLoaderCallback = (MTLTexture?, Error?) -> Void
@available(iOS 9.0, *)
class MTKTextureLoader : Object {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTextureWithContents(of URL: URL, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(withData data: Data, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(withCGImage cgImage: CGImage, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContents(of URL: URL, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTexture(withData data: Data, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTexture(withCGImage cgImage: CGImage, options: [String : Number]? = [:]) throws -> MTLTexture
}
