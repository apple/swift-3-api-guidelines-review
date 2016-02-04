
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
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(data: Data, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:], completionHandler: MTKTextureLoaderCallback)
  func newTextureWithContentsOf(URL: URL, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(data: Data, options: [String : Number]? = [:]) throws -> MTLTexture
  func newTextureWith(cgImage: CGImage, options: [String : Number]? = [:]) throws -> MTLTexture
}
