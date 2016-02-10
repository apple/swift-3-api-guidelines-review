
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
typealias MTKTextureLoaderCallback = (MTLTexture?, Error?) -> Void
@available(OSX 10.11, *)
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
