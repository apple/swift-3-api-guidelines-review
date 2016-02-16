
@available(OSX 10.9, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case nearest
  case linear
}
class SKTexture : Object, Copying, Coding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, in texture: SKTexture)
  @available(OSX 10.10, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  @available(OSX 10.10, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image: NSImage)
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func applying(filter: CIFilter) -> Self
  @available(OSX 10.10, *)
  func generatingNormalMap() -> Self
  @available(OSX 10.10, *)
  func generatingNormalMap(smoothness smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(OSX 10.11, *)
  func cgImage() -> CGImage
  class func preload(textures: [SKTexture], withCompletionHandler completionHandler: () -> Void)
  func preload(completionHandler completionHandler: () -> Void)
  init()
  func copy(zone: Zone = nil) -> AnyObject
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTexture : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
