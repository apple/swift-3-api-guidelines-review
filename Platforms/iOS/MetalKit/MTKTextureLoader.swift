
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
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(data: Data, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(data: Data, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:]) throws -> MTLTexture
}
