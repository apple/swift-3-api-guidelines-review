
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
typealias MTKTextureLoaderCallback = (MTLTexture?, Error?) -> Void
@available(tvOS 9.0, *)
class MTKTextureLoader : Object {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTextureWithContents(of URL: URL, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(with data: Data, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTexture(with cgImage: CGImage, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContents(of URL: URL, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTexture(with data: Data, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTexture(with cgImage: CGImage, options: [String : Number]? = [:]) throws -> MTLTexture
}
